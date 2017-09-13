 unit DialogSysOpenCompany;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, cxContainer, cxCheckListBox, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxEdit, cxTextEdit, cxMaskEdit,
  FileCtrl, RzFilSys, DB, ADODB, JvDriveCtrls, JvComponent, JvAppStorage,
  JvAppXMLStorage, ExtCtrls, cxDropDownEdit, cxImageComboBox, PymeConst,
  JvComponentBase, Menus, cxLookAndFeelPainters, cxGraphics, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGrid, cxintl, cxMRUEdit, cxDBEdit,
  cxButtonEdit, LMDCustomComponent,LMDSysInfo,dlgMensajes,ppPrintr;


type
  TfrmDialogSysOpenCompany = class(TfrmDialogModule)
    lcDialogGroup3: TdxLayoutGroup;
    edUsuario: TcxMaskEdit;
    lcDialogItem2: TdxLayoutItem;
    edClave: TcxMaskEdit;
    lcDialogItem3: TdxLayoutItem;
    conTest: TADOConnection;
    qrLogin: TADOQuery;
    Shape1: TShape;
    ProductName: TLabel;
    lcDialogItem4: TdxLayoutItem;
    Image1: TImage;
    lcDialogGroup5: TdxLayoutGroup;
    cbConfigurar: TcxButton;
    lcDialogItem1: TdxLayoutItem;
    dsAppEmpresas: TDataSource;
    lcEmpresas: TcxLookupComboBox;
    lcDialogItem6: TdxLayoutItem;
    ProgramIcon: TImage;
    LMDSysInfo1: TLMDSysInfo;
    lblVer: TLabel;
    qrPrueba: TADOQuery;
    qrLoginUserID: TStringField;
    qrLoginClave: TStringField;
    qrLoginNombre: TStringField;
    qrLoginRolID: TSmallintField;
    qrLoginDescuentoTope: TFloatField;
    qrLoginEstatus: TStringField;
    qrLoginClave_Unicode: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure cbConfigurarClick(Sender: TObject);
    Function Get_ComputerName : String;
    Function Get_SesionUserName : String;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Act_Printer;
    procedure Actualizar_Ruta(ruta: String);
    procedure Verifica_Usuario_Printer;
    Procedure Verifica_Usuario_Conexion;
    Procedure Verifica_Computador_Printer;
  end;

type
  TForm1 = class(TForm)
  end;


Var
  frmDialogSysOpenCompany : TfrmDialogSysOpenCompany;
  printDialog             : TPrintDialog;
  Form1                   : TForm1;
  SucursalID_User         : String;

implementation

uses Printers, DataModule, DialogDbSetup,SimetricaWs;

{$R *.dfm}


procedure TfrmDialogSysOpenCompany.FormCreate(Sender: TObject);
begin
  inherited;
  ProgramIcon.Picture.Assign( Application.Icon );
  ProductName.Caption := Application.Title;
  lblVer.Caption := 'Ver: '+Version_App;
  if not DM.ApplEmpresas.Active then
    DM.ApplEmpresas.Open;
{
  if DM.CurCompany <> '' then
    lcEmpresas.EditText := DM.CurCompany
  else
    lcEmpresas.EditText := DM.ApplEmpresas.FieldByName('Descripcion').Text;
}

{  DM.DataBase.Close;
  DM.DataBase.DefaultDatabase := '';
  DM.DataBase.ConnectionString := 'Data Source=' + DM.ApplEmpresas.FieldByName('Servidor').Text;
  DM.DataBase.ConnectionString := DM.DataBase.ConnectionString + ';Initial Catalog=' + DM.ApplEmpresas.FieldByName('Nombre').Text;
  DM.DataBase.ConnectionString := DM.DataBase.ConnectionString + ';User ID=' + DM.ApplEmpresas.FieldByName('sqlUser').Text;
  DM.DataBase.ConnectionString := DM.DataBase.ConnectionString + ';Password=' +  DM.ApplEmpresas.FieldByName('sqlPassword').Text;
  DM.DataBase.Open;
}
end;

procedure TfrmDialogSysOpenCompany.FormShow(Sender: TObject);
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;
  edUsuario.Text := DM.CurUser;
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  Verifica_Usuario_Conexion;
  if SucursalID_User <> EmptyStr then
  begin
      lcEmpresas.EditText := SucursalID_User;
  end
  else
  begin
      if DM.CurSucursal <> EmptyStr then
        lcEmpresas.EditText := DM.CurSucursal
      else
      begin
        if Dm.Sucursal_Def <> EmptyStr then
           lcEmpresas.EditText := Dm.Sucursal_Def
        else
           lcEmpresas.EditText := DM.qrSucursal.FieldByName('Nombre').Text;
      end;
  end;
//  cxTextEdit1.Text := Get_SesionUserName;
//  cxTextEdit1.Text  := Get_ComputerName;
//  cxTextEdit3.Text := SucursalID_User;
  edUsuario.Text := DM.CurUser;
  //Creating a Printer Selection Dialog.
  Form1.Caption := 'Ruta del Printer Codigo de Barra';
  printDialog := TPrintDialog.Create(Form1);
  ppPrintr.ppPrinters.Refresh;
end;

procedure TfrmDialogSysOpenCompany.btAceptarClick(Sender: TObject);
Var
  qfind: TADOQuery;
  intRecibo,intFactura,intCodigoB : integer;
begin
  inherited;
  ShortDateFormat   := 'dd/MM/yyyy';
  DecimalSeparator  := '.';
  ThousandSeparator := ',';
  if LMDSysInfo1.LocaleDecimalSeparator <> '.' then
  begin
      EtMensajeDlg('Configuraci�n Regional Incorrecta.  Contacte a c�mputos.',etError,[etOk],0,dm.Imagenes.Items[4].Bitmap,true);
      exit;
  end;
  if lcEmpresas.text <> '' then
  begin
  try
    conTest.Close;
    conTest.DefaultDatabase := '';
    conTest.ConnectionString := 'Data Source=' + DM.ApplEmpresas.FieldByName('Servidor').Text;
    conTest.ConnectionString := conTest.ConnectionString + ';Initial Catalog=' + DM.ApplEmpresas.FieldByName('Nombre').Text;
    conTest.ConnectionString := conTest.ConnectionString + ';User ID=' + DM.ApplEmpresas.FieldByName('SqlUser').Text;
    conTest.ConnectionString := conTest.ConnectionString + ';Password=' +  DM.ApplEmpresas.FieldByName('SqlPassword').Text;
    conTest.Open;
    //
    DM.qrSucursal.locate('Nombre', lcEmpresas.text,[]);
    qrLogin.Parameters.ParamByName('pUser').Value := edUsuario.Text;
    qrLogin.Parameters.ParamByName('pSuc').Value := DM.qrSucursal.FieldByName('SucursalID').AsString;
    qrLogin.Open;
    If (qrLoginEstatus.AsString<>'A') Then
    begin
        EtMensajeDlg('Usuario Inactivo.  Verifique con Depto. de Tecnolog�a.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
        Exit;
    end;
    Dm.CurUserUniv      := DM.qrSucursal.FieldByName('CodUserUniv').AsString;
    Dm.CurSucursal      := DM.qrSucursal.FieldByName('SucursalID').AsString;
    Dm.CurDescuentoTope := qrLogin.FieldByName('DescuentoTope').Asinteger;
    dm.GroupPrivado     := DM.qrSucursal.FieldByName('GrupoTarifaSuc').AsString;
    dm.GrupoPrecioPriv  := DM.qrSucursal.FieldByName('GrupoPrecioPriv').AsString;
    Act_Printer;
    Verifica_Usuario_Printer;
    if Not(DM.qrSucursal.FieldByName('Feriado').AsBoolean) then
    begin
      if DM.Es_Feriado Then
      begin
        EtMensajeDlg('Sucursal No Accesa los Dias Feriados.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
        Exit;
      end;
      intFactura := DM.SelectPrinter('Epson LX-300+');
      intRecibo  := DM.SelectPrinter('Generic / Text Only');
      intCodigoB := DM.SelectPrinter('Etiqueta');
    end;
{    else
    begin
      if (dm.CurSucursal='PI') then
      begin
        intFactura := DM.SelectPrinter('Epson LX-300+');
        intRecibo  := DM.SelectPrinter('Generic / Text Only');
        intCodigoB := DM.SelectPrinter('Etiqueta');
      end
      else
      begin
        intFactura := DM.SelectPrinter(Ruta_Factura);
        intRecibo  := DM.SelectPrinter(Ruta_Recibo);
      end;
    end;
}
    if (dm.CurRol = 8) or (dm.CurRol = 12) or (dm.CurRol = 14) or (dm.CurRol = 15) then
    Begin
        if (intFactura = -1) and (intRecibo = -1) then
        begin
          Showmessage('Printer de Facturas y Recibos No imprimir�n de forma Autom�tica. Notifique a C�mputos.');
        end
        else if (intFactura = -1) and (intRecibo <> -1) then
        begin
          Showmessage('Printer de Factura No imprimir� de forma Autom�tica. Notifique a C�mputos.');
        end
        else if (intFactura <> -1) and (intRecibo = -1) then
        begin
          Showmessage('Printer de Recibo No imprimir� de forma Autom�tica. Notifique a C�mputos.');
        end;
    end
    else
    begin
        if (intFactura = -1) and (intRecibo = -1) then
        begin
          Dm.Info('Printer de Facturas y Recibos No imprimir�n de forma Autom�tica. Notifique a C�mputos.');
        end
    end;
//    if (not qrLogin.Eof and (descifrar(qrLoginClave_Unicode.Text,qrLoginUserID.Text) = edClave.Text) ) then
    if (not qrLogin.Eof and (DecryptKey(qrLoginClave.Text) = edClave.Text) ) then
     begin
      Close;
     end
    else
     DM.Error(SUsuarioClaveNoE);
  except
    raise;
  end;
  end
  else
   DM.Error('La sucursal no ha sido especificada.');
end;


procedure TfrmDialogSysOpenCompany.btCancelarClick(Sender: TObject);
begin
  inherited;
  conTest.Connected := False;
end;


procedure TfrmDialogSysOpenCompany.cbConfigurarClick(Sender: TObject);
begin
  inherited;
  with TFrmDialogDbSetup.Create(Self) do
  begin
    try
      tvEmpresas.OptionsData.Deleting := False;
      liBtFunciones.Visible := False;
      ShowModal;
    finally
      Free;
    end;
  end;    // with
end;


procedure TfrmDialogSysOpenCompany.Actualizar_Ruta(ruta: String);
Var
  qactu: TADOQuery;
  qfind: TADOQuery;
begin
 If (ruta <> '') Then
   Begin
    qactu := DM.NewQuery;

    qactu.Close;
    qactu.SQL.Text := ' UPDATE SysUsuarios SET RutaBarcode = :rut '+
                      ' WHERE SysUsuarios.UserID = ' + #39 + edusuario.Text + #39;
    qactu.Parameters.ParamByName('rut').Value := ruta;
    qactu.ExecSQL;

    qfind := DM.Find('SELECT * FROM SysUsuarios WHERE UserID = :user', edusuario.Text);

    DM.CurRuta := qfind.FieldByName('RutaBarcode').AsString;

    FreeAndNil(qactu);
    FreeAndNil(qfind);
   End;
end;


procedure TfrmDialogSysOpenCompany.Act_Printer;
Var
  qfind: TADOQuery;
begin
  qfind := DM.Find('SELECT u.RutaBarcode,u.EliminaPrueba,u.CargoAdicionalUSA,u.CambiosEntradaFull,r.visualizar_pantalla,r.Crea_Entrada,r.Crea_Cotizacion,r.Aplica_Pagos,'+
                   ' r.Pago_Efectivo,r.Pago_TC,r.Pago_TD,r.Pago_CK,r.Pago_US,r.Cliente_Seguro,r.Cliente_PlanSocial,r.Cliente_Privado,r.Cliente_VIP,r.Cliente_Funcionario,r.Cliente_CAP,'+
                   ' r.Cliente_Laboratorio,r.Cliente_Clinica,r.Cliente_PlanCia,r.Cliente_Proyectos,r.Cliente_Accionistas,r.Cliente_OtrasCXC,r.Cliente_Exterior,r.Nota_Credito,r.Act_Laboratorio,'+
                   ' r.Control_Tiempo, r.Visualiza_Pagado_Entrada FROM SysUsuarios u inner join SysRoles r on u.Rolid=r.Rolid  WHERE UserID = :user', edusuario.Text);
  DM.CurRuta              := qfind.FieldByName('RutaBarcode').AsString;
  DM.IsEliminaPrueba      := qfind.FieldByName('EliminaPrueba').AsBoolean;
  DM.IsAdicionalUSA       := qfind.FieldByName('CargoAdicionalUSA').AsBoolean;
  DM.IsCambiosEntrada     := qfind.FieldByName('CambiosEntradaFull').AsBoolean;
  DM.IsImprimirLab        := DM.qrSucursal.FieldByName('StImpFactLab').AsBoolean;
  DM.CurRolVisualScr      := qfind.FieldByName('Visualizar_Pantalla').AsBoolean;
  DM.CurRolCreaEntrada    := qfind.FieldByName('Crea_Entrada').AsBoolean;
  DM.CurRolCreaCotizacion := qfind.FieldByName('Crea_Cotizacion').AsBoolean;
  DM.CurRolAplicaPagos    := qfind.FieldByName('Aplica_Pagos').AsBoolean;
  DM.CurRolPagoEfectivo   := qfind.FieldByName('Pago_Efectivo').AsBoolean;
  DM.CurRolPagoTC         := qfind.FieldByName('Pago_TC').AsBoolean;
  DM.CurRolPagoTD         := qfind.FieldByName('Pago_TD').AsBoolean;
  DM.CurRolPagoCK         := qfind.FieldByName('Pago_CK').AsBoolean;
  DM.CurRolPagoUS         := qfind.FieldByName('Pago_US').AsBoolean;
  DM.CurRolClienteSeguro  := qfind.FieldByName('Cliente_Seguro').AsBoolean;
  DM.CurRolClientePlanSocial := qfind.FieldByName('Cliente_PlanSocial').AsBoolean;
  DM.CurRolClientePrivado := qfind.FieldByName('Cliente_Privado').AsBoolean;
  DM.CurRolClienteVIP     := qfind.FieldByName('Cliente_VIP').AsBoolean;
  DM.CurRolClienteFuncionario := qfind.FieldByName('Cliente_Funcionario').AsBoolean;
  DM.CurRolClienteCAP         := qfind.FieldByName('Cliente_CAP').AsBoolean;
  DM.CurRolClienteLaboratorio := qfind.FieldByName('Cliente_Laboratorio').AsBoolean;
  DM.CurRolClienteClinica     := qfind.FieldByName('Cliente_Clinica').AsBoolean;
  DM.CurRolClientePlanCia     := qfind.FieldByName('Cliente_PlanCia').AsBoolean;
  DM.CurRolClienteProyectos   := qfind.FieldByName('Cliente_Proyectos').AsBoolean;
  DM.CurRolClienteAccionistas := qfind.FieldByName('Cliente_Accionistas').AsBoolean;
  DM.CurRolClienteOtrasCXC    := qfind.FieldByName('Cliente_OtrasCXC').AsBoolean;
  DM.CurRolClienteExterior    := qfind.FieldByName('Cliente_Exterior').AsBoolean;
  DM.CurRolNotaCredito        := qfind.FieldByName('Nota_Credito').AsBoolean;
  DM.CurRolActLaboratorio     := qfind.FieldByName('Act_Laboratorio').AsBoolean;
  DM.CurRolControlTiempo      := qfind.FieldByName('Control_Tiempo').AsBoolean;
  DM.Visualiza_Pagado_Entrada := qfind.FieldByName('Visualiza_Pagado_Entrada').AsBoolean;
//  DM.Info(' La Impresora de Labels NO Fue Definida. ' + #13 +
//  DM.Info(' Los Labels del Usuario: ('+ qrLoginNombre.AsString + ').'+ #13 +
//          ' Se Enviaran al Printer: ('+ DM.CurRuta + ').'+ #13 +
//          ' Por Favor Verifique.!!!');
  FreeAndNil(qfind);
end;

Procedure TfrmDialogSysOpenCompany.Verifica_Usuario_Printer;
Var
  qfind: TADOQuery;
begin
    qfind := DM.NewQuery;
    With qfind,sql do
    begin
        Close;
        Clear;
        Add(' SELECT Top 1 Isnull(RutaRecibo,'+#39+#39+') as RutaRecibo,Isnull(RutaFactura,'+#39+#39+') as RutaFactura,Isnull(RutaBarCode,'+#39+#39+') as RutaBarCode,Area FROM SysImpresorasPc ');
        Add(' WHERE ComputerName ='+#39+Get_Computername+#39);
        Add(' AND SesionUserName = '+#39+Get_SesionUserName+#39);
//        Showmessage('Usuario de Printer='+Get_Computername);
//        Showmessage('Usuario de Sesion='+Get_SesionUserName);
        Open;
        if Not isEmpty then
        begin
//              Showmessage('Data Sql Printer Recibo='+Trim(FieldByName('RutaRecibo').AsString)+#13+#10+
//                          'Data Sql Printer Factura='+Trim(FieldByName('RutaFactura').AsString)+#13+#10);
              Ruta_Recibo     := Trim(FieldByName('RutaRecibo').AsString);
              Ruta_Factura    := Trim(FieldByName('RutaFactura').AsString);
              Ruta_BarCode    := FieldByName('RutaBarCode').AsString;
              DM.CurRuta      := Ruta_Barcode;
              DM.CurArea      := FieldByName('Area').AsString;
//              Showmessage('Resultado Variable Printer Recibo='+Ruta_Recibo+#13+#10+
//                          'Resultado Variable Printer Factura='+Ruta_Factura+#13+#10);
        end;
    end;
end;
Procedure TfrmDialogSysOpenCompany.Verifica_Computador_Printer;
Var
  qfind: TADOQuery;
begin
    qfind := DM.NewQuery;
    With qfind do
    begin
        Sql.Text :=' SELECT Top 1 RutaRecibo,RutaFactura,RutaBarCode,SucursalID FROM SysImpresorasPc WHERE ComputerName ='+#39+Get_ComputerName+#39;
        Open;
        if Not isEmpty then
        begin
              Ruta_Recibo     := FieldByName('RutaRecibo').AsString;
              Ruta_Factura    := FieldByName('RutaFactura').AsString;
              Ruta_BarCode    := FieldByName('RutaBarCode').AsString;
              DM.CurRuta      := Ruta_Barcode;
        end;
    end;
end;

Procedure TfrmDialogSysOpenCompany.Verifica_Usuario_Conexion;
Var
  qfind: TADOQuery;
begin
    qfind := DM.NewQuery;
    With qfind do
    begin
        Sql.Text :=' SELECT Top 1 S.Nombre FROM SysImpresorasPc I, ptSucursal S WHERE I.SucursalID=S.SucursalID AND I.SesionUserName = '+#39+Get_SesionUserName+#39;
        Open;
        if Recordcount > 0 then
        begin
              SucursalID_User := FieldByName('Nombre').AsString;
        end;
    end;
end;

Function TfrmDialogSysOpenCompany.Get_ComputerName : String;
  var c1    : dword;
  arrCh : array [0..MAX_PATH] of char;
begin
  c1 := MAX_PATH;
  GetComputerName(arrCh, c1);
  if c1 > 0 then
    result := arrCh
  else
    result := '';
end;


//Obtener el del Usuario - Sesion Actual en la PC.
Function TfrmDialogSysOpenCompany.Get_SesionUserName : String;
var
  BufSize: DWord;
  Buffer: PChar;
begin
 BufSize := 1024;
 Buffer := StrAlloc(BufSize);
 try
  if GetUserName(Buffer, BufSize) then
    SetString(Result, Buffer, BufSize-1)
  else
    RaiseLastOSError;
 finally
   StrDispose(Buffer);
 end;
end;
end.

