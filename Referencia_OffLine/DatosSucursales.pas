unit DatosSucursales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxMemo, cxDBEdit, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxCheckBox, cxintl, cxCurrencyEdit;

type
  TfrmDatosSucursales = class(TfrmDatosModule)
    qrSucursales: TADOQuery;
    tvDatosSUCURSALID: TcxGridDBColumn;
    tvDatosNOMBRE: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    EdSucursal: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdNombre: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem6: TdxLayoutItem;
    cxDBExtLookupComboBox3: TcxDBExtLookupComboBox;
    lcDatosItem8: TdxLayoutItem;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcDatosItem7: TdxLayoutItem;
    CbImpresiones: TcxDBCheckBox;
    lcDatosItem9: TdxLayoutItem;
    qrSucursalesNOMBRE: TStringField;
    qrSucursalesSUCURSALID: TStringField;
    qrSucursalesDIRECCION: TMemoField;
    qrSucursalesTELEFONO: TStringField;
    qrSucursalesFAX: TStringField;
    qrSucursalesCLIENTEID: TStringField;
    qrSucursalesGRUPOID: TStringField;
    qrSucursalesCLIENTE_UNO: TStringField;
    qrSucursalesCLIENTE_DOS: TStringField;
    qrSucursalesIMPRESIONES: TIntegerField;
    qrSucursalesDATAAREAID: TStringField;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    EdSucursalAS400: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    qrSucursalesSUCURSAL: TIntegerField;
    tvDatosSUCURSAL: TcxGridDBColumn;
    tvDatosIMPRESIONES: TcxGridDBColumn;
    qrSucursalesSINPRFILTER: TIntegerField;
    qrSucursalesMONTO_PORC: TBCDField;
    qrSucursalesMONTO_CANT: TBCDField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDatosItem11: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    lcDatosItem12: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem13: TdxLayoutItem;
    qrSucursalesBanco_Cuenta_1: TStringField;
    qrSucursalesBanco_Nombre_1: TStringField;
    qrSucursalesBanco_Cuenta_2: TStringField;
    qrSucursalesBanco_Nombre_2: TStringField;
    lcDatosGroup3: TdxLayoutGroup;
    lcDatosGroup4: TdxLayoutGroup;
    lcDatosGroup5: TdxLayoutGroup;
    lcDatosItem14: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem15: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosGroup7: TdxLayoutGroup;
    lcDatosItem16: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosItem17: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    lcDatosGroup9: TdxLayoutGroup;
    lcDatosGroup10: TdxLayoutGroup;
    lcDatosGroup8: TdxLayoutGroup;
    lcDatosGroup6: TdxLayoutGroup;
    qrSucursalesRuta_Foto: TStringField;
    lcDatosItem18: TdxLayoutItem;
    lcDatosGroup11: TdxLayoutGroup;
    EdRutaFoto: TcxDBTextEdit;
    qrSucursalesRECID: TLargeintField;
    lcDatosItem20: TdxLayoutItem;
    chkPlanSocial: TcxDBCheckBox;
    lcGridItem1: TdxLayoutItem;
    EdUserUniversal: TcxDBTextEdit;
    lcDatosItem19: TdxLayoutItem;
    qrSucursalesStPlanSocial: TStringField;
    qrSucursalesCodUserUniv: TStringField;
    qrSucursalesStImpLabelLab: TStringField;
    qrSucursalesGrupoTarifaSuc: TWordField;
    qrSucursalesFuera_Linea: TBooleanField;
    qrSucursalesFeriado: TBooleanField;
    qrSucursalesStImpFactLab: TBooleanField;
    chkImpLabel: TcxDBCheckBox;
    lcGridItem2: TdxLayoutItem;
    lcDatosItem21: TdxLayoutItem;
    meGrupoTarifaSuc: TcxDBMaskEdit;
    lcDatosItem22: TdxLayoutItem;
    chkFueraLinea: TcxDBCheckBox;
    lcGridItem3: TdxLayoutItem;
    lcDatosItem23: TdxLayoutItem;
    chkFeriado: TcxDBCheckBox;
    lcDatosItem24: TdxLayoutItem;
    chkImpFactLab: TcxDBCheckBox;
    lcDatosItem25: TdxLayoutItem;
    procedure cxButton1Click(Sender: TObject);
    procedure qrSucursalesNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qrSucursalesBeforePost(DataSet: TDataSet);
    procedure CrearSecuencias;
    procedure Crear_Nuevas_Secuencias;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosSucursales: TfrmDatosSucursales;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmDatosSucursales.CrearSecuencias;
var
 qdoc, qinsert : TADOquery;
begin
 qdoc    := DM.NewQuery;
 qinsert := DM.NewQuery;

 qdoc.close;
 qdoc.SQL.Text := ' SELECT * FROM PTTipoDocumento ';
 qdoc.Open;

 qinsert.Close;
 qinsert.SQL.Text := ' INSERT INTO PTSecuenciaDoc(TipoDoc,Secuencia,UsarIdentificador,SucursalId,SucursalAS400) '+
                     ' VALUES (:0, :1, :2, :3, :4)';
 while (not qdoc.Eof) do
 begin
  qinsert.Parameters[0].Value := qdoc.FieldByName('TipoDoc').AsString;
  qinsert.Parameters[1].Value := 1;

  if (qdoc.FieldByName('TipoDoc').AsString = 'MT') then
    qinsert.Parameters[2].Value := 0
  else
    qinsert.Parameters[2].Value := 1;

  qinsert.Parameters[3].Value := qrSucursalesSucursalId.Value;
  qinsert.Parameters[4].Value := qrSucursalesSucursal.Value;
  qinsert.ExecSQL;

  qdoc.Next;
 end;

 FreeAndNil(qdoc);
 FreeAndNil(qinsert);
end;


procedure TfrmDatosSucursales.cxButton1Click(Sender: TObject);
begin
  inherited;
  If ( DM.Mensaje('Desea Agregar Esta Sucursal a la Tabla de Secuencia de Documento?' ,mb_yesno ) = id_yes ) Then
    Begin
      Crear_Nuevas_Secuencias; //CrearSecuencias;
      DM.Info('Las Secuencias de los Documentos Han Sido Registradas.!!!');
    end;
end;

procedure TfrmDatosSucursales.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrClientes.Close;
  DM.qrClientes.Open;

  DM.qrGrupoCliente.Close;
  DM.qrGrupoCliente.Open;

  EdSucursalAS400.Properties.ReadOnly := True;
end;

procedure TfrmDatosSucursales.qrSucursalesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrSucursales.State = dsInsert then
    CrearSecuencias;
end;

procedure TfrmDatosSucursales.qrSucursalesNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrSucursalesImpresiones.Value := 1;
end;


procedure TfrmDatosSucursales.Crear_Nuevas_Secuencias;
var
 qdoc, qinsert, qrSucur, qrValida : TADOquery;
begin
 qdoc     := DM.NewQuery;
 qinsert  := DM.NewQuery;
 qrSucur  := DM.NewQuery;
 qrValida := DM.NewQuery;

 qrSucur.close;
 qrSucur.SQL.Text := ' SELECT * FROM PTSucursal Order by SucursalId ';
 qrSucur.Open;

 qrSucur.First;
 While Not qrSucur.Eof Do
  Begin
    qdoc.close;
    qdoc.SQL.Text := ' SELECT * FROM PTTipoDocumento Order by TipoDoc ';
    qdoc.Open;

    qinsert.Close;
    qinsert.SQL.Text := ' INSERT INTO PTSecuenciaDoc (TipoDoc, Secuencia, UsarIdentificador, SucursalId, SucursalAS400) '+
                        ' VALUES (:0, :1, :2, :3, :4)';

    qdoc.First;
    While Not qdoc.Eof Do
     Begin
       qrValida.Close;
       qrValida.SQL.Text := ' SELECT * FROM PTSecuenciaDoc '+
                            ' WHERE TipoDoc = :tpo '+
                            ' AND SucursalId = :suc ';
       qrValida.Parameters.ParamByName('tpo').Value := qdoc.FieldByName('TipoDoc').AsString;;
       qrValida.Parameters.ParamByName('suc').Value := qrSucur.FieldByName('SucursalId').AsString;;
       qrValida.Open;

       If (qrValida.RecordCount = 0) Then
         Begin
           qinsert.Parameters[0].Value := qdoc.FieldByName('TipoDoc').AsString;
           qinsert.Parameters[1].Value := 1;
           qinsert.Parameters[2].Value := 0;
           qinsert.Parameters[3].Value := qrSucur.FieldByName('SucursalId').AsString;;
           qinsert.Parameters[4].Value := qrSucur.FieldByName('Sucursal').AsString;;
           qinsert.ExecSQL;
         End;

       qdoc.Next;
     End;

    qrSucur.Next;
  End;

 FreeAndNil(qdoc);
 FreeAndNil(qinsert);
 FreeAndNil(qrSucur);
 FreeAndNil(qrValida);

 DM.Info('Las Nuevas Secuencias de los Documentos Han Sido Registradas.!!!');
end;


end.

