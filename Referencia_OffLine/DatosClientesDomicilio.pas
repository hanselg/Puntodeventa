unit DatosClientesDomicilio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, StrUtils, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  dxLayoutControl, cxControls, cxPC, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, ADODB, cxImageComboBox,
  cxCheckBox, cxTimeEdit,cxDbLookupComboBox,cxDBExtLookupComboBox,cxSpinEdit,
  cxMemo, DateUtils, cxBlobEdit, cxintl, cxImage, cxLookupEdit, cxDBLookupEdit,
  dlgmensajes, cxLabel, LMDCustomButton, LMDButton, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache,ppTypes, ppComm,
  ppRelatv, ppProd, ppReport, myChkBox, ppStrtch, ppMemo, cxMRUEdit, jpeg,
  cxGridCardView, cxGridBandedTableView;

type
  TfrmDatosClientesDomicilio = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    BtPacientes: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    BtTransacciones: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    BtEliminar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    BtCancelar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    BtImprimir: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    BtGrabar: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl2Item10: TdxLayoutItem;
    dxLayoutControl2Item11: TdxLayoutItem;
    EdClienteDom: TcxDBTextEdit;
    dxLayoutControl2Item12: TdxLayoutItem;
    EdNombres: TcxDBTextEdit;
    dxLayoutControl2Item13: TdxLayoutItem;
    dxLayoutControl2Group7: TdxLayoutGroup;
    memDireccion: TcxDBMemo;
    dxLayoutControl2Item1: TdxLayoutItem;
    EdFechaBorn: TcxDBDateEdit;
    CbSexo: TcxDBImageComboBox;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group6: TdxLayoutGroup;
    dxLayoutControl2Item14: TdxLayoutItem;
    dxLayoutControl2Item15: TdxLayoutItem;
    dxLayoutControl2Group9: TdxLayoutGroup;
    mskTelResidencia: TcxDBMaskEdit;
    mskTelCelular: TcxDBMaskEdit;
    dxLayoutControl2Group10: TdxLayoutGroup;
    mskTelOficina: TcxDBMaskEdit;
    dxLayoutControl2Item16: TdxLayoutItem;
    dxLayoutControl2Item17: TdxLayoutItem;
    dxLayoutControl2Group11: TdxLayoutGroup;
    EdEmail: TcxDBTextEdit;
    dxLayoutControl2Group8: TdxLayoutGroup;
    imgFoto: TcxImage;
    dxLayoutControl2Item18: TdxLayoutItem;
    dxLayoutControl2Group12: TdxLayoutGroup;
    dxLayoutControl2Group14: TdxLayoutGroup;
    GridTransacciones: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CteDomID: TcxGridDBColumn;
    cxGridDBTableView1CteDomDet: TcxGridDBColumn;
    cxGridDBTableView1Muestrano: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1Hora: TcxGridDBColumn;
    cxGridDBTableView1Usuario_Toma: TcxGridDBColumn;
    cxGridDBTableView1Observacion: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControl2Item4: TdxLayoutItem;
    qrClienteDomDet: TADOQuery;
    qrClienteDomDetCteDomID: TIntegerField;
    qrClienteDomDetCteDomDet: TIntegerField;
    qrClienteDomDetMuestrano: TStringField;
    qrClienteDomDetFecha: TDateTimeField;
    qrClienteDomDetHora: TStringField;
    qrClienteDomDetResultado_Via: TStringField;
    qrClienteDomDetUsuario_Toma: TStringField;
    qrClienteDomDetRefrecid: TLargeintField;
    dsDatosTran: TDataSource;
    qrClienteDomicilio: TADOQuery;
    qrClienteDomicilioCteDomID: TIntegerField;
    qrClienteDomicilioTipo_Documento: TIntegerField;
    qrClienteDomicilioDocumento: TStringField;
    qrClienteDomicilioSexo: TSmallintField;
    qrClienteDomicilioFecha_Nacimiento: TDateTimeField;
    qrClienteDomicilioClienteID: TStringField;
    qrClienteDomicilioTel_Oficina: TStringField;
    qrClienteDomicilioTel_Residencia: TStringField;
    qrClienteDomicilioTel_Celular: TStringField;
    qrClienteDomicilioEmail: TStringField;
    qrClienteDomicilioUserID: TStringField;
    dsDatos: TDataSource;
    spDetalleTransacciones: TLMDSimplePanel;
    LMDLabel1: TLMDLabel;
    btnCancelar: TLMDButton;
    btAceptar: TLMDButton;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel5: TcxLabel;
    cboResultados: TcxDBImageComboBox;
    cxLabel6: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBMaskEdit3: TcxDBMaskEdit;
    EdCedula: TcxDBMaskEdit;
    cbExtDocumento: TcxDBExtLookupComboBox;
    cxLabel8: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    CxHora: TcxDBTimeEdit;
    qrClienteDomicilioEstatus: TStringField;
    ppDBPipeline1: TppDBPipeline;
    qrReporte: TADOQuery;
    dsReporte: TDataSource;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutGroup;
    edContacto: TcxDBTextEdit;
    qrClienteDomicilioNombres: TStringField;
    qrClienteDomicilioApellidos: TStringField;
    qrClienteDomicilioTipo_Cliente: TStringField;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Group4: TdxLayoutGroup;
    cboTipoCliente: TcxDBImageComboBox;
    qrReporteNombres: TStringField;
    qrReporteApellidos: TStringField;
    qrReporteEdad: TIntegerField;
    qrReportebSeguro: TStringField;
    qrReporteTel_Residencia: TStringField;
    qrReporteTel_Oficina: TStringField;
    qrReporteTel_Celular: TStringField;
    qrReporteFecha: TDateTimeField;
    qrReporteHora: TStringField;
    qrReportebFax: TStringField;
    qrReportebInternet: TStringField;
    qrReportebPersonal: TStringField;
    qrReporteDocumento: TStringField;
    qrReportebPrivado: TStringField;
    qrReporteID_Visita: TIntegerField;
    cxLabel9: TcxLabel;
    qrFlebotomista: TADOQuery;
    dsFlebotomista: TDataSource;
    qrFlebotomistaFLEBOTOMISTAID: TStringField;
    qrFlebotomistaDESCRIPCION: TStringField;
    qrFlebotomistaCODIGOAXAPTA: TStringField;
    qrFlebotomistaESTATUS: TIntegerField;
    qrFlebotomistaDATAAREAID: TStringField;
    qrFlebotomistaRECID: TLargeintField;
    qrReporteUsuario_Toma: TStringField;
    GridPruebas: TcxGridLevel;
    GridTransaccionesDBTableView1: TcxGridDBTableView;
    qrPruebas: TADOQuery;
    dsPruebas: TDataSource;
    qrPruebaspruebaid: TStringField;
    qrPruebasdescripcion: TStringField;
    qrPruebastotallinea: TBCDField;
    qrPruebasmuestrano: TStringField;
    GridTransaccionesDBTableView1pruebaid: TcxGridDBColumn;
    GridTransaccionesDBTableView1descripcion: TcxGridDBColumn;
    GridTransaccionesDBTableView1totallinea: TcxGridDBColumn;
    GridTransaccionesDBTableView1muestrano: TcxGridDBColumn;
    qrClienteDomDetFlebotomistaID: TStringField;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    btFlebotomista: TcxButton;
    qrReporteFlebotomista: TStringField;
    ppRptDomicilio: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText12: TppDBText;
    ppLabel16: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel31: TppLabel;
    ppShape6: TppShape;
    ppLabel32: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel33: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel22: TppLabel;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLine8: TppLine;
    ppLabel28: TppLabel;
    ppLine9: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppShape1: TppShape;
    ppDBText13: TppDBText;
    ppShape2: TppShape;
    ppDBText14: TppDBText;
    ppShape3: TppShape;
    ppDBText15: TppDBText;
    ppShape4: TppShape;
    ppDBText16: TppDBText;
    ppShape5: TppShape;
    ppDBText17: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLine10: TppLine;
    ppDBText10: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText11: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppImage1: TppImage;
    cxGridDBTableView1Estatus: TcxGridDBColumn;
    qrClienteDomDetEstatus: TStringField;
    qrClienteDomDetUsuario_Cancela: TStringField;
    qrClienteDomDetObservacion_Cancela: TStringField;
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
    cxStyle1: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    cxGridCardViewStyleSheet1: TcxGridCardViewStyleSheet;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    spCancelaVisita: TLMDSimplePanel;
    LMDLabel2: TLMDLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxObservacion: TcxMemo;
    dbExtUsuario: TcxExtLookupComboBox;
    btAceptaNCF: TLMDButton;
    btCancelarNCF: TLMDButton;
    cxLabel10: TcxLabel;
    lblVisitaID: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel11: TcxLabel;
    cxLabel14: TcxLabel;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    qrReporteSerial: TStringField;
    qrReporteFecha_Emision: TDateTimeField;
    qrReporteFecha_Revision: TDateTimeField;
    ppLabel38: TppLabel;
    ppLine6: TppLine;
    ppLabel35: TppLabel;
    ppLabel42: TppLabel;
    ppLine22: TppLine;
    ppLabel43: TppLabel;
    ppLine23: TppLine;
    ppLabel44: TppLabel;
    qrReporteFecha_Nacimiento: TDateTimeField;
    ppDBText22: TppDBText;
    qrClienteDomicilioContacto: TStringField;
    qrReporteContacto: TStringField;
    edtApellidos: TcxDBTextEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    ppLabel39: TppLabel;
    ppDBText23: TppDBText;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Group5: TdxLayoutGroup;
    MemComentario: TcxDBMemo;
    dxLayoutControl1Item3: TdxLayoutItem;
    btImprimirVista: TcxButton;
    ppImpListadoVisita: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDBText24: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppLabel52: TppLabel;
    ppLabel55: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppShape7: TppShape;
    ppLabel62: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel72: TppLabel;
    ppLabel75: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel74: TppLabel;
    ppDBCalc14: TppDBCalc;
    spListadoVisita: TLMDSimplePanel;
    LMDLabel3: TLMDLabel;
    LMDButton1: TLMDButton;
    LMDButton2: TLMDButton;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cbExtSucursal: TcxExtLookupComboBox;
    cxLabel15: TcxLabel;
    FechaIni: TcxDateEdit;
    cxLabel16: TcxLabel;
    FechaFin: TcxDateEdit;
    qrReporte_Visita: TADOQuery;
    qrReporte_VisitaMuestrano: TStringField;
    qrReporte_VisitaSucursalID: TStringField;
    qrReporte_VisitaContacto: TStringField;
    qrReporte_VisitaNombre: TStringField;
    qrReporte_VisitaTipo_Cliente: TStringField;
    qrReporte_VisitaTel_Residencia: TStringField;
    qrReporte_VisitaTel_Oficina: TStringField;
    qrReporte_VisitaTel_Celular: TStringField;
    qrReporte_VisitaDireccion: TStringField;
    qrReporte_VisitaFecha: TDateTimeField;
    qrReporte_VisitaHora: TStringField;
    qrReporte_VisitaRsultado_Via: TStringField;
    qrReporte_Visitaobservacion: TStringField;
    qrReporte_VisitaID_Visita: TIntegerField;
    qrReporte_VisitaFlebotomista: TStringField;
    ppDBPipeline2: TppDBPipeline;
    dsReporteVisita: TDataSource;
    ppLabel40: TppLabel;
    ppDBText25: TppDBText;
    ppLabel41: TppLabel;
    ppDBText26: TppDBText;
    ppLabel45: TppLabel;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    qrClienteDomicilioDireccion: TStringField;
    qrClienteDomDetNumero_laboratorio: TStringField;
    qrClienteDomicilioNum_laboratorio1: TStringField;
    qrClienteDomicilioNum_laboratorio2: TStringField;
    qrClienteDomicilioNum_laboratorio3: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl2Item9: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl2Item19: TdxLayoutItem;
    dxLayoutControl2Item20: TdxLayoutItem;
    dxLayoutControl2Group13: TdxLayoutGroup;
    qrClienteDomicilioARS_INDICO: TStringField;
    qARS: TADOQuery;
    qARSCLIENTEID: TStringField;
    qARSNOMBRE: TStringField;
    qrClienteDomicilioDES_ARS: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl2Item21: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl2Item22: TdxLayoutItem;
    qrReporteDireccion: TStringField;
    qrReportefecha_indicacion: TDateTimeField;
    qrReporteNum_laboratorio1: TStringField;
    qrReporteNum_laboratorio2: TStringField;
    qrReporteNum_laboratorio3: TStringField;
    qrReporteArs: TStringField;
    ppLabel46: TppLabel;
    ppLine19: TppLine;
    ppLabel47: TppLabel;
    ppLine20: TppLine;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel50: TppLabel;
    ppLine21: TppLine;
    ppLine24: TppLine;
    ppLabel51: TppLabel;
    ppLine25: TppLine;
    ppLabel53: TppLabel;
    ppLine26: TppLine;
    ppLabel54: TppLabel;
    qrClienteDomicilioFecha_Indicacion: TDateTimeField;
    qrClienteDomicilioComentario: TStringField;
    qrClienteDomDetObservacion: TStringField;
    qrReporteObservacion: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LMDButton1Click(Sender: TObject);
    procedure LMDButton2Click(Sender: TObject);
    procedure btImprimirVistaClick(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btCancelarNCFClick(Sender: TObject);
    procedure btAceptaNCFClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFlebotomistaClick(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure BtGrabarClick(Sender: TObject);
    procedure qrClienteDomDetAfterPost(DataSet: TDataSet);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qrClienteDomicilioAfterPost(DataSet: TDataSet);
    procedure cbExtDocumentoPropertiesChange(Sender: TObject);
    procedure EdCedula1Exit(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtEliminarClick(Sender: TObject);
    procedure BtTransaccionesClick(Sender: TObject);
    procedure BtPacientesClick(Sender: TObject);

  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
    Db1Servidor,Db2Servidor,StTrans,Seleccion,CodSucursal,Seleccion2 : String;
  public
    { Public declarations }
    recid                       : Integer;
    muestranumber, UserId       : String;
    urgente, reportado, doctor  : TcxStyle;
    fecha_label                 : TDateTime;
    hora_label                  : String;

  end;

Type
  TDias = Record
  Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo : Integer;
  End;

var
  frmDatosClientesDomicilio       : TfrmDatosClientesDomicilio;
  SecuenciaLabel        : integer;
  SecAct                : integer;
  qfindLb               : TADOQuery;
  qfindLabel            : TADOQuery;
  secuencia             : integer;
  Descripcion, titulo   : string;
  depact,muestraact     : string;
  colact                : integer;
  Dias                  : TDias;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}



//Buscando el Label de la Prueba Registrada.

procedure TfrmDatosClientesDomicilio.BtPacientesClick(Sender: TObject);
Var TipoDoc : String;
begin
 frmMain.LanzaVentana(-7994);
 TipoDoc := cbExtDocumento.Text;
 if cbExtDocumento.Text <> EmptyStr then
 begin
      With dm.qrDocumento, sql do
      begin
          Close;
          Clear;
          Text :='Select *  From ptdocumento Where Descripcion = '+#39+ TipoDoc+#39+
                 ' Union all '+
                 'Select *  From ptdocumento Where Descripcion <> '+#39+ TipoDoc+#39;
          Open;
      end;
 end;
end;

procedure TfrmDatosClientesDomicilio.BtTransaccionesClick(Sender: TObject);
begin
  If qrClienteDomicilioDocumento.Value <> EmptyStr then
  begin
    If qrClienteDomicilio.State in [dsEdit,dsBrowse,dsInsert] then
    Begin
          qrClienteDomicilio.Properties['Update Criteria'].Value := 0;
          qrClienteDomicilio.Edit;
          qrClienteDomicilio.Post;
    end;
    if (Length(qrClienteDomicilioDocumento.AsString) > 0) then
    begin
        qrClienteDomDet.Insert;
        qrClienteDomDet.Edit;
        qrClienteDomDetCteDomID.AsInteger     := qrClienteDomicilioCteDomID.AsInteger;
        qrClienteDomDetCteDomDet.AsInteger    := dm.GetSecuenciaDetId;
        qrClienteDomDetFecha.AsDateTime       := DM.Buscar_Fecha_Actual;
        qrClienteDomDetHora.AsString          := DM.Buscar_Hora_Actual;
        qrClienteDomDetUsuario_Toma.AsString  := DM.CurUser;
        spDetalleTransacciones.Visible        := True;
    end
    else
      showmessage('No Existe Paciente.  Verifique.');
  end;
end;


procedure TfrmDatosClientesDomicilio.cbExtDocumentoPropertiesChange(
  Sender: TObject);
begin
 inherited;
 edCedula.Properties.EditMask := dm.qrDocumento.Fieldbyname('Mascara').AsString;
 edCedula.Update;
end;

procedure TfrmDatosClientesDomicilio.cxGridDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if (Length(qrClienteDomicilioDocumento.AsString) > 0) And
     (qrClienteDomDet.RecordCount > 0) Then
  begin
      If (qrClienteDomDetMuestrano.AsString = EmptyStr) Or (dm.CurRol=7) Or (dm.CurRol=17) then
      begin
          qrClienteDomDet.Edit;
          spDetalleTransacciones.Visible        := True;
      end;
  end;
end;

procedure TfrmDatosClientesDomicilio.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
    if ARecord.Values[cxGridDBTableView1Estatus.Index] = 'C' then
        AStyle := cxStyle1
     else
        AStyle := cxStyle56;
end;

procedure TfrmDatosClientesDomicilio.btAceptaNCFClick(Sender: TObject);
Var qinsert : TADOQuery;
begin
  inherited;
    If Not((Trim(cxObservacion.Text) = EmptyStr) Or (dbExtUsuario.Text=EmptyStr)) Then
    begin
        If DM.Mensaje('Existe una visita en proceso. Desea cancelar la visita?',mb_yesno) = id_yes then
        begin
            qinsert := DM.NewQuery;
            With qinsert, sql do
            begin
                Close;
                Text := ' Update PTCLIENTEDOMDETALLE set Usuario_Cancela = '+#39+dbExtUsuario.EditValue+#39+
                        ' ,Observacion_Cancela = '+#39+cxObservacion.Text+#39+',Estatus = '+#39+'C'+#39+
                        ' Where CteDomID='+qrClienteDomicilioCteDomID.AsString+' And CteDomDet ='+qrClienteDomDetCteDomDet.AsString;
                ExecSQL;
            end;
            FreeAndNil(qinsert);
            DM.qrParametro.Filtered := False;
            DM.qrParametro.close;
            DM.qrParametro.open;
            DM.qrDocumento.Close;
            DM.qrDocumento.Open;
            With qrClienteDomicilio, sql do
            begin
              Close;
              Clear;
              Text :='Select *  From PtClienteDom Where CteDomID= :CteID';
              Open;
            end;
            With qrClienteDomDet, sql do
            begin
              Close;
              Clear;
              Text :='Select *  From PtClienteDomDetalle Where CteDomID = :CteID ';
              Open;
            end;
            imgFoto.Picture := Nil;
            spCancelaVisita.Visible := False;
        end;
    end
    else
    begin
          If Trim(cxObservacion.Text) = EmptyStr then
             Raise exception.CreateFmt('Favor Digitar Observaci�n.  Verifique.', [])
          else If Trim(dbExtUsuario.Text)=EmptyStr then
             Raise exception.CreateFmt('Favor Seleccionar Oficial Recibe Cancelaci�n.  Verifique.', [])
    end;
end;

procedure TfrmDatosClientesDomicilio.btAceptarClick(Sender: TObject);
begin
  inherited;
     if qrClienteDomDet.State in [dsEdit, dsInsert] then
     Begin
        qrClienteDomDet.Properties['Update Criteria'].Value := 0;
        qrClienteDomDet.Edit;
        qrClienteDomDet.Post;
         spDetalleTransacciones.Visible := False;
         If qrClienteDomicilioCteDomID.Value > 0 then
         begin
          With qrClienteDomDet, sql do
          begin
            Close;
            Clear;
            Text :='Select *  From PtClienteDomDetalle Where CteDomID = '+#39+ qrClienteDomicilioCteDomID.AsString+#39+' Order by Fecha Desc,Hora Desc';
            Open;
          end;
         end;
     end;
end;

procedure TfrmDatosClientesDomicilio.BtCancelarClick(Sender: TObject);
begin
  if (qrClienteDomDet.State in  [dsinsert,dsEdit,dsBrowse])
  And (qrClienteDomDetEstatus.AsString<>'C') and (qrClienteDomDetMuestrano.AsString=EmptyStr) then
  begin
      lblVisitaID.Caption     := qrClienteDomDetCteDomDet.AsString;
      spCancelaVisita.Visible := True;
  end;
end;


procedure TfrmDatosClientesDomicilio.btCancelarNCFClick(Sender: TObject);
begin
  inherited;
  spCancelaVisita.Visible := False;
end;

procedure TfrmDatosClientesDomicilio.BtEliminarClick(Sender: TObject);
begin
 inherited;
  If Not((Trim(qrClienteDomDetCteDomID.AsString) = EmptyStr) Or
         (qrClienteDomDetCteDomID.IsNull) Or
         (Trim(qrClienteDomDetCteDomDet.AsString) = EmptyStr) Or
         (qrClienteDomDetCteDomDet.IsNull)) Then
  begin
     If Trim(qrClienteDomDetMuestrano.AsString) <> EmptyStr then
     begin
         ShowMessage('Visita ya ha sido facturada. No puede eliminarse.');
     end
     else
     begin
             If qrClienteDomDet.RecordCount > 0 then
             begin
                qrClienteDomDet.Delete;
                EdCedula1Exit(Sender);
             end;
     end;
  end;
end;


procedure TfrmDatosClientesDomicilio.btFlebotomistaClick(Sender: TObject);
begin
  inherited;
  If qrClienteDomicilioDocumento.Value <> EmptyStr Then
    Begin
     Factura_St := 'CD';
     frmMain.LanzaVentana(1104);
    end;
end;

procedure TfrmDatosClientesDomicilio.BtGrabarClick(Sender: TObject);
begin
  inherited;
    if qrClienteDomicilioDocumento.Value <> EmptyStr then
    begin
     if qrClienteDomicilio.State in [dsEdit, dsInsert, dsBrowse] then
     Begin
        qrClienteDomicilio.Properties['Update Criteria'].Value := 0;
        qrClienteDomicilio.Edit;
        qrClienteDomicilio.Post;
     end;
     if qrClienteDomDet.State in [dsEdit, dsInsert, dsBrowse] then
     Begin
        qrClienteDomDet.Properties['Update Criteria'].Value := 0;
        qrClienteDomDet.Edit;
        qrClienteDomDet.Post;
     end;
    end;
end;

procedure TfrmDatosClientesDomicilio.BtImprimirClick(Sender: TObject);
begin
  inherited;
  If qrCLienteDomicilioDocumento.Value <> EmptyStr then
  begin
    BtGrabarClick(Sender);
    With qrReporte, sql do
    begin
      Close;
      Clear;
      Add('select top 1 p.Contacto,p.fecha_nacimiento, d.Usuario_Toma,p.nombres,p.apellidos, dbo.RestaFechaAno(Convert(Varchar(08),p.fecha_nacimiento,112),'+#39+FormatDateTime('yyyymmdd',DM.SystemDate)+#39+') as Edad,');
      Add(' p.documento,case when tipo_cliente = '+#39+'P'+#39+' Then '+#39+'x'+#39+' else '+#39+''+#39+' end as bPrivado,');
      Add(' case when tipo_cliente = '+#39+'S'+#39+' Then '+#39+'x'+#39+' else '+#39+''+#39+' end as bSeguro,');
      Add(' Tel_Residencia,Tel_Oficina,Tel_Celular,Direccion,d.Fecha,d.Hora,');
      Add(' case when Resultado_Via = '+#39+'F'+#39+' Then '+#39+'x'+#39+' else '+#39+''+#39+' end as bFax,');
      Add(' case when Resultado_Via = '+#39+'I'+#39+' Then '+#39+'x'+#39+' else '+#39+''+#39+' end as bInternet,');
      Add(' case when Resultado_Via = '+#39+'P'+#39+' Then '+#39+'x'+#39+' else '+#39+''+#39+' end as bPersonal,observacion, CteDomDet as ID_Visita, f.Descripcion as Flebotomista, ');
      Add(' (select Serial from ptseriales where grupo_id='+#39+'98'+#39+' and tipo='+#39+'CL'+#39+') As Serial,');
      Add(' (select Fecha_Emision from ptseriales where grupo_id='+#39+'98'+#39+' and tipo='+#39+'CL'+#39+') As Fecha_Emision,');
      Add(' (select Fecha_Revision from ptseriales where grupo_id='+#39+'98'+#39+' and tipo='+#39+'CL'+#39+') As Fecha_Revision, ');
      Add('fecha_indicacion, Num_laboratorio1, Num_laboratorio2, Num_laboratorio3, Ars = (select top 5 Nombre from PTCLIENTE where CLIENTEID = p.ARS_INDICO)');
      Add(' from ptclientedom p inner join ptclientedomdetalle d ');
      Add(' on p.ctedomid = d.CteDomid left Join ptflebotomista f on d.flebotomistaid=f.flebotomistaid ');

      if qrClienteDomDetCteDomDet.AsString <> EmptyStr then
          Add(' Where p.ctedomid='+edClienteDom.Text+' and d.CteDomDet='+#39+qrClienteDomDetCteDomDet.AsString+#39+' and p.estatus='+#39+'A'+#39)
      else
          Add(' Where p.ctedomid='+edClienteDom.Text+' and p.estatus='+#39+'A'+#39);
      Add(' Order by fecha desc,Hora desc ');
      Open;
      if IsEmpty then
      begin
          EtMensajeDlg('No Existen datos.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          Exit;
      end;
    end;
    ppRptDomicilio.DeviceType := dtScreen;
    ppRptDomicilio.Print;
  end;
end;

procedure TfrmDatosClientesDomicilio.FormActivate(Sender: TObject);
begin
  inherited;
  Factura_St := 'CD';
end;

procedure TfrmDatosClientesDomicilio.FormCreate(Sender: TObject);
begin
  inherited;
  Factura_St := 'CD';
end;

procedure TfrmDatosClientesDomicilio.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Muestra := False;
end;

procedure TfrmDatosClientesDomicilio.FormShow(Sender: TObject);
begin
  inherited;
  If not DM.qrSucursal.Active then
    DM.qrSucursal.Open;
  FechaIni.Date := DM.Buscar_Fecha_Actual;
  FechaFin.Date := DM.Buscar_Fecha_Actual;
  If (Factura_St ='CD')And (EdCedula.Text='   -       - ') And (cbExtDocumento.Text=EmptyStr) Then
  begin
      If not DM.qrUsuario.Active then DM.qrUsuario.Open;
      DM.qrParametro.close;
      DM.qrParametro.open;
      With DM.qrDocumento, sql do
      begin
        Close;
        Clear;
        Text :='Select *  From PtDocumento Where TipoDocID<>'+'1'+' And Estatus='+#39+'A'+#39;
        Open;
      end;
      qrPruebas.close;
      qrPruebas.Open;
      qrFlebotomista.Close;
      qrFlebotomista.Open;
      With qrClienteDomicilio, sql do
      begin
        Close;
        Clear;
        Text :='Select *  From PtClienteDom Where CteDomID= :CteID';
        Open;
      end;
      With qrClienteDomDet, sql do
      begin
        Close;
        Clear;
        Text :='Select *  From PtClienteDomDetalle Where CteDomID = :CteID ';
        Open;
      end;
      titulo := 'Toma de Muestra';

      urgente := TcxStyle.Create(Self);
      urgente.Color := DM.ColorUrgente;
      urgente.TextColor := ClBlack;

      reportado := TcxStyle.Create(Self);
    //  reportado.Color := DM.ColorReady;
      reportado.Color := DM.ColorConsulta;
      reportado.TextColor := ClBlack;

      doctor := TcxStyle.Create(Self);
    //  doctor.Color := $0005EAD9;
      doctor.Color := DM.ColorBorra;
      doctor.TextColor := ClNavy;

      frmMain.Exis_Muestra := True;
      frmMain.Muestra_Unico := False;
      frmMain.Muestra_Todos := False;

      SetColorTo(dm.ColorModifica);

      DM.qrFlebotomistas.Close;
      DM.qrFlebotomistas.Open;

      DM.qrUnidades.Close;
      DM.qrUnidades.Open;
  end
  else
  begin
      Factura_St:=EmptyStr;
      DM.qrFlebotomistas.Close;
      DM.qrFlebotomistas.Open;
//      cxDBExtLookupComboBox1.EditingText := dm.GetMaxDescFlebAX;
  end;
end;

procedure TfrmDatosClientesDomicilio.LMDButton1Click(Sender: TObject);
begin
  inherited;

    If (FechaIni.Text='') Or (FechaFin.Text='') Then
    Begin
        EtMensajeDlg('Debe Seleccionar intervalo de fecha.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
        Exit;
    end;
    spListadoVisita.Visible := True;
    CodSucursal:=EmptyStr;
    DM.qrSucursal.locate('Nombre', cbExtSucursal.text,[]);
    CodSucursal := DM.qrSucursal.FieldByName('SucursalID').AsString;

    Seleccion := ' select d.Muestrano,e.SucursalID,p.Contacto,p.nombres+'+#39+' '+#39+'+p.apellidos as Nombre, case when tipo_cliente = '+#39+'P'+#39+' Then '+#39+'Privado'+#39+' else '+#39+'Seguro'+#39+' end as Tipo_Cliente,'+
                 ' Tel_Residencia,Tel_Oficina,Tel_Celular,p.Direccion,d.Fecha,d.Hora,'+
                 ' case when Resultado_Via = '+#39+'F'+#39+' Then '+#39+'Fax'+#39+
                 '      when Resultado_Via = '+#39+'I'+#39+' Then '+#39+'Internet'+#39+
                 '      when Resultado_Via = '+#39+'P'+#39+' Then '+#39+'Personal'+#39+' else '+#39+''+#39+' end as Rsultado_Via,observacion, CteDomDet as ID_Visita, f.Descripcion as Flebotomista '+
                 ' from ptclientedom p inner join ptclientedomdetalle d '+
                 ' on p.ctedomid = d.CteDomid left Join ptflebotomista f on d.flebotomistaid=f.flebotomistaid '+
                 ' inner join PtentradaPaciente e '+
                 ' on e.Muestrano = d.Muestrano '+
                 ' Where 1=1 ';

    If (cbExtSucursal.Text <> '') then
    begin
      Seleccion := Seleccion + ' And e.SucursalID ='+#39+CodSucursal+#39;
    end;
    If (FechaIni.Text<> '') and (FechaFin.Text<> '') then
    begin
      Seleccion := Seleccion + ' And d.Fecha Between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+ ' AND '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39;
    end;

    if Length(Seleccion) > 0 then
    begin
      Seleccion := Seleccion+ ' Order by d.Fecha,d.Hora '
    end;

    With qrReporte_Visita, sql do
    begin
      Close;
      Clear;
      SQL.Text := Seleccion;
      Open;
      if IsEmpty then
      begin
          EtMensajeDlg('No Existen datos.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          Exit;
      end;
    end;
    if cbExtSucursal.Text = EmptyStr then
      ppLabel75.Caption := 'Todas las Sucursales'
    else
      ppLabel75.Caption := cbExtSucursal.Text;
    ppLabel69.Caption := 'Listado de Visitas por Sucursal';
    ppLabel70.Caption :='Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
    ppImpListadoVisita.DeviceType := dtScreen;
    ppImpListadoVisita.Print;
end;

procedure TfrmDatosClientesDomicilio.LMDButton2Click(Sender: TObject);
begin
  inherited;
    spListadoVisita.Visible := False;
end;

procedure TfrmDatosClientesDomicilio.btImprimirVistaClick(Sender: TObject);
begin
  inherited;
  spListadoVisita.Visible := True;
end;

procedure TfrmDatosClientesDomicilio.btnCancelarClick(Sender: TObject);
begin
  inherited;
  qrClienteDomicilio.Cancel;
  qrClienteDomDet.Cancel;
  spDetalleTransacciones.Visible := False;
end;

procedure TfrmDatosClientesDomicilio.qrClienteDomDetAfterPost(
  DataSet: TDataSet);
begin
  inherited;
//      qrClienteDomDet.Refresh;
end;

procedure TfrmDatosClientesDomicilio.qrClienteDomicilioAfterPost(
  DataSet: TDataSet);
begin
  inherited;
//  qrClienteDomicilio.Refresh;
end;

procedure TfrmDatosClientesDomicilio.SetColorTo(iColor: TColor);
var
  i : Integer;
  oColor : TColor;
begin
  //SetComponentsColor(iColor);
  stGrEdit.Color := iColor;
  oColor := DM.ColorConsulta;
  for i := 0 to ComponentCount -1 do begin
    if ( Components[i] is TcxDbMaskEdit ) then begin
      if ( Components[i] as TcxDbMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbComboBox ) then begin
      if ( Components[i] as TcxDbComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbButtonEdit ) then begin
      if ( Components[i] as TcxDbButtonEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbButtonEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbButtonEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBMRUEdit ) then begin
      if ( Components[i] as TcxDBMRUEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDBMRUEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDBMRUEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTextEdit ) then begin
      if ( Components[i] as TcxDbTextEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTextEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTextEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBExtLookupComboBox ) then begin
      if ( Components[i] as TcxDBExtLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCheckBox ) then begin
      if ( Components[i] as TcxDbCheckBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbCheckBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCheckBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbImageComboBox ) then begin
      if ( Components[i] as TcxDbImageComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbImageComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbImageComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCalcEdit ) then begin
      if ( Components[i] as TcxDbCalcEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCalcEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCalcEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbSpinEdit ) then begin
      if ( Components[i] as TcxDbSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbSpinEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCurrencyEdit ) then begin
      if ( Components[i] as TcxDbCurrencyEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTimeEdit ) then begin
      if ( Components[i] as TcxDbTimeEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTimeEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTimeEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbMemo ) then begin
      if ( Components[i] as TcxDbMemo ).Properties.ReadOnly then
        ( Components[i] as TcxDbMemo ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMemo ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbHyperLinkEdit ) then begin
      if ( Components[i] as TcxDbHyperLinkEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbDateEdit ) then begin
      if ( Components[i] as TcxDbDateEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbDateEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbDateEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxMaskEdit ) then begin
      if ( Components[i] as TcxMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxSpinEdit ) then begin
      if ( Components[i] as TcxSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxSpinEdit ).Style.Color := iColor;
    end;
  end;
end;

procedure TfrmDatosClientesDomicilio.EdCedula1Exit(Sender: TObject);
Var
  qfind                 : TAdoQuery;
  Direccion,Documento,Tipo_Doc   : String;
begin
  inherited;
//  If ((qrClienteDomicilio.State = dsInsert) Or (qrClienteDomicilio.State = dsEdit)) and
    Tipo_Doc  := cbExtDocumento.Text;
    Documento := edCedula.Text;
    if (edCedula.EditValue)<> EmptyStr then
    begin
      With qrClienteDomicilio, sql do
      begin
        Close;
        Clear;
        Text :='Select *  From PtClienteDom Where Documento = '+#39+Documento+#39;
        Open;
        If (qrClienteDomicilio.RecordCount > 0) Then
        begin
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
                DM.BuscaFoto(Self,Copy(qrClienteDomicilioDocumento.AsString,1,3),Copy(qrClienteDomicilioDocumento.AsString,5,7),Copy(qrClienteDomicilioDocumento.AsString,13,1));
            If qrClienteDomicilioCteDomID.Value > 0 then
            begin
              With qrClienteDomDet, sql do
              begin
                Close;
                Clear;
                Text :='Select *  From PtClienteDomDetalle Where CteDomID = '+#39+ qrClienteDomicilioCteDomID.AsString+#39+' Order by Fecha Desc,Hora Desc';
                Open;
              end;
            end;
            cbExtDocumento.Text := Tipo_Doc;
            edCedula.Text       := Documento;
            Exit;
        end;
      end;
    end;
    cbExtDocumento.Text := Tipo_Doc;
    edCedula.Text       := Documento;
    If (Length(trim(dm.qrDocumento.Fieldbyname('Mascara').AsString))= 13) or
       (Length(trim(dm.qrDocumento.Fieldbyname('Mascara').AsString))= 14) Then
    Begin
      If Not Dm.GetDigitoVerificador(copy(DM.Cortar_Char('-', EdCedula.Text),1,11),'0') Then
      begin
         EtMensajeDlg('Favor digitar N�mero de C�dula V�lido.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
//         qrClienteDomicilioDocumento.Value := EmptyStr;
         cbExtDocumento.Text := Tipo_Doc;
         EdCedula.Setfocus;
         Exit;
      end;
      qfind := DM.NewQuery;
      DM.qrParametro.close;
      DM.qrParametro.open;
      If dm.qrParametroServidor_AS400.value = EmptyStr then
      begin
           Db1Servidor := 'Ced2011_1';
           Db2Servidor := 'Ced2011_2';
      end
      else
      begin
           Db1Servidor := 'Ced2016';
      end;
       qfind.Close;
       If cbExtDocumento.Text = 'CEDULA' then
       begin
         qfind.SQL.Text:=' SELECT * FROM PTCLIENTE '+
                               ' WHERE IDENTIFICACION like '+#39+'%'+Copy(EdCedula.Text,1,13)+'%'+#39+
                         ' AND ESTATUS='+#39+'0'+#39;
       end else
       If cbExtDocumento.Text = 'CEDULA MENOR' then
       begin
         qfind.SQL.Text:=' SELECT * FROM PTCLIENTE '+
                               ' WHERE IDENTIFICACION like '+#39+'%'+Copy(EdCedula.Text,1,14)+'%'+#39+
                         ' AND ESTATUS='+#39+'0'+#39;
       end;
       qfind.Open;
       if qfind.RecordCount > 0 then
       begin
           qrClienteDomicilio.Edit;
           qrClienteDomicilioTipo_Documento.AsInteger :=  dm.qrDocumento.Fieldbyname('TipoDocID').AsInteger;
           qrClienteDomicilioDocumento.AsString       :=  Documento;
           qrClienteDomicilioCteDomID.AsInteger       :=  dm.GetSecuenciaDomId;
           qrClienteDomicilioNombres.Value            :=  qfind.FieldByName('NOMBRE').AsString;
//           qrClienteDomicilioApellidos.Value          :=  qfind.FieldByName('APELLIDO1').AsString+' '+
//                                                          qfind.FieldByName('APELLIDO2').AsString;
           qrClienteDomicilioFecha_Nacimiento.Text := qfind.FieldByName('FechaNacimiento').AsString;
           qrClienteDomicilioSexo.Value               := qfind.FieldByName('Sexo').Value;

           if qfind.FieldByName('Direccion').AsString <> EmptyStr then
              Direccion := qfind.FieldByName('Direccion').AsString;
           if qfind.FieldByName('CiudadID').AsString <> EmptyStr then
              Direccion := Direccion+' '+qfind.FieldByName('CiudadID').AsString;
           qrClienteDomicilioDIRECCION.AsString   := Trim(Direccion);
           qrClienteDomicilioTel_Residencia.Value :=  qfind.FieldByName('TELEFONO').AsString;
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
                DM.BuscaFoto(Self,Copy(EdCedula.Text,1,3),Copy(EdCedula.Text,5,7),Copy(EdCedula.Text,13,1));
          FreeAndNil(qfind);
          Exit;
       end
       else
       begin
             qfind.Close;
             qfind.SQL.Text:=' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                                   '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                                   '   FROM '+Db1Servidor+'.dbo.CEDULADOS P Left join '+Db1Servidor+'.dbo.SECTOR_PARAJE S on  '+
                                   '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                                   '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                                   '   '+Db1Servidor+'.dbo.MUNICIPIO M ON  '+
                                   '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                   '   		LEFT OUTER JOIN dbo.PTCIUDAD C ON '+
                                   '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                   ' WHERE MUN_CED ='+#39+Copy(EdCedula.Text,1,3)+#39+
                                   ' AND   SEQ_CED ='+#39+copy(EdCedula.Text,5,7)+#39+
                                   ' AND   VER_CED ='+#39+copy(EdCedula.Text,13,1)+#39;
             qfind.Open;
             If (dm.qrParametroServidor_AS400.value <> EmptyStr) then
             begin
                 If (qfind.RecordCount =0) Then
                 begin
                   Raise exception.CreateFmt(' N�mero de Cedula No Existe.  Verifique.', []);
                 end
             end
             else
             If (dm.qrParametroServidor_AS400.value = EmptyStr) and (qfind.RecordCount =0) then
             begin
                 qfind.Close;
                 qfind.SQL.Text:=' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                                       '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                                       '   FROM '+Db2Servidor+'.dbo.CEDULADOS P Left Join '+Db2Servidor+'.dbo.SECTOR_PARAJE S on  '+
                                       '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                                       '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                                       '   '+Db2Servidor+'.dbo.MUNICIPIO M ON  '+
                                       '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                       '   		LEFT OUTER JOIN PTCIUDAD C ON '+
                                       '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                       ' WHERE MUN_CED ='+#39+Copy(EdCedula.Text,1,3)+#39+
                                       ' AND   SEQ_CED ='+#39+copy(EdCedula.Text,5,7)+#39+
                                       ' AND   VER_CED ='+#39+copy(EdCedula.Text,13,1)+#39;
                 qfind.Open;
             end;
               If (qfind.RecordCount =0) Then
               begin
                 Raise exception.CreateFmt(' N�mero de Cedula No Existe.  Verifique.', []);
              end;
       end;
           qrClienteDomicilio.Edit;
           qrClienteDomicilioTipo_Documento.AsInteger :=  dm.qrDocumento.Fieldbyname('TipoDocID').AsInteger;
           qrClienteDomicilioDocumento.AsString       :=  Documento;
           qrClienteDomicilioCteDomID.AsInteger       :=  dm.GetSecuenciaDomId;
           qrClienteDomicilioNombres.Value            :=  qfind.FieldByName('Nombres').AsString;
           qrClienteDomicilioApellidos.Value          :=  qfind.FieldByName('APELLIDO1').AsString+' '+
                                                          qfind.FieldByName('APELLIDO2').AsString;
           qrClienteDomicilioFecha_Nacimiento.Text := qfind.FieldByName('fecha_nac').AsString;
           case qfind.FieldByName('Sexo').AsString[1] of
              'M': cbSexo.ItemIndex:=1;
              'F': cbSexo.ItemIndex:=0;
           end;
           if Copy(cbSexo.Text,1,1)='F' then
             qrClienteDomicilioSEXO.Text := '0'
           else if Copy(cbSexo.Text,1,1)='M' then
             qrClienteDomicilioSEXO.Text := '1';

           if qfind.FieldByName('Calle').AsString <> EmptyStr then
              Direccion := qfind.FieldByName('Calle').AsString;
           if qfind.FieldByName('Casa').AsString <> EmptyStr then
              Direccion := Direccion+' No. '+qfind.FieldByName('Casa').AsString;
           if qfind.FieldByName('Edificio').AsString <> EmptyStr then
              Direccion := Direccion+' Edif.'+qfind.FieldByName('Edificio').AsString;
           if not ((qfind.FieldByName('Piso').AsString = EmptyStr) or (qfind.FieldByName('Piso').AsString = '00'))then
              Direccion := Direccion+' Piso '+qfind.FieldByName('Piso').AsString;
           if qfind.FieldByName('Apto').AsString <> EmptyStr then
              Direccion := Direccion+' Apto. '+qfind.FieldByName('Apto').AsString;
           qrClienteDomicilioDIRECCION.AsString   := Trim(Direccion);
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
                DM.BuscaFoto(Self,Copy(EdCedula.Text,1,3),Copy(EdCedula.Text,5,7),Copy(EdCedula.Text,13,1));
    End
    else
    begin
           qrClienteDomicilio.Edit;
           qrClienteDomicilioTipo_Documento.AsInteger :=  dm.qrDocumento.Fieldbyname('TipoDocID').AsInteger;
           qrClienteDomicilioDocumento.AsString       :=  Documento;
           qrClienteDomicilioCteDomID.AsInteger       :=  dm.GetSecuenciaDomId;
           If edNombres.Enabled then edNombres.Setfocus;
    end;
    FreeAndNil(qfind);
end;

END.

