unit DatosImpresoras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxContainer, cxTextEdit, cxDBEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ABSMain,
  JvStringHolder, StdActns, ActnList, ADODB, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxCommon,
  dxPScxGridLnk, JvComponentBase, JvFormPlacement, ExtCtrls, dxLayoutControl,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxPC, JvExControls, JvComponent, JvEnterTab, cxintl, cxMaskEdit,
  cxButtonEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxDBLookupComboBox;

type
  TfrmDatosImpresoras = class(TfrmDatosModule)
    qrPrintersParam: TADOQuery;
    lcDatosGroup1: TdxLayoutGroup;
    EdBarCode: TcxDBButtonEdit;
    lcDatosItem4: TdxLayoutItem;
    EdReporte: TcxDBButtonEdit;
    lcDatosItem5: TdxLayoutItem;
    EdRecibo: TcxDBButtonEdit;
    lcDatosItem6: TdxLayoutItem;
    EdFactura: TcxDBButtonEdit;
    lcDatosItem7: TdxLayoutItem;
    qrPrintersParamComputerName: TStringField;
    qrPrintersParamSesionUserName: TStringField;
    qrPrintersParamRutaFactura: TStringField;
    qrPrintersParamRutaRecibo: TStringField;
    qrPrintersParamRutaReportes: TStringField;
    qrPrintersParamRutaBarcode: TStringField;
    qrPrintersParamRutaOtros1: TStringField;
    qrPrintersParamRutaOtros2: TStringField;
    tvDatosComputerName: TcxGridDBColumn;
    tvDatosRutaFactura: TcxGridDBColumn;
    tvDatosRutaRecibo: TcxGridDBColumn;
    PrintDialog1: TPrintDialog;
    tvDatosSesionUserName: TcxGridDBColumn;
    tvDatosRutaBarcode: TcxGridDBColumn;
    EdUserSesion: TcxDBButtonEdit;
    lcDatosItem3: TdxLayoutItem;
    EdComputerName: TcxDBButtonEdit;
    lcDatosItem8: TdxLayoutItem;
    qrPrintersParamSucursalID: TStringField;
    tvDatosSucursalID: TcxGridDBColumn;
    lcDatosItem2: TdxLayoutItem;
    cboExtSucursal: TcxDBExtLookupComboBox;
    qrPrintersParamArea: TStringField;
    lcDatosItem1: TdxLayoutItem;
    cboArea: TcxDBComboBox;
    tvDatosArea: TcxGridDBColumn;
    procedure EdUserSesionPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EdComputerNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qrPrintersParamNewRecord(DataSet: TDataSet);
    procedure EdReportePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EdBarCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EdReciboPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure EdFacturaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Type
  TFormulario = class(TForm)
End;

var
  frmDatosImpresoras                     : TfrmDatosImpresoras;
  Form1, Form2, Form3, Form4             : TFormulario;
  Dialog1, Dialog2, Dialog3, Dialog4     : TPrintDialog;


implementation

uses Main, DataModule, Printers, DialogDbSetup, Registry;

{$R *.dfm}

procedure TfrmDatosImpresoras.EdFacturaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var
  Modo : Cardinal;
  Device, Driver, Port : array [0..255] of Char;
begin
  inherited;
  if (Dialog1.Execute) And (qrPrintersParam.State in [dsEdit,dsInsert]) Then
   begin
     Printer.GetPrinter(Device, Driver, Port, Modo);
     If Device <> '' then
       Begin
         qrPrintersParamRutaFactura.Value := Device;
       end
     else
       DM.Info(' La Impresora de las Facturas NO Fue Definida.!!!.' + #13 + ' Por Favor Verifique.!!!');
   end;
end;


procedure TfrmDatosImpresoras.EdReciboPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var
  Modo : Cardinal;
  Device, Driver, Port : array [0..255] of Char;
begin
  inherited;
  if (Dialog2.Execute) And (qrPrintersParam.State in [dsEdit,dsInsert]) Then
   begin
     Printer.GetPrinter(Device, Driver, Port, Modo);
     If Device <> '' then
       Begin
         qrPrintersParamRutaRecibo.Value := Device;
       end
     else
       DM.Info(' EL Printer de los Recibos NO Fue Definido.!!!.' + #13 + ' Por Favor Verifique.!!!');
   end;
end;


procedure TfrmDatosImpresoras.EdBarCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var
  Modo : Cardinal;
  Device, Driver, Port : array [0..255] of Char;
begin
  inherited;
  if (Dialog3.Execute) And (qrPrintersParam.State in [dsEdit,dsInsert]) Then
   begin
     Printer.GetPrinter(Device, Driver, Port, Modo);
     If Device <> '' then
       Begin
         qrPrintersParamRutaBarcode.Value := Device;
       end
     else
       DM.Info(' La Impresora de Labels NO Fue Definida.!!!.' + #13 + ' Por Favor Verifique.!!!');
   end;
end;


procedure TfrmDatosImpresoras.EdReportePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var
  Modo : Cardinal;
  Device, Driver, Port : array [0..255] of Char;
begin
  inherited;
  if (Dialog4.Execute) And (qrPrintersParam.State in [dsEdit,dsInsert]) Then
   begin
     Printer.GetPrinter(Device, Driver, Port, Modo);
     If Device <> '' then
       Begin
         qrPrintersParamRutaReportes.Value := Device;
       end
     else
       DM.Info(' EL Printer de los Reportes NO Fue Definido.!!!.' + #13 + ' Por Favor Verifique.!!!');
   end;
end;


procedure TfrmDatosImpresoras.FormCreate(Sender: TObject);
begin
  inherited;
  //Creando los Dialog para Seleccionar las Impresoras.
  Form1.Caption := 'Ruta del Printer de las Facturas.';
  Dialog1 := TPrintDialog.Create(Form1);

  Form2.Caption := 'Ruta del Printer de los Recibos.';
  Dialog2 := TPrintDialog.Create(Form2);

  Form3.Caption := 'Ruta del Printer Codigo de Barra.';
  Dialog3 := TPrintDialog.Create(Form3);

  Form4.Caption := 'Ruta de los Reportes.';
  Dialog4 := TPrintDialog.Create(Form4);
end;


procedure TfrmDatosImpresoras.qrPrintersParamNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrPrintersParamComputerName.Value := frmMain.Get_ComputerName;
  qrPrintersParamSesionUserName.Value := frmMain.Get_SesionUserName;
{
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey( 'SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon', False );
//  Label1.Caption := Registro.ReadString( 'DefaultDomainName' );
  Registro.CloseKey;
  Registro.Destroy;
}
end;


procedure TfrmDatosImpresoras.EdComputerNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
{
  inherited;
  if (qrPrintersParam.State in [dsEdit,dsInsert]) Then
    qrPrintersParamComputerName.Value := frmMain.Get_ComputerName;
}
end;


procedure TfrmDatosImpresoras.EdUserSesionPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
{
  inherited;
  if (qrPrintersParam.State in [dsEdit,dsInsert]) Then
    qrPrintersParamSesionUserName.Value := frmMain.Get_SesionUserName;
}    
end;

END.

