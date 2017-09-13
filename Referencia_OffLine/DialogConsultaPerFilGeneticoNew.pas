unit DialogConsultaPerFilGeneticoNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxintl, dxmdaset, JvMemoryDataset, cxGridCardView, cxGridBandedTableView,
  cxLabel, cxDBEdit, cxCalendar, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, LMDCustomButton, LMDButton, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,dlgmensajes;

type
  TfrmDialogConsultaPerfilGeneticoNew = class(TfrmDialogConsulta)
    dbDatosPruebaID: TcxGridDBColumn;
    dbDatosDescripcion: TcxGridDBColumn;
    dbDatosPrecio: TcxGridDBColumn;
    dbDatosPrecioDolares: TcxGridDBColumn;
    qrPruebas: TADOQuery;
    qrPruebasPRUEBAID: TStringField;
    qrPruebasALIAS: TStringField;
    qrPruebasDESCRIPCION: TStringField;
    qrPruebasESTATUS: TIntegerField;
    qrPruebasGRUPOPRUEBAID: TStringField;
    qrPruebasDEPARTAMENTO: TStringField;
    qrPruebasPRECIO: TBCDField;
    qrPruebasPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasCODIGOAXAPTA: TStringField;
    qrPruebasPRECIODOLARES: TBCDField;
    qrPruebasCOSTO: TBCDField;
    qrPruebasEXTERIOR: TIntegerField;
    qrPruebasFACTURARCABECERA: TIntegerField;
    qrPruebasPRUEBAS: TIntegerField;
    qrPruebasTIPO: TStringField;
    qrPruebasORINA: TIntegerField;
    qrPruebasSANGRE: TIntegerField;
    qrPruebasCONDPACIENTE: TStringField;
    qrPruebasCONDMUESTRA: TStringField;
    qrPruebasCODDIAPROC: TStringField;
    qrPruebasDIASRESULTADO: TIntegerField;
    qrPruebasUNIDAD: TStringField;
    qrPruebasABREVIACION: TStringField;
    qrPruebasMEDIO: TIntegerField;
    qrPruebasCOLOR: TIntegerField;
    qrPruebasDEPID: TStringField;
    qrPruebasTIPOAS400: TStringField;
    qrPruebasCODIGOIDAS400: TStringField;
    qrPruebasMEDIOAS400: TStringField;
    qrPruebasNOPROCESAR: TIntegerField;
    qrPruebasCOMENTARIONOPROCESAR: TStringField;
    qrPruebasDATAAREAID: TStringField;
    qrPruebasTIPOMUESTRA: TStringField;
    dbDatosSeleccion: TcxGridDBColumn;
    JvMemoryData1: TJvMemoryData;
    JvMemoryData1Seleccion: TBooleanField;
    JvMemoryData1PruebaID: TStringField;
    JvMemoryData1Descripcion: TStringField;
    JvMemoryData1Precio: TCurrencyField;
    JvMemoryData1PrecioDolares: TCurrencyField;
    dxLayoutControl1Item3: TdxLayoutItem;
    cgSeleccion: TcxGrid;
    dbSeleccion: TcxGridDBTableView;
    lvSeleccion: TcxGridLevel;
    dsSeleccion: TDataSource;
    dbSeleccionSeleccion: TcxGridDBColumn;
    dbSeleccionPruebaID: TcxGridDBColumn;
    dbSeleccionDescripcion: TcxGridDBColumn;
    dbSeleccionPrecio: TcxGridDBColumn;
    dbSeleccionPrecioDolares: TcxGridDBColumn;
    dxLayoutControl1Group3: TdxLayoutGroup;
    JvMemoryData2: TJvMemoryData;
    JvMemoryData2Seleccion: TBooleanField;
    JvMemoryData2PruebaID: TStringField;
    JvMemoryData2Descripcion: TStringField;
    JvMemoryData2Precio: TCurrencyField;
    JvMemoryData2PrecioDolares: TCurrencyField;
    GridStyles: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyleVerde: TcxStyle;
    GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxStyle101: TcxStyle;
    cxStyle102: TcxStyle;
    cxStyle103: TcxStyle;
    cxStyle104: TcxStyle;
    cxStyle105: TcxStyle;
    cxStyle106: TcxStyle;
    cxStyle107: TcxStyle;
    cxStyle108: TcxStyle;
    cxStyle109: TcxStyle;
    cxStyle110: TcxStyle;
    cxStyle111: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    cxGridCardViewStyleSheet1: TcxGridCardViewStyleSheet;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    MenuGrid: TPopupMenu;
    MenuItem1: TMenuItem;
    LbCondicion: TcxLabel;
    JvMemoryData1CodigoIDAS400: TStringField;
    JvMemoryData2CodigoIDAS400: TStringField;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    qrPruebasSEXO: TIntegerField;
    qrPruebasAYUNA: TBooleanField;
    dbDatosAyuna: TcxGridDBColumn;
    JvMemoryData1Ayuna: TBooleanField;
    qrPruebasGPrecio: TStringField;
    dbDatosGPrecio: TcxGridDBColumn;
    JvMemoryData1GPrecio: TStringField;
    qrPruebasCOMENTARIO_REQ: TIntegerField;
    qrPruebasCOD_SEC_PRUEBA: TIntegerField;
    qrPruebasRECID: TLargeintField;
    dbDatosTipoPrueba: TcxGridDBColumn;
    JvMemoryData1TipoPrueba: TStringField;
    spPerfilGenetico: TLMDSimplePanel;
    LMDLabel2: TLMDLabel;
    btCancelarNCF: TLMDButton;
    btAceptaPG: TLMDButton;
    mskDocumento: TcxMaskEdit;
    txtNombre: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel2: TcxLabel;
    cbExtDocumento: TcxExtLookupComboBox;
    cxLabel9: TcxLabel;
    CbSexo: TcxDBImageComboBox;
    cxLabel10: TcxLabel;
    EdFechaBorn: TcxDBDateEdit;
    cxLabel11: TcxLabel;
    mskTelResidencia: TcxDBMaskEdit;
    QrParentesco: TADOQuery;
    QrParentescoId: TIntegerField;
    QrParentescoNombre: TStringField;
    QrParentescoClave: TStringField;
    QrParentescoEstatus: TStringField;
    DsParentesco: TDataSource;
    qrPacientes: TADOQuery;
    qrPacientesRecID: TIntegerField;
    qrPacientesIdentificacion: TStringField;
    qrPacientesNombre: TStringField;
    qrPacientesParentesco: TIntegerField;
    qrPacientesFecha_Nac: TDateTimeField;
    qrPacientesTelefono: TStringField;
    qrPacientesNum_Caso: TStringField;
    qrPacientesFecha_Rec: TDateTimeField;
    qrPacientesTipo: TStringField;
    qrPacientesClienteid: TStringField;
    qrPacientesTelefono2: TStringField;
    qrPacientesFax: TStringField;
    qrPacientesEmail: TStringField;
    qrPacientesCiudadID: TStringField;
    qrPacientesEnvioResultado: TIntegerField;
    qrPacientesCobrarDiferencia: TIntegerField;
    qrPacientesPublicarInternet: TIntegerField;
    qrPacientesSexo: TWordField;
    qrPacientesFechaNacimiento: TDateTimeField;
    qrPacientesDireccion: TStringField;
    DataSource1: TDataSource;
    procedure btnAddClick(Sender: TObject);
    procedure btCancelarNCFClick(Sender: TObject);
    procedure btAceptaPGClick(Sender: TObject);
    procedure dbDatosStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure MenuItem1Click(Sender: TObject);
    procedure dbDatosEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure edbuscarExit(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
    procedure Seleccion_Pruebas;
    Function Verifica_Seleccion : Boolean;
    Function Verifica_Pruebas_Aceptadas: Boolean;
    Function Verifica_Pruebas_Aceptadas_IDAS400: Boolean;
    Function Verifica_Seleccion_AS400: Boolean;
    Function Verifica_Prueba_Entrada(PruebaID : String; Muestrano : String):Boolean;
  private
    { Private declarations }
    GrupoPrecio,Gprivado,SucursalID,Origen,ClienteID,sqlString,ClaseCredito : String;
  public
    { Public declarations }
    ayuna             : TcxStyle;
    normal            : TcxStyle;
    noseguro          : TcxStyle;
    noseguroayuna     : TcxStyle;
    procedure Run;
  end;

var
  frmDialogConsultaPerfilGeneticoNew: TfrmDialogConsultaPerfilGeneticoNew;
  adentrogrid : Boolean;

implementation

uses DataModule, UInterfaseAs400, Main;

{$R *.dfm}


procedure TfrmDialogConsultaPerfilGeneticoNew.btAceptaPGClick(Sender: TObject);
Var qfind : TADOQuery;
begin
  inherited;
  If (Length(trim(mskDocumento.Text))=13) and (Not Dm.GetDigitoVerificador(copy(DM.Cortar_Char('-', mskDocumento.Text),1,11))) Then
  Begin
       EtMensajeDlg('Favor digitar N�mero de C�dula V�lido.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
       mskDocumento.Text := EmptyStr;
       mskDocumento.Setfocus;
       Exit;
  end
  else
  Begin
        qfind := DM.NewQuery;
        qfind.Close;
        qfind.SQL.Text := ' Select Top 1 * from ptcliente c (nolock) '+
                           ' Where identificacion='+#39+mskDocumento.Text+'0'+#39;
        qfind.Open;
        If (qfind.RecordCount = 0) Then
        begin
{          If Not DM.ActPerfil(mskDocumento.Text,
                              txtNombre.Text,
                              cbSexo.EditValue,
                              edFechaBorn.EditingValue,
                              mskTelResidencia.EditText) Then
          begin
            Raise exception.CreateFmt( ' NO Se Pudo Grabar el Perfil Gen�tico. '+ #13 +
                                       ' Se Ha Generado Un Error en el SP. '+ #13 +
                                       ' Por Favor, Intentelo Nuevamente.!!!', []);
          end;
}
        end;
        FreeAndNil(qfind);
  End;
  mskDocumento.EditValue  :=EmptyStr;
  txtNombre.Text          :=EmptyStr;
  cbSexo.ItemIndex        := 0;
  EdFechaBorn.Text        :=EmptyStr;
  mskTelResidencia.Text   :=EmptyStr;
  spPerfilGenetico.Visible:= False;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.btCancelarNCFClick(
  Sender: TObject);
begin
  inherited;
  spPerfilGenetico.Visible := False;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.btnAddClick(Sender: TObject);
begin
  inherited;
  spPerfilGenetico.Visible := True;
  cbExtDocumento.EditValue :='2';
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.BuscarData;
begin
  sqlString:=EmptyStr;
  If edbuscar.Text <> '' then
  begin
    case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + 'PruebaID LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + 'Descripcion LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
    end;
  end;

 //Filtrando las Pruebas del Exterior
  If Factura_St = 'I' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmp.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'M' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmpMod.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'L' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmpLab.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'C' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'F' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmpND.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end;


 //Filtrando las Pruebas del Exterior
  if Factura_St = 'I' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'M' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'L' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'C' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'F' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end;
  with qrPruebas,sql do
  begin
      Filtered := False;
        case edbuscarpor.ItemIndex of
          0 : Filter := sqlString + ' OR ' +'PruebaID = NULL';
          1 : Filter := sqlString + ' OR ' +'Descripcion = NULL';
        end;
      Filtered := True;
  end;
  With qrPruebas,sql do
  begin
    First;
    DsDatos.Enabled := False;
    if not JvMemoryData1.Active then
      JvMemoryData1.Active := true;
    JvMemoryData1.EmptyTable;
    while not eof do
    begin
       JvMemoryData1.Append;
       JvMemoryData1Seleccion.AsBoolean       := False;
       JvMemoryData1PruebaID.AsString         := fieldbyname('PruebaID').AsString;
       JvMemoryData1Descripcion.AsString      := fieldbyname('Descripcion').AsString;
       JvMemoryData1Precio.AsFloat            := fieldbyname('Precio').Asfloat;
       JvMemoryData1PrecioDolares.AsFloat     := fieldbyname('PrecioDolares').Asfloat;
       JvMemoryData1CodigoIDAS400.AsString    := FormatFloat('00000000', FieldByName('CodigoIDAS400').AsInteger);
       JvMemoryData1Ayuna.AsBoolean           := fieldbyname('Ayuna').AsBoolean;
       JvMemoryData1GPrecio.AsString          := FieldByName('GPrecio').AsString;
       JvMemoryData1TipoPrueba.AsString       := FieldByName('Tipo').AsString;
       Next;
    end;
    JvMemoryData1.First;
    DsDatos.Enabled := True;
  End;
end;


procedure TfrmDialogConsultaPerfilGeneticoNew.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
  begin
    If (frmMain.Exis_Vta = True) then
     Begin
      if JvMemoryData2.Active then JvMemoryData2.First;
       while not JvMemoryData2.Eof do
         begin
            if Factura_St = 'I' Then
            begin
               frmMain.frmTmp.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmp.qrEntradaPacienteDetalleCodigoAs400.Value   := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmp.qrEntradaPacienteDetallePruebaID.Value      := JvMemoryData2PruebaID.Value;
               if frmMain.frmTmp.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmp.qrEntradaPacienteDetalle.Post;
               End
            end
            else
            if Factura_St = 'M' Then
            begin
               frmMain.frmTmpMod.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoAs400.Value    := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmpMod.qrEntradaPacienteDetallePruebaID.Value       := JvMemoryData2PruebaID.Value;
               if frmMain.frmTmpMod.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmpMod.qrEntradaPacienteDetalle.Post;
               End;
            end
            else
            if Factura_St = 'L' Then
            begin
               frmMain.frmTmpLab.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmpLab.qrEntradaPacienteDetalleCodigoAs400.Value      := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmpLab.qrEntradaPacienteDetallePruebaID.Value         := JvMemoryData2PruebaID.Value;
               if frmMain.frmTmpLab.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmpLab.qrEntradaPacienteDetalle.Post;
               End;
            end
            else
            if Factura_St = 'C' Then
            begin
               frmMain.frmClinica.qrEntradaPacienteDetalle.Insert;
               frmMain.frmClinica.qrEntradaPacienteDetalleCodigoAs400.Value   := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmClinica.qrEntradaPacienteDetallePruebaID.Value  := JvMemoryData2PruebaID.Value;
               if frmMain.frmClinica.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmClinica.qrEntradaPacienteDetalle.Post;
               End;
            end
            else
            if Factura_St = 'F' Then
            begin
               frmMain.frmTmpND.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoAs400.Value   := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmpND.qrEntradaPacienteDetallePruebaID.Value  := JvMemoryData2PruebaID.Value;
               if frmMain.frmTmpND.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmpND.qrEntradaPacienteDetalle.Post;
               End;
            end;

           JvMemoryData2.Next;
         end;
     end;

    If (frmMain.Exis_Cli = True) then
    Begin
      if JvMemoryData2.Active then JvMemoryData2.First;
        while not JvMemoryData2.Eof do
        begin
           frmMain.frmClinica.qrEntradaPacienteDetalle.Insert;
           frmMain.frmClinica.qrEntradaPacienteDetallePruebaID.Value  := JvMemoryData2PruebaID.Value;
           if frmMain.frmClinica.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
           Begin
              frmMain.frmClinica.qrEntradaPacienteDetalle.Post;
           End;
           JvMemoryData2.Next;
        end;
    end;
   end;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.dbDatosEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  inherited;
  Seleccion_Pruebas;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.dbDatosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
    if ARecord.Values[dbDatosAyuna.Index] = True then
        AStyle := Ayuna
     else if ARecord.Values[dbDatosTipoPrueba.Index] = 'C' then
        AStyle := cxStyle107
     else
        AStyle := normal;
    If (ARecord.Values[dbDatosGPrecio.Index] = '0') Then
    begin
        AStyle := noseguro;
        If ARecord.Values[dbDatosAyuna.Index] = True then AStyle := noseguroayuna;
    end;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.edbuscarExit(Sender: TObject);
begin
  inherited;
  if (edbuscar.Text <> '') then
    BuscarData;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  if (edbuscar.Text <> '') then
    BuscarData;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.FormCreate(Sender: TObject);
Var qgprecio  : TAdoQuery;
begin
  inherited;
    if Factura_St = 'I' Then
    begin
           GrupoPrecio  := Dm.Buscar_GrupoPrecio(frmMain.frmTmp.qrEntradaPacienteClienteID.Value);
           Gprivado     := Dm.GrupoPrivado(frmMain.frmTmp.qrEntradaPacienteSucursalId.Value);
           SucursalID   := frmMain.frmTmp.qrEntradaPacienteSucursalID.Value;
           Origen       := frmMain.frmTmp.qrEntradaPacienteOrigen.Value;
           ClienteID    := frmMain.frmTmp.qrEntradaPacienteClienteID.Value;
           ClaseCredito := frmMain.frmTmp.qrEntradaPacienteClaseCredito.Value;
           if (GPrivado = '1') And (frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='2';
    end
    else
    if Factura_St = 'M' Then
    begin
         GrupoPrecio  := Dm.Buscar_GrupoPrecio(frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value);
         Gprivado     := Dm.GrupoPrivado(frmMain.frmTmpMod.qrEntradaPacienteSucursalID.Value);
         SucursalID   := frmMain.frmTmpMod.qrEntradaPacienteSucursalID.Value;
         Origen       := frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value;
         ClienteID    := frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value;
         ClaseCredito := frmMain.frmTmpMod.qrEntradaPacienteClaseCredito.Value;
         if (GPrivado = '1') And (frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='2';
    end
    else
    if Factura_St = 'L' Then
    begin
         GrupoPrecio  := Dm.Buscar_GrupoPrecio(frmMain.frmTmpLab.qrEntradaPacienteClienteID.Value);
         Gprivado     := Dm.GrupoPrivado(frmMain.frmTmpLab.qrEntradaPacienteSucursalID.Value);
         SucursalID   := frmMain.frmTmpLab.qrEntradaPacienteSucursalID.Value;
         Origen       := frmMain.frmTmpLab.qrEntradaPacienteOrigen.Value;
         ClienteID    := frmMain.frmTmpLab.qrEntradaPacienteClienteID.Value;
         ClaseCredito := frmMain.frmTmpLab.qrEntradaPacienteClaseCredito.Value;
         if (GPrivado = '1') And (frmMain.frmTmpLab.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='2';
    end
    else
    if Factura_St = 'C' Then
    begin
         GrupoPrecio  := Dm.Buscar_GrupoPrecio(frmMain.frmClinica.qrEntradaPacienteClienteID.Value);
         Gprivado     := Dm.GrupoPrivado(frmMain.frmClinica.qrEntradaPacienteSucursalID.Value);
         SucursalID   := frmMain.frmClinica.qrEntradaPacienteSucursalID.Value;
         Origen       := frmMain.frmClinica.qrEntradaPacienteOrigen.Value;
         ClienteID    := frmMain.frmClinica.qrEntradaPacienteClienteID.Value;
         ClaseCredito := frmMain.frmClinica.qrEntradaPacienteClaseCredito.Value;
         if (GPrivado = '1') And (frmMain.frmClinica.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='2';
    end
    else
    if Factura_St = 'F' Then
    begin
         GrupoPrecio  := Dm.Buscar_GrupoPrecio(frmMain.frmTmpND.qrEntradaPacienteClienteID.Value);
         Gprivado     := Dm.GrupoPrivado(frmMain.frmTmpND.qrEntradaPacienteSucursalID.Value);
         SucursalID   := frmMain.frmTmpND.qrEntradaPacienteSucursalID.Value;
         Origen       := frmMain.frmTmpND.qrEntradaPacienteOrigen.Value;
         ClienteID    := frmMain.frmTmpND.qrEntradaPacienteClienteID.Value;
         ClaseCredito := frmMain.frmTmpND.qrEntradaPacienteClaseCredito.Value;
         if (GPrivado = '1') And (frmMain.frmTmpND.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='2';
    end;

//  If (frmMain.frmTmp.qrEntradaPacienteGrupoPrecio.Value = '') Then
//  Begin
//      if GPrivado = '1' Then GrupoPrecio:='2';
//  end;
  If ((Origen = dm.qrParametroGrupoCia.Value) And (Trim(ClaseCredito)='')) Or (Origen = dm.qrParametroGrupoProy.Value) then
  begin
      With qrPruebas,sql do
      begin
        Close;
        Clear;
        Add('SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, p.PRECIO, p.PERMITECAMBIOPRECIO,');
        Add('           p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,');
        Add('           p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,');
        Add('           CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,');
        Add('           p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,');
        Add('           p.RECID, p.SEXO, p.AYUNA,'+#39+'1'+#39+' as GPrecio');
        if Factura_St = 'I' Then
        begin
            Add(' FROM      dbo.ptprueba p Where Descripcion like  '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value)+'%'+#39);
        end
        else
        if Factura_St = 'M' Then
        begin
            Add(' FROM      dbo.ptprueba p Where Descripcion like  '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value)+'%'+#39);
        end
        else
        if Factura_St = 'L' Then
        begin
            Add(' FROM      dbo.ptprueba p Where Descripcion like '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmpLab.qrEntradaPacienteClienteNombre.Value)+'%'+#39);
        end
        else
        if Factura_St = 'C' Then
        begin
            Add(' FROM      dbo.ptprueba p Where Descripcion like  '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmClinica.qrEntradaPacienteClienteNombre.Value)+'%'+#39);
        end
        else
        if Factura_St = 'F' Then
        begin
            Add(' FROM      dbo.ptprueba p Where Descripcion like '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmpND.qrEntradaPacienteClienteNombre.Value)+'%'+#39);
        end;
        Add(' UNION ALL ');
        Add(' SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO,');
        Add('           p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,');
        Add('           p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,');
        Add('           CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,');
        Add('           p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,');
        Add('           p.RECID, p.SEXO, p.AYUNA,'+#39+'1'+#39+' as GPrecio');
        Add(' FROM         dbo.PTACUERDOCOMERCIAL a, dbo.ptprueba p ');
        Add(' WHERE     a.pruebarelation = p.pruebaid ');
        Add('           And convert(varchar(08),Getdate(),112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)');
        Add(' AND p.dataareaid = a.dataareaid ');
        Add(' AND a.clienterelation = '+#39+ClienteID+#39);
        Add(' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL ');
        Add(' WHERE CLIENTERELATION='+#39+ClienteID+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
        Add(' And a.RECID in (SELECT max(RECID) FROM PTACUERDOCOMERCIAL');
        Add(' WHERE CLIENTERELATION='+#39+ClienteID+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
        Add(' UNION ALL ');
        Add(' SELECT     PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEPARTAMENTO, PRECIO, PERMITECAMBIOPRECIO, CODIGOAXAPTA,');
        Add('            PRECIODOLARES, COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS, TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC,');
        Add('            DIASRESULTADO, UNIDAD, ABREVIACION, MEDIO, COLOR, DEPID, TIPOAS400, CONVERT(VARCHAR(10), CASE CODIGOIDAS400 WHEN NULL ');
        Add('            THEN 0 WHEN '+#39+#39+' THEN 0 ELSE CODIGOIDAS400 END) AS CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCESAR, TIPOMUESTRA,');
        Add('            COMENTARIO_REQ, COD_SEC_PRUEBA, DATAAREAID, RECID, SEXO, AYUNA,'+#39+'0'+#39+' as GPrecio  ');
        Add(' FROM         PTPrueba ');
        Add(' WHERE     DataAreaId = '+#39+DM.CurEmpresa+#39+' And PruebaID Not In ( SELECT p.PRUEBAID FROM dbo.PTACUERDOCOMERCIAL a, dbo.ptprueba p ');
        Add(' WHERE     a.pruebarelation = p.pruebaid ');
        Add('           And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)');
        Add(' AND p.dataareaid = a.dataareaid ');
        Add(' AND a.clienterelation = '+#39+ClienteID+#39+')');
        if Factura_St = 'I' Then
        begin
            Add(' And Pruebaid Not In (SELECT  p.PRUEBAID FROM  dbo.ptprueba p Where p.Descripcion like  '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value)+'%'+#39+')');
        end
        else
        if Factura_St = 'M' Then
        begin
            Add(' And Pruebaid Not In (SELECT  p.PRUEBAID FROM  dbo.ptprueba p Where p.Descripcion like  '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value)+'%'+#39+')');
        end
        else
        if Factura_St = 'L' Then
        begin
            Add(' And Pruebaid Not In (SELECT  p.PRUEBAID FROM  dbo.ptprueba p Where p.Descripcion like '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmpLab.qrEntradaPacienteClienteNombre.Value)+'%'+#39+')');
        end
        else
        if Factura_St = 'C' Then
        begin
            Add(' And Pruebaid Not In (SELECT  p.PRUEBAID FROM  dbo.ptprueba p Where p.Descripcion like  '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmClinica.qrEntradaPacienteClienteNombre.Value)+'%'+#39+')');
        end
        else
        if Factura_St = 'F' Then
        begin
            Add(' And Pruebaid Not In (SELECT  p.PRUEBAID FROM  dbo.ptprueba p Where p.Descripcion like '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmpND.qrEntradaPacienteClienteNombre.Value)+'%'+#39+')');
        end;
        Add(' Order by  GPrecio Desc ,p.Tipo Asc ');
        Open;
      end;
  End
  else
  if (GPrivado = '2') and (grupoprecio='') Then
  begin
      With qrPruebas,sql do
      begin
        Close;
        Clear;
        Add('SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO,');
        Add('           p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,');
        Add('           p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,');
        Add('           CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,');
        Add('           p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,');
        Add('           p.RECID, p.SEXO, p.AYUNA,'+#39+'1'+#39+' as GPrecio');
        Add(' FROM         dbo.PtPrecioAlternativo a, dbo.ptprueba p ');
        Add(' WHERE     a.pruebaid = p.pruebaid ');
        Add(' AND p.dataareaid = a.dataareaid ');
        Add(' AND a.SucursalId = '+#39+SucursalID+#39);
        Add(' UNION ALL ');
        Add(' SELECT     PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEPARTAMENTO, PRECIO, PERMITECAMBIOPRECIO, CODIGOAXAPTA,');
        Add('            PRECIODOLARES, COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS, TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC,');
        Add('            DIASRESULTADO, UNIDAD, ABREVIACION, MEDIO, COLOR, DEPID, TIPOAS400, CONVERT(VARCHAR(10), CASE CODIGOIDAS400 WHEN NULL ');
        Add('            THEN 0 WHEN '+#39+#39+' THEN 0 ELSE CODIGOIDAS400 END) AS CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCESAR, TIPOMUESTRA,');
        Add('            COMENTARIO_REQ, COD_SEC_PRUEBA, DATAAREAID, RECID, SEXO, AYUNA,'+#39+'0'+#39+' as GPrecio  ');
        Add(' FROM         PTPrueba ');
        Add(' WHERE     DataAreaId = '+#39+DM.CurEmpresa+#39+' And PruebaID Not In ( SELECT p.PRUEBAID FROM dbo.PtPrecioAlternativo a, dbo.ptprueba p ');
        Add(' WHERE     a.Pruebaid = p.pruebaid ');
        Add(' AND p.dataareaid = a.dataareaid ');
        Add(' AND a.SucursalID = '+#39+SucursalID+#39+')');
        Add(' Order by p.Pruebaid ');
        Open;
      end;
  end
  else If (GPrivado = '1') Then
  begin
      With qrPruebas,sql do
      begin
        Close;
        Clear;
        Add('SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO,');
        Add('           p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,');
        Add('           p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,');
        Add('           CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,');
        Add('           p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,');
        Add('           p.RECID, p.SEXO, p.AYUNA,'+#39+'1'+#39+' as GPrecio');
        Add(' FROM         dbo.PTACUERDOCOMERCIAL a, dbo.ptprueba p ');
        Add(' WHERE     a.pruebarelation = p.pruebaid ');
        Add('           And convert(varchar(08),Getdate(),112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)');
        Add(' AND p.dataareaid = a.dataareaid ');
        Add(' AND a.clienterelation = '+#39+GrupoPrecio+#39);
        Add(' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL ');
        Add(' WHERE CLIENTERELATION='+#39+GrupoPrecio+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
        Add(' And a.RecID in (SELECT max(RecID) FROM PTACUERDOCOMERCIAL');
        Add(' WHERE CLIENTERELATION='+#39+GrupoPrecio+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
        Add(' UNION ALL ');
        Add(' SELECT     PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEPARTAMENTO, PRECIO, PERMITECAMBIOPRECIO, CODIGOAXAPTA,');
        Add('            PRECIODOLARES, COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS, TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC,');
        Add('            DIASRESULTADO, UNIDAD, ABREVIACION, MEDIO, COLOR, DEPID, TIPOAS400, CONVERT(VARCHAR(10), CASE CODIGOIDAS400 WHEN NULL ');
        Add('            THEN 0 WHEN '+#39+#39+' THEN 0 ELSE CODIGOIDAS400 END) AS CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCESAR, TIPOMUESTRA,');
        Add('            COMENTARIO_REQ, COD_SEC_PRUEBA, DATAAREAID, RECID, SEXO, AYUNA,'+#39+'0'+#39+' as GPrecio  ');
        Add(' FROM         PTPrueba ');
        Add(' WHERE     DataAreaId = '+#39+DM.CurEmpresa+#39+' And PruebaID Not In ( SELECT p.PRUEBAID FROM dbo.PTACUERDOCOMERCIAL a, dbo.ptprueba p ');
        Add(' WHERE     a.pruebarelation = p.pruebaid ');
        Add(' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)');
        Add(' AND p.dataareaid = a.dataareaid ');
        Add(' AND a.clienterelation = '+#39+GrupoPrecio+#39+')');
        Add(' Order by Pruebaid ');
        Open;
      end;
  End
  else if (GPrivado = '2') and (grupoprecio<>'') Then
  begin
      With qrPruebas,sql do
      begin
        Close;
        Clear;
        Add('SELECT  distinct   p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO,');
        Add('           p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,');
        Add('           p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,');
        Add('           CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,');
        Add('           p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,');
        Add('           p.RECID, p.SEXO, p.AYUNA,'+#39+'1'+#39+' as GPrecio ');
        Add(' FROM         dbo.PTACUERDOCOMERCIAL a, vwPrueba_Alternativo p ');
        Add(' WHERE     a.pruebarelation = p.pruebaid ');
        Add('           And convert(varchar(08),Getdate(),112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)');
        Add(' AND a.dataareaid = p.dataareaid ');
        Add(' AND a.clienterelation = '+#39+GrupoPrecio+#39);
        Add(' AND p.SucursalId = '+#39+SucursalID+#39);
        Add(' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL ');
        Add(' WHERE CLIENTERELATION='+#39+GrupoPrecio+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
        Add(' And a.RecID in (SELECT max(RecID) FROM PTACUERDOCOMERCIAL');
        Add(' WHERE CLIENTERELATION='+#39+GrupoPrecio+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
        Add(' Union All ');
        Add(' SELECT     PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEPARTAMENTO, PRECIO, PERMITECAMBIOPRECIO, CODIGOAXAPTA,');
        Add('            PRECIODOLARES, COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS, TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC,');
        Add('            DIASRESULTADO, UNIDAD, ABREVIACION, MEDIO, COLOR, DEPID, TIPOAS400, CONVERT(VARCHAR(10), CASE CODIGOIDAS400 WHEN NULL ');
        Add('            THEN 0 WHEN '+#39+#39+' THEN 0 ELSE CODIGOIDAS400 END) AS CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCESAR, TIPOMUESTRA,');
        Add('            COMENTARIO_REQ, COD_SEC_PRUEBA, DATAAREAID, RECID, SEXO, AYUNA,'+#39+'0'+#39+' as GPrecio  ');
        Add(' FROM       dbo.vwPrueba_Alternativo p ');
        Add(' WHERE      p.SucursalID = '+#39+SucursalID+#39);
        Add(' And        DataAreaId = '+#39+DM.CurEmpresa+#39+' And PruebaID Not In ( SELECT distinct a.Pruebarelation FROM dbo.PTACUERDOCOMERCIAL a, dbo.vwPrueba_Alternativo p ');
        Add(' WHERE      a.Pruebarelation = p.pruebaid ');
        Add(' AND        p.dataareaid = a.dataareaid ');
        Add(' AND        a.clienterelation ='+#39+GrupoPrecio+#39);
        Add(' And p.sucursalid='+#39+SucursalID+#39);
        Add(' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112))');
        Add(' Order by   Pruebaid ');
        Open;
      end;
  End;

  With qrPruebas,sql do
  begin

    if IsEmpty then
    begin
      exit;
    end;
    First;
    DsDatos.Enabled := False;
    if not JvMemoryData1.Active then
      JvMemoryData1.Active := true;
    JvMemoryData1.EmptyTable;
    while not eof do
    begin
        JvMemoryData1.Append;
        JvMemoryData1Seleccion.AsBoolean      := False;
        JvMemoryData1PruebaID.AsString        := fieldbyname('PruebaID').AsString;
        JvMemoryData1Descripcion.AsString     := fieldbyname('Descripcion').AsString;
        JvMemoryData1Precio.AsFloat           := fieldbyname('Precio').Asfloat;
        JvMemoryData1PrecioDolares.AsFloat    := fieldbyname('PrecioDolares').Asfloat;
        JvMemoryData1CodigoIDAS400.AsString   := FormatFloat('00000000',FieldByName('CodigoIDAS400').AsInteger);
        JvMemoryData1Ayuna.AsBoolean          := fieldbyname('Ayuna').AsBoolean;
        JvMemoryData1GPrecio.AsString         := FieldByName('GPrecio').AsString;
        JvMemoryData1TipoPrueba.AsString      := FieldByName('Tipo').AsString;
        Next;
    end;
    JvMemoryData1.First;
    DsDatos.Enabled := True;
  End;
  edbuscarpor.ItemIndex := 1;

  if (edbuscar.Text <> '') then
    BuscarData;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if ((key = 13) and (JvMemoryData2.Active)) or ((key = vk_f5) and (JvMemoryData2.Active)) then
  begin
   Close;
   ModalResult := mrOk;
  end;
  if (key = vk_f9) and (JvMemoryData1.Active) then
  begin
      JvMemoryData1.Edit;
      JvMemoryData1Seleccion.AsBoolean  := True;
      Seleccion_Pruebas;
  end;
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.FormShow(Sender: TObject);
Var qgprecio  : TAdoQuery;
begin
  inherited;
  ayuna             := TcxStyle.Create(Self);
  normal            := TcxStyle.Create(Self);
  noseguro          := TcxStyle.Create(Self);
  noseguroayuna     := TcxStyle.Create(Self);
  ayuna.Font.Color  := clWhite;
  ayuna.TextColor   := clGreen;
  normal.Font.Color := clWhite;
  normal.TextColor  := clBlack;
  noseguroayuna.TextColor := clGreen;
  noseguroayuna.Color := DM.ColorUrgente;
  noseguro.Color    := DM.ColorUrgente;
  edbuscar.SetFocus;
end;

procedure TfrmDialogConsultaPerfilGeneticoNew.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if JvMemoryData2.Active then JvMemoryData2.Delete;
end;
procedure TfrmDialogConsultaPerfilGeneticoNew.Seleccion_Pruebas;
begin
  inherited;
    if not JvMemoryData1.Active then
      JvMemoryData1.Active := true;
    if not JvMemoryData2.Active then
      JvMemoryData2.Active := true;
    JvMemoryData1.First;
    DsDatos.Enabled := False;
    while not JvMemoryData1.Eof do
    begin
        if (JvMemoryData1Seleccion.AsBoolean) Then
//        or (dbDatos.Controller.SelectedRecords[].Selected) then
        begin
           qrPruebas.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]);
           If (frmMain.Exis_Vta = True) then
           Begin
               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasTipo.Value = 'P') And
                  (qrPruebasGrupoPruebaId.Value = 'PRU') Then
               Begin
                   //Confirmando el Mensaje No Reactivo del AS-400.
                If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                begin
                     InterfaseAS400.Confirmar_No_Reactivo(qrPruebasCODIGOIDAS400.Value,
                                                          qrPruebasPRUEBAID.Value,
                                                          qrPruebasDESCRIPCION.Value);
                  end;
               end;
               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasEstatus.Value = 0) Then
                 Begin
                   //Confirmando el Mensaje de la Prueba Inactiva.
                   Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                             ' NO Puede Ser Seleccionada. ESTA PROHIBIDA SU FACTURACION. '+ #13 +
                                             ' Por Favor, Comuniquese con el Departamento Tecnico Correspondiente.!!!', []);
                 end;
           End;
          If (Verifica_Seleccion_AS400) or (Verifica_Pruebas_Aceptadas_IDAS400) then
          begin
              DsDatos.Enabled := True;
              JvMemoryData1.Edit;
              JvMemoryData1Seleccion.AsBoolean      := False;
              JvMemoryData1.First;
              Raise exception.CreateFmt(' Existe otra prueba YA seleccionada con el mismo codigo de prueba AS-400.  Verifique con Seguros.', []);
          end;

          //  Validacion Combo en Plan Cia y Proyectos
          If ((Origen = dm.qrParametroGrupoCia.Value) Or (Origen = dm.qrParametroGrupoProy.Value)) And
             ( JvMemoryData1GPrecio.AsString ='0') And (JvMemoryData1TipoPrueba.AsString='C') then
          begin
              If MessageDlg('Combo '+JvMemoryData1Descripcion.AsString+' No pertenece a este cliente.  Esta seguro de esta selecci�n?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
              begin
                  exit;
              end;
          end;
          If (Factura_St='F') then
          begin
              If Verifica_Prueba_Entrada(JvMemoryData1PruebaID.AsString,frmMain.frmTmpND.qrEntradaPacienteMuestrano.Value) then
              Begin
                  DsDatos.Enabled := True;
                  JvMemoryData1.Edit;
                  JvMemoryData1Seleccion.AsBoolean      := False;
                  Raise exception.CreateFmt(' La Prueba: (' + JvMemoryData1PruebaID.AsString + ') ' + JvMemoryData1Descripcion.AsString + #13 +
                                            ' Ya fu� Seleccionada en otra factura y el mismo n�mero de Laboratorio. Favor verificar Pruebas Seleccionadas.', []);
              end;
          end;
          If ((qrPruebasSexo.Value=0) Or (qrPruebasSexo.Value=1)) And
             (qrPruebasEstatus.Value = 1) Then
             Begin
               if Factura_St = 'I' Then
               Begin
                 if (qrPruebasSexo.Value <> frmMain.frmTmp.qrEntradaPacienteSexo.value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este SEXO.'+ #13 +
                                               ' Por favor elija la prueba que correspondiente a dicho sexo.', []);
                 end;
               end
               else
               if Factura_St = 'M' Then
               Begin
                 if (qrPruebasSexo.Value <> frmMain.frmTmpMod.qrEntradaPacienteSexo.value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este SEXO.'+ #13 +
                                               ' Por favor elija la prueba que correspondiente a dicho sexo.', []);
                 end;
               end
               else
               if Factura_St = 'L' Then
               Begin
                 if (qrPruebasSexo.Value <> frmMain.frmTmpLab.qrEntradaPacienteSexo.value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este SEXO.'+ #13 +
                                               ' Por favor elija la prueba que correspondiente a dicho sexo.', []);
                 end;
               end
               else
               if Factura_St = 'C' Then
               Begin
                 if (qrPruebasSexo.Value <> frmMain.frmClinica.qrEntradaPacienteSexo.value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este SEXO.'+ #13 +
                                               ' Por favor elija la prueba que correspondiente a dicho sexo.', []);
                 end;
               end
               else
               if Factura_St = 'F' Then
               Begin
                 if (qrPruebasSexo.Value <> frmMain.frmTmpND.qrEntradaPacienteSexo.value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este SEXO.'+ #13 +
                                               ' Por favor elija la prueba que correspondiente a dicho sexo.', []);
                 end;
               end
          end;
          If (Verifica_Seleccion) or (Verifica_Pruebas_Aceptadas) then
          begin
              DsDatos.Enabled := True;
              JvMemoryData1.Edit;
              JvMemoryData1Seleccion.AsBoolean      := False;
              JvMemoryData1.First;
              Raise exception.CreateFmt(' La Prueba: (' + JvMemoryData1PruebaID.AsString + ') ' + JvMemoryData2Descripcion.AsString + #13 +
                                        ' Ya fu� Seleccionada. Favor verificar Pruebas Seleccionadas.', []);
          end
          else
          begin
            JvMemoryData2.Append;
            JvMemoryData2Seleccion.AsBoolean      := True;
            JvMemoryData2PruebaID.AsString        := JvMemoryData1PruebaID.AsString;
            JvMemoryData2Descripcion.AsString     := JvMemoryData1Descripcion.AsString;
            JvMemoryData2Precio.AsFloat           := JvMemoryData1Precio.AsFloat;
            JvMemoryData2PrecioDolares.AsFloat    := JvMemoryData1PrecioDolares.AsFloat;
            JvMemoryData2CodigoIDAS400.AsString   := JvMemoryData1CodigoIDAS400.AsString;
            JvMemoryData1.Edit;
            JvMemoryData1Seleccion.AsBoolean      := False;
            edbuscar.Text := '';
            edbuscar.SetFocus;
          end;
        end;
        JvMemoryData1.Next;
    end;
    JvMemoryData1.Locate('PruebaID',JvMemoryData2PruebaID.AsString,[]);
//    JvMemoryData1.First;
    DsDatos.Enabled := True;
end;


Function TfrmDialogConsultaPerfilGeneticoNew.Verifica_Pruebas_Aceptadas: Boolean;
begin
  inherited;
  Result:=false;
    if Factura_St = 'I' Then
    begin
        if frmMain.frmTmp.qrEntradaPacienteDetalle.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
            Result:=true
    end else if Factura_St = 'M' Then
    begin
        if frmMain.frmTmpMod.qrEntradaPacienteDetalle.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
            Result:=true
    end else if Factura_St = 'L' Then
    begin
        if frmMain.frmTmpLab.qrEntradaPacienteDetalle.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
            Result:=true
    end else if Factura_St = 'C' Then
    begin
        if frmMain.frmClinica.qrEntradaPacienteDetalle.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
            Result:=true
    end else if Factura_St = 'F' Then
    begin
        if frmMain.frmTmpND.qrEntradaPacienteDetalle.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
            Result:=true
    end;

End;
Function TfrmDialogConsultaPerfilGeneticoNew.Verifica_Pruebas_Aceptadas_IDAS400: Boolean;
begin
  inherited;
  Result:=false;
    if Factura_St = 'I' Then
    begin
    if frmMain.frmTmp.qrEntradaPacienteDetalle.Locate('CodigoAS400',JvMemoryData1CodigoIDAS400.AsString,[]) then
            Result:=true
    end else if Factura_St = 'M' Then
    begin
        if frmMain.frmTmpMod.qrEntradaPacienteDetalle.Locate('CodigoAS400',JvMemoryData1CodigoIDAS400.AsString,[]) then
            Result:=true
    end else if Factura_St = 'L' Then
    begin
        if frmMain.frmTmpLab.qrEntradaPacienteDetalle.Locate('CodigoAS400',JvMemoryData1CodigoIDAS400.AsString,[]) then
            Result:=true
    end else if Factura_St = 'C' Then
    begin
        if frmMain.frmClinica.qrEntradaPacienteDetalle.Locate('CodigoAS400',JvMemoryData1CodigoIDAS400.AsString,[]) then
            Result:=true
    end else if Factura_St = 'F' Then
    begin
        if frmMain.frmTmpND.qrEntradaPacienteDetalle.Locate('CodigoAS400',JvMemoryData1CodigoIDAS400.AsString,[]) then
            Result:=true
    end;

End;

Function TfrmDialogConsultaPerfilGeneticoNew.Verifica_Seleccion: Boolean;
begin
  inherited;
  Result:=false;
    if JvMemoryData2.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
        Result:=true
End;
Function TfrmDialogConsultaPerfilGeneticoNew.Verifica_Seleccion_AS400: Boolean;
begin
  inherited;
  Result:=false;
    if JvMemoryData2.Locate('CodigoIDAS400',JvMemoryData1CodigoIDAs400.AsString,[]) then
        Result:=true
End;
Function  TfrmDialogConsultaPerfilGeneticoNew.Verifica_Prueba_Entrada(PruebaID : String; Muestrano : String):Boolean;
Var qfind : TADOQuery;
begin
      qfind := DM.NewQuery;
      qfind.Close;
      qfind.SQL.Text := ' SELECT PRUEBAID FROM PTEntradaPacienteDetalle '+
                        ' WHERE Muestrano = '+#39+Muestrano+#39+
                        ' And PruebaID='+#39+PruebaID+#39+
                        ' And Ncr_Estatus='+'0'+
                        ' AND DataAreaId = '+#39+DM.CurEmpresa+#39;
      qfind.Open;
      if (qfind.RecordCount > 0) then
      Begin
          result := True;
      end
      Else
        result := False;
      FreeAndNil(qfind);
end;
end.

