unit DatosMaterialesFactura;

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
  cxGrid, cxPC, JvExControls, JvComponent, JvEnterTab, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxintl;

type
  TfrmDatosMaterialesFactura = class(TfrmDatosModule)
    qrMaterialesFactura: TADOQuery;
    tvDatosCondPaciente: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    tvDatosColumn1: TcxGridDBColumn;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem1: TdxLayoutItem;
    qrMaterialesFacturaMaterialid: TStringField;
    qrMaterialesFacturaCantidad: TBCDField;
    qrMaterialesFacturapruebaid: TStringField;
    qrMaterialesFacturaDescripcion: TStringField;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcDatosItem3: TdxLayoutItem;
    qrMaterialesFacturarefrecid: TIntegerField;
    qrMaterialesFacturaColor: TStringField;
    qrMaterialesFacturaRecId: TIntegerField;
    qrMaterialesFacturarefrecidLine: TIntegerField;
    qrMaterialesFacturaLineaNo: TIntegerField;
    procedure qrMaterialesFacturaBeforeInsert(DataSet: TDataSet);
    procedure qrMaterialesFacturaAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Buscar_Linea: Integer;
    procedure SetRefrecId(_refrecid : string);
  end;

var
  frmDatosMaterialesFactura: TfrmDatosMaterialesFactura;
  refrecid  : integer;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosMaterialesFactura.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrMateriales.Close;
  DM.qrMateriales.Open;

  DM.qrPruebas.Close;
  DM.qrPruebas.Open;
end;


procedure TfrmDatosMaterialesFactura.qrMaterialesFacturaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  qrMaterialesFacturaRefRecid.Value := refrecid;
end;


procedure TfrmDatosMaterialesFactura.qrMaterialesFacturaBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  qrMaterialesFacturaLineaNo.Value := Buscar_Linea();
end;


procedure TfrmDatosMaterialesFactura.SetRefrecId(_refrecid : string);
begin
 refrecid := strtoint(_refrecid);

 qrMaterialesFactura.Close;
 qrMaterialesFactura.Parameters[0].Value := refrecid;
 qrMaterialesFactura.Open;
end;


function TfrmDatosMaterialesFactura.Buscar_Linea: Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT MAX(LineaNo) FROM PTMaterialesFactura ';
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;


end.
