unit DialogConsultaPacienteTar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro, cxintl, cxLabel,dlgmensajes;

type
  TfrmDialogConsultaPacienteTar = class(TfrmDialogConsulta)
    qrPacientes: TADOQuery;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    BtNuevo: TcxButton;
    qrPacientesCLIENTEID: TStringField;
    qrPacientesNOMBRE: TStringField;
    qrPacientesTELEFONO: TStringField;
    qrPacientesIDENTIFICACION: TStringField;
    qrPacientesTARJETAID: TStringField;
    qrPacientesPUNTOSTOTAL: TIntegerField;
    qrPacientesPUNTOSUSADOS: TIntegerField;
    qrPacientesUSEREMISION: TStringField;
    qrPacientesFECHAEMISION: TDateTimeField;
    qrPacientesUSERMODIFICA: TStringField;
    qrPacientesFECHAMODIFICA: TDateTimeField;
    dbDatosCLIENTEID: TcxGridDBColumn;
    dbDatosNOMBRE: TcxGridDBColumn;
    dbDatosTELEFONO: TcxGridDBColumn;
    dbDatosIDENTIFICACION: TcxGridDBColumn;
    dbDatosTARJETAID: TcxGridDBColumn;
    dbDatosPUNTOSTOTAL: TcxGridDBColumn;
    dbDatosPUNTOSUSADOS: TcxGridDBColumn;
    dbDatosESTATUS: TcxGridDBColumn;
    qrPacientesESTATUS: TBooleanField;
    procedure edbuscarExit(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaPacienteTar: TfrmDialogConsultaPacienteTar;
  adentrogrid, _buscar : Boolean;

implementation

uses DataModule, DatosTarjeta, Main,DatosTarjetaNew;

{$R *.dfm}


procedure TfrmDialogConsultaPacienteTar.BuscarData;
var
 sqlString : String;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;
 sqlString := ' SELECT C.CLIENTEID,C.NOMBRE,TELEFONO,C.IDENTIFICACION,'+
              ' T.TARJETAID,PUNTOSTOTAL,PUNTOSUSADOS,USEREMISION,FECHAEMISION,'+
              ' USERMODIFICA,FECHAMODIFICA,T.ESTATUS '+
              ' FROM PTCLIENTE C INNER JOIN PTTARJETA T '+
              ' ON C.CLIENTEID = T.PACIENTEID ';

 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND C.IDENTIFICACION LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND TELEFONO LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' AND NOMBRE LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     3 : sqlString := sqlString + ' AND TARJETAID LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     4 : sqlString := sqlString + ' AND PACIENTEID LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
   end;
 end;

 If (Trim(edbuscar.Text) = EmptyStr) or (Length(Trim(edbuscar.Text)) < 5) then
 begin
      EtMensajeDlg('Debe escribir criterio de b�squeda m�s exacto en el Texto.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      edbuscar.SetFocus;
      Exit;
 end;
 sqlString := sqlString + ' Order By PACIENTEID ';
 qrPacientes.Close;
 qrPacientes.SQL.Text := sqlString;
 qrPacientes.Open;
end;

procedure TfrmDialogConsultaPacienteTar.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := True;
  _buscar := False;
end;

procedure TfrmDialogConsultaPacienteTar.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := False;
  _buscar := True;
end;

procedure TfrmDialogConsultaPacienteTar.edbuscarExit(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
end;

procedure TfrmDialogConsultaPacienteTar.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
//  BuscarData;
end;

procedure TfrmDialogConsultaPacienteTar.FormCreate(Sender: TObject);
begin
  inherited;
  dsDatos.DataSet := qrPacientes;
  edbuscarpor.ItemIndex := 0
end;

procedure TfrmDialogConsultaPacienteTar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  if (key = 13) and (AdentroGrid) then
    begin
      Close;
      ModalResult := mrOk;
    end;

  if (key = 13) and (_buscar) then
    begin
      If (AdentroGrid) then
        Begin
          Close;
          ModalResult := mrOk;
        end
      Else
        BuscarData;
    end;

  if (key = 27) then
    begin
      Close;
    end;

  if (key = vk_f1) then
    begin
      BtNuevo.Click;
    end;

  if (key = vk_f9) then
    begin
      Close;

      if (qrPacientes.RecordCount >0) then
        ModalResult := mrOk;
    end;
end;

procedure TfrmDialogConsultaPacienteTar.FormShow(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
  edbuscar.SetFocus;
end;


procedure TfrmDialogConsultaPacienteTar.Run;
Var
 qfind : TADOQuery;
 qfindciudad : TADOquery;
 ClienteFactura, strNombreCliente : string;
begin
  _buscar := True;
 AdentroGrid := false;
 showmodal;

 if ModalResult = mrOk then
 begin
          If (qrPacientes.RecordCount > 0) Then
          Begin

              If (qrPacientesEstatus.AsString = 'I') Then
                Raise exception.CreateFmt(' El Paciente: (' + qrPacientesClienteID.AsString + ') ' + qrPacientesNombre.AsString + #13 +
                                          ' NO Puede Facturarse porque: '+ #13 + ' El Paciente Esta INACTIVO.!!! ' + #13 +
                                          ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);
          End;
          If qrPacientesTarjetaID.AsInteger > 0 then
          begin
            frmMain.frmTar.qrTarjeta.Close;
            With frmMain.frmTar.qrTarjeta, sql do
            begin
              Close;
              Clear;
              Text :='Select *  From PtTarjeta Where TarjetaID = '+qrPacientesTarjetaID.Value;
              Open;
            end;
          end;
          If (frmMain.frmTar.qrTarjeta.RecordCount > 0) Then
          Begin
              frmMain.frmTar.qrTarjeta.Edit;
              frmMain.frmTar.qrTarjetaTarjetaID.Value                 := qrPacientesTarjetaID.Value;
              frmMain.frmTar.qrTarjetaPacienteId.Value                := qrPacientesCLIENTEID.Value;
              frmMain.frmTar.lblNombrePaciente.Caption                := qrPacientesNombre.Value;
              frmMain.frmTar.qrTarjetaPuntosTotal.Value               := qrPacientesPuntosTotal.Value;
              frmMain.frmTar.qrTarjetaPuntosUsados.Value              := qrPacientesPuntosUsados.Value;
              frmMain.frmTar.qrTarjetaUserEmision.Value               := qrPacientesUserEmision.Value;
              frmMain.frmTar.qrTarjetaFechaEmision.Value              := qrPacientesFechaEmision.Value;
              frmMain.frmTar.qrTarjetaEstatus.Value                   := qrPacientesEstatus.Value;
          end;
//          frmMain.frmTar.qrTarjeta.Post;
          Exit;
  end;
end;
end.

