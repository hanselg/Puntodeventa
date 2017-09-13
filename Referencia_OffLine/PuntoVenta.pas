unit PuntoVenta;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, StrUtils, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab, DateUtils,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxDBEdit, cxCalc, cxSpinEdit,
  cxTimeEdit, cxDropDownEdit, cxCalendar, cxImageComboBox, cxMaskEdit, TXComp,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBLabel, cxCurrencyEdit,
  cxGroupBox, cxRadioGroup, cxMemo, cxSplitter, cxGridLevel, cxDBExtLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxLayoutControl, StdCtrls, cxButtons,
  cxTextEdit, cxContainer, cxLabel, cxPC, ppDB, ppDBPipe, ppCtrls, ppStrtch,
  ppMemo, ppBands, myChkBox, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ADODB, dxmdaset, pptypes, cxBlobEdit, cxMCListBox,
  ComCtrls, JvDBGridFooter, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  ppModule, raCodMod, ppParameter,dlgmensajes,Ced2000EditLib, RAWPrinter,
  cxDBEditRepository, cxExtEditRepositoryItems, cxEditRepositoryItems,
  UrlMon,ReferenciaWebService,WSRefUniversal, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, JvMemoryDataset, LMDCustomButton,
  LMDButton, LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomLabel, LMDLabel, cxCheckGroup, xmldom, InvokeRegistry, Rio,
  SOAPHTTPClient, Provider, Xmlxform, DBClient, ppRichTx,Printers,
  cxLookAndFeels, dxLayoutcxEditAdapters, cxintl,SenasaRefWS, ppBarCod,WS_Autorizaciones,
  ppBarCode2D, jpeg, Clipbrd, AppEvnts, wsreferenciaAutorizacion,SimetricaWS,Palic,
  Universal,XSBuiltIns;
type
  TfrmPuntoVenta = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxPageControlCabecera: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    TabGeneral: TcxTabSheet;
    GridPruebas: TcxGrid;
    GridPruebasLevel1: TcxGridLevel;
    GridPruebasEntradasPacienteDet: TcxGridDBTableView;
    GridPruebasEntradasPacienteDetCoberturaAplica: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetCoberturaEspecial: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetPruebaID: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetPrecio: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetDescuento: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetTotalLinea: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetDescripcion: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetDescPct: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetCoberturaExpPorc: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetCOBERTURAAPLICADA: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetMuestraNo: TcxGridDBColumn;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item10: TdxLayoutItem;
    lgBotones: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    lgBotonesItem1: TdxLayoutItem;
    btentrada: TcxButton;
    lgBotonesItem3: TdxLayoutItem;
    btprueba: TcxButton;
    lgBotonesItem4: TdxLayoutItem;
    btcancelar: TcxButton;
    lgBotonesItem5: TdxLayoutItem;
    bteliminar: TcxButton;
    lgBotonesItem6: TdxLayoutItem;
    btcliente: TcxButton;
    lgBotonesItem7: TdxLayoutItem;
    btgrabar: TcxButton;
    lgBotonesItem9: TdxLayoutItem;
    btimprimir: TcxButton;
    lcGeneralGroup_Root: TdxLayoutGroup;
    lcGeneral: TdxLayoutControl;
    mdPago: TdxMemData;
    mdPagoFormaDePago: TStringField;
    mdPagoOrden: TSmallintField;
    mdPagoPagado: TCurrencyField;
    mdPagoFormaPagoID: TStringField;
    mdPagorefrecid: TLargeintField;
    mdPagoMoneda: TStringField;
    dsPago: TDataSource;
    dsEntradaPaciente: TDataSource;
    qrEntradaPacienteDetalle: TADOQuery;
    dsEntradaPacienteDetalle: TDataSource;
    ppImpFactura: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    pplbtipodoc: TppLabel;
    ppDBText11: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppShape1: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel34: TppLabel;
    ppDBText38: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel18: TppLabel;
    ppDBText19: TppDBText;
    ppLabel19: TppLabel;
    ppDBText20: TppDBText;
    ppLabel20: TppLabel;
    ppDBText21: TppDBText;
    ppLabel21: TppLabel;
    ppDBText22: TppDBText;
    ppLabel22: TppLabel;
    ppDBText23: TppDBText;
    ppLabel23: TppLabel;
    ppDBText24: TppDBText;
    ppLabel24: TppLabel;
    ppDBText25: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLine1: TppLine;
    ppImpCotizacion: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel5: TppLabel;
    ppLabel25: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel31: TppLabel;
    ppDBText35: TppDBText;
    ppLabel32: TppLabel;
    ppDBText36: TppDBText;
    ppShape2: TppShape;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBMemo2: TppDBMemo;
    ppEntradaPaciente: TppDBPipeline;
    ppEntradaPacienteDetalle: TppDBPipeline;
    lcGeneralGroup1: TdxLayoutGroup;
    lcGeneralGroup2: TdxLayoutGroup;
    lcGeneralGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcGeneralItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcGeneralItem4: TdxLayoutItem;
    EdPaciente: TcxDBTextEdit;
    LcPaciente: TdxLayoutItem;
    CxDbPaciente: TcxDBTextEdit;
    lcGeneralItem6: TdxLayoutItem;
    cxDBMemo2: TcxDBMemo;
    lcGeneralItem7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcGeneralItem8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    lcGeneralItem9: TdxLayoutItem;
    lcGeneralItem10: TdxLayoutItem;
    EdCliente: TcxDBTextEdit;
    LcCliente: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    lcGeneralItem12: TdxLayoutItem;
    lcGeneralGroup4: TdxLayoutGroup;
    lcGeneralGroup6: TdxLayoutGroup;
    EdCoberturaValor: TcxDBCurrencyEdit;
    lcGeneralItem17: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcGeneralItem18: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    lcGeneralItem19: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    lcGeneralItem20: TdxLayoutItem;
    CbDocumento: TcxDBImageComboBox;
    lcGeneralItem21: TdxLayoutItem;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    menuImpresion: TPopupMenu;
    ExtraOptions1: TExtraOptions;
    ppImpFacturaSeguro: TppReport;
    ppImpFactPacienteConSeguro: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDBText55: TppDBText;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppDBText63: TppDBText;
    ppLabel55: TppLabel;
    ppShape4: TppShape;
    ppLabel57: TppLabel;
    ppDBText68: TppDBText;
    LbFechayHora: TppLabel;
    ppLabel68: TppLabel;
    ppDBText73: TppDBText;
    ppDetailBandConSeguro: TppDetailBand;
    ppDBText74: TppDBText;
    ppSummaryFactPacienteConSeguro: TppSummaryBand;
    ppImpFactPacienteSinSeguro: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel75: TppLabel;
    ppDetailBandSinSeguro: TppDetailBand;
    ppSummaryFactPacienteSinSeguro: TppSummaryBand;
    ppLabel83: TppLabel;
    BtFunciones: TcxButton;
    lgBotonesItem12: TdxLayoutItem;
    MenuFunciones: TPopupMenu;
    ConfirmarCobertura1: TMenuItem;
    ppLabel97: TppLabel;
    ppDBText108: TppDBText;
    btnotacredito: TcxButton;
    lgBotonesItem13: TdxLayoutItem;
    lcGeneralGroup7: TdxLayoutGroup;
    EdDoctor: TcxDBExtLookupComboBox;
    lcGeneralItem24: TdxLayoutItem;
    lcGeneralItem26: TdxLayoutItem;
    lcGeneralItem28: TdxLayoutItem;
    lcGeneralItem29: TdxLayoutItem;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBImageComboBox8: TcxDBImageComboBox;
    lcGeneralItem30: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    lcGeneralItem31: TdxLayoutItem;
    CambiarLaboratorioNoenlasLineas1: TMenuItem;
    cxDBTextEdit14: TcxDBTextEdit;
    lcGeneralItem23: TdxLayoutItem;
    edcobexpporc: TcxDBCheckBox;
    lcGeneralItem16: TdxLayoutItem;
    AsignarDescuentoPermitidoalUsuario1: TMenuItem;
    EliminarDescuentoAplicado1: TMenuItem;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    lcGeneralItem33: TdxLayoutItem;
    lcGeneralGroup8: TdxLayoutGroup;
    EdNombreDoctor: TcxDBTextEdit;
    lcGeneralItem34: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcGeneralItem35: TdxLayoutItem;
    MenuGrid: TPopupMenu;
    MenuItem1: TMenuItem;
    edtipocliente: TcxDBExtLookupComboBox;
    lcGeneralItem14: TdxLayoutItem;
    lcGeneralGroup9: TdxLayoutGroup;
    lcGeneralGroup10: TdxLayoutGroup;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBCheckBox3: TcxDBCheckBox;
    lcGeneralItem32: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    lcGeneralItem15: TdxLayoutItem;
    lcGeneralGroup12: TdxLayoutGroup;
    lcGeneralGroup13: TdxLayoutGroup;
    ppLabel104: TppLabel;
    ppDBText114: TppDBText;
    TransferirAxapta1: TMenuItem;
    AsignarDescuentoAutorizadoporCobros1: TMenuItem;
    GastosVarios1: TMenuItem;
    LbHold: TcxLabel;
    lcGeneralItem38: TdxLayoutItem;
    BtHold: TcxButton;
    Asignar2daMuestra1: TMenuItem;
    RegistrarPruebadelExterior1: TMenuItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcGeneralItem2: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    lcGeneralItem3: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    lcGeneralItem37: TdxLayoutItem;
    LbPrecio1: TppLabel;
    LbDescripcion1: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    LbNetoSin: TppLabel;
    LbPagadoSin: TppLabel;
    LbPendienteSin: TppLabel;
    LbNetoTit: TppLabel;
    LbPagadoTit: TppLabel;
    LbPendienteTit: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    RegistrarFechaPrometida1: TMenuItem;
    Materiales1: TMenuItem;
    GridPruebasEntradasPacienteDetCodigoCupID: TcxGridDBColumn;
    LbDescSinTitulo: TppLabel;
    LbDescuentoSin: TppLabel;
    LbBrutoTit: TppLabel;
    LbBrutoSin: TppLabel;
    RegistrarCobrosTemporales1: TMenuItem;
    cxDBDateEdit1: TcxDBDateEdit;
    lcGeneralItem22: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    lcGeneralItem13: TdxLayoutItem;
    ppImpFacturaExterior: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppDBText88: TppDBText;
    ppLabel82: TppLabel;
    ppLabel89: TppLabel;
    ppDBText93: TppDBText;
    ppLabel91: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel81: TppLabel;
    ppDBText80: TppDBText;
    ppDBComentario: TppDBMemo;
    ppShape8: TppShape;
    ppMemoFactConSeg: TppMemo;
    ppMemoFactSinSeg: TppMemo;
    ppShape9: TppShape;
    MarcarPruebaNOProcesar1: TMenuItem;
    ppMemoFactExterior: TppMemo;
    ppDBDescripcion: TppDBMemo;
    ppLabel84: TppLabel;

    CuadredeCaja1: TMenuItem;
    CuadredeCaja2: TMenuItem;
    RecibodeCobro1: TMenuItem;
    NotadeCredito1: TMenuItem;
    CodigodeBarra1: TMenuItem;
    FacturaExterior1: TMenuItem;
    VolantedePruebasARS1: TMenuItem;
    InstructivodeInternet1: TMenuItem;
    VolantedePruebasTomaMuestra1: TMenuItem;

    qrEntradaPacienteDetallePRUEBAID: TStringField;
    qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField;
    qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField;
    qrEntradaPacienteDetalleDESCRIPCION: TStringField;
    qrEntradaPacienteDetalleCODIGOCUPID: TStringField;
    qrEntradaPacienteDetalleMUESTRAANT: TStringField;
    qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField;
    qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField;
    qrEntradaPacienteDetalleSECUENCIA: TIntegerField;
    qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField;
    qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField;
    qrEntradaPacienteDetallePRECIO: TBCDField;
    qrEntradaPacienteDetalleTOTALLINEA: TBCDField;
    qrEntradaPacienteDetalleTIPOPRUEBA: TStringField;
    qrEntradaPacienteDetalleTIPOAS400: TStringField;
    qrEntradaPacienteDetalleCODIGOAS400: TStringField;
    qrEntradaPacienteDetalleMEDIOAS400: TStringField;
    qrEntradaPacienteDetalleDESCPCT: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField;
    qrEntradaPacienteDetalleDESCUENTO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaPacienteDetalleFACTURAR: TIntegerField;
    qrEntradaPacienteDetalleSELECCIONAR: TIntegerField;
    qrEntradaPacienteDetalleMUESTRANO: TStringField;
    qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteDetalleURGENTE: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRA: TIntegerField;
    qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField;
    qrEntradaPacienteDetalleHORAENTREGA: TStringField;
    qrEntradaPacienteDetalleESTATUS: TStringField;
    qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaPacienteDetalleCOMENTARIO: TStringField;
    qrEntradaPacienteDetalleCUADRADO: TIntegerField;
    qrEntradaPacienteDetalleADICIONAL: TBCDField;
    qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField;
    qrEntradaPacienteDetallePASARAXAPTA: TIntegerField;
    qrEntradaPacienteDetalleREPREALIZADA: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRANO: TStringField;
    qrEntradaPacienteDetalleTIENEACUERDOPRECIO: TIntegerField;
    qrEntradaPacienteDetalleTIENEACUERDODESCUENTO: TIntegerField;
    qrEntradaPacienteDetalleCUADREGLOBAL: TStringField;
    qrEntradaPacienteDetalleCUADREUSUARIO: TStringField;
    qrEntradaPacienteDetalleEXTERIOR: TIntegerField;
    qrEntradaPacienteDetalleLDRDEPARTAMENTOID: TStringField;
    qrEntradaPacienteDetallePRECIOCOMBO: TBCDField;
    qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
    qrEntradaPacienteDetalleSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    LbHora: TcxDBLabel;
    dxLayoutControl1Item15: TdxLayoutItem;
    qrEntradaPacienteDetalleCOMBO: TIntegerField;
    ppReport1: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppLabel87: TppLabel;
    ppShape10: TppShape;
    ppLabel92: TppLabel;
    ppLabel95: TppLabel;
    ppDBText95: TppDBText;
    ppLabel96: TppLabel;
    ppDBText96: TppDBText;
    ppLabel99: TppLabel;
    ppLabel110: TppLabel;
    ppDBText100: TppDBText;
    ppLabel111: TppLabel;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppDBText103: TppDBText;
    ppLabel114: TppLabel;
    ppDBText104: TppDBText;
    ppLabel115: TppLabel;
    ppDBText105: TppDBText;
    ppLabel116: TppLabel;
    ppDBText106: TppDBText;
    ppLabel117: TppLabel;
    ppDBText107: TppDBText;
    ppLabel118: TppLabel;
    ppDBText110: TppDBText;
    ppLabel119: TppLabel;
    ppDBText117: TppDBText;
    ppLabel120: TppLabel;
    ppDBText118: TppDBText;
    ppDetailBand5: TppDetailBand;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppDBText119: TppDBText;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppShape11: TppShape;
    ppMemo1: TppMemo;
    ppLabel129: TppLabel;
    BtInterfaseAS400: TMenuItem;
    ppLine3: TppLine;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    LbNetoCon: TppLabel;
    LbPagadoCon: TppLabel;
    LbPendienteCon: TppLabel;
    LbDescConTitulo: TppLabel;
    LbDescuentoCon: TppLabel;
    ppLabel135: TppLabel;
    LbBrutoCon: TppLabel;
    menuInternet: TPopupMenu;
    InternetPaciente1: TMenuItem;
    InternetCliente1: TMenuItem;
    InternetDoctor1: TMenuItem;
    VerTransacciones1: TMenuItem;
    BalanceActual1: TMenuItem;
    qrBalanceCliente: TADOQuery;
    qrBalanceClientemonedaid: TStringField;
    qrBalanceClienteValor: TBCDField;
    qrBalanceClienteValorRD: TBCDField;
    lbUltimaMuestra: TcxLabel;
    dxLayoutControl1Group6: TdxLayoutGroup;
    ppDBText78: TppDBText;
    ppLabel132: TppLabel;
    ppParameterList1: TppParameterList;
    ppCabeFactSeguro: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel60: TppLabel;
    ppLabel107: TppLabel;
    ppDBText54: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppDBText57: TppDBText;
    ppLabel56: TppLabel;
    ppDBText61: TppDBText;
    lbFechayHora2: TppLabel;
    ppLabel49: TppLabel;
    ppDBText60: TppDBText;
    ppLabel100: TppLabel;
    ppDBText59: TppDBText;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppDBText112: TppDBText;
    ppLabel80: TppLabel;
    ppDBText64: TppDBText;
    ppDBText70: TppDBText;
    ppDBText65: TppDBText;
    ppLabel131: TppLabel;
    ppDetailBand3: TppDetailBand;
    LbDescripcion: TppLabel;
    LbPrecio: TppLabel;
    ppSummaryFacturaSeguro: TppSummaryBand;
    ppLabel66: TppLabel;
    ppLabel61: TppLabel;
    ppLabel67: TppLabel;
    ppDBText71: TppDBText;
    ppLabel46: TppLabel;
    ppLbCoberturaPorc: TppLabel;
    ppShape7: TppShape;
    ppLbCoberturaValor: TppLabel;
    ppDBText77: TppDBText;
    ppReport2: TppReport;
    ppDBText51: TppDBText;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel139: TppLabel;
    ppDBText58: TppDBText;
    ppLabel47: TppLabel;
    ppLabel59: TppLabel;
    ppLabel134: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    cxDBTextEdit3: TcxDBTextEdit;
    lcGeneralItem5: TdxLayoutItem;
    lcGeneralGroup11: TdxLayoutGroup;
    DepositosSucursales1: TMenuItem;
    MenuEspecial: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    LbEntregaCobertura: TppLabel;
    ppDBText52: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText67: TppDBText;
    ppLabel64: TppLabel;
    ppShape12: TppShape;
    ppDBText69: TppDBText;
    LbFechayHora1: TppLabel;
    ppLabel72: TppLabel;
    ppDBText72: TppDBText;
    ppLabel73: TppLabel;
    ppDBText79: TppDBText;
    ppLabel76: TppLabel;
    ppDBText81: TppDBText;
    ppLine5: TppLine;
    ppDBText82: TppDBText;
    ppLabel77: TppLabel;
    ppDBText84: TppDBText;
    ppLabel78: TppLabel;
    ppLabel103: TppLabel;
    ppLabel105: TppLabel;
    LbEntregaCobertura1: TppLabel;
    RecibosdelAS4001: TMenuItem;
    RegistrarNuevoPaciente1: TMenuItem;
    ppLabel65: TppLabel;
    ppLabel74: TppLabel;
    ppLabel79: TppLabel;
    ppLabel98: TppLabel;
    ppLabel106: TppLabel;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel133: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppDBText89: TppDBText;
    ppLabel147: TppLabel;
    ppLabel149: TppLabel;
    ppDBText109: TppDBText;
    ppLabel150: TppLabel;
    ppLabel148: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppDBText115: TppDBText;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppDBText116: TppDBText;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppDBText121: TppDBText;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppParameterList2: TppParameterList;
    cxDBDateEdit5: TcxDBDateEdit;
    lcGeneralItem11: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    lcGeneralGroup14: TdxLayoutGroup;
    btPacientes: TcxButton;
    cxButton1: TcxButton;
    RAWPrinter1: TRAWPrinter;
    cxViewRepository: TcxGridViewRepository;
    vwDoctores: TcxGridDBTableView;
    vwDoctoresDoctorID: TcxGridDBColumn;
    vwDoctoresNombre: TcxGridDBColumn;
    cxEditRepository: TcxEditRepository;
    cxTextEdit: TcxEditRepositoryTextItem;
    cxIntEdit: TcxEditRepositorySpinItem;
    cxCalcEdit: TcxEditRepositoryCalcItem;
    cxDateEdit: TcxEditRepositoryDateItem;
    cxComboBoxEdit: TcxEditRepositoryComboBoxItem;
    cxCheckBoxEdit: TcxEditRepositoryImageComboBoxItem;
    cxPostadoSiNoAmbos: TcxEditRepositoryImageComboBoxItem;
    cxIcTodoGrupoTabla: TcxEditRepositoryImageComboBoxItem;
    cxIcIvDimField: TcxEditRepositoryImageComboBoxItem;
    icTodoTabla: TcxEditRepositoryImageComboBoxItem;
    cxDateMaskEdit: TcxEditRepositoryMaskItem;
    cxSvProgressBar: TcxEditRepositoryProgressBar;
    cxLcProcesos: TcxEditRepositoryLookupComboBoxItem;
    icFormaEntregaPruebas: TcxEditRepositoryImageComboBoxItem;
    elcDoctores: TcxEditRepositoryExtLookupComboBoxItem;
    elcProyecto: TcxEditRepositoryExtLookupComboBoxItem;
    elcFlebotomista: TcxEditRepositoryExtLookupComboBoxItem;
    elcGrupoCliente: TcxEditRepositoryExtLookupComboBoxItem;
    elcClientes: TcxEditRepositoryExtLookupComboBoxItem;
    elcPacientes: TcxEditRepositoryExtLookupComboBoxItem;
    elcGrupoPrueba: TcxEditRepositoryExtLookupComboBoxItem;
    lcMonedas: TcxEditRepositoryLookupComboBoxItem;
    elcPruebas: TcxEditRepositoryExtLookupComboBoxItem;
    icTipoCliente: TcxEditRepositoryImageComboBoxItem;
    elcCiudad: TcxEditRepositoryExtLookupComboBoxItem;
    elcEspecialidad: TcxEditRepositoryExtLookupComboBoxItem;
    elcSeguro: TcxEditRepositoryExtLookupComboBoxItem;
    elcGastosVarios: TcxEditRepositoryExtLookupComboBoxItem;
    cxIcTodoGrupoTablaTarjetaDescuentos: TcxEditRepositoryImageComboBoxItem;
    elcTarjetaDescuento: TcxEditRepositoryExtLookupComboBoxItem;
    elcDiasProcesamiento: TcxEditRepositoryExtLookupComboBoxItem;
    elcUnidades: TcxEditRepositoryExtLookupComboBoxItem;
    elcMateriales: TcxEditRepositoryExtLookupComboBoxItem;
    elcDepartamento: TcxEditRepositoryExtLookupComboBoxItem;
    elcMuestras: TcxEditRepositoryExtLookupComboBoxItem;
    elcConceptoNotas: TcxEditRepositoryExtLookupComboBoxItem;
    icFormaEntregaPruebaDoctor: TcxEditRepositoryImageComboBoxItem;
    qrEntradaPaciente: TADOQuery;
    qrEntradaPacienteENTRADAID: TStringField;
    qrEntradaPacienteORIGEN: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacientePOLIZAID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacienteENCLINICA: TIntegerField;
    qrEntradaPacienteFROM_CLINICA: TIntegerField;
    qrEntradaPacienteRECORDCLINICA: TStringField;
    qrEntradaPacienteNUMEROHABITACION: TStringField;
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteHORAPROMETIDA: TStringField;
    qrEntradaPacienteFLEBOTOMISTAID: TStringField;
    qrEntradaPacientePROYECTOID: TStringField;
    qrEntradaPacienteRECORDID: TIntegerField;
    qrEntradaPacienteBRUTO: TBCDField;
    qrEntradaPacienteDESCUENTO: TBCDField;
    qrEntradaPacienteSUBTOTAL: TBCDField;
    qrEntradaPacienteNETO: TBCDField;
    qrEntradaPacienteTOTALPAGADO: TBCDField;
    qrEntradaPacienteCOBERTURAPORC: TBCDField;
    qrEntradaPacienteCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaPacienteDESCUENTOPORC: TBCDField;
    qrEntradaPacienteDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOBONO: TBCDField;
    qrEntradaPacienteGASTOSVARIOS: TBCDField;
    qrEntradaPacienteTASA: TBCDField;
    qrEntradaPacienteNOMBREPACIENTE: TStringField;
    qrEntradaPacienteTELEFONOS: TStringField;
    qrEntradaPacienteTELEFONO2: TStringField;
    qrEntradaPacienteEMAIL: TStringField;
    qrEntradaPacienteCLIENTENOMBRE: TStringField;
    qrEntradaPacienteSUCURSALID: TStringField;
    qrEntradaPacienteUSERID: TStringField;
    qrEntradaPacienteCOBROID: TStringField;
    qrEntradaPacientePRIORIDAD: TIntegerField;
    qrEntradaPacienteFAX: TStringField;
    qrEntradaPacienteTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteAPROBACIONNO: TStringField;
    qrEntradaPacienteAPROBACIONPOR: TStringField;
    qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaPacienteMUESTRANO: TStringField;
    qrEntradaPacienteMONEDAID: TStringField;
    qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteEDADPACIENTE: TIntegerField;
    qrEntradaPacienteSEXO: TIntegerField;
    qrEntradaPacienteNOMBREDOCTOR: TStringField;
    qrEntradaPacientePUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteCARNET: TStringField;
    qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteCUADREGLOBAL: TStringField;
    qrEntradaPacienteCUADREUSUARIO: TStringField;
    qrEntradaPacienteDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteNOAS400: TIntegerField;
    qrEntradaPacienteNOAXAPTA: TIntegerField;
    qrEntradaPacienteNOFACTURA: TIntegerField;
    qrEntradaPacienteFACTEXTERIOR: TIntegerField;
    qrEntradaPacienteHOLD: TIntegerField;
    qrEntradaPacienteREPMUESTRA: TIntegerField;
    qrEntradaPacienteENTRADAIDANT: TStringField;
    qrEntradaPacienteTIPOENTRADA: TStringField;
    qrEntradaPacienteFORMADEPAGO: TStringField;
    qrEntradaPacienteDESCUENTOCARD: TStringField;
    qrEntradaPacienteDESCUENTOTEXTO: TStringField;
    qrEntradaPacienteACUERDOPROPIO: TIntegerField;
    qrEntradaPacienteCLIENTEPADRE: TStringField;
    qrEntradaPacienteDESCUENTOPLANID: TStringField;
    qrEntradaPacienteHORAREGISTRO: TStringField;
    qrEntradaPacienteHORAENTRADA: TStringField;
    qrEntradaPacienteESTATUS: TIntegerField;
    qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteCLASECREDITO: TStringField;
    qrEntradaPacienteCARNETNUMERO: TStringField;
    qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacientePACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteDATAAREAID: TStringField;
    qrEntradaPacienteNOTA: TStringField;
    qrEntradaPacienteDIRECCION: TStringField;
    qrEntradaPacienteNCFTYPEID: TStringField;
    qrEntradaPacienteNCFID: TStringField;
    qrEntradaPacienteNCFNAME: TStringField;
    qrEntradaPacienteTotalPendiente: TBCDField;
    qrEntradaPacienteFECHA: TDateTimeField;
    qrEntradaPacienteFECHADEALTA: TDateTimeField;
    qrEntradaPacienteFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteCUADRADO: TIntegerField;
    qrEntradaPacienteTRANSFERIDO: TIntegerField;
    qrEntradaPacienteSUCURSAL: TIntegerField;
    qrEntradaPacienteNUMEROINTERNET: TIntegerField;
    qrEntradaPacienteRESULTADOCLIENTE: TIntegerField;
    qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaPacienteTRANSFERENCIA: TStringField;
    qrEntradaPacienteGRUPOPRECIO: TStringField;
    qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField;
    qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaPacienteSINPRFILTER: TIntegerField;
    qrEntradaPacienteFECHANACIMIENTO: TDateTimeField;
    btAutoriza: TcxButton;
    qrEntradaPacienteCOD_CASO: TStringField;
    lcGeneralItem27: TdxLayoutItem;
    lcGeneralGroup15: TdxLayoutGroup;
    cxDBCheckBox4: TcxDBCheckBox;
    Devoluciones1: TMenuItem;
    DistribucionCaja1: TMenuItem;
    notadedebito1: TMenuItem;
    AsignarDescuentoPermitidoalEmpleado1: TMenuItem;
    btnTSS: TcxButton;
    btnInternet: TcxButton;
    cxDBTextEdit7: TcxDBTextEdit;
    ppParameterList3: TppParameterList;
    raCodeModule1: TraCodeModule;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    lcGeneralItem36: TdxLayoutItem;
    lcGeneralItem39: TdxLayoutItem;
    lcGeneralGroup16: TdxLayoutGroup;
    lcGeneralItem40: TdxLayoutItem;
    lcGeneralGroup17: TdxLayoutGroup;
    lcGeneralItem41: TdxLayoutItem;
    lcGeneralGroup18: TdxLayoutGroup;
    lcGeneralItem42: TdxLayoutItem;
    lcGeneralGroup19: TdxLayoutGroup;
    lgBotonesItem2: TdxLayoutItem;
    btpaciente: TcxButton;
    mdPagoCobroID: TStringField;
    mdPagoPagadoTotal: TCurrencyField;
    ppLabel214: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppDBText53: TppDBText;
    ppDBText56: TppDBText;
    ppDBText62: TppDBText;
    ppLabel54: TppLabel;
    ppLabel58: TppLabel;
    FacturaconNCF1: TMenuItem;
    ppImpFactPacienteNCF: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppShape5: TppShape;
    ppLabel138: TppLabel;
    ppLabel151: TppLabel;
    ppDBText75: TppDBText;
    ppLabel161: TppLabel;
    ppLabel180: TppLabel;
    ppDBText85: TppDBText;
    ppLabel181: TppLabel;
    ppDBText97: TppDBText;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppDBText111: TppDBText;
    ppLabel184: TppLabel;
    ppDBText113: TppDBText;
    ppLine6: TppLine;
    ppDBText120: TppDBText;
    ppLabel185: TppLabel;
    ppDBText124: TppDBText;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel192: TppLabel;
    ppLabel194: TppLabel;
    ppDBText125: TppDBText;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppDBText126: TppDBText;
    ppLabel198: TppLabel;
    ppLabel201: TppLabel;
    ppDBText127: TppDBText;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppDBText128: TppDBText;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel206: TppLabel;
    ppLabel207: TppLabel;
    ppLabel215: TppLabel;
    ppShape13: TppShape;
    ppParameterList4: TppParameterList;
    ppLabel217: TppLabel;
    ppLabel200: TppLabel;
    ppLabel199: TppLabel;
    ppLabel191: TppLabel;
    ppLabel193: TppLabel;
    ppLabel197: TppLabel;
    ppLabel218: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel216: TppLabel;
    ppLabel213: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    qrEntradaPacienteENTRADAID_REF: TStringField;
    ppLabel208: TppLabel;
    ppLabel220: TppLabel;
    EDDIAGN: TcxDBExtLookupComboBox;
    qrEntradaPacienteCOD_DIAG: TStringField;
    elcDiagnostico: TcxEditRepositoryExtLookupComboBoxItem;
    vwDiagnostico: TcxGridDBTableView;
    vwDiagnosticoCod_Diag: TcxGridDBColumn;
    vwDiagnosticoDescripcion: TcxGridDBColumn;
    spBeneficiario: TLMDSimplePanel;
    mdBeneficiarioC: TJvMemoryData;
    dsBeneficiarioC: TDataSource;
    mdBeneficiarioCNumAfiliado: TStringField;
    mdBeneficiarioCNombres: TStringField;
    mdBeneficiarioCApellidos: TStringField;
    mdBeneficiarioCParentesco: TStringField;
    mdBeneficiarioCFechaNac: TStringField;
    mdBeneficiarioCEdad: TIntegerField;
    mdBeneficiarioCSeleccion: TBooleanField;
    LMDLabel7: TLMDLabel;
    btnCancela: TLMDButton;
    cgDatos: TcxGrid;
    dbDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    dbDatosSeleccion: TcxGridDBColumn;
    dbDatosNumAfiliado: TcxGridDBColumn;
    dbDatosNombres: TcxGridDBColumn;
    dbDatosApellidos: TcxGridDBColumn;
    dbDatosParentesco: TcxGridDBColumn;
    dbDatosFechaNac: TcxGridDBColumn;
    dbDatosEdad: TcxGridDBColumn;
    btnOk: TLMDButton;
    chkDiagnosticof: TcxCheckBox;
    lcGeneralItem43: TdxLayoutItem;
    lcGeneralGroup20: TdxLayoutGroup;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    XMLTransformProvider1: TXMLTransformProvider;
    HTTPRIO1: THTTPRIO;
    Memo1: TMemo;
    spImpresionNCF: TLMDSimplePanel;
    LMDLabel2: TLMDLabel;
    btCancelarNCF: TLMDButton;
    btAceptaNCF: TLMDButton;
    mskRNC: TcxMaskEdit;
    txtNombreCia: TcxTextEdit;
    cboTipoNCF: TcxComboBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    ppDBText130: TppDBText;
    ppDBText129: TppDBText;
    ppLabel219: TppLabel;
    ppDBText131: TppDBText;
    ppLabel221: TppLabel;
    ppDBText132: TppDBText;
    ppLabel222: TppLabel;
    ppDBText133: TppDBText;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel85: TppLabel;
    cxLabel1: TcxLabel;
    cbExtDocumento: TcxExtLookupComboBox;
    CotizaFactura: TMenuItem;
    ppLabel227: TppLabel;
    ppDBText134: TppDBText;
    qrEntradaPacienteRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID_POS: TLargeintField;
    qrEntradaPacienteDetalleRECID: TLargeintField;
    qrEntradaPacienteDetalleNCR_ESTATUS: TBooleanField;
    qrEntradaPacienteCOD_AREA: TStringField;
    ppLabel26: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppLabel27: TppLabel;
    ppDBText32: TppDBText;
    ppLabel28: TppLabel;
    ppDBText37: TppDBText;
    ppLabel33: TppLabel;
    ppDBText42: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDBText44: TppDBText;
    ppLabel41: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel235: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel236: TppLabel;
    ppDBText137: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppDBText43: TppDBText;
    ppLabel228: TppLabel;
    ppDBText45: TppDBText;
    ppLabel229: TppLabel;
    ppDBText46: TppDBText;
    ppLabel230: TppLabel;
    ppDBText47: TppDBText;
    ppLabel231: TppLabel;
    ppDBText48: TppDBText;
    ppLabel238: TppLabel;
    ppLabel45: TppLabel;
    ppLabel237: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppDBCalc1: TppDBCalc;
    lcGeneralItem44: TdxLayoutItem;
    lcGeneralGroup21: TdxLayoutGroup;
    cboExtTipoDoc: TcxDBExtLookupComboBox;
    lcGeneralGroup5: TdxLayoutGroup;
    ckdbDomicilio: TcxDBCheckBox;
    lcGeneralItem46: TdxLayoutItem;
    qrEntradaPacienteDOMICILIO: TBooleanField;
    lcGeneralItem47: TdxLayoutItem;
    lcGeneralGroup23: TdxLayoutGroup;
    ckdbEmbarazada: TcxDBCheckBox;
    qrEntradaPacienteEMBARAZADA: TBooleanField;
    lcGeneralGroup24: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    lcGeneralItem45: TdxLayoutItem;
    lcGeneralGroup22: TdxLayoutGroup;
    cxDBTextEdit15: TcxDBTextEdit;
    lgBotonesItem8: TdxLayoutItem;
    btNueva: TcxButton;
    lcGeneralItem48: TdxLayoutItem;
    ppBarCode1: TppBarCode;
    qrPacientePG: TADOQuery;
    dsPacientePG: TDataSource;
    qrPacientePGTipo_Documento: TIntegerField;
    qrPacientePGDocumento: TStringField;
    qrPacientePGNombre: TStringField;
    qrPacientePGSexo: TWordField;
    qrPacientePGFecha_Nac: TDateTimeField;
    qrPacientePGTelefono: TStringField;
    qrPacientePGNum_Caso: TStringField;
    qrPacientePGFecha_Rec: TDateTimeField;
    ppBarCode2: TppBarCode;
    ppBarCode3: TppBarCode;
    ppBarCode4: TppBarCode;
    ppBarCode5: TppBarCode;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    GridPruebasEntradasPacienteDetCODIGOAS400: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetComentario: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetResultado: TcxGridDBColumn;
    qrEntradaPacienteDetalleResultado: TStringField;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppDBText27: TppDBText;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel130: TppLabel;
    ppDBText94: TppDBText;
    ppLabel88: TppLabel;
    ppDBText49: TppDBText;
    ppShape6: TppShape;
    ppLabel86: TppLabel;
    ppDBMemo5: TppDBMemo;
    ppLabel90: TppLabel;
    ppImpCotiza: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppShape14: TppShape;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppDBText50: TppDBText;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppDBText66: TppDBText;
    ppLabel250: TppLabel;
    ppDBText76: TppDBText;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppDBText83: TppDBText;
    ppLabel253: TppLabel;
    ppDBText92: TppDBText;
    ppLine2: TppLine;
    ppDBText122: TppDBText;
    ppLabel254: TppLabel;
    ppDBText123: TppDBText;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel265: TppLabel;
    ppLabel267: TppLabel;
    ppLabel269: TppLabel;
    ppDBText138: TppDBText;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppDBText139: TppDBText;
    ppLabel273: TppLabel;
    ppLabel276: TppLabel;
    ppDBText140: TppDBText;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppDBText141: TppDBText;
    ppBarCode6: TppBarCode;
    ppLabel280: TppLabel;
    ppColumnHeaderBand4: TppColumnHeaderBand;
    ppDetailBand8: TppDetailBand;
    ppColumnFooterBand4: TppColumnFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppLabel283: TppLabel;
    ppLabel285: TppLabel;
    ppLabel289: TppLabel;
    ppLabel291: TppLabel;
    ppShape15: TppShape;
    ppParameterList5: TppParameterList;
    ppLabel293: TppLabel;
    ppLabel275: TppLabel;
    ppLabel274: TppLabel;
    ppLabel268: TppLabel;
    ppLabel266: TppLabel;
    ppLabel272: TppLabel;
    raCodeModule2: TraCodeModule;
    ppLabel279: TppLabel;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    ppLabel292: TppLabel;
    ppLabel290: TppLabel;
    ppLabel287: TppLabel;
    ppRichText7: TppRichText;
    ppFooterBand5: TppFooterBand;
    ppRichText2: TppRichText;
    ppFooterBand6: TppFooterBand;
    ppRichText6: TppRichText;
    ppFooterBand7: TppFooterBand;
    ppRichText4: TppRichText;
    ppFooterBand8: TppFooterBand;
    ppRichText5: TppRichText;
    ppFooterBand9: TppFooterBand;
    ppRichText3: TppRichText;
    ppLine4: TppLine;
    ppLabel53: TppLabel;
    ppFooterBand4: TppFooterBand;
    ppRichText1: TppRichText;
    btDocumento: TcxButton;
    lcGeneralItem49: TdxLayoutItem;
    lcGeneralItem50: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    qrEntradaPacienteFECHA_INDICACION: TDateTimeField;
    lcGeneralGroup25: TdxLayoutGroup;
    mdPagoBancoID: TStringField;
    mdPagoNumero_Referencia: TStringField;
    mdPagoFecha_Vencimiento: TDateTimeField;
    lcGeneralItem25: TdxLayoutItem;
    lcGeneralGroup26: TdxLayoutGroup;
    chkdbIndicacion: TcxDBCheckBox;
    ppLine7: TppLine;
    ppLabel284: TppLabel;
    qrEntradaPacienteNO_INDICACION: TBooleanField;
    ppMemo3: TppMemo;
    mdPagoNumero_Aprobacion: TStringField;
    ppLabel286: TppLabel;
    ppDBText142: TppDBText;
    AsignarDescuentoTarjeta1: TMenuItem;
    AutorizaEntregaResultados1: TMenuItem;
    spDoctor: TLMDSimplePanel;
    LMDLabel1: TLMDLabel;
    btCancel: TLMDButton;
    cgDoctor: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    dbDoctorSeleccion: TcxGridDBColumn;
    dbDoctorTipo: TcxGridDBColumn;
    dbDoctorEstatus: TcxGridDBColumn;
    dbDoctorCedula: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btAcepta: TLMDButton;
    DBGrid2: TDBGrid;
    dsDoctores: TDataSource;
    edbuscarpor: TcxComboBox;
    edbuscar: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    mdDoctores: TJvMemoryData;
    mdDoctoresSeleccion: TBooleanField;
    mdDoctoresCodigo_Doctor: TStringField;
    mdDoctoresNombre: TStringField;
    mdDoctoresTipo: TStringField;
    mdDoctoresEstatus: TStringField;
    mdDoctoresCedula: TStringField;
    mdDoctoresSecuencia: TIntegerField;
    dbDoctorSecuencia: TcxGridDBColumn;
    ppImpInternet: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppDBText143: TppDBText;
    ppLabel288: TppLabel;
    ppLabel294: TppLabel;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppLabel295: TppLabel;
    ppShape16: TppShape;
    ppDBText146: TppDBText;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppDBText150: TppDBText;
    ppMemo2: TppMemo;
    ppMemo4: TppMemo;
    ppDetailBand12: TppDetailBand;
    ppFooterBand10: TppFooterBand;
    ppRichText8: TppRichText;
    ppParameterList24: TppParameterList;
    ppInternet: TppDBPipeline;
    ppInternetppField1: TppField;
    ppInternetppField2: TppField;
    ppInternetppField3: TppField;
    ppInternetppField4: TppField;
    ppInternetppField5: TppField;
    ppInternetppField6: TppField;
    ppInternetppField7: TppField;
    ppInternetppField8: TppField;
    ppInternetppField9: TppField;
    qrInternet: TADOQuery;
    qrInternetUSUARIOINTERNET: TStringField;
    qrInternetCLAVEINTERNET: TStringField;
    qrInternetNOMBRE: TStringField;
    qrInternetIDENTIFICACION: TStringField;
    qrInternetCLIENTEID: TStringField;
    qrInternetTIPO: TStringField;
    qrInternetACTUALIZADO: TStringField;
    qrInternetDATAAREAID: TStringField;
    qrInternetRECID: TLargeintField;
    dsInternet: TDataSource;
    spMensaje: TLMDSimplePanel;
    Shape1:   TShape;
    Label1:   TLabel;
    Panel1:   TPanel;
    ppMemo5:  TppMemo;
    procedure ppImpInternetBeforePrint(Sender: TObject);
    procedure edbuscarExit(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btAceptaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AsignarDescuentoTarjeta1Click(Sender: TObject);
    procedure cxDBDateEdit3Exit(Sender: TObject);
    procedure cxDBMemo2PropertiesChange(Sender: TObject);
    procedure btDocumentoClick(Sender: TObject);
    procedure ppImpFactPacienteSinSeguroBeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridPruebasEntradasPacienteDetResultadoStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure qrEntradaPacienteDetalleCalcFields(DataSet: TDataSet);
    procedure btNuevaClick(Sender: TObject);
    procedure vwDiagnosticoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDDIAGNPropertiesChange(Sender: TObject);
    procedure CotizaFacturaClick(Sender: TObject);
    procedure cbExtDocumentoPropertiesChange(Sender: TObject);
    procedure btCancelarNCFClick(Sender: TObject);
    procedure btAceptaNCFClick(Sender: TObject);
    procedure HTTPRIO1AfterExecute(const MethodName: String;
      SOAPResponse: TStream);
    procedure chkDiagnosticofClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FacturaconNCF1Click(Sender: TObject);
    procedure cxDBImageComboBox7PropertiesChange(Sender: TObject);
    procedure btnInternetClick(Sender: TObject);
    procedure cxDBCheckBox2PropertiesChange(Sender: TObject);
    procedure btnTSSClick(Sender: TObject);
    procedure AsignarDescuentoPermitidoalEmpleado1Click(Sender: TObject);
    procedure notadedebito1Click(Sender: TObject);
    procedure DistribucionCaja1Click(Sender: TObject);
    procedure Devoluciones1Click(Sender: TObject);
    procedure cxDBCurrencyEdit4PropertiesChange(Sender: TObject);
    procedure btAutorizaClick(Sender: TObject);
    procedure GridPruebasEntradasPacienteDetComentarioPropertiesInitPopup(
      Sender: TObject);
    procedure dsEntradaPacienteStateChange(Sender: TObject);
    procedure vwDoctoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNombreDoctorDblClick(Sender: TObject);
    procedure EdDoctorDblClick(Sender: TObject);
    procedure CancelarOrdenInterfaseAS4001Click(Sender: TObject);
    procedure cxDBTextEdit16KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBDateEdit5Exit(Sender: TObject);
    procedure RegistrarNuevoPaciente1Click(Sender: TObject);
    procedure RecibosdelAS4001Click(Sender: TObject);
    procedure DepositosSucursales1Click(Sender: TObject);
    procedure ppHeaderBand4BeforePrint(Sender: TObject);
    procedure ppHeaderBand5BeforePrint(Sender: TObject);
    procedure ppHeaderBand6BeforePrint(Sender: TObject);
    procedure BalanceActual1Click(Sender: TObject);
    procedure VerTransacciones1Click(Sender: TObject);
    procedure InstructivodeInternet1Click(Sender: TObject);
    procedure CuadredeCaja1Click(Sender: TObject);
    procedure BtInterfaseAS400Click(Sender: TObject);
    procedure CbDocumentoPropertiesChange(Sender: TObject);
    procedure GridPruebasEntradasPacienteDetStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
    procedure MarcarPruebaNOProcesar1Click(Sender: TObject);
    procedure EliminarOrdenesenHold1Click(Sender: TObject);
    procedure ppSummaryFactPacienteConSeguroBeforePrint(Sender: TObject);
    procedure FacturaExterior1Click(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure RegistrarCobrosTemporales1Click(Sender: TObject);
    procedure qrEntradaPacienteClienteIDChange(Sender: TField);
    procedure Materiales1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RegistrarFechaPrometida1Click(Sender: TObject);
    procedure CodigodeBarra1Click(Sender: TObject);
    procedure ppSummaryFactPacienteSinSeguroBeforePrint(Sender: TObject);
    procedure ppSummaryFactPacienteNCFBeforePrint(Sender: TObject);
    procedure ppDetailBandSinSeguroBeforePrint(Sender: TObject);
    procedure ppDetailBandConSeguroBeforePrint(Sender: TObject);
    procedure ppDetailBandImpCotizaBeforePrint(Sender: TObject);
    procedure ppDetailBandFactNCFBeforePrint(Sender: TObject);
    procedure EdDoctorPropertiesChange(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure qrEntradaPacienteTipoEntradaChange(Sender: TField);
    procedure qrEntradaPacienteDetalleBeforeInsert(DataSet: TDataSet);
    procedure qrEntradaPacienteDetalleBeforeEdit(DataSet: TDataSet);
    procedure RegistrarPruebadelExterior1Click(Sender: TObject);
    procedure qrEntradaPacienteNombrePacienteValidate(Sender: TField);
    procedure Asignar2daMuestra1Click(Sender: TObject);
    procedure BtHoldClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GastosVarios1Click(Sender: TObject);
    procedure TransferirAxapta1Click(Sender: TObject);
    procedure CuadredeCaja2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure qrEntradaPacienteCoberturaPorcValidate(Sender: TField);
    procedure qrEntradaPacienteDoctorIDChange(Sender: TField);
    procedure qrEntradaPacienteDetalleAfterDelete(DataSet: TDataSet);
    procedure qrEntradaPacienteOrigenChange(Sender: TField);
    procedure qrEntradaPacienteAfterPost(DataSet: TDataSet);
    procedure EliminarDescuentoAplicado1Click(Sender: TObject);
    procedure qrEntradaPacienteDetalleBeforeDelete(DataSet: TDataSet);
    procedure qrEntradaPacienteDetallePruebaIDValidate(Sender: TField);
    procedure qrEntradaPacienteDetallePruebaIDChange(Sender: TField);
    procedure AsignarDescuentoPermitidoalUsuario1Click(Sender: TObject);
    procedure AsignarDescuentoAutorizadoporCobros1Click(Sender: TObject);
    procedure ppSummaryFacturaSeguroBeforePrint(Sender: TObject);
    procedure qrEntradaPacienteCoberturaValorValidate(Sender: TField);
    procedure qrEntradaPacienteCoberturaExpPorcValidate(Sender: TField);
    procedure EdCoberturaValorExit(Sender: TObject);
    procedure CambiarLaboratorioNoenlasLineas1Click(Sender: TObject);
    procedure NotadeCredito1Click(Sender: TObject);
    procedure btnotacreditoClick(Sender: TObject);
    procedure ConfirmarCobertura1Click(Sender: TObject);
    procedure RecibodeCobro1Click(Sender: TObject);
    procedure VolantedePruebasTomaMuestra1Click(Sender: TObject);
    procedure VolantedePruebasARS1Click(Sender: TObject);
    procedure qrEntradaPacienteDetalleDescuentoChange(Sender: TField);
    procedure btentradaClick(Sender: TObject);
    procedure btclienteClick(Sender: TObject);
    procedure btgrabarClick(Sender: TObject);
    procedure btimpcotClick(Sender: TObject);
    procedure bteliminarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure btpruebaClick(Sender: TObject);
    procedure qrEntradaPacienteTipoDocumentoChange(Sender: TField);
    procedure qrEntradaPacienteCalcFields(DataSet: TDataSet);
    procedure qrEntradaPacienteDetalleAfterPost(DataSet: TDataSet);
    procedure qrEntradaPacienteDetalleBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btpacienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  protected

    procedure SetColorTo(iColor: TColor);
    procedure SetReadOnlyToNoEdit;
    procedure SetComponentReadOnly( thisComponent : TComponent; bFlag : Boolean );
    procedure UnSetReadOnlyToNoEdit;
    procedure RecalcularLineas;
    procedure DesabilitarBotones(_SiNo : Boolean);

    procedure RefrescarCobro;
    procedure ActDetalle;
    procedure ImpresionRecibo;
    procedure ImpresionNC;
    procedure ActInterface;
    procedure Impresiones;

    procedure Act_Hold;
    procedure Del_Hold;
    procedure No_Procesar;
    procedure Buscar_Doctor;
    procedure Buscar_Diagnostico;
    procedure BuscarDoctor;
    procedure No_Procesar_AS400;
    procedure No_Procesar_AS400_Orden;
    procedure Buscar_Muestra;
    procedure Val_2da_Muestra;
    procedure Act_Cliente;
    procedure Buscar_Doctor_Cambio;

    procedure Buscar_Cod_Cups(cliente: String; prueba: String);

    procedure CrearCobroAxapta(cliente: string; paciente: string; tipodoc: string;
                               _cobroid: string; documento: string; fecha: TDateTime;
                               moneda:  string; aplica: string; _refId: Integer;
                               valor: Currency; _areaId: string; _recId: Int64;
                               _padreId: string; _cuadro: Integer; _transf: Integer;
                               _suc: String; _forma: String; valpay: Currency; filter: Integer);

    procedure CrearTransCliente(cliente: string; tipodoc: string; documento: string;
                                tipoaplica: string; documentoaplica: string; fecha : TDateTime;
                                valor: Currency; moneda :string; paciente: string; filter: Integer);

    Procedure Buscar_Campos_Extras(ClienteId :String;Tipo : String);

    function ExisteCobro        : Boolean;
    function TipoCobro          : String;
    function GetEntradaID       : String;
    function GetEntradaID_Hold  : String;
    function GetMuestraNo       : String;
    function GetReciboNo        : String;
    function GetNotaCredito     : String;
    function GetDevolucion      : String;
    function Asignar_Descuento : Boolean;
    function CanMenuEspecial : Boolean;
    function CanCambiarLaboratorio : Boolean;
    function ValidateCliente : Boolean;
    function GetNextSecDoc(tipodoc : string) : String;
    function GetReciboAS400(tipodoc : string; _sucursal : String; _sucAS400: Integer) : String;
    function GetSecuenciaAS400(_sucursal : String; _sucAS400: Integer) : Integer;
    Function Crear_Usuario(nombre : String) : String;
    Function Crear_Clave(cedularnc : String) : Integer;
    Function Valida_Usuario(usuario : String) : Boolean;
    Function Buscar_User_Internet(_customer : String) : Boolean;
    Function Estremos(TextE1,TextE2 : String ; LengE :SmallInt):String ;
    Procedure Procesar_Usuario_New;
    Procedure Insertar_Usuario_New(usuario: string; clave: string; name: string;
                                   cedula: string; cliente: string; tipo: string;
                                   actual: string);
    procedure ImprimirLabels_sp(_Muestrano : String);
    procedure Printing_Label(_muestra: String; _label: String; _departamento: String;
                                          _nombre: String; _usuario: String; _descripcion: String; _descripcion2: String;
                                          _secuencia: Integer);


  private
    { Private declarations }         
//      WSUniv                        : TWebService1Soap;
      WSUniv                        : UniversalSoap;
//      WSPalic                       : TWebServicePalicSoap;  //WS_AutorizacionesSoap;
//      WSUnivD                       : WebSvcUtils;
      WSPalic                       : PalicSoap;
      WSSenasa                      : TSenasaRefWSSoap;
      WSYunen                       : WsServicioAutorizacionSoap;
//      vRecdatben2ObjUser            : TRecDatosBeneficiario2;// Recdatben2ObjUser;
      vRecdatben2ObjUser            : Recdatben2ObjUser;// Recdatben2ObjUser;
//      vArrayOfRecdatben2ObjUser     : ArrayOfTRecDatosBeneficiario2;// ArrayOfRecdatben2ObjUser;
      vArrayOfRecdatben2ObjUser     : ArrayOfRecdatben2ObjUser;// ArrayOfRecdatben2ObjUser;
//      vRecdatben3ObjUser            : TRecDatosBeneficiario3;// Recdatben3ObjUser;
      vRecdatben3ObjUser            : Recdatben4ObjUser;// Recdatben3ObjUser;
      vArrayOfRecDoctor             : ArrayOfUtilsPrestadorObjUser;
      vArrayOfRecDoctorPal          : ArrayOfRemitentes;
      vBeneficiario                 : Beneficiario;
      vTotal_Doctor                 : Integer;
      strVal_Prestador              : String;
      strCod_Prestador              : String;
      strTipo_Proveedor             : String;
      strTipo_Prestador             : String;
      strTipo_Plan                  : String;
      strVal_Afiliado               : String;
      strTipo_PlanAf                : String;
      strNum_Session                : String;
      strVal_Diag                   : String;
      strNombre_Diag                : String;
      strCobertura                  : array[0..50] of String;
      dblMontoRec                   : array[0..50] of Double;
      dblMontoPagado                : array[0..50] of Double;
      strCodResp                    : array[0..50] of String;
      strDescResp                   : array[0..50] of String;
      dblMonto_Pagar                : Double;
      dblMonto_Recl                 : Double;
      strCod_Resp                   : String;
      strCoberturaR                 : array[0..50] of String;
      dblMontoRecR                  : array[0..50] of Double;
      dblMontoPagadoR               : array[0..50] of Double;
      strCodRespR                   : array[0..50] of String;
      strDescRespR                  : array[0..50] of String;
      dblMonto_PagarR               : Double;
      dblMonto_ReclR                : Double;
      strCod_RespR                  : String;
      Num_Reclamacion               : Double;
      strCancelacion                : String;
      strNombreAfil                 : String;
      strCedulaAfil                 : String;
      strParentezco                 : String;
      intEdad                       : Smallint;
      strSexo                       : String;
      strTip_Afi                    : String;
      dFecha_Ingreso                : String;
      Mensaje                       : String;
      CodTipoID                     : Integer;
      Db1Servidor,Db2Servidor,StTrans : String;
      StResultadoPrueba             : String;
  public
    { Public declarations }
    TipoCob              : String;
    noseguro             : TcxStyle;
    Reportado            : TcxStyle;
    NReportado           : TcxStyle;
    Combo                : TcxStyle;
    operacion            : String;
    cobroid              : String;
    Docto_Ant            : String;
    Muestra_Ant          : String;
    ClienteFirst         : String;
    ClienteSecond        : String;
    ClienteRecibo        : String;
    ClienteFactura       : String;
    ClienteFact          : String;
    ConceptoNC           : String;
    Cajero_Dev           : String;
    Sucursal_Dev         : String;
    TipoPago_Dev         : String;
    valorNC              : Currency;
    valorND              : Currency;
    ValorNC_MST          : Currency;
    pendiente            : Currency;
    efectivo             : Currency;
    cheque               : Currency;
    tarjetac             : Currency;
    tarjetad             : Currency;
    tpago                : Currency;
    sumatotal            : Currency;
    devuelta             : Currency;
    precio_combo         : Currency;
    comboprecio          : Boolean;
    comboborrar          : Boolean;
    check_balance        : Boolean;
    Act_2da              : Boolean;
    seg_late             : Boolean;
    preconfir            : Boolean;
    cambiarprecio        : Boolean;
    combodescto          : Integer;
    Record_Ant           : Int64;
    factor               : Integer;
    _recorId             : Int64;
    curCoberturaAplicada : Int64;
    CodProvUniv          : String;

////////////////////////////////////////////////////////////////////////////////

    Descripcion          : string;
    depact,muestraact    : string;
    colact               : integer;
    SecAct               : integer;
    secuencia            : integer;
    secuencialabel       : integer;

    qfindCltParams       : TADOQuery;
    qfindPacientes       : TADOQuery;
    qfindSucursal        : TADOQuery;

    _total_sangre        : Integer;
    _total_envase        : Integer;
    LabelRecId           : Int64;
    LabelNumero          : Integer;
    LabelSecuencia       : Integer;

////////////////////////////////////////////////////////////////////////////////

    Procedure Mirar_Valor_CAB;
    Procedure Mirar_Valor_DET;
    Function  Cargar_Valor(campo: String; valor: Variant): String;
    procedure correccion;
    procedure Guardar_Entrada;
    procedure Cancelar_Entrada;
    procedure Val_Exterior;
    procedure Val_Exterior_Detalle;
    procedure Val_Descuento;
    procedure Val_Balance;
    procedure Val_Paciente;
    procedure Leer_Forma_Pago;
    procedure Val_Forma_Pago(Forma_Pago: string);
    procedure Buscar_Cliente;
    procedure Buscar_Paciente;
    procedure Buscar_Grupo_Clt(Grupo: string);
    procedure Buscar_Grupo_Pac(Grupo: string);

    procedure Agregar_Pacientes(PacienteId : String);
    procedure Agregar_Clientes(ClienteId : String);

    function  buscar_valores : Boolean;
    procedure Confirmar_Precio_Prueba;
    procedure Confirmar_Cliente_Prueba;

    procedure NuevaVenta;
    procedure HabilitaConsultas;
    procedure BuscarDatos;
    procedure RefrescarInterface;
    procedure CancelarCobro;
    procedure CancelarCobroAct;
    procedure ActTotales;
    procedure Act_Cobertura;

    procedure Re_Grabar;

    procedure ActCobro;
    procedure ActNotaDebito;
    procedure ActNotaCredito;
    procedure ActDevolucion;
    procedure CrearCobro;
    procedure CrearNotaDebito;
    procedure CrearNotaCredito;
    procedure CrearDevolucion(Tipo: String;Usuario: String;Sucursal : String);

    procedure Boton_Cobrar;
    procedure Viejo_Cobrar;

    procedure Buscar_Combo;
    procedure Borrar_Combo;
    procedure Actu_Precio_Combo;
    procedure Insert_Card_Descuento;
    procedure Insertar_Combo_Precio;
    procedure Insertar_Combo_Blanco;
    procedure Edita_Combo_Blanco;


    procedure Act_RecIdDetalle;
    procedure VerificarPagoDiferencia;
    procedure RefrescarGrid(SoloLectura : Boolean);
    function GetSecuenciaId : Int64;
    Function GetNotaDebito  : String;

    function MaxSecuenciaLinea : Integer;
    function Buscar_Linea: Integer;
    function ValidarMontoCobrado : Boolean;
    function CalcularCoberturaAplicada : Currency;
    function Valor_Cobertura(_registro: Int64) : Currency;
    function ImporteLinea : Currency;
    function TotalDescuentoLinea : Currency;
    function ImporteBrutoExclLineaActual(refrecid : Int64; secuencia : integer) : Currency;
    function ImporteBrutoExclLineaActualAplica(refrecid : int64 ;secuencia : integer) : Currency;
    function ImporteBrutoExclLineaActualAplicaAndCobertura(refrecid : int64 ;secuencia : integer) : Currency;
    Function Verifica_Comentario_Coberturas : integer;
    Function Verifica_Orden_Pruebas_Paternidad : integer;
    Function Retorna_Paciente_Clave_Internet(ClienteID : String) : String;
    procedure Insertar_Materiales_Sangre;
    procedure Insertar_Materiales_Envase;
    procedure Insertar_Materiales_Prueba;

    procedure Generar_Labels;
    procedure Insertar_LabelTemp;
    procedure Crear_Labels_Temp(_secuenciaact : integer);
    procedure ImpresionRwPrint;

    function  BuscarDia(dia: Integer) : Integer;
    function  FechaPrometida(Prueba: string) : TDate;
    Function  BuscaNumeroOrden(CobroID : String) : String;
    Function  Verifica_Autorizacion : Boolean;
    Function  ActPago : Boolean;
    Function  ActNotaC : Boolean;    
    Function  Inserta_Detalle_Int : Boolean;
    function  Validar_Label_Temp(_paciente: String; _entrada: String;
                                _muestra: String; _prueba: String): Boolean;

    procedure Buscar_Label_Temp(_paciente: String; _sucursal: String; _entrada: String;
                                _muestra: String; TipoMuestra: String; _departamento: String;
                                _medio: String; _color: String; _total: Integer);

    procedure Update_Label_Temp(_paciente: String; _entrada: String; _muestra: String;
                                _prueba: String; _label: String; _labelglobal: String;
                                _labelunico: String; _desc: String; _recid: Int64;
                                _secuencia: Integer; _numero: Int64);

    procedure Update_Label_Descripcion(_label: String; _descripcion: String);

    procedure Insertar_Pago_AS400_PuntodeVenta;

    function CapturaMensajesTeclado (Code: Integer; wParam : Word; lParam:  LongInt): LongInt;  stdcall;
    function CapturaMensajesRaton (Code: Integer; wParam : Word; lParam: LongInt): LongInt;  stdcall;

  end;

Type
  TDias = Record
  Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo : Integer;
  End;

Var
  frmPuntoVenta   : TfrmPuntoVenta;
  qfindprueba     : TADOQuery;
  qfindprulab     : TADOQuery;
  qpruebadesc     : TADOQuery;
  qfindprint      : TADOQuery;
  qfindcodcup     : TADOQuery;
  qfindRepetir    : TADOQuery;
  qfindcombo      : TADOQuery;
  qfindGrupoClt   : TADOQuery;
  qfindGrupoPac   : TADOQuery;
  Dias            : TDias;
  GrupoPrecio     : String;
  GrupoCliente    : String;
  UltimoAcceso    : LongInt;
  HookHandleTec   : hHook = 0;  // Hook del teclado
  HookHandleRat   : hHook = 0;  // Hook del mouse

implementation

uses ActionsDM, DataModule, Main, Pymeconst, XMLIntf, XMLDoc, SoapConst, UInterfaseAs400,FMTBcd;

{$R *.dfm}

function TfrmPuntoVenta.CapturaMensajesTeclado (Code: Integer; wParam: Word; lParam:  LongInt): LongInt;  stdcall;
begin
  Case Code of
    HC_ACTION,
    HC_NOREMOVE : begin
                    UltimoAcceso := GetTickCount;
                    result := 0;
                  end
    else result := CallNextHookEx (WH_KEYBOARD, Code, wParam, lParam);
    end;
end;
function TfrmPuntoVenta.CapturaMensajesRaton (Code: Integer; wParam: Word; lParam:  LongInt): LongInt;  stdcall;
begin
  Case Code of
    HC_ACTION,
    HC_NOREMOVE : begin
                    UltimoAcceso := GetTickCount;
                    result := 0;
                  end
    else result := CallNextHookEx (WH_MOUSE, Code, wParam, lParam);
    end;
end;

function TfrmPuntoVenta.ValidateCliente : Boolean;
var
 qfind : TADOQuery;
 ret : Boolean;
 suc : Boolean;
begin
  inherited;
  suc := True;
  ret := True;

  DM.qrParametro.close;
  DM.qrParametro.open;

  //Buscando los Datos del Cliente a Facturar y Sus Parametros.
  Buscar_Cliente;

  //Validando el Cliente Obligatorio de la Sucursal.
  If (qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') And
     (qfindSucursal.FieldByName('Cliente_Dos').AsString <> '') Then
    If (qfindSucursal.FieldByName('Cliente_Uno').AsString <> qrEntradaPacienteClienteID.Value) And
       (qfindSucursal.FieldByName('Cliente_Dos').AsString <> qrEntradaPacienteClienteID.Value) Then
     Begin
      suc := False;
      ret := False;
      DM.Warning('El Cliente Seleccionado NO Pertenece al Grupo Autorizado a Esta Sucursal.');
       Raise exception.CreateFmt('El Cliente Seleccionado NO Pertenece al Grupo Autorizado a Esta Sucursal.', []);
     End;

  //Validando el Cliente y el Grupo de Cliente.
  if qrEntradaPacienteClienteID.Value <> '' then
   begin
    qfind := DM.Find_LDR('SELECT GrupoCliente FROM PTCliente (nolock) WHERE ClienteId = :cli', qrEntradaPacienteClienteID.Value);
    if ( qfind.FieldByName('GrupoCliente').AsString <> qrEntradaPacienteOrigen.Value ) then
     begin
      DM.Warning('El Cliente Seleccionado NO Pertenece a Este Grupo de Clientes.');
      Raise exception.CreateFmt('El Cliente Seleccionado NO Pertenece a Este Grupo de Clientes.', []);
      ret := false;
     end;
   end;

  //Validando el Cliente y el Paciente Registrado.
  If (qrEntradaPacienteClienteID.Value <> '') And (qrEntradaPacientePacienteID.Value <> '') then
   begin
     if (
//          (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoVip.Value) or
//          (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoAcc.Value) or
//          (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value) or
          (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) ) Then
       Begin
        If (qrEntradaPacienteClienteID.Value <> qrEntradaPacientePacienteID.Value) then
          Begin
            DM.Warning('Los Clientes y Pacientes de Este Tipo Deben Ser el Mismo.');
            Raise exception.CreateFmt('Los Clientes y Pacientes de Este Tipo Deben Ser el Mismo.', []);
            ret := false;
          end;
       end;
   end;

  result := ret;
  FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta.CrearTransCliente(cliente: string; tipodoc: string; documento: string;
                                           tipoaplica: string; documentoaplica: string; fecha : TDateTime;
                                           valor: Currency; moneda :string; paciente: string; filter: Integer);
Var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;
 If (qrEntradaPacienteHold.Value = 0) And (documento <> '') Then
   Begin
     Try
         With qinsert, sql do
         begin
            Close;
            Text := ' INSERT INTO PTClienteTransacciones(ClienteId, fecha, TipoDoc, Documento, '+
                    ' TipoAplica, DocumentoAplica, Valor, MonedaId, ValorMST, PacienteId, SinPrFilter, '+
                    ' RecId) VALUES ( '+#39+cliente+#39+','+#39+FormatDateTime('yyyymmdd', fecha)+#39+','+#39+tipodoc+#39+','+
                                        #39+documento+#39+','+#39+tipoaplica+#39+','+#39+documentoaplica+#39+','+FloatToStr(valor)+','+
                                        #39+moneda+#39+','+FloatToStr(DM.ValorMoneda(valor,moneda,DM.qrparametroMonedaID.Value,fecha))+','+
                                        #39+paciente+#39+','+#39+filter+#39+','+IntToStr(GetSecuenciaId)+')';
            ExecSQL;
         end;
     Except
         Raise exception.CreateFmt('Error Creando PTClienteTransacciones. ClienteId='+cliente+' RecId = '+IntToStr(GetSecuenciaId), []);
     End;

   End;
 FreeAndNil(qinsert);
end;


procedure TfrmPuntoVenta.CrearCobroAxapta(cliente: string; paciente: string; tipodoc: string;
                                          _cobroid: string; documento: string; fecha: TDateTime;
                                          moneda:  string; aplica: string; _refId: Integer;
                                          valor: Currency; _areaId: string; _recId: Int64;
                                          _padreId: string; _cuadro: Integer; _transf: Integer;
                                          _suc: String; _forma: String; valpay: Currency; filter : Integer);
Var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;
     With qinsert,sql do
     begin
         Close;
         Clear;
         Add(' INSERT INTO PTCobroAxapta (CLIENTEID, PACIENTEID, TIPODOC, COBROID, DOCUMENTO, FECHA, '+
             ' MONEDAID, DOCUMENTOAPLICA, REFRECID, VALOR, VALORMST, DATAAREAID, RECID, CLIENTEPADRE, '+
             ' CUADRADO, TRANSFERIDO, SUCURSALID, FORMADEPAGOID, MONTODETALLE, MONTODETALLEMST, SINPRFILTER) '+
             ' VALUES ('+#39+cliente+#39+','+#39+paciente+#39+','+#39+tipodoc+#39+','+#39+_cobroid+#39+','+#39+documento+#39+','+
                        #39+FormatDateTime('yyyymmdd', fecha)+#39+','+#39+moneda+#39+','+#39+aplica+#39+','+
                        IntToStr(_refId)+','+FloatToStr(valor)+','+FloatToStr(DM.ValorMoneda(valor,moneda,DM.qrparametroMonedaID.Value,fecha))+','+
                        #39+_areaId+#39+','+IntToStr(_recId)+','+#39+_padreId+#39+','+
                        IntToStr(_cuadro)+','+IntToStr(_transf)+','+#39+_suc+#39+','+#39+_forma+#39+','+FloatToStr(valpay)+','+
                        FloatToStr(DM.ValorMoneda(valpay,moneda,DM.qrparametroMonedaID.Value,fecha))+','+#39+filter+#39+')');
         ExecSQL;
     end;
 FreeAndNil(qinsert);
end;


procedure TfrmPuntoVenta.TransferirAxapta1Click(Sender: TObject);
begin
 Dm.Info('Esta Opcion Esta Desactivada. Utilice el Cuadre de Caja.');

 Re_Grabar;
end;


procedure TfrmPuntoVenta.CuadredeCaja1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(1402);
end;


procedure TfrmPuntoVenta.CuadredeCaja2Click(Sender: TObject);
begin
{
  inherited;
  frmMain.LanzaVentana(-7987);
}
end;


procedure TfrmPuntoVenta.btnTSSClick(Sender: TObject);
Var Dire : String;
begin
  inherited;
      Dire := 'http://www.tss2.gov.do/sys/consars.aspx';
      HLinkNavigateString(NIL, PWideChar(WideString(Dire)) );
end;

procedure TfrmPuntoVenta.btNuevaClick(Sender: TObject);
begin
  inherited;
  NuevaVenta;
end;

procedure TfrmPuntoVenta.cxDBCheckBox2PropertiesChange(Sender: TObject);
begin
  inherited;
  if qrEntradaPaciente.State in [dsinsert,dsEdit] then
  begin
    cxDBCheckBox2.Properties.NullStyle := nssUnchecked;
  end;
end;

procedure TfrmPuntoVenta.cxDBCurrencyEdit4PropertiesChange(Sender: TObject);
begin
  inherited;
  if cxDBCurrencyEdit4.Value > 0 then
     cxDBCurrencyEdit4.Style.Font.Color:= clGreen
  else if cxDBCurrencyEdit4.Value < 0 then
     cxDBCurrencyEdit4.Style.Font.Color:= clRed
  else if cxDBCurrencyEdit4.Value = 0 then
     cxDBCurrencyEdit4.Style.Font.Color:= clBlack;
end;

procedure TfrmPuntoVenta.cxDBDateEdit3Exit(Sender: TObject);
begin
  inherited;
     if qrEntradaPaciente.State in [dsEdit, dsInsert] then
     Begin
        If (qrEntradaPacienteFECHA_INDICACION.Value > DM.SystemDate) Then
          Raise exception.CreateFmt('La Fecha de Indicaci�n es Incorrecta. Por Favor Verifique.!!!', []);
     End;
end;

procedure TfrmPuntoVenta.cxDBDateEdit5Exit(Sender: TObject);
begin
  inherited;
     if qrEntradaPaciente.State in [dsEdit, dsInsert] then
     Begin
        If (qrEntradaPacienteFechaNacimiento.Value > DM.SystemDate) Then
          Raise exception.CreateFmt('La Fecha de Nacimiento Esta Incorrecta. Por Favor Verifique.!!!', []);

        if qrEntradaPacienteFECHANACIMIENTO.Text <> EmptyStr then
                qrEntradaPacienteEdadPaciente.Value := Trunc((StrtoInt(FormatDateTime('yyyymmdd', DM.SystemDate))-StrtoInt(FormatDateTime('yyyymmdd', qrEntradaPacienteFechaNacimiento.Value)))/10000)
        else
        begin
                qrEntradaPacienteEdadPaciente.Value := 0;
        end;
     End;
end;

procedure TfrmPuntoVenta.cxDBImageComboBox7PropertiesChange(Sender: TObject);
begin
  inherited;
  Buscar_Doctor_Cambio;
end;

procedure TfrmPuntoVenta.cxDBMemo2PropertiesChange(Sender: TObject);
begin
  inherited;
 If Length(Trim(cxDbMemo2.Text)) > 80 then
 begin
   cxDbMemo2.Style.Color  := ClYellow;
   cxDbMemo2.StyleFocused.Color  := ClYellow;
 end
 else
 begin
   cxDbMemo2.Style.Color  := ClWindow;
   cxDbMemo2.StyleFocused.Color  := ClWindow;
 end;
end;

procedure TfrmPuntoVenta.cxDBTextEdit16KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Trim(cxDBTextEdit16.Text) <> EmptyStr then
     qrentradapacientepolizaid.Value := cxDBTextEdit16.Text
end;

procedure TfrmPuntoVenta.RegistrarPruebadelExterior1Click(Sender: TObject);
begin
  Val_Exterior;
end;

procedure TfrmPuntoVenta.CbDocumentoPropertiesChange(Sender: TObject);
begin
  Val_Exterior;
end;

procedure TfrmPuntoVenta.cbExtDocumentoPropertiesChange(Sender: TObject);
begin
  inherited;
  mskRNC.Properties.EditMask := dm.qrDocumento.Fieldbyname('Mascara').AsString;
  mskRNC.Update;
end;

procedure TfrmPuntoVenta.chkDiagnosticofClick(Sender: TObject);
begin
  inherited;
  If chkDiagnosticof.Checked = True  then
  begin
    With DM.qrDiagnostico, sql do
    begin
      Close;
      Clear;
      Add('SELECT * FROM PTDiagnostico (nolock) Where Estatus = '+#39+'A'+#39);
      Add(' And Diag_Frecuente = '+#39+'S'+#39);
      Open;
    end;
  end
  Else If chkDiagnosticof.Checked = False  then
  begin
    With DM.qrDiagnostico, sql do
    begin
      Close;
      Clear;
      Add('SELECT * FROM PTDiagnostico (nolock) Where Estatus = '+#39+'A'+#39);
      Add(' And Diag_Frecuente = '+#39+'N'+#39);
      Open;
    end;
  end;
end;

procedure TfrmPuntoVenta.RefrescarGrid(SoloLectura: Boolean);
begin
 GridPruebasEntradasPacienteDet.NavigatorButtons.Delete.Visible := not SoloLectura;
 GridPruebasEntradasPacienteDet.NavigatorButtons.Insert.Visible := not SoloLectura;
 GridPruebasEntradasPacienteDet.NavigatorButtons.Post.Visible := not SoloLectura;
 GridPruebasEntradasPacienteDet.NavigatorButtons.Edit.Visible := not SoloLectura;

 GridPruebasEntradasPacienteDet.OptionsData.Appending := not SoloLectura;
 GridPruebasEntradasPacienteDet.OptionsData.Inserting := not SoloLectura;
 GridPruebasEntradasPacienteDet.OptionsData.Deleting := not SoloLectura;
 GridPruebasEntradasPacienteDetPruebaID.Options.Editing := not SoloLectura;
// GridPruebasEntradasPacienteDetComentario.Options.Editing := not SoloLectura;
end;


//Activar las Impresiones del Punto de Venta.
procedure TfrmPuntoVenta.Impresiones;
begin
  DM.qrParametro.close;
  DM.qrParametro.open;

  CuadredeCaja1.Enabled         := True;
  CuadredeCaja2.Enabled         := False;
  RecibodeCobro1.Enabled        := True;
  NotadeCredito1.Enabled        := True;
  CodigodeBarra1.Enabled        := True;
  FacturaExterior1.Enabled      := False;
  VolantedePruebasARS1.Enabled  := False;
  CotizaFactura.Enabled         := False;
  If dm.qrParametroServidor_AS400.value = EmptyStr then
  begin
      InstructivodeInternet1.Enabled  := False;
      FacturaconNCF1.Enabled          := False;
  end
  else
  begin
      InstructivodeInternet1.Enabled  := True;
      FacturaconNCF1.Enabled          := True;
  end;
  VolantedePruebasTomaMuestra1.Enabled := True;

  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Or
     (qrEntradaPacienteCoberturaSeguro.Value > 1) Then
    Begin
      VolantedePruebasARS1.Enabled := True;
    End;

  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
     (qrEntradaPacienteTipoDocumento.Value = 3) Or
     (qrEntradaPacienteFactExterior.Value = 1) Or
     (CbDocumento.ItemIndex = 3) Then
    Begin
      FacturaExterior1.Enabled := True;
      VolantedePruebasTomaMuestra1.Enabled := False;
    End;
  If Copy(qrEntradaPacienteENTRADAID.Value,1,3) = 'HOL' Then
    Begin
      CotizaFactura.Enabled := True;
    End;
end;


procedure TfrmPuntoVenta.ImpresionRecibo;
Var qCobros  : TAdoQuery;
begin
  inherited;
        qCobros := DM.NewQuery;
        DM.qrCobroDetalle.Close;
        DM.qrCobroDetalle.Parameters[0].Value := cobroid;
        DM.qrCobroDetalle.Open;
        With qCobros, sql do
        begin
           Close;
           Clear;
           Text := ' SELECT * FROM PTCobro C (nolock), PTEntradaPaciente E (nolock) WHERE C.refrecid = E.RecId '+
                   ' AND C.CobroId = '+#39+cobroid+#39+
                   ' AND E.DataAreaId = '+#39+DM.CurEmpresa+#39;
           Open;
           if IsEmpty then
              DM.Error('Error Realizando Referencia Cobros.  CobroId = '+cobroid)
           else
           begin
           if (Fieldbyname('refrecid').AsString > '1') then
           Begin
                  With DM.qryCobroTicket, sql do
                  begin
                      Close;
                      Clear;
                      Add( 'select Distinct e.NombrePaciente ,e.ClienteNombre, c.ReciboNo , c.EntradaId ,e.Muestrano as Muestrano,'+
                           ' c.Fecha, c.Hora , c.UsuarioID , c.MonedaId ,'+
                           ' (Select Empresa from PtParametro) as TituloEmpresa,'+
                           ' s.Nombre,s.Telefono,isnull(d.Descripcion,'+#39+#39+') as Descripcion, c.PendienteFactura, c.TotalCobrado,'+
                           ' c.PendienteCobro,c.TotalFactura,c.TotalPagado, e.CoberturaSeguro,e.FactExterior,'+
                           '                             (e.Neto-GastosVarios) as TotalPruebaUsa,e.GastosVarios as TotalEnvioUsa,isnull(d.Comentario ,'+#39+#39+') as Comentario, c.Concepto, '+
                           '  (Select Convert(Varchar(200),NotaNCreditoBalance) from PtParametro) as NotaNCredito, c.TurnoID as Autorizacion, '+
                           '  Convert(Varchar(10),Getdate()+180,120) as Fecha_Autoriza, c.Cobroid as CobroID, c.Refrecid as Refrecid, '+
                           ' (Select RNC from PtParametro) as RNC, d.Secuencia, (Select NotaExterior from PtParametro) as SubTituloEmpresa, e.Origen, cd.Devuelta '+
                           '  from ptcobro c (nolock) Inner Join ptentradapaciente e (nolock)'+
                           '   on c.refrecid=e.recid Left outer join ptentradapacientedetalle d (nolock) '+
                           '   on d.refrecid = e.recid '+
                           '   Inner Join ptsucursal s (nolock)'+
                           '   on e.SucursalID=s.SucursalID '+
                           '   Inner Join ptcobrodetalle cd '+
                           '   on c.cobroid=cd.cobroid '+
                           '   Where c.refrecid='+qCobros.Fieldbyname('refrecid').AsString+
                           '   and c.cobroid='+#39+cobroid+#39+
                           '   and c.TipoDoc='+#39+'RI'+#39+
                           '   and e.Dataareaid='+#39+'ldr'+#39);
                      Open;
                      if not IsEmpty then
                      Begin
                          if Ruta_Recibo <> Emptystr then
                          begin

                              If (frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
                                 (frmMain.frmTmp.qrEntradaPacienteTipoDocumento.Value = 3) Or
                                 (frmMain.frmTmp.qrEntradaPacienteFactExterior.Value = 1) Then
                              Begin
                                If (dm.CurRol <> 13) then    //NAVIS
                                begin
                                  if (dm.CurRol =11) then    //ELVIRA
                                    dm.ImpresionRwPrint_Recibo_Dolar
                                  else
                                  begin
                                    dm.ImpresionRwPrint_Recibo_Dolar;
                                    dm.ImpresionRwPrint_Recibo_Dolar;
                                  end;
                                end
                                else
                                begin
                                  DM.ppImpReciboExterior.ShowPrintDialog := False;
                                  DM.ppImpReciboExterior.DeviceType := dtPrinter;
                                  DM.ppImpReciboExterior.PrinterSetup.PaperHeight := 8.5;
                                  DM.ppImpReciboExterior.PrinterSetup.PaperName := 'Custom';
                                  DM.ppImpReciboExterior.PrinterSetup.PaperWidth := 4;
                                  DM.ppImpReciboExterior.PrinterSetup.Copies := 2;
                                  DM.ppImpReciboExterior.PrinterSetup.PrinterName := Ruta_Recibo;
                                  DM.ppImpReciboExterior.Print;
                                end;
                              End
                              Else
                              begin
                                If (dm.CurRol <> 13) then
                                begin
                                  dm.ImpresionRwPrint_Recibo_Pesos;
                                end
                                else
                                begin
                                  DM.ppImpReciboTicket.ShowPrintDialog := False;
                                  DM.ppImpReciboTicket.DeviceType := dtPrinter;
                                  DM.ppImpReciboTicket.PrinterSetup.PaperHeight := 8.5;
                                  DM.ppImpReciboTicket.PrinterSetup.PaperName := 'Custom';
                                  DM.ppImpReciboTicket.PrinterSetup.PaperWidth := 4;
                                  DM.ppImpReciboTicket.PrinterSetup.PrinterName := Ruta_Recibo;
                                  DM.ppImpReciboTicket.Print;
                                end;
                              end;
                          End
                          Else
                          Begin
                              If (frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
                                 (frmMain.frmTmp.qrEntradaPacienteTipoDocumento.Value = 3) Or
                                 (frmMain.frmTmp.qrEntradaPacienteFactExterior.Value = 1) Then
                              Begin
                                If (dm.CurRol <> 13) then  //NAVIS
                                begin
                                  if (dm.CurRol =11) then    //ELVIRA
                                    dm.ImpresionRwPrint_Recibo_Dolar
                                  else
                                  begin
                                    dm.ImpresionRwPrint_Recibo_Dolar;
                                    dm.ImpresionRwPrint_Recibo_Dolar;
                                  end;
                                end
                                else
                                begin
                                  DM.ppImpReciboExterior.DeviceType := dtScreen;
                                  DM.ppImpReciboExterior.Print;
                                end;
                              End
                              Else
                              begin
                                If (dm.CurRol <> 13) then
                                begin
                                  dm.ImpresionRwPrint_Recibo_Pesos;
                                end
                                else
                                begin
                                  DM.ppImpReciboTicket.DeviceType := dtScreen;
                                  DM.ppImpReciboTicket.Print;
                                end;
                              end;
                          end;
                      End;
                  End;
           end;
           end;
        end;
end;

procedure TfrmPuntoVenta.ImpresionNC;
Var
 qfind : TADOQuery;
begin
  inherited;
  DM.qrCobro.Close;
  DM.qrCobro.Parameters[0].Value := cobroid;
  DM.qrCobro.Open;
  If (DM.qrCobro.RecordCount > 0) then
  Begin
          With DM.qryCobroTicket, sql do
          begin
              Close;
              Clear;
              Add('select Distinct e.NombrePaciente ,e.ClienteNombre, c.ReciboNo , c.EntradaId ,e.Muestrano as Muestrano,'+
                   ' c.Fecha, c.Hora , c.UsuarioID , c.MonedaId ,'+
                   ' (Select Empresa from PtParametro) as TituloEmpresa,'+
                   ' s.Nombre,s.Telefono,isnull(d.Descripcion,'+#39+#39+') as Descripcion, c.PendienteFactura, c.TotalCobrado,'+
                   ' c.PendienteCobro,c.TotalFactura,c.TotalPagado, e.CoberturaSeguro,e.FactExterior,'+
                   '                             (e.Neto-GastosVarios) as TotalPruebaUsa,e.GastosVarios as TotalEnvioUsa,isnull(d.Comentario ,'+#39+#39+') as Comentario, c.Concepto, '+
                   '   (Select Convert(Varchar(200),NotaNCreditoBalance) from PtParametro) as NotaNCredito, c.TurnoID as Autorizacion, '+
                   '   Convert(Varchar(10),Getdate()+180,120) as Fecha_Autoriza, c.Cobroid as CobroID, c.Refrecid as Refrecid, '+
                   '   (Select RNC from PtParametro) as RNC, d.Secuencia, (Select NotaExterior from PtParametro) as SubTituloEmpresa, e.Origen, cd.Devuelta '+
                   '   from ptcobro c (nolock) Inner Join ptentradapaciente e (nolock) '+
                   '   on c.refrecid=e.recid Left outer join ptentradapacientedetalle d (nolock)'+
                   '   on d.refrecid = e.recid '+
                   '   Inner Join ptsucursal s (nolock) '+
                   '   on e.SucursalID=s.SucursalID '+
                   '   Left outer Join ptcobrodetalle cd '+
                   '   on c.cobroid=cd.cobroid '+
                   '   Where c.refrecid='+InttoStr(DM.qrCobrorefRecid.Value)+
                   '   and c.cobroid='+#39+dm.qrCobroCobroID.Value+#39+
                   '   and c.TipoDoc='+#39+TipoCob+#39+
                   '   and e.Dataareaid='+#39+'ldr'+#39);
              Open;
              If Not IsEmpty then
              begin
                If Ruta_Recibo <> EmptyStr then
                Begin
                      if (TipoCob = 'NC') or (TipoCob = 'DV') then
                      Begin
                          If (dm.CurRolVisualScr = False) then
                          begin
                            If TipoCob = 'ND' then dm.ImpresionRwPrint_Devolucion;
                            If TipoCob = 'NC' then dm.ImpresionRwPrint_Nota_Credito;
                          end
                          else
                          begin
                            With DM.ppImpNCDEV do
                            begin
                                  DeviceType := dtScreen;
                                  Print;
                            end;
                          end;
                      end
                      else
                      if (TipoCob = 'ND') then
                      Begin
{                          if Trim(DM.qryCobroTicket.FieldByName('Autorizacion').AsString) <> EmptyStr then
                          begin
                               frmMain.LanzaVentana(-7981);
                               if (Tiene_Balance = 0) Then
                               Begin
                                   Raise exception.CreateFmt('Contrase�a no V�lida.  Por Favor Verifique.', []);
                               end;
                          end;
}
                          If Trim(DM.qryCobroTicket.FieldByName('Concepto').AsString)<>'ND CTE. OTORGAN CHEQUE' Then
                          begin
                              If (dm.CurRolVisualScr = False) then
                              begin
                                DM.ImpresionRwPrint_Nota_Debito;
                              end
                              else
                              begin
                                With DM.ppImpND do
                                begin
                                  DeviceType := dtScreen;
                                  Print;
                                end;
                              end;
                          end
                          else
                          begin
                              If (dm.CurRolVisualScr = False) then
                              begin
                                dm.ImpresionRwPrint_Nota_Credito;
                              end
                              else
                              begin
                                With DM.ppImpNDCK do
                                begin
                                  DeviceType := dtScreen;
                                  Print;
                                end;
                              end;
                          end;
                      end;
                End
                Else
                Begin
                      if (TipoCob = 'NC') or (TipoCob = 'DV') then
                      Begin
                          If (dm.CurRolVisualScr = False) then
                          begin
                            If TipoCob = 'ND' then dm.ImpresionRwPrint_Devolucion;
                            If TipoCob = 'NC' then dm.ImpresionRwPrint_Nota_Credito;
                          end
                          else
                          begin
                            With DM.ppImpNCDEV do
                            begin
                                DeviceType := dtScreen;
                                Print;
                            end;
                          end;
                      end
                      else
                      if (TipoCob = 'ND') then
                      Begin
{                          if Trim(DM.qryCobroTicket.FieldByName('Autorizacion').AsString) <> EmptyStr then
                          begin
                               frmMain.LanzaVentana(-7981);
                               if (Tiene_Balance = 0) Then
                               Begin
                                   Raise exception.CreateFmt('Contrase�a no V�lida.  Por Favor Verifique.', []);
                               end;
                          end;
}
                          If Trim(DM.qryCobroTicket.FieldByName('Concepto').AsString)<>'ND CTE. OTORGAN CHEQUE' Then
                          begin
                              If (dm.CurRolVisualScr = False) then
                              begin
                                DM.ImpresionRwPrint_Nota_Debito;
                              end
                              else
                              begin
                                 With DM.ppImpND do
                                 begin
                                    DeviceType := dtScreen;
                                    Print;
                                 end;
                              end;
                          end
                          else
                          begin
                             If (dm.CurRolVisualScr = False) then
                             begin
                              dm.ImpresionRwPrint_Nota_Credito;
                             end
                             else
                             begin
                               With DM.ppImpNDCK do
                               begin
                                  DeviceType := dtScreen;
                                  Print;
                               end;
                             end;
                          end;
                      end;
                End;
              end;
          end;
  End;
  FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta.CambiarLaboratorioNoenlasLineas1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteDetalle.RecordCount > 0 then
     frmMain.LanzaVentana(-7991)
  else
     beep;
end;


procedure TfrmPuntoVenta.CancelarCobro;
begin

  if (Cobroid<>EmptyStr) and
     (qrEntradaPacienteRECID.Asstring <> EmptyStr) and
     (qrEntradaPacienteEntradaId.AsString <> EmptyStr) then
  begin
       DM.DataBase.Execute(' DELETE FROM PTCobro WHERE CobroID = '+ #39 + cobroid + #39 +
                           ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39 +
                           ' AND EntradaId = '+ #39 + qrEntradaPacienteEntradaId.AsString + #39);

       DM.DataBase.Execute(' DELETE FROM PTCobroDetalle WHERE CobroID = '+ #39 + cobroid + #39 +
                           ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39);
  end;
 cobroid := '';
end;
procedure TfrmPuntoVenta.CancelarCobroAct;
begin

  if (Cobroid<>EmptyStr) and
     (qrEntradaPacienteRECID.AsString <> EmptyStr) and
     (qrEntradaPacienteEntradaId.AsString <> EmptyStr) then
  begin

       DM.DataBase.Execute(' DELETE FROM PTCobroDetalleInt WHERE CobroID = '+ #39 + cobroid + #39 +
                           ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39);
  end;
 cobroid := '';
end;


procedure TfrmPuntoVenta.CancelarOrdenInterfaseAS4001Click(Sender: TObject);
begin
  inherited;
  No_Procesar_AS400_Orden;
end;

function TfrmPuntoVenta.GetSecuenciaId : Int64;
Var
 _valor   : String;
 numero   : Int64;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';
 numero  := 0;

 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'SEDOC'+#39+',');
   Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
   Open;
   if not IsEmpty then
   begin
     if FieldByName('Secuencia').AsString <> '' then
       numero := StrtoInt64(FieldByName('Secuencia').AsString)
     else
       numero := 1;
     _valor := FormatFloat('000', FieldByName('SucursalAS400').AsInteger) +
               FormatFloat('000000000000', numero);
   end;
   Result := StrToInt64(_valor);
 end;

 FreeAndNil(qsecdoc);
end;
function TfrmPuntoVenta.ActPago : Boolean;
begin
Result := False;
Try
  with  dm.sp_ActPagos_NV, Parameters do
  begin
    ParamByName('@RecID').Value       := qrEntradaPacienteRecID.Value;
    ParamByName('@Muestrano').Value   := qrEntradaPacienteMuestrano.Value;
    ParamByName('@CobroID').Value     := CobroID;
    ParamByName('@Tipo_Cobro').Value  := TipoCob;
    ParamByName('@UserID').Value      := DM.CurUser;
    ParamByName('@SucursalID').Value  := DM.CurSucursal;
    ParamByName('@Devuelta').Value    := Devuelta;
    ExecProc;
    Result:= True;
  end;
  Except
    if not dm.Database.Connected then
    begin
      dm.Database.Connected := True;
      dm.sp_ActPagos_NV.ExecProc;
      Result:=True;
    end;
  End
end;
function TfrmPuntoVenta.ActNotaC : Boolean;
begin
Result := False;
  if qrEntradaPacienteEntradaID_Ref.Value = EmptyStr then
  begin
    Try
          with  dm.sp_ActNota, Parameters do
          begin
            ParamByName('@RecID').Value       := qrEntradaPacienteRecID.Value;
            ParamByName('@Muestrano').Value   := qrEntradaPacienteMuestrano.Value;
            ParamByName('@CobroID').Value     := CobroID;
            ParamByName('@Tipo_Cobro').Value  := TipoCob;
            ParamByName('@UserID').Value      := DM.CurUser;
            ParamByName('@SucursalID').Value  := DM.CurSucursal;
            ParamByName('@Valor').Value       := ValorNC;
            ParamByName('@Valor_MST').Value   := ValorNC_MST;
            if TipoCob = 'DV' then
            Begin
                ParamByName('@FPago_Dev').Value   := TipoPago_Dev;
                ParamByName('@Cajero_Dev').Value  := Cajero_Dev;
                ParamByName('@Sucursal_Dev').Value:= Sucursal_Dev;
            end
            else
            begin
                ParamByName('@FPago_Dev').Value   := EmptyStr;
                ParamByName('@Cajero_Dev').Value  := EmptyStr;
                ParamByName('@Sucursal_Dev').Value:= EmptyStr;
            end;
            ParamByName('@Comentario').Value  := ConceptoNC;
            ExecProc;
            Result:= True;
          end;
          Except
            if not dm.Database.Connected then
            begin
              dm.Database.Connected := True;
              dm.sp_ActNota.ExecProc;
              Result:=True;
            end;
          End
  end
  else
  if qrEntradaPacienteEntradaID_Ref.Value <> EmptyStr then
  begin
    Try
      with  dm.sp_ActNotaNC, Parameters do
      begin
        ParamByName('@RecID').Value       := qrEntradaPacienteRecID.Value;
        ParamByName('@Muestrano').Value   := qrEntradaPacienteMuestrano.Value;
        ParamByName('@CobroID').Value     := CobroID;
        ParamByName('@Tipo_Cobro').Value  := TipoCob;
        ParamByName('@UserID').Value      := DM.CurUser;
        ParamByName('@SucursalID').Value  := DM.CurSucursal;
        ParamByName('@Valor').Value       := ValorNC;
        ParamByName('@Valor_MST').Value   := ValorNC_MST;
        if TipoCob = 'DV' then
        Begin
            ParamByName('@FPago_Dev').Value   := TipoPago_Dev;
            ParamByName('@Cajero_Dev').Value  := Cajero_Dev;
            ParamByName('@Sucursal_Dev').Value:= Sucursal_Dev;
        end
        else
        begin
            ParamByName('@FPago_Dev').Value   := EmptyStr;
            ParamByName('@Cajero_Dev').Value  := EmptyStr;
            ParamByName('@Sucursal_Dev').Value:= EmptyStr;
        end;
        ParamByName('@Comentario').Value  := ConceptoNC;
        ExecProc;
        Result:= True;
      end;
      Except
        if not dm.Database.Connected then
        begin
          dm.Database.Connected := True;
          dm.sp_ActNotaNC.ExecProc;
          Result:=True;
        end;
      End
  end;
end;

function TfrmPuntoVenta.GetMuestraNo : String;
Var
 _valor  : String;
 qsecdoc : TADOQuery;
 anio, mes, dia : Word;
begin
// result := GetNextSecDoc('MT');

// secuencialabel := DM.Get_Secuencia('SecuenciaAct');
 secuencialabel := StrToInt64(DM.Get_Secuencia_Big('LABEL', DM.CurSucursal));

 DM.qrParametro.close;
 DM.qrParametro.open;

////////////////////////////////////////////////////////////////////////////////

 DecodeDate(DM.SystemDate, anio, mes, dia);

  qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'MT'+#39+',');
   Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400,@r_result3 as UsarIdentificador');
   Open;
   if not IsEmpty then
   begin
       If (FieldByName('UsarIdentificador').AsBoolean) then
         Begin
           result := 'MT'+Copy(IntToStr(anio), 3, 2) +
                     FormatFloat('000', qfindSucursal.FieldByName('SUCURSAL').AsFloat) +
                     FormatFloat('000000', FieldByName('Secuencia').AsFloat);

           _valor := 'MT'+Copy(IntToStr(anio), 3, 2) +
                     FormatFloat('000', qfindSucursal.FieldByName('SUCURSAL').AsFloat) +
                     FormatFloat('000000', FieldByName('Secuencia').AsFloat);
         end
       Else
         Begin
           result := Copy(IntToStr(anio), 3, 2) +
                     FormatFloat('000', qfindSucursal.FieldByName('SUCURSAL').AsFloat) +
                     FormatFloat('000000', FieldByName('Secuencia').AsFloat);

           _valor := Copy(IntToStr(anio), 3, 2) +
                     FormatFloat('000', qfindSucursal.FieldByName('SUCURSAL').AsFloat) +
                     FormatFloat('000000', FieldByName('Secuencia').AsFloat);
         end;
   end;
 end;
 FreeAndNil(qsecdoc);
end;


function TfrmPuntoVenta.GetReciboNo : String;
begin
  result := GetNextSecDoc('RI');
end;


function TfrmPuntoVenta.GetNotaCredito : String;
begin
  result := GetNextSecDoc('NC');
end;
function TfrmPuntoVenta.GetNotaDebito : String;
begin
  result := GetNextSecDoc('ND');
end;
function TfrmPuntoVenta.GetDevolucion : String;
begin
  result := GetNextSecDoc('DV');
end;

procedure TfrmPuntoVenta.ActDetalle;
var
 bM : TBookMark;
 qact : TADOQuery;
begin
 bM := qrEntradaPacienteDetalle.GetBookmark;

 //Pruebas de los Seguros.
 curCoberturaAplicada := 0;

 qrEntradaPacienteDetalle.DisableControls;
 qrEntradaPacienteDetalle.First;

 qact := DM.NewQuery;

 While not qrEntradaPacienteDetalle.Eof Do
  begin
    If (qrEntradaPacienteDetallePruebaId.Value = '') Or
       (qrEntradaPacienteDetallePruebaId.Value = ' ') Or
       (qrEntradaPacienteDetallePruebaId.IsNull) Then
      qrEntradaPacienteDetalle.Delete;

    qact.Close;
    qact.SQL.Clear;
    qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle with (rowlock) SET '+
                     ' CoberturaAplicada = :cob, '+
                     ' DescuentoLineaAplicado = :desc '+
                     ' WHERE RefRecid = :rec '+
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                     ' AND Secuencia = :sec ';
    qact.Parameters[0].Value := CalcularCoberturaAplicada;
    qact.Parameters[1].Value := TotalDescuentoLinea;
    qact.Parameters[2].Value := qrEntradaPacienteDetalleRefRecid.Value;
    qact.Parameters[3].Value := qrEntradaPacienteDetalleSecuencia.Value;
    qact.ExecSQL;

    qrEntradaPacienteDetalle.Next
  end;

 //Pruebas de los Seguros.
 curCoberturaAplicada := DM.CurCoberturaAplicada(qrEntradaPacienteRECID.Value); //DM.CurCoberturaAplicada(_recorId)

 qrEntradaPacienteDetalle.GotoBookmark(bM);
 qrEntradaPacienteDetalle.FreeBookmark(bM);
 qrEntradaPacienteDetalle.EnableControls;
end;


procedure TfrmPuntoVenta.Val_Exterior_Detalle;
begin
 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
    (qrEntradaPacienteTipoDocumento.Value = 3) Or
    (qrEntradaPacienteFactExterior.Value = 1) Then
   begin
     qrEntradaPacienteDetalle.DisableControls;
     qrEntradaPacienteDetalle.First;

     While not qrEntradaPacienteDetalle.Eof Do
      Begin
        If (Trim(qrEntradaPacienteDetalleCOMENTARIO.Value) = '') Or
           (qrEntradaPacienteDetalleCOMENTARIO.IsNull) Then
          Begin
            If (qrEntradaPacienteDetallePruebaId.Value <> 'SER00596') And
               (qrEntradaPacienteDetallePruebaId.Value <> 'SER00597') And
               (qrEntradaPacienteDetallePruebaId.Value <> 'SER00598') Then
              Begin
                qrEntradaPacienteDetalle.EnableControls;
//                qrEntradaPacienteDetalle.First;
                qrEntradaPacienteDetalle.Edit;

                Raise exception.CreateFmt('La Prueba del Exterior ( ' + qrEntradaPacienteDetallePRUEBAID.Value +
                                          ' ). NO Tiene Un Comentario Registrado.', []);
              End;
          End;

        qrEntradaPacienteDetalle.Next
      End;
   end;

 qrEntradaPacienteDetalle.First;
 qrEntradaPacienteDetalle.EnableControls;
end;


function TfrmPuntoVenta.ImporteBrutoExclLineaActual(refrecid : Int64 ; secuencia : integer) : Currency;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) '+
                   ' FROM PTEntradaPacienteDetalle (nolock) '+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND Secuencia <> :sec ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := Dm.Redondeo(qfind.Fields[0].AsFloat)
 else
    result := 0;

 FreeAndNil(qfind);
end;


function TfrmPuntoVenta.ImporteBrutoExclLineaActualAplica(refrecid : int64 ;secuencia : integer) : Currency;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) '+
                   ' FROM PTEntradaPacienteDetalle (nolock)'+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND Secuencia <> :sec '+
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := Dm.Redondeo(qfind.Fields[0].AsFloat)
 else
    result := 0;

 FreeAndNil(qfind);
end;


function TfrmPuntoVenta.ImporteBrutoExclLineaActualAplicaAndCobertura(refrecid : int64 ;secuencia : integer) : Currency;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio), SUM(CoberturaAplicada) '+
                   ' FROM PTEntradaPacienteDetalle (nolock)'+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND Secuencia <> :sec '+
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := Dm.Redondeo(qfind.Fields[0].AsFloat - qfind.Fields[1].AsFloat)
 else
    result := 0;

 FreeAndNil(qfind);
end;


function TfrmPuntoVenta.TotalDescuentoLinea : Currency;
Var
 DescuentoPorc, DescuentoPesosCab, DescuentoPesos : Currency;
begin
  qrEntradaPaciente.Edit;
  qrEntradaPacienteDetalle.Edit;

  DescuentoPorc := 0;
  DescuentoPesos := 0;
  DescuentoPesosCab := 0;

  //Calculando el Descuento a las PRUEBAS y los COMBOS.
  qpruebadesc := DM.Find_Ldr('SELECT * FROM PtPrueba (nolock) WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaID.value);

  //Calculando el Descuento a las PRUEBAS y los COMBOS.
  If (qpruebadesc.FieldByName('Tipo').Value = 'P') Or
     (qpruebadesc.FieldByName('Tipo').Value = 'C') Then
    Begin
      If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
        begin
          If (qrEntradaPacienteCoberturaConfirmada.Value = 1) And
             (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) Then
            Begin
              DescuentoPorc := (qrEntradaPacienteDetallePrecio.Value -
                                CalcularCoberturaAplicada -
                                qrEntradaPacienteDetalleDescuento.Value) *
//                                qrEntradaPacienteDetalleDescuento.Value +
//                                qrEntradaPacienteDetalleAdicional.Value) *
                               (qrEntradaPacienteDetalleDescPct.Value / 100);
            End
          Else
            DescuentoPorc := 0;
        end
      Else
        DescuentoPorc := (qrEntradaPacienteDetallePrecio.Value -
                          CalcularCoberturaAplicada -
                          qrEntradaPacienteDetalleDescuento.Value) *
//                          qrEntradaPacienteDetalleDescuento.Value +
//                          qrEntradaPacienteDetalleAdicional.Value) *
                         (qrEntradaPacienteDetalleDescPct.Value / 100);

      If (qrEntradaPacienteDescuentoValor.Value > 0) then
        DescuentoPesosCab := qrEntradaPacienteDetallePrecio.Value *
                             qrEntradaPacienteDescuentoValor.Value /
                            (ImporteBrutoExclLineaActual(qrEntradaPacienteDetalleRefRecid.Value,
                             qrEntradaPacienteDetalleSecuencia.Value) +
                            (qrEntradaPacienteDetallePrecio.Value));

//      If (qrEntradaPacienteDescuentoPorc.Value  > 0) And (combodescto <> 0) And (qrEntradaPacienteFactExterior.Value <> 1)  Then
      If (qrEntradaPacienteDescuentoPorc.Value  > 0) And (qrEntradaPacienteFactExterior.Value <> 1)  Then
        DescuentoPorc := DescuentoPorc + ((qrEntradaPacienteDetalleTotalLinea.Value -
                                           DescuentoPesosCab - CalcularCoberturaAplicada) *
                                           qrEntradaPacienteDescuentoPorc.Value /100);

      DescuentoPesos := DM.Redondeo(DescuentoPesosCab + qrEntradaPacienteDetalleDescuento.Value);
    End;

  result := DM.Redondeo(DescuentoPesos + DescuentoPorc);
  FreeAndNil(qpruebadesc);  
end;


function TfrmPuntoVenta.ImporteLinea : Currency;
Var
 Valor, DescPorc : Currency;
begin
 DescPorc := 0;
 Valor := qrEntradaPacienteDetallePrecio.Value - qrEntradaPacienteDetalleDescuento.Value;
 if (qrEntradaPacienteDetalleDescPct.Value >= 1) then
     DescPorc := Valor * qrEntradaPacienteDetalleDescPct.Value / 100;

 result := DM.Redondeo(Valor - DescPorc);
end;


function TfrmPuntoVenta.CalcularCoberturaAplicada : Currency;
var
 coberturaporc, CoberturaPesosCab,ImporteAplica  : Currency;
begin
 If (qrEntradaPacienteCoberturaRechazada.Value = 1) Then
   result := 0
 Else
   Begin
    If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
     begin
      if (qrEntradaPacienteDetalleCoberturaEspecialPorc.Value > 0) or
         (qrEntradaPacienteDetalleCoberturaEspecial.Value > 0) then
       begin
//        if not qrEntradaPacienteDetalleCoberturaExpPorc.Value then
        if not (qrEntradaPacienteDetalleCoberturaExpPorc.Value = 1) then
          result := qrEntradaPacienteDetalleCoberturaEspecial.Value
        else
          begin
            coberturaporc := (qrEntradaPacienteDetallePrecio.Value) *
                             (qrEntradaPacienteDetalleCoberturaEspecial.Value / 100);

//            coberturaporc := (qrEntradaPacienteDetallePrecio.Value - TotalDescuentoLinea) *
//                             (qrEntradaPacienteDetalleCoberturaEspecial.Value / 100);

            result := coberturaporc;
          end;
       end
      else
       begin
         coberturaporc := 0;
         CoberturaPesosCab := 0;

         If (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
           begin
            if (qrEntradaPacienteCoberturaValor.Value > 0) then
            begin
                if ImporteBrutoExclLineaActualAplica(qrEntradaPacienteDetalleRefRecid.Value,
                                     qrEntradaPacienteDetalleSecuencia.Value)+qrEntradaPacienteDetallePrecio.Value=0 then
                  ImporteAplica := 1.00
                else
                  ImporteAplica := ImporteBrutoExclLineaActualAplica(qrEntradaPacienteDetalleRefRecid.Value,
                                     qrEntradaPacienteDetalleSecuencia.Value);

                CoberturaPesosCab := qrEntradaPacienteDetallePrecio.Value * qrEntradaPacienteCoberturaValor.Value /((ImporteAplica)+qrEntradaPacienteDetallePrecio.Value);
            end
            else
             if (qrEntradaPacienteCoberturaPorc.Value > 0.01 ) Or (EdCoberturaValor.Value > 0.01 ) Then
                coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value - CoberturaPesosCab) *
                                 (EdCoberturaValor.Value /100);
//                                 (qrEntradaPacienteCoberturaPorc.Value /100);
           end
         else
           begin
            if (qrEntradaPacienteCoberturaPorc.Value > 0.01 ) Or (EdCoberturaValor.Value > 0.01 ) Then
                coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value - CoberturaPesosCab) *
                                 (EdCoberturaValor.Value /100);
//                                 (qrEntradaPacienteCoberturaPorc.Value /100);
           end;

         result := DM.Redondeo(coberturaporc + CoberturaPesosCab);
       end;
     end
    else
     result := 0;
   end;
end;


function TfrmPuntoVenta.Valor_Cobertura(_registro : Int64) : Currency;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) FROM PTEntradaPacienteDetalle (nolock)'+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := _registro;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
   result := DM.Redondeo(qfind.Fields[0].AsFloat)
 else
   result := 0;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta.CodigodeBarra1Click(Sender: TObject);
Var
  Tipo : String;
begin
  inherited;
  if qrEntradaPacienteEntradaId.Value <> Emptystr then
  begin
     ImprimirLabels_sp(qrEntradaPacienteMuestrano.value);
  end;
end;
procedure TfrmPuntoVenta.ImprimirLabels_sp(_Muestrano : String);
Var
 qprint   : TADOQuery;
 printer  : String;
begin
  printer := Ruta_BarCode;
  qprint  := DM.NewQuery;
  if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
  begin
          qprint.Close;
          qprint.SQL.Text := ' SELECT Convert(Varchar(11),LA10NU)+LAALF2 AS Muestrano,'+
                             ' Convert(Varchar(11),LA10NU)+'#39+'-'+#39+'+Ltrim(Str(LA10SE))+'+#39+'-'+#39+'+dbo.Busca_Sucursal(Substring(Convert(Varchar(11),LA10NU),3,3)) As Label,'+
                             ' LA10ND as Departamento, LA10NO as NombrePaciente, '+
                             '  Case When (len(LA10P1) >  0) And (len(LA10P2)=0) And (len(LA10P3)=0) And (len(LA10P4)=0) '+
                             '                               And (len(LA10P5)=0) And (len(LA10P6)=0) And (len(LA10P7)=0) '+
                             '               And (len(LA10P8)=0) then P.DESCRIPCION                                     '+
                             '       When (len(LA10P1) >  0) And (len(LA10P2)>0) And (len(LA10P3)=0) And (len(LA10P4)=0) '+
                             '                               And (len(LA10P5)=0) And (len(LA10P6)=0) And (len(LA10P7)=0) '+
                             '               And (len(LA10P8)=0) then LA10P1+'+#39+' '+#39+'+LA10P2                      '+
                             '   When (len(LA10P1) >  0)   And (len(LA10P2)>0) And (len(LA10P3)>0) And (len(LA10P4)=0)   '+
                             '                               And (len(LA10P5)=0) And (len(LA10P6)=0) And (len(LA10P7)=0) '+
                             '               And (len(LA10P8)=0) then  LA10P1+'+#39+' '+#39+'+LA10P2+'+#39+' '+#39+'+LA10P3   '+
                             '   When (len(LA10P1) >  0) And (len(LA10P2)>0) And (len(LA10P3)>0) And (len(LA10P4)>0)     '+
                             '                               And (len(LA10P5)=0) And (len(LA10P6)=0) And (len(LA10P7)=0) '+
                             '               And (len(LA10P8)=0) then LA10P1+'+#39+' '+#39+'+LA10P2+'+#39+' '+#39+'+LA10P3+'+#39+' '+#39+'+LA10P4            '+
                             '   When (len(LA10P1) >  0) And (len(LA10P2)>0) And (len(LA10P3)>0) And (len(LA10P4)>0)     '+
                             '                               And (len(LA10P5)>0) And (len(LA10P6)=0) And (len(LA10P7)=0) '+
                             '               And (len(LA10P8)=0) then LA10P1+'+#39+' '+#39+'+LA10P2+'+#39+' '+#39+'+LA10P3+'+#39+' '+#39+'+LA10P4+'+#39+' '+#39+'+LA10P5 '+
                             '   When (len(LA10P1) >  0) And (len(LA10P2)>0) And (len(LA10P3)>0) And (len(LA10P4)>0)     '+
                             '                               And (len(LA10P5)>0) And (len(LA10P6)>0) And (len(LA10P7)=0) '+
                             '               And (len(LA10P8)=0) then LA10P1+'+#39+' '+#39+'+LA10P2+'+#39+' '+#39+'+LA10P3+'+#39+' '+#39+'+LA10P4+'+#39+' '+#39+'+LA10P5+'+#39+' '+#39+'+LA10P6  '+
                             '   When (len(LA10P1) >  0) And (len(LA10P2)>0) And (len(LA10P3)>0) And (len(LA10P4)>0)                 '+
                             '                               And (len(LA10P5)>0) And (len(LA10P6)>0) And (len(LA10P7)>0)             '+
                             '               And (len(LA10P8)=0) then LA10P1+'+#39+' '+#39+'+LA10P2+'+#39+' '+#39+'+LA10P3+'+#39+' '+#39+'+LA10P4+'+#39+' '+#39+'+LA10P5+'+#39+' '+#39+'+LA10P6+'+#39+' '+#39+'+LA10P7 '+
                             '   When (len(LA10P8) >  0) And (len(LA10P2)>0) And (len(LA10P3)>0) And (len(LA10P4)>0)                           '+
                             '                               And (len(LA10P5)>0) And (len(LA10P6)>0) And (len(LA10P7)>0)                       '+
                             '               And (len(LA10P8)>0) then LA10P1+'+#39+' '+#39+'+LA10P2+'+#39+' '+#39+'+LA10P3+'+#39+' '+#39+'+LA10P4+'+#39+' '+#39+'+LA10P5+'+#39+' '+#39+'+LA10P6+'+#39+' '+#39+'+LA10P7+'+#39+' '+#39+'+LA10P8 '+
                             '  End As DescripcionLabel,                                                                '+
                             '  Case When (len(LAPR09) >  0) And (len(LAPR10)=0) And (len(LAPR11)=0) And (len(LAPR12)=0) '+
                             '                               And (len(LAPR13)=0) And (len(LAPR14)=0) And (len(LAPR15)=0) '+
                             '               And (len(LAPR16)=0) then LAPR09                                             '+
                             '       When (len(LAPR09) >  0) And (len(LAPR10)>0) And (len(LAPR11)=0) And (len(LAPR12)=0) '+
                             '                               And (len(LAPR13)=0) And (len(LAPR14)=0) And (len(LAPR15)=0) '+
                             '               And (len(LAPR16)=0) then LAPR09+'+#39+' '+#39+'+LAPR10                                  '+
                             '   When (len(LAPR09) >  0) And (len(LAPR10)>0) And (len(LAPR11)>0) And (len(LAPR12)=0)     '+
                             '                               And (len(LAPR13)=0) And (len(LAPR14)=0) And (len(LAPR15)=0) '+
                             '               And (len(LAPR16)=0) then LAPR09+'+#39+' '+#39+'+LAPR10+'+#39+' '+#39+'+LAPR11                       '+
                             '   When (len(LAPR09) >  0) And (len(LAPR10)>0) And (len(LAPR11)>0) And (len(LAPR12)>0)     '+
                             '                               And (len(LAPR13)=0) And (len(LAPR14)=0) And (len(LAPR15)=0) '+
                             '               And (len(LAPR16)=0) then LAPR09+'+#39+' '+#39+'+LAPR10+'+#39+' '+#39+'+LAPR11+'+#39+' '+#39+'+LAPR12            '+
                             '   When (len(LAPR09) >  0) And (len(LAPR10)>0) And (len(LAPR11)>0) And (len(LAPR12)>0)     '+
                             '                               And (len(LAPR13)>0) And (len(LAPR14)=0) And (len(LAPR15)=0) '+
                             '               And (len(LAPR16)=0) then LAPR09+'+#39+' '+#39+'+LAPR10+'+#39+' '+#39+'+LAPR11+'+#39+' '+#39+'+LAPR12+'+#39+' '+#39+'+LAPR13 '+
                             '   When (len(LAPR09) >  0) And (len(LAPR10)>0) And (len(LAPR11)>0) And (len(LAPR12)>0)     '+
                             '                               And (len(LAPR13)>0) And (len(LAPR14)>0) And (len(LAPR15)=0) '+
                             '               And (len(LAPR16)=0) then LAPR09+'+#39+' '+#39+'+LAPR10+'+#39+' '+#39+'+LAPR11+'+#39+' '+#39+'+LAPR12+'+#39+' '+#39+'+LAPR13+'+#39+' '+#39+'+LAPR14 '+
                             '   When (len(LAPR09) >  0) And (len(LAPR10)>0) And (len(LAPR11)>0) And (len(LAPR12)>0)     '+
                             '                               And (len(LAPR13)>0) And (len(LAPR14)>0) And (len(LAPR15)>0) '+
                             '               And (len(LAPR16)=0) then LAPR09+'+#39+' '+#39+'+LAPR10+'+#39+' '+#39+'+LAPR11+'+#39+' '+#39+'+LAPR12+'+#39+' '+#39+'+LAPR13+'+#39+' '+#39+'+LAPR14+'+#39+' '+#39+'+LAPR15 '+
                             '   When (len(LAPR09) >  0) And (len(LAPR10)>0) And (len(LAPR11)>0) And (len(LAPR12)>0)     '+
                             '                               And (len(LAPR13)>0) And (len(LAPR14)>0) And (len(LAPR15)>0) '+
                             '               And (len(LAPR16)>0) then LAPR09+'+#39+' '+#39+'+LAPR10+'+#39+' '+#39+'+LAPR11+'+#39+' '+#39+'+LAPR12+'+#39+' '+#39+'+LAPR13+'+#39+' '+#39+'+LAPR14+'+#39+' '+#39+'+LAPR15+'+#39+' '+#39+'+LAPR16 '+
                             '  End As DescripcionLabel2,                                                                '+
                             '  LA10SE As Secuencia                                                                      '+
                             '                 FROM [DBFIN].[S10D7471].[LALIB].[LAP01001] L INNER JOIN PTPRUEBA P ON L.LA10C1=P.CODIGOIDAS400 '+
                             '         WHERE LA10NU='+#39+_Muestrano+#39+
                             '         Order by Secuencia ';
          qprint.Open;
  end;
  If (qprint.RecordCount > 0) Then
  Begin
      qprint.First;
      While Not qprint.Eof Do
      Begin
         Printing_Label(qprint.FieldByName('MuestraNo').AsString,
                        qprint.FieldByName('Label').AsString,
                        qprint.FieldByName('Departamento').AsString,
                        qprint.FieldByName('NombrePaciente').AsString, DM.CurUser,
                        qprint.FieldByName('DescripcionLabel').AsString,
                        qprint.FieldByName('DescripcionLabel2').AsString,
                        qprint.FieldByName('Secuencia').AsInteger);
         qprint.Next;
      End;
  End;
  FreeAndNil(qprint);
end;


procedure TfrmPuntoVenta.Printing_Label(_muestra: String; _label: String; _departamento: String;
                                          _nombre: String; _usuario: String; _descripcion: String; _descripcion2: String;
                                          _secuencia: Integer);
Const
 LetraSec : Array[1..26] Of String = ('A','B','C','D','E','F','G','H','I','J','K','L','M',
                                      'N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
  with RAWPrinter1 do
  begin
   PrinterName := Ruta_BarCode;
   BeginDoc;
     writeLn('FK"FORMA"');
     writeLn('FS"FORMA"');
     writeLn('');
     writeLn('q1200');
     writeLn('Q200,30+0');
     writeLn('S2');
     writeLn('D8');
     writeLn('ZT');

//     writeLn('B255,20,0,1,2,6,98,N,"'  + _muestra + '"');
     writeLn('B250,20,0,1,2,6,70,N,"'  + _muestra + '"');
     writeLn('A230,130,0,3,1,1,N,"'    + _label + '"');
     writeLn('A590,20,1,1,1,1,N,"'    + _departamento + '"');
     writeLn('A230,150,0,2,1,1,N,"'    + _nombre + '"');
//     writeLn('B500,130,0,3,2,3,50,N,"' + LetraSec[_secuencia] + '"');
     writeLn('A570,20,1,1,1,1,N,"' + _usuario + '"');
     writeLn('A230,170,0,1,1,1,N,"' + _descripcion + '"');
     writeLn('A230,190,0,1,1,1,N,"' + _descripcion2 + '"');
     writeLn('FE');
     writeLn('');
     writeLn('FR"FORMA"');
     writeLn('?');
     writeLn('P1');
     writeLn('');
   EndDoc;
  end;
end;

procedure TfrmPuntoVenta.BtInterfaseAS400Click(Sender: TObject);
begin
  If Length(qrEntradaPacienteDetalleRefrecID.AsString)>0 then
  begin
      If FormatFloat(',0.00', qrEntradaPacienteBruto.Value) <> FormatFloat(',0.00',(Dm.TotalDetallePrueba(qrEntradaPacienteDetalleRefrecID.AsString))) then
      Begin
           Raise exception.CreateFmt(' Total Bruto entrada y Sumatoria Monto de pruebas No son iguales.  Verifique.', []);
      end;
  end;

  If not ((Trim(qrEntradaPacienteEntradaid.value)=EmptyStr) Or (Copy(qrEntradaPacienteEntradaid.value,1,3)='HOL')) Then
  begin
    if DM.Mensaje('Desea Transferir Esta Orden al AS-400.?',mb_yesno) = id_yes then
    begin
       qrEntradaPaciente.Edit;
       qrEntradaPaciente.Post;
       if qrEntradaPacienteDetalle.RecordCount > 0 then
       begin
        qrEntradaPacienteDetalle.Edit;
        qrEntradaPacienteDetalle.Post;
       end;
       If dm.qrParametroServidor_AS400.value <> EmptyStr then
       begin
            if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
            begin
                 Try
                   InterfaseAS400.ASConnection.Close;
                   InterfaseAS400.ASConnection.Open;
                   //eLIMINANDO entrada en el INP03301 E INP04401EN AS-400.
                   InterfaseAS400.Elimina_Entrada(qrEntradaPacienteMuestrano.Value);
                   //Insertando las Pruebas en el AS-400.
                   InterfaseAS400.MandarPruebaAS400(qrEntradaPacienteMuestraNo.Value, ifThen(Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value) <> EmptyStr,Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value),qrEntradaPacientePacienteID.Value));
                   InterfaseAS400.ASConnection.Close;
                 Except
                   Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                             ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                             ' � Intentelo Nuevamente.!!!', []);
                 End;
            end;
       end;
    end;
  end
  else
  if Copy(qrEntradaPacienteEntradaid.value,1,3)='HOL' then
  begin
      EtMensajeDlg('Las Entradas con ESTATUS EN HOLD NO pueden ser transferidas al AS-400.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
  end
  else
  if Trim(qrEntradaPacienteEntradaid.value) ='' then
  begin
      EtMensajeDlg('Las Entradas NO GRABADAS NO pueden ser transferidas al AS-400.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
  end;
end;


procedure TfrmPuntoVenta.RegistrarCobrosTemporales1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-8024);
end;


procedure TfrmPuntoVenta.RegistrarFechaPrometida1Click(Sender: TObject);
begin
  inherited;
  Showmessage('Pendiente de Toma de Muestra.!!!');
end;


procedure TfrmPuntoVenta.RegistrarNuevoPaciente1Click(Sender: TObject);
begin
  inherited;
  If qrEntradaPaciente.State in [dsInsert] Then
    Begin
     frmMain.CustPtoVta := '';
     frmMain.LanzaVentana(1100);
    end;
end;


procedure TfrmPuntoVenta.ConfirmarCobertura1Click(Sender: TObject);
begin
  inherited;
//  frmMain.LanzaVentana(-7993); //Confirmando la Cobertura Normal.
//  frmMain.LanzaVentana(-8021); //Confirmando la Cobertura Tardia.
  If ( qrEntradaPacienteDetalle.RecordCount = 0) Then
  Begin
          EtMensajeDlg('Factura No tiene pruebas.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true)
  end
  else
  If ( qrEntradaPacienteCoberturaConfirmada.Value = 1) And
          (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
  Begin
          EtMensajeDlg('Cobertura YA ha sido Confirmada.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true)
  end
  else If ( qrEntradaPacienteCoberturaConfirmada.Value = 0) And
          (qrEntradaPacienteOrigen.Value <> DM.qrParametroGrupoSeg.Value) then
  Begin
          EtMensajeDlg('Tipo de Cliente NO permite confirmaci�n de Cobertura.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
  end
  else
  If (qrEntradaPacienteCoberturaRechazada.Value = 0) And
     (qrEntradaPacienteCoberturaConfirmada.Value = 0) And
     (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
  Begin
      qrEntradaPaciente.Edit;
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteHold.Value := 0;
//      qrEntradaPacienteUserId.Value := DM.CurUser;
      qrEntradaPacienteFLEBOTOMISTAID.Value := DM.CurUser;
      qrEntradaPacienteFechaRegistro.Value := DM.SystemDate;
      qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;
      frmMain.LanzaVentana(-8021);
      qrEntradaPacienteOrigenChange(qrEntradaPacientePacienteID);
      ActTotales;
  end
  else
    Beep;
end;


procedure TfrmPuntoVenta.btAceptaNCFClick(Sender: TObject);
begin
  inherited;
  If (Length(trim(mskRNC.Text))=13) and (Not Dm.GetDigitoVerificador(copy(DM.Cortar_Char('-', mskRNC.Text),1,11),'0')) Then
  Begin
       EtMensajeDlg('Favor digitar N�mero de C�dula V�lido.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
       mskRNC.Text := EmptyStr;
       mskRNC.Setfocus;
       Exit;
  end
  else
  If (Length(trim(mskRNC.Text))=11) and (Not dm.ValidaRNC(mskRNC.Text)) Then
  begin
     EtMensajeDlg('RNC no v�lido.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
     if mskRNC.enabled then  mskRNC.SetFocus;
     exit;
  end
  else
  Begin
       If Not DM.ActNCF(Copy(cboTipoNCF.Text,1,2),txtNombreCia.Text,qrEntradaPacienteRecID.value,qrEntradaPacienteMuestrano.Value,qrEntradaPacienteEntradaID.Value,mskRNC.Text,qrEntradaPacienteTotalPagado.Value) Then
       begin
         Raise exception.CreateFmt( ' NO Se Pudo Generar el NCF. '+ #13 +
                                    ' Se Ha Generado Un Error en el SP. '+ #13 +
                                    ' Por Favor, Intentelo Nuevamente.!!!', []);
       end;
  End;
  txtNombrecia.Text       :=EmptyStr;
  mskRNC.EditValue        :=EmptyStr;
  cboTipoNCF.ItemIndex    := 0;
  spImpresionNCF.Visible  := False;
  If not ((Trim(qrEntradaPacienteEntradaid.value) ='') OR (Copy(qrEntradaPacienteEntradaid.value,1,3)='HOL')) Then
  begin
      DM.qrParametro.close;
      DM.qrParametro.open;
      qrEntradaPaciente.Refresh;
      dm.qrNCF.Close;
      dm.qrNCF.SQL.Text := ' Select Convert(Varchar(50),CASE NCFTYPEID  WHEN '+#39+'01'+#39+' THEN '+#39+'Factura Cr�dito Fiscal'+#39+
                           ' WHEN '+#39+'12'+#39+' THEN '+#39+'Factura Valor Unico'+#39+
                           ' WHEN '+#39+'14'+#39+' THEN '+#39+'Factura R�gimen Especial'+#39+
                           ' WHEN '+#39+'15'+#39+' THEN '+#39+'Factura R�gimen Gubernamental'+#39+
                           ' END) As NCFTYPEID,Muestrano,EntradaID,NCFID,NCFNAME,RNC,Fecha From dbo.NCFTABLEPTV (nolock) '+
                           ' Where muestrano='+#39+qrEntradaPacienteMuestrano.value+#39+' And EntradaID='+#39+qrEntradaPacienteEntradaid.value+#39+' And DataAreaID='+#39+DM.CurEmpresa+#39;
      dm.qrNCF.Open;
      if Ruta_Factura <> EmptyStr then
      Begin
             Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FNCF');
             ppImpFactPacienteNCF.ShowPrintDialog := False;
             ppImpFactPacienteNCF.DeviceType := dtPrinter;
             ppImpFactPacienteNCF.PrinterSetup.PaperHeight := 8.5;
             ppImpFactPacienteNCF.PrinterSetup.PaperName := 'Custom';
             ppImpFactPacienteNCF.PrinterSetup.PaperWidth := 4;
             ppImpFactPacienteNCF.PrinterSetup.PrinterName := Ruta_Factura;
             ppImpFactPacienteNCF.Print;
      End
      Else
      Begin
             Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FNCF');
             ppImpFactPacienteNCF.DeviceType := dtScreen;
             ppImpFactPacienteNCF.Print;
      End;
    end;

end;

procedure TfrmPuntoVenta.btAutorizaClick(Sender: TObject);
Var
//     CAfiliado                    : cRefAfiliado;
     qrDoctorArs                  : TAdoQuery;
     CAfiliadoSen                 : crefsAfiliado;
     CAfiliadoYun                 : Afiliado;
     CAfiliadoPal                 : AfiliadoP;
     CUsuario                     : UsuarioP;
     CDiagnostico                 : DiagnosticoP;
     Mensaje                      : WideString;
     email                        : WideString;
     Usuario                      : WideString;
     Password                     : WideString;
     Monto_Limite                 : Double;
     Identificacion               : WideString;
     codArs                       : Integer;
     codAfiliado                  : Int64;
     codProveedor                 : Int64;
     Test                         : WideString;
     qAutoriza                    : TAdoQuery;
     WS                           : SimetricaSoap;
     WSPal                        : PalicSoap;
     WSSen                        : TSenasaRefWSSoap;
     WSYun                        : WsServicioAutorizacionSoap;
     strContrato                  : String;
     dFamilia                     : Double;
     pContrato                    : integer;
     vURLWSDL                     : String;
     vDocNumCon                   : WideString;
     vStrBenVal                   : WideString;
     iPos,iCount,I,vIdx           : Integer;
     strNumAfiliado               : WideString;
     strNombres,strApellidos      : WideString;
     strParent,strFechaNac        : WideString;
     iEdad                        : integer;
     NumCancelacion               : Smallint;
     ds                           : TDataset;
     Cont_Cob                     : integer;
     fecha                        : WideString;
     strDoctor                    : String;
     strVerifDoctor               : String;
     CAfiliado                    : AfiliadoSM;
begin
  inherited;
  if (Trim(qrEntradapacienteNombrePaciente.Value) = EmptyStr) Then
  begin
     EtMensajeDlg('Nombre del Paciente No puede estar en blanco.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
     if cxdbPaciente.enabled then  cxdbPaciente.SetFocus;
  end
  else if (Trim(qrEntradapacienteFechaNacimiento.Text) = EmptyStr) Then
  begin
     EtMensajeDlg('Fecha de Nacimiento No puede estar en blanco.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
     if cxdbDateEdit5.enabled then  cxdbDateEdit5.SetFocus;
  end
  else if (Trim(qrEntradaPacientePOLIZAID.Value) = EmptyStr) Then
  begin
     EtMensajeDlg('N�mero de Afiliado No puede estar en blanco.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
     if cxDBTextEdit16.enabled then  cxDBTextEdit16.SetFocus;
  end
  else if (Trim(qrEntradaPacienteCOD_DIAG.Value) = EmptyStr) Then
  begin
     EtMensajeDlg('c�digo de diagn�stico No puede estar en blanco.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
     if EDDIAGN.enabled then  EDDIAGN.SetFocus;
  end
  else If Trim(qrEntradaPacienteNOMBREDOCTOR.Text) = EmptyStr Then
  begin
     EtMensajeDlg('Debe Seleccionar el Doctor.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
     if EdNombreDoctor.enabled then  EdNombreDoctor.SetFocus;
  end
  else  If ( qrEntradaPacienteDetalle.RecordCount = 0) Then
  Begin
          EtMensajeDlg('Factura No tiene pruebas.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true)
  end
  else
  If (qrEntradaPacienteCoberturaConfirmada.Value > 0) And
          (qrEntradaPacienteOrigen.Value <> DM.qrParametroGrupoSeg.Value) then
  Begin
          EtMensajeDlg('Tipo de Cliente NO permite Autorizacion.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
  end
  else

  If (qrEntradaPacienteCoberturaConfirmada.Value = 0) And
       (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
  Begin
      If (qrEntradaPacienteDetalle.RecordCount > 0) Then
      Begin
           Cont_Cob := 0;
           qrEntradaPacienteDetalle.First;
           While not qrEntradaPacienteDetalle.Eof do
           begin
             if (qrEntradaPacienteDetalleCOBERTURAAPLICA.Value = 1) then
               Begin
                   Cont_Cob := Cont_Cob + 1;
               end;
             qrEntradaPacienteDetalle.Next;
           end;
           qrEntradaPacienteDetalle.First;
           if Cont_Cob = 0 then
              EtMensajeDlg('No existen pruebas con cobertura.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
      end;
      qrEntradaPaciente.Edit;
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteHold.Value := 0;
      qrEntradaPacienteFLEBOTOMISTAID.Value := DM.CurUser;
      qrEntradaPacienteFechaRegistro.Value := DM.SystemDate;
      qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;
      ActTotales;
//      vURLWSDL     := 'http://localhost:40643/Simetrica.asmx';
  Try
      qAutoriza := DM.NewQuery;
      qAutoriza.Close;
      qAutoriza.SQL.Text := ' SELECT distinct CodProveedor,(Select CodSupUniv from ptSucursal Where SucursalID='+#39+DM.CurSucursal+#39+') as CodProvUniv,a.WsArsid,p.Url2,Isnull(p.Password,'+#39+#39+') As Password,p.Usuario,a.SucEx,a.proveedor,a.Monto_Limite, Isnull(p.Wsdl,'+#39+#39+') As Wsdl '+
                            ' from ptars a (nolock) inner join ptcliente c (nolock) on c.CarnetNumero = a.CodProveedor inner join ptProveedor p (nolock) on a.proveedor=p.proveedorid '+
                            ' where clienteid='+#39+qrEntradaPacienteClienteID.Asstring+#39;
      qAutoriza.Open;
      if (qAutoriza.RecordCount > 0) then
      begin
        Dm.vURLWSDL       := qAutoriza.FieldByName('Url2').Value;
        Dm.vWSDL          := qAutoriza.FieldByName('Wsdl').Value;
        Dm.WsArsID        := qAutoriza.FieldByName('WsArsID').Value;
        If (qrEntradaPacienteClienteID.Asstring = 'C03103') Or (qrEntradaPacienteClienteID.Asstring = 'C00075') then
          Dm.CodProveedor   := 26 //qAutoriza.FieldByName('CodProveedor').Value;
        else if (qrEntradaPacienteClienteID.Asstring = 'C01673') Or (qrEntradaPacienteClienteID.Asstring = 'C03209') then
          Dm.CodProveedor   := 1557
        else
          Dm.CodProveedor := qAutoriza.FieldByName('CodProveedor').Value;
        Dm.CodArs         := qAutoriza.FieldByName('Proveedor').Value;
        Usuario           := qAutoriza.FieldByName('Usuario').Value;
        Password          := qAutoriza.FieldByName('Password').Value;
        CodProvUniv       := qAutoriza.FieldByName('CodProvUniv').Value;
        Monto_Limite      := qAutoriza.FieldByName('Monto_Limite').Value;
      end
      else
      begin
          EtMensajeDlg('Ars No est� configurada para autorizaci�n web.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          exit;
      end;
      If (qAutoriza.FieldByName('WsArsid').AsString = GrupoArsUniversal) And
         (qrEntradaPacienteBruto.Value > Monto_Limite)Then
      Begin
          EtMensajeDlg('Monto Facturado sobrepasa l�mite (RD$'+CurrToStr(Monto_Limite)+') via Web-Services para Ars. Universal.  Consulte un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          exit;
      end;
      If (qAutoriza.FieldByName('WsArsid').AsString = GrupoArsUniversal) And
         (CodProvUniv = '0024903') And
         (DM.CurSucursal = qAutoriza.FieldByName('SucEx').Value) And
         (qrEntradaPacienteClienteID.Value = 'C01229')  then
      Begin
//          Dm.CodProveedor :=  249;
          CodProvUniv     := '04214';
      end;
      spMensaje.Visible := True;
      Screen.Cursor := crHourGlass;
      Application.ProcessMessages;
      dm.GrupoArs := qAutoriza.FieldByName('WsArsid').AsString;
      if qAutoriza.FieldByName('WsArsid').AsString = GrupoArsSDS then
      Begin
//          Dm.vURLWSDL     := 'http://172.16.30.65/WsHumanoTest/SimetricaWS.asmx';
//          Dm.vURLWSDL     := 'http://localhost:62814/SimetricaWS.asmx';
          if qrEntradaPacienteClienteID.Value='C00156' then    //Rr
          begin
              codAfiliado   := StrToInt64Def(Trim(cxDBTextEdit16.Text), StrToInt64(Trim(qrEntradaPacientePolizaID.Value)));
              CAfiliado     := AfiliadoSM.Create;
              dm.Cod_Doctor :='0';
              CAfiliado     := GetSimetricaSoap(false,Dm.vURLWSDL).ValidaAfiliado(Dm.codArs,codAfiliado,Dm.codProveedor,StrToInt64(dm.Cod_Doctor));

              if ifThen(CAfiliado.Sexo='F','0','1') <> IntToStr(qrEntradapacienteSexo.Value) then
              Begin
                  Screen.Cursor     := crDefault;
                  spMensaje.Visible := False;
                  EtMensajeDlg('Sexo del paciente no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                  exit;
              end;

              if (CAfiliado.Nombre = 'Afiliado no existe') or (CAfiliado.Nombre ='Afiliado excluido') or
                 (CAfiliado.Nombre = 'P�liza suspendida')  then
              begin
                  Screen.Cursor     := crDefault;
                  spMensaje.Visible := False;
                  EtMensajeDlg(CAfiliado.Nombre+'.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                  exit;
              end;
              Fecha := StringReplace(Copy(CAfiliado.FechaNacimiento.NativeToXS,1,10),'-', '', [rfReplaceAll, rfIgnoreCase]);
              case Dm.codArs of
             4  :Begin
                    if UpperCase(Copy(CAfiliado.PrimerNombre,1,3)) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                    If Not((CAfiliado.TipoPlan='A') and (Trim(qrEntradapacienteClienteID.Value)='C00156')) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                    If (Fecha) <> (formatdatetime('yyyymmdd',qrEntradapacienteFechaNacimiento.Value)) Then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Fecha Nac. Afiliado='+#39+Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4)+#39+' es diferente a Fecha Nac. entrada='+#39+formatdatetime('dd/mm/yyyy',qrEntradapacienteFechaNacimiento.Value)+#39+'.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                 End;
              end;
            Dm.Afiliado := CAfiliado.Nombre;
            Dm.TipoPlan := CAfiliado.TipoPlan;
            Dm.Complementariedad := CAfiliado.TipoComplementariedad;
            CAfiliado.Free;
            frmMain.LanzaVentana(-8034);
          end
          else
          begin
            EdBuscar.EditValue := EmptyStr;
            StrDoctor := '%'+StringReplace(qrEntradaPacienteNOMBREDOCTOR.Value, ' ', '%', [rfReplaceAll, rfIgnoreCase])+'%';
            qrDoctorArs := DM.NewQuery;
            qrDoctorArs := DM.Find('SELECT * FROM PtDoctorArs (nolock) WHERE Nombre like :cli', StrDoctor);
            if not mdDoctores.Active then
              mdDoctores.Active := true;

            DsDoctores.Enabled := False;
            mdDoctores.Close;
            mdDoctores.Open;
            mdDoctores.EmptyTable;
            if Not(qrEntradaPacienteClienteID.Value = 'C00392') then
            Begin
              mdDoctores.Append;
              mdDoctoresSecuencia.AsInteger    := vIdx;
              mdDoctoresSeleccion.AsBoolean    := False;
              mdDoctoresCodigo_Doctor.AsString := '0';
              mdDoctoresNombre.AsString        := qrEntradaPacienteNombreDoctor.Value;
              mdDoctoresTipo.AsString          := 'M';
              mdDoctoresEstatus.AsString       := 'Activo';
            End;
            vIdx := 0;
            while not qrDoctorArs.Eof do
            Begin
              vIdx:=vIdx+1;
              mdDoctores.Append;
              mdDoctoresSecuencia.AsInteger    := vIdx;
              mdDoctoresSeleccion.AsBoolean    := False;
              mdDoctoresCodigo_Doctor.AsString := qrDoctorArs.FieldByName('Codigo').Value;
              mdDoctoresNombre.AsString        := qrDoctorArs.FieldByName('Nombre').Value;
              mdDoctoresTipo.AsString          := qrDoctorArs.FieldByName('Tipo').Value;
              mdDoctoresEstatus.AsString       := 'Activo';
              qrDoctorArs.Next;
              mdDoctores.Next;
            End;
            mdDoctores.First;
            dsDoctores.Enabled := True;
            spMensaje.Visible  := False;
            spDoctor.Visible   := True;
            FreeAndNil(qrDoctorArs);
          end;
      end
      else
      If (qAutoriza.FieldByName('WsArsid').AsString = GrupoArsUniversal) And
         (dm.CurUserUniv <> EmptyStr) then
      Begin
       //   Dm.vURLWSDL     := 'http://172.16.30.65/WsUniversalTest/Universal.asmx';
       //   Dm.vURLWSDL     := 'http://localhost:40643/Universal.asmx';

          WSUniv          := GetUniversalSoap(False,Dm.vURLWSDL);
          pContrato       := Pos('-',qrEntradaPacientePolizaID.Value);
          if pContrato > 0 then
          begin
            StrContrato       := Copy(qrEntradaPacientePolizaID.Value,1,pContrato-1);
            dFamilia          := strtofloat(Copy(qrEntradaPacientePolizaID.Value,pContrato+1,5));
            fecha             := FormatDateTime('yyyy-mm-dd', qrEntradaPacienteFechaNacimiento.value);
            vArrayOfRecdatben2ObjUser := WSUniv.Validacion_de_Contrato(ifThen(qrEntradaPacienteClienteId.Value='C00389','01','03'),StrContrato ,dfamilia,fecha,CodProvUniv,Dm.CurUserUniv);
          end
          else
          begin
            dfamilia := 0;
            fecha             := FormatDateTime('yyyy-mm-dd', qrEntradaPacienteFechaNacimiento.value);
            vArrayOfRecdatben2ObjUser := WSUniv.Validacion_de_Contrato(ifThen(qrEntradaPacienteClienteId.Value='C00389','01','03'),qrEntradaPacientePolizaID.Value ,dfamilia,fecha, CodProvUniv, Dm.CurUserUniv);
          end;

          SetLength(vArrayOfRecdatben2ObjUser, Length(vArrayOfRecdatben2ObjUser));
          DsBeneficiarioC.Enabled := False;
          if not mdBeneficiarioC.Active then
            mdBeneficiarioC.Active := true;
          mdBeneficiarioC.EmptyTable;
          for vIdx := 0 to Length(vArrayOfRecdatben2ObjUser)-1 do
          begin
            If Trim(vArrayOfRecdatben2ObjUser[vIdx].outErr) <> EmptyStr then
            begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(vArrayOfRecdatben2ObjUser[vIdx].outErr, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
            end;
            dm.dWebID := strtofloat(vArrayOfRecdatben2ObjUser[vIdx].outWebid.NativeToXS);
            mdBeneficiarioC.Append;
            mdBeneficiarioCSeleccion.AsBoolean    := False;
            mdBeneficiarioCNumAfiliado.AsString   := vArrayOfRecdatben2ObjUser[vIdx].outNatide.NativeToXS;
            mdBeneficiarioCNombres.AsString       := vArrayOfRecdatben2ObjUser[vIdx].outNatprinom+' '+vArrayOfRecdatben2ObjUser[vIdx].outNatsegnom;
            mdBeneficiarioCApellidos.AsString     := vArrayOfRecdatben2ObjUser[vIdx].outNatpriape+' '+vArrayOfRecdatben2ObjUser[vIdx].outNatsegape;
            mdBeneficiarioCParentesco.AsString    := vArrayOfRecdatben2ObjUser[vIdx].outPlaparnom;
            mdBeneficiarioCFechaNac.AsString      := vArrayOfRecdatben2ObjUser[vIdx].outNatfecnac.NativeToXS;
            mdBeneficiarioCEdad.Asinteger         := StrToInt(vArrayOfRecdatben2ObjUser[vIdx].outHijeda.NativeToXS);
            Next;
          End;

          EdBuscar.EditValue := EmptyStr;
          vArrayOfRecDoctor := 0;
          strDoctor       := '%'+StringReplace(qrEntradaPacienteNOMBREDOCTOR.Value, ' ', '%', [rfReplaceAll, rfIgnoreCase])+'%';
          strVerifDoctor    := WSUniv.Verifica_Doctor(strDoctor);
          If strVerifDoctor = 'S' then
          begin
              vArrayOfRecDoctor := WSUniv.Buscar_Doctor2(strDoctor);
          end;
          DsDoctores.Enabled := False;
          mdDoctores.Close;
          mdDoctores.Open;
          mdDoctores.EmptyTable;
          if not mdDoctores.Active then
            mdDoctores.Active := true;
          mdDoctores.EmptyTable;
          if Not(qrEntradaPacienteClienteID.Value = 'C00389') then
          Begin
            mdDoctores.Append;
            mdDoctoresSecuencia.AsInteger    := vIdx;
            mdDoctoresSeleccion.AsBoolean    := False;
            mdDoctoresCodigo_Doctor.AsString := '99999';
            mdDoctoresNombre.AsString        := qrEntradaPacienteNombreDoctor.Value;
            mdDoctoresTipo.AsString          := 'MEDICO';
            mdDoctoresEstatus.AsString       := 'Activo';
          End;
          vIdx := 0;
          SetLength(vArrayOfRecDoctor, Length(vArrayOfRecDoctor));
          for vIdx := 0 to Length(vArrayOfRecDoctor)-1 do
          begin
            mdDoctores.Append;
            mdDoctoresSecuencia.AsInteger    := vIdx+1;
            mdDoctoresSeleccion.AsBoolean    := False;
            mdDoctoresCodigo_Doctor.AsString := vArrayOfRecDoctor[vIdx].codigo;
            mdDoctoresNombre.AsString        := vArrayOfRecDoctor[vIdx].nombre;
            mdDoctoresTipo.AsString          := 'MEDICO';
            mdDoctoresEstatus.AsString       := 'Activo';
            Next;
          End;
          mdDoctores.First;
          dsDoctores.Enabled := True;
          spMensaje.Visible := False;
          spDoctor.Visible  := True;
      end
      else
      if qAutoriza.FieldByName('WsArsid').AsString = GrupoArsPalic then
      Begin
       //   Dm.vURLWSDL     := 'http://172.16.30.65/WsPalicTest/Palic.asmx';
       //   Dm.vURLWSDL     := 'http://localhost:40643/Palic.asmx';
          WsPalic         := GetPalicSoap(False,Dm.vURLWSDL);
          CUsuario        := UsuarioP.Create;
          CUsuario        := GetPalicSoap(false,Dm.vURLWSDL).fValidaPassword('REFERENCIA','REF5545');
//          CUsuario        := GetPalicSoap(false,Dm.vURLWSDL).fValidaPassword('REFERENCIA','REFERENCIA');

          if (CUsuario.Val_Prestador <> 'Ok') then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(CUsuario.Val_Prestador, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (CUsuario.Tipo_Prestador = '01') then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Prestador Inv�lido', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (CUsuario.Val_Prestador = 'Ok') And (CUsuario.Tipo_Prestador = '00') then
          begin
            codAfiliado      := StrToInt64Def(cxDBTextEdit16.Text, StrToInt64(qrEntradaPacientePolizaID.Value));
            CAfiliadoPal     := AfiliadoP.Create;
            try
            CAfiliadoPal     := GetPalicSoap(false,Dm.vURLWSDL).fValidaAfiliado(qrEntradaPacientePolizaID.Value, IntToStr(Dm.CodProveedor),CUsuario.Tipo_Proveedor,DM.CurUser,'S');
            Except
                Raise exception.CreateFmt('Verifique No. de Afiliado � Contrato.', []);
            end;

          end;
          if (CAfiliadoPal.Val_Afiliado <> '00') then
          begin
              if CAfiliadoPal.Val_Afiliado='01' then
                 Mensaje:='Afiliado no existe.  Verifique.'
              else if CAfiliadoPal.Val_Afiliado='02' then
                 Mensaje:='P�liza Suspendida.  Verifique.'
              else if CAfiliadoPal.Val_Afiliado='03' then
                 Mensaje:='Afiliado Excluido.  Verifique.'
              else if CAfiliadoPal.Val_Afiliado='' then
                 Mensaje:='Error validando Afiliado.  Verifique.';
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(Mensaje, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;

          if UpperCase(Copy(Trim(CAfiliadoPal.Nombre),1,3)) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if CAfiliadoPal.Edad <> qrEntradapacienteEdadPaciente.Value then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Edad del paciente en la entrada es '+Trim(qrEntradaPacienteEdadPaciente.Asstring)+' difere a la Edad del Paciente en ARS ('+inttostr(CAfiliadoPal.Edad)+').', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
              exit;
          end;
          if ifThen(CAfiliadoPal.Sexo='F','0','1') <> IntToStr(qrEntradapacienteSexo.Value) then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Sexo del paciente no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if ((CAfiliadoPal.Tipo_Plan='A') and (Trim(qrEntradapacienteClienteID.Value)='C00390')) Then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Afiliado tiene ambos planes Basico y Complementario.  Debe seleccionar el Plan Complementario.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if Not(((CAfiliadoPal.Tipo_Plan='B') and (Trim(qrEntradapacienteClienteID.Value)='C00390')) Or
             ((CAfiliadoPal.Tipo_Plan='C') and (Trim(qrEntradapacienteClienteID.Value)='C00052')) Or
             ((CAfiliadoPal.Tipo_Plan='A') and ((Trim(qrEntradapacienteClienteID.Value)='C00052') Or (Trim(qrEntradapacienteClienteID.Value)='C00390'))) Or
             (Trim(qrEntradapacienteClienteID.Value)='C01674')) Then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (qrEntradapacienteTelefonos.Value='') And (qrEntradapacienteTelefono2.Value='') then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Debe digitar telefono residencia o celular.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
              exit;
          end;
          if (CAfiliadoPal.Val_Afiliado = '00') then
          begin
            CDiagnostico    := DiagnosticoP.Create;
            CDiagnostico    := GetPalicSoap(false,Dm.vURLWSDL).fValidadiagnostico(CAfiliadoPal.Numero_Session,Trim(qrEntradaPacienteCOD_DIAG.Value));

            if CDiagnostico.Codigo <> '00' then
            begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(CDiagnostico.Nombre+' para esta ARS.  Seleccione Z017 EXAMEN MEDICO GENERAL.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
            end;
          end;
// Busca Doctor
          EdBuscar.EditValue := EmptyStr;
          vArrayOfRecDoctorPal  := 0;
          strDoctor             := '%'+StringReplace(qrEntradaPacienteNOMBREDOCTOR.Value, ' ', '%', [rfReplaceAll, rfIgnoreCase])+'%';
          vArrayOfRecDoctorPal  := GetPalicSoap(false,Dm.vURLWSDL).fbusca_doctor(strDoctor,ifThen(qrEntradaPacienteClienteId.Value='C00389','BASICO','BASICO Y PREPAGO'));
          DsDoctores.Enabled    := False;
          if not mdDoctores.Active then
            mdDoctores.Active := true;
          mdDoctores.Close;
          mdDoctores.Open;
          mdDoctores.EmptyTable;
          vIdx := 0;
          if Not(qrEntradaPacienteClienteID.Value = 'C00390') then
          Begin
            mdDoctores.Append;
            mdDoctoresSecuencia.AsInteger    := vIdx;
            mdDoctoresSeleccion.AsBoolean    := False;
            mdDoctoresCodigo_Doctor.AsString := '0';
            mdDoctoresNombre.AsString        := qrEntradaPacienteNombreDoctor.Value;
            mdDoctoresTipo.AsString          := 'MEDICO';
            mdDoctoresEstatus.AsString       := 'Activo';
         End;
          for vIdx := 0 to Length(vArrayOfRecDoctorPal)-1 do
          begin
            mdDoctores.Append;
            mdDoctoresSecuencia.AsInteger    := vIdx+1;
            mdDoctoresSeleccion.AsBoolean    := False;
            mdDoctoresCodigo_Doctor.AsString := vArrayOfRecDoctorPal[vIdx].codigo;
            mdDoctoresNombre.AsString        := vArrayOfRecDoctorPal[vIdx].nombre;
            mdDoctoresTipo.AsString          := vArrayOfRecDoctorPal[vIdx].TipoRemitente;
            mdDoctoresEstatus.AsString       := 'Activo';
            Next;
          End;
          mdDoctores.First;
          dsDoctores.Enabled := True;
          spMensaje.Visible := False;
          spDoctor.Visible  := True;
// Fin Busq. Doctor
          Dm.Afiliado     := CAfiliadoPal.Nombre;
          Dm.TipoPlan     := CAfiliadoPal.Tipo_Plan;
          Dm.Num_Session  := CAfiliadoPal.Numero_Session;
          Dm.Telefono_Pac := IfThen(qrEntradapacienteTelefonos.Value='',qrEntradapacienteTelefono2.Value,qrEntradapacienteTelefonos.Value);
      end
      else
      if qAutoriza.FieldByName('WsArsid').AsString = GrupoArsSenasa then
      Begin
          If Trim(cboExtTipoDoc.Text) = EmptyStr Then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Debe seleccionar Tipo de Documento.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              if cboExtTipoDoc.Enabled = True  then  cboExtTipoDoc.SetFocus;
              exit;
          end;
          CodTipoID       := StrToInt(Copy(cboExtTipoDoc.EditText,1,1));
          CAfiliadoSen    := crefsAfiliado.Create;
          CAfiliadoSen    := GetTSenasaRefWSSoap(false,Dm.vURLWSDL).ConsultarAfiliado(CodTipoID,qrEntradaPacientePolizaID.Value);
          if CAfiliadoSen.Estatus = '' then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              if Trim(CAfiliadoSen.CodMsgDesc) <> EmptyStr then
                 EtMensajeDlg(CAfiliadoSen.CodMsgDesc, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
              else
                 EtMensajeDlg('Error validando No. Afiliado � c�dula.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (CAfiliadoSen.Regimen='1') And (CAfiliadoSen.RegimenDesc='SUBSIDIADO') then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Afiliado pertenece al regimen SUBSIDIADO no tiene cobertura.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if CAfiliadoSen.Estatus <> '3' then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(CAfiliadoSen.CodMsgDesc, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (CAfiliadoSen.EstatusDesc <> 'OK (CORRECTO)') Then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(CAfiliadoSen.CodMsgDesc+'.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if UpperCase(Copy(CAfiliadoSen.Nombre,1,3)) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (Trim(qrEntradapacienteClienteID.Value)<>'C00431') then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          Dm.Afiliado := CAfiliadoSen.Nombre;
          Dm.TipoPlan := CAfiliadoSen.RegimenDesc;
          Dm.Regimen  := CAfiliadoSen.Regimen;
          dm.NSS      := CAfiliadoSen.NSS;
          dm.Contrato := CAfiliadoSen.CDG;
          frmMain.LanzaVentana(-8034);
          If btgrabar.Enabled = True then btgrabar.SetFocus;
      end
      else
      if qAutoriza.FieldByName('WsArsid').AsString = GrupoArsYunen then
      Begin
          If Trim(cboExtTipoDoc.Text) = EmptyStr Then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Debe seleccionar Tipo de Documento.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              if cboExtTipoDoc.Enabled = True  then  cboExtTipoDoc.SetFocus;
              exit;
          end;
          CodTipoID       := StrToInt(Copy(cboExtTipoDoc.EditText,1,1));
          WSYun           := GetWsServicioAutorizacionSoap();
          WSYun.CrearNuevaTransacion('01','LA',dm.Id_Trans,Mensaje);
          If dm.Id_Trans = '2' then
          Begin
               EtMensajeDlg('Usuario y/o clave invalido.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          end;
          If Trim(Mensaje) <> EmptyStr then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(Mensaje, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          WSYun           := GetWsServicioAutorizacionSoap();
          WSYun.AsignarAfiliadoTransaccion('01',qrEntradaPacientePolizaID.Value,IntToStr(CodTipoID),StrToInt(dm.Id_Trans),CAfiliadoYun,Mensaje);
          If Trim(Mensaje) ='Error : Column '+#39+'carnet'+#39+' does not belong to table error.' then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Favor seleccionar Tipo Doc. correcto.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          If Trim(Mensaje) <> EmptyStr then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(Mensaje, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          WSYun           := GetWsServicioAutorizacionSoap();
          WSYun.ConsultarAfiliado('01',qrEntradaPacientePolizaID.Value,IntToStr(CodTipoID),CAfiliadoYun,Mensaje);
          If Trim(Mensaje) <> EmptyStr then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(Mensaje, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (CAfiliadoYun.Nombres = '') Or (CAfiliadoYun.Apellidos = '') then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              if Trim(CAfiliadoYun.TieneCobertura) <> EmptyStr then
                 EtMensajeDlg(CAfiliadoYun.TieneCobertura, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
              else
                 EtMensajeDlg('Error validando No. Afiliado � c�dula.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if CAfiliadoYun.TieneCobertura <> 'Si' then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Paciente No tiene Cobertura.  Verifique', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if UpperCase(Copy(CAfiliadoYun.Nombres,1,3)) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if ifThen(CAfiliadoYun.Sexo='F','0','1') <> IntToStr(qrEntradapacienteSexo.Value) then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Sexo del paciente no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
{          if Formatdatetime('yyyymmdd',StrToDate(Copy(CAfiliadoYun.FechaNacimiento,1,4)+'/'+Copy(CAfiliadoYun.FechaNacimiento,6,2)+'/'+Copy(CAfiliadoYun.FechaNacimiento,9,2))) <> Formatdatetime('yyyymmdd',qrEntradapacienteFechaNacimiento.AsDatetime) then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Fecha Nacimiento del paciente no es la misma que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
}
          if ((CAfiliadoYun.TipoPlan='V') and (Trim(qrEntradapacienteClienteID.Value)='C00102')) Then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Afiliado tiene ambos planes Basico y Complementario.  Debe seleccionar el Plan Complementario.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if Not(((CAfiliadoYun.TipoPlan='B') and (Trim(qrEntradapacienteClienteID.Value)='C00396')) Or
             ((CAfiliadoYun.TipoPlan='C') and (Trim(qrEntradapacienteClienteID.Value)='C00102')) Or
             ((CAfiliadoYun.TipoPlan='V') and ((Trim(qrEntradapacienteClienteID.Value)='C00396') Or (Trim(qrEntradapacienteClienteID.Value)='C00102')))) Then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          Dm.Afiliado := CAfiliadoYun.Nombres+' '+CAfiliadoYun.Apellidos;
          dm.NSS      := CAfiliadoYun.NSS;
          Dm.TipoPlan := CAfiliadoYun.TipoPlan;
          frmMain.LanzaVentana(-8034);
          If btgrabar.Enabled = True then btgrabar.SetFocus;
      end
      else
          except    on
          e:Exception do
          begin
                Screen.Cursor := crDefault;
                spMensaje.Visible := False;
                MessageDlg( e.Message, mtError, [mbOk],0);
          end
      end
 end;
 Screen.Cursor := crDefault;
 spMensaje.Visible := False;
 FreeAndNil(qAutoriza);
end;

procedure TfrmPuntoVenta.btcancelarClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPaciente.State = dsinsert then
   begin
    if DM.Mensaje('Existe una entrada en proceso. Desea cancelar la entrada?',mb_yesno) = id_yes then
     begin
      if qrEntradaPacienteEntradaID.Value = EmptyStr then
       begin
          if Trim(qrEntradaPacienteRECID.AsString)<> EmptyStr then
          begin
              DM.DataBase.Execute('DELETE FROM PTEntradaPacienteDetalle WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);
              DM.DataBase.Execute('DELETE FROM PTGastosVarioTrans WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString);
              DM.DataBase.Execute('DELETE FROM PTMaterialesFactura WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString);
          end;
          if ExisteCobro then
           begin
            CancelarCobro;
            btgrabar.Enabled := True;
  // OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.          btcobrar.Enabled := True;
  //          btnotacredito.Enabled := True;
            If ( CanMenuEspecial = True ) Then
              btnotacredito.Enabled := True
            Else
              btnotacredito.Enabled := False;
           end;
         end;
//      NuevaVenta;
        HabilitaConsultas;
     end;
   end;
   If (qrEntradaPacienteEntradaID.Value <> '') then
   begin
      if qrEntradaPaciente.State = dsEdit then  qrEntradaPaciente.Cancel;
      HabilitaConsultas;
//      NuevaVenta;
   end;
   if (Copy(qrEntradaPacienteMuestrano.value,3,3)='000') then
      lcGeneral.LookAndFeel.GroupOptions.Color := clMoneyGreen
   else
      lcGeneral.LookAndFeel.GroupOptions.Color := $00F8E3D1;
end;

procedure TfrmPuntoVenta.btCancelarNCFClick(Sender: TObject);
begin
  inherited;
  spImpresionNCF.Visible := False;
end;

procedure TfrmPuntoVenta.btclienteClick(Sender: TObject);
Var qAutoriza : TAdoQuery;
begin
  inherited;
   if (qrEntradaPacienteCoberturaConfirmada.Value = 1) Or
     (qrEntradaPacienteCoberturaRechazada.Value = 1) Then
     EtMensajeDlg('La Cobertura Ha Sido Confirmada � Rechazada.  El Cliente NO Puede Ser Cambiado.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
   else
   begin
     frmMain.LanzaVentana(-7996);
     if (Verifica_Autorizacion) Then
     begin
        cboExtTipoDoc.Enabled := True;
{        If dm.qrParametroServidor_AS400.value <> EmptyStr then
        begin
          btAutoriza.Enabled := True;
        end;
}
        btAutoriza.Enabled := True;
        qAutoriza := DM.NewQuery;
        qAutoriza.Close;
        qAutoriza.SQL.Text := ' SELECT distinct CodProveedor,dbo.rellena(Right(a.CodProveedor,5),5) as CodProvUniv,a.WsArsid,p.Url,p.Password,p.Usuario,a.SucEx,a.proveedor,a.Monto_Limite '+
                              ' from ptars a (nolock) inner join ptcliente c (nolock) on c.CarnetNumero = a.CodProveedor inner join ptProveedor p (nolock) on a.proveedor=p.proveedorid '+
                              ' where clienteid='+#39+qrEntradaPacienteClienteID.Asstring+#39;
        qAutoriza.Open;
        if (qAutoriza.RecordCount > 0) then
        begin
          dm.GrupoArs        := qAutoriza.FieldByName('WsArsid').Value;
        end;
        If (dm.GrupoArs='2') Or (dm.GrupoArs='3') then
        begin
          if (dm.GrupoArs='3') then
          begin
              With DM.qrDiagnostico, sql do
              begin
                Close;
                Clear;
                Add('Select * From PTDiagnostico (nolock) Where Cod_Ars='+#39+FormatFloat('00', strtoint(dm.GrupoArs))+#39+' And Estatus = '+#39+'A'+#39+' and cod_diag='+#39+'Z017'+#39);
                Add(' Union All ');
                Add('Select * From PTDiagnostico (nolock) Where Cod_Ars='+#39+FormatFloat('00', strtoint(dm.GrupoArs))+#39+' And Estatus = '+#39+'A'+#39+' and cod_diag<>'+#39+'Z017'+#39);
                Open;
              end;
          end
          else if (dm.GrupoArs='2') then
          begin
              With DM.qrDiagnostico, sql do
              begin
                Close;
                Clear;
                Add('SELECT * FROM PTDiagnostico (nolock) Where Cod_Ars='+#39+FormatFloat('00', strtoint(dm.GrupoArs))+#39+' And Estatus = '+#39+'A'+#39);
                Open;
              end;
          end
        end
        else
        begin
          With DM.qrDiagnostico, sql do
          begin
            Close;
            Clear;
            Add('SELECT * FROM PTDiagnostico (nolock) Where Cod_Ars='+#39+FormatFloat('00', strtoint('2'))+#39+' And Estatus = '+#39+'A'+#39);
            Open;
          end;
          With DM.qrDocumentoSeguro, sql do
          begin
            Close;
            Clear;
            Add('Select * From PtTipoDocSeguro (nolock) Where TipoDocID Like '+#39+FormatFloat('0', strtoint('4'))+'%'+#39+' And Estatus = '+#39+'A'+#39);
            Open;
          end;
        end;
     end;
     EdCliente.SetFocus;
  end;
end;

procedure TfrmPuntoVenta.btDocumentoClick(Sender: TObject);
Var qconsultaDoc  : TADOQuery;
    strDocumento  : String;
begin
   If EdPaciente.EditValue <> Emptystr then
   Begin
       qconsultaDoc := DM.NewQuery;
       With qconsultaDoc, sql do
       begin
          Close;
          Text := ' Select Identificacion from PtCliente '+#13+
                  ' Where Clienteid = '+#39+EdPaciente.EditValue+#39;
          Open;
       end;

      if (qconsultaDoc.RecordCount > 0) then
      begin
          strDocumento := InputBox('N�mero de Documento :', 'No. Documento:',qconsultaDoc.FieldByName('Identificacion').AsString);
          Clipboard.AsText := qconsultaDoc.FieldByName('Identificacion').AsString;
      end
      else
          ShowMessage('N�mero de Documento NO EXISTE.');
      FreeAndNil(qconsultaDoc);
   end;
end;

procedure TfrmPuntoVenta.bteliminarClick(Sender: TObject);
begin
  inherited;
  If (Trim(qrEntradaPacienteDetallePruebaId.Value) = EmptyStr) Or
     (qrEntradaPacienteDetallePruebaId.IsNull) Then
    If qrEntradaPacienteDetalle.RecordCount > 0 then
    begin
     qrEntradaPacienteDetalle.Delete;
     ActTotales;
    end;

  If (Trim(qrEntradaPacienteDetallePruebaID.Text) <> EmptyStr) and
    (qrEntradaPacienteTotalPagado.Value = 0) then
  begin
     If (qrEntradaPacienteDetalleCOMBO.Value = 1) Then
     begin
         comboborrar := True;
         Borrar_Combo;
     end
     Else
     If qrEntradaPacienteDetalle.RecordCount > 0 then
     begin
         qrEntradaPacienteDetalle.Delete;
         ActTotales;
     end;
  end
  else
    If qrEntradaPacienteDetalle.RecordCount > 0 then
    begin
     qrEntradaPacienteDetalle.Delete;
     ActTotales;
    end;
end;


procedure TfrmPuntoVenta.btentradaClick(Sender: TObject);
var
 continuar : Boolean;
begin
  inherited;
  continuar := True;
  If (qrEntradaPaciente.State in [dsinsert,dsedit]) then
  begin
    If DM.Mensaje('Existe una entrada en proceso. Desea cancelar la entrada?',mb_yesno) = id_yes then
    begin
      If Trim(qrEntradaPacienteEntradaID.Value) = EmptyStr then
      begin
        if Trim(qrEntradaPacienteRECID.AsString)<> EmptyStr then
        begin
          DM.DataBase.Execute('Delete from PTEntradaPacienteDetalle WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);
          DM.DataBase.Execute('Delete from PTGastosVarioTrans WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString);
        end;
        If ExisteCobro then
        begin
          CancelarCobro;
          btgrabar.Enabled := True;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.     btcobrar.Enabled := True;
//     btnotacredito.Enabled := True;
          If ( CanMenuEspecial = True ) Then
              btnotacredito.Enabled := True
          Else
            btnotacredito.Enabled := False;
      end;
    end;
  end
  else
   continuar := False;
  end;

  if continuar then
  Begin
    Operacion := '';
    HabilitaConsultas;
    frmMain.LanzaVentana(-7995);
  End;
end;


procedure TfrmPuntoVenta.btgrabarClick(Sender: TObject);
Var
 Tipo,Muestrano,sqlString,TipoDoc,EntradaId,Id_Visita,Imp_Internet,Cod_Prueba  : String;
 intEdad_Pac,intCob                                 : integer;
 from_hold                                          : Boolean;
 imprimirFactPaciente                               : Boolean;
 imprimirFactExterior                               : Boolean;
 imprimirRecibo, imprimirNC                         : Boolean;
 RecID                                              : Int64;
begin
 inherited;
 Tipo         :=EmptyStr;
 Muestrano    :=EmptyStr;
 sqlString    :=EmptyStr;
 TipoDoc      :=EmptyStr;
 EntradaId    :=EmptyStr;
 Imp_Internet :=EmptyStr;
 

 If (DM.Buscar_Fecha_Actual <> DM.SystemDate) then
 begin
      EtMensajeDlg('Fecha de la Aplicaci�n y Fecha del Servidor No coinciden.  Favor salir de la aplicaci�n y vuelva a entrar.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      Application.Terminate;
      exit;
 end;

 If (DM.CurRolCreaCotizacion = True) And ((Trim(qrEntradaPacienteEntradaID.Value) = EmptyStr) Or (copy(qrEntradaPacienteEntradaID.value, 1 ,3) = 'HOL')) then
 begin
      Raise exception.CreateFmt('Usuario No puede crear factura.  Verifique.', []);
 end;

 If (Copy(Trim(qrEntradaPacienteMuestrano.value),3,3) ='000') then
 begin
      if DM.Mensaje('Entrada Hecha en AS-400.  Desea Realizar el Pago?',mb_yesno) = id_no then
      begin
          exit;
      end;
 end;

 If (Trim(qrEntradaPacienteNombrePaciente.Text) = EmptyStr) then
 begin
        Raise exception.CreateFmt('Nombre del Paciente No puede estar en Blanco.  Verifique.', []);
 end
 else if (Trim(qrEntradaPacienteOrigen.Value) = EmptyStr) then
 begin
        Raise exception.CreateFmt('Debe seleccionar el Tipo de Cliente.  No puede estar en Blanco.  Verifique.', []);
 end
 else if (Trim(qrEntradaPacienteClienteID.Value) = EmptyStr) Or (Not(ValidateCliente)) then
 begin
        Raise exception.CreateFmt('Codigo del Cliente No puede estar en Blanco.  Verifique.', []);
 end
 else if (Trim(qrEntradaPacienteClienteNombre.Value) = EmptyStr) then
 begin
        Raise exception.CreateFmt('Nombre del Cliente No puede estar en Blanco.  Verifique.', []);
 end
 else if (qrEntradaPacienteOrigen.Value=DM.qrParametroGrupoPriv.Value) And
        Not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
          (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
          (qrEntradaPacientePacienteId.Value ='00006242'))
        And (Trim(qrEntradaPacienteClienteNombre.Value) <> Trim(qrEntradaPacienteNombrePaciente.Value)) then
 begin
    Raise exception.CreateFmt('Para entradas en PRIVADO el nombre del cliente = nombre del paciente.  Verifique.', []);
 end;

 If (Trim(qrEntradaPacienteEntradaID.Value) = EmptyStr) And (qrEntradaPacienteFECHA_INDICACION.Value > DM.SystemDate) Then
 begin
      Raise exception.CreateFmt('La Fecha de Indicaci�n es Incorrecta. Por Favor Verifique.!!!', []);
 end;

 If (Trim(qrEntradaPacientePolizaID.Value) = EmptyStr) And (qrEntradaPacienteOrigen.Value = dm.qrParametroGrupoSeg.Value) Then
 begin
      Raise exception.CreateFmt('N�mero Afiliado/Contrato No pueden estar en blanco. Por Favor Verifique.!!!', []);
 end;

 If (Trim(qrEntradaPacienteAprobacionNo.Value) = EmptyStr) And (qrEntradaPacienteOrigen.Value = dm.qrParametroGrupoSeg.Value) Then
 begin
      if DM.Mensaje('N�mero de Aprobaci�n en blanco.  Desea digitar N�mero de Aprobaci�n ?',mb_yesno) = id_yes then
      begin
          exit;
      end;
 end;

 If (Trim(qrEntradaPacienteEntradaID.Value) = EmptyStr) And (qrEntradaPacienteOrigen.Value = dm.qrParametroGrupoSeg.Value)
    And (Trim(qrEntradaPacienteFECHA_INDICACION.Text) = EmptyStr) then
 begin
      if DM.Mensaje('Fecha indicaci�n m�dica en blanco.  Desea digitar fecha indicaci�n ?',mb_yesno) = id_yes then
      begin
          exit;
      end;
 end;

 If (Trim(qrEntradaPacienteEntradaID.Value) = EmptyStr)
 And ((qrEntradaPacienteOrigen.Value = dm.qrParametroGrupoPriv.Value)
  Or (qfindcltParams.FieldByname('No_Indicacion').AsBoolean=True))
 And (qrEntradaPacienteNO_INDICACION.Value = False) then
 begin
      if DM.Mensaje('La No indicaci�n m�dica (Marca X) en blanco.  Desea marcar La No Indicaci�n ?',mb_yesno) = id_yes then
      begin
          qrEntradaPacienteNo_Indicacion.Value := True;
      end;
 end;

 If (qrEntradaPacientePolizaID.IsNull) And (qrEntradaPacienteEntradaID.Value = EmptyStr) then
 begin
    qrEntradaPacientePolizaID.Value:=EmptyStr;
 end;

 if (qrEntradaPacienteEntradaID.Value = EmptyStr) And (qrEntradaPacienteSexo.Value=0) and
    (qrEntradaPacienteEMBARAZADA.Value = False) And
    (qrEntradaPacienteEdadPaciente.Value > 13) And
    (qrEntradaPacienteEdadPaciente.Value < 51 ) Then
 begin
    If (dm.VerificarPruebasEmbarazo(qrEntradaPacienteRecID.Value)=True) then
    begin
      if DM.Mensaje('La Paciente est� embarazada?',mb_yesno) = id_yes then
      begin
          qrEntradaPacienteEMBARAZADA.Value := True;
      end
      Else
          qrEntradaPacienteEMBARAZADA.Value := False;
    end;
 end;

 If Not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
          (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
          (qrEntradaPacientePacienteId.Value ='00006242')) Then
 begin
        If Not Dm.Verifica_NombrePaciente(qrEntradaPacientePacienteId.Value,Trim(qrEntradaPacienteNombrePaciente.AsString)) Then
        Begin
          Raise exception.CreateFmt(' Nombre Paciente en Base de Datos es diferente a Paciente en Factura. Verifique.', []);
        end;
        If Not Dm.Verifica_FechaNacimiento(qrEntradaPacientePacienteId.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFechaNacimiento.AsDatetime)) Then
        Begin
          Raise exception.CreateFmt(' Fecha de Nacimiento en Base de Datos es diferente a Fecha de Nacimiento en Factura. Verifique.', []);
        end;
 end;

 If ((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
     (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
     (qrEntradaPacientePacienteId.Value ='00006242')) and (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value ) Then
 begin
      if MessageDlg('Paciente de Seguro NO se debe registrar con PACIENTE GENERICO. Desea Continuar?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      begin
          DM.Warning('Continuar� la operacion sin registar el paciente.');
      end
      Else
          Raise exception.CreateFmt(' Por favor. Registre el paciente de esta orden.', []);
 end;

 if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value ) And
    (qrEntradaPacienteEntradaID.Value = EmptyStr) And
    (qrEntradaPacienteAprobacionNo.Value <> EmptyStr) And
    ((qrEntradaPacienteClienteID.Value = 'C00075') Or (qrEntradaPacienteClienteID.Value = 'C00392') Or
     (qrEntradaPacienteClienteID.Value = 'C01608') Or (qrEntradaPacienteClienteID.Value = 'C01673') Or
     (qrEntradaPacienteClienteID.Value = 'C03103')) then
  begin
          if ((qrEntradaPacienteClienteID.Value= 'C00075') AND (Copy(qrEntradaPacienteAprobacionNo.Value,1,1)<>'P')) Or
             ((qrEntradaPacienteClienteID.Value= 'C00392') AND (Copy(qrEntradaPacienteAprobacionNo.Value,1,1)<>'P')) Or
             ((qrEntradaPacienteClienteID.Value= 'C01673') AND (Copy(qrEntradaPacienteAprobacionNo.Value,1,1)<>'P')) then
          begin
		        Raise exception.CreateFmt('Debe colocarle P de inicio al n�mero de Autorizaci�n. Verifique.', []);
          end;

          if ((qrEntradaPacienteClienteID.Value= 'C03103') AND (Copy(qrEntradaPacienteAprobacionNo.Value,1,1)<>'H')) Or
             ((qrEntradaPacienteClienteID.Value= 'C03209') AND (Copy(qrEntradaPacienteAprobacionNo.Value,1,1)<>'H')) then
          begin
		        Raise exception.CreateFmt('Debe colocarle H de inicio al n�mero de Autorizaci�n. Verifique.', []);
          end;
  end;
 
 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
    (qrEntradaPacienteTipoDocumento.Value = 3) Or
    (qrEntradaPacienteFactExterior.Value = 1) Then
 begin
     Val_Exterior_Detalle;
     If (qrEntradaPacienteGastosVarios.AsFloat < 1) and (qrEntradaPacienteDetalle.RecordCount > 0) Then
     Begin
          if MessageDlg('Por favor registre Los Gastos Varios de esta Orden.  Desea registrarlo?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then Exit;
     end;
 end;
   if qrEntradaPaciente.State in [dsEdit, dsInsert] then
   Begin
        if (qrEntradaPacienteEMBARAZADA.Value = True) And (qrEntradaPacienteSexo.value = 1) then
        begin
            Raise exception.CreateFmt('Embarazada debe seleccionar sexo Femenino. Verifique.', []);
        end;

        if Not((qrEntradaPacienteFechaNacimiento.Text ='01/01/1900') or
                (qrEntradaPacienteFechaNacimiento.Text = EmptyStr)) then
        begin
                intEdad_Pac := Trunc((StrtoInt(FormatDateTime('yyyymmdd', qrEntradaPacienteFecha.Value))-StrtoInt(FormatDateTime('yyyymmdd', qrEntradaPacienteFechaNacimiento.Value)))/10000);
                if (intEdad_Pac <> qrEntradaPacienteEdadPaciente.Value) and (qrEntradaPaciente.State = dsInsert) then
                begin
                    cxDBDateEdit5Exit(Sender);
                    Raise exception.CreateFmt('Fecha de nacimiento No corresponde con la edad del paciente. Por Favor Verifique.!!!', []);
                end;
                If (qrEntradaPacienteFechaNacimiento.Value > DM.SystemDate) Then
                begin
                  Raise exception.CreateFmt('La Fecha de Nacimiento Esta Incorrecta. Por Favor Verifique.!!!', []);
                end;
        end;
   end;
     // Validacion Envases Inv. de Amebas

   if qrEntradapacientedetalle.RecordCount > 0 then
   begin
       If  (qrEntradaPacienteDomicilio.Value = True) And (dm.Verifica_Existencia_PruebaDomicilio(qrEntradaPacienteMuestrano.Value) = False)
       and (qrEntradaPaciente.State in [dsInsert]) And (qrEntradaPacienteOrigen.Value<>DM.qrParametroGrupoLab.Value) then
       begin
            Raise exception.CreateFmt('Debe seleccionar la Toma a Domicilio.  Verifique.', []);
       end;
       If (dm.Verifica_Prueba_Domicilio(qrEntradaPacienteMuestrano.Value) = True )
          And (qrEntradaPacienteOrigen.Value<>DM.qrParametroGrupoLab.Value) then
       begin
          If (qrEntradaPacienteDomicilio.Value = False ) and (qrEntradaPaciente.State in [dsInsert]) then
          begin
              qrEntradaPacienteDomicilio.Value := True;
          end;
          If dm.CurRol <> 7  then
          Begin
              Id_Visita := InputBox('Inserte n�mero de ID VISITA :', 'ID Visita:','');
              if Id_Visita <> EmptyStr then
              begin
                  If dm.Verifica_Id_Visita(Id_Visita,qrEntradaPacienteMuestrano.Value) = False then
                  begin
                     If (EtMensajeDlg('ID VISITA digitado no v�lido o ya asignado.  Desea registrar la visita ?',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
                     begin
                        If qrEntradaPaciente.State in [dsInsert] Then
                        Begin
                           frmMain.LanzaVentana(1012);
                           Exit;
                        end;
                     end
                     else
                        Exit;
                  end;
              end
              else
                  Raise exception.CreateFmt('Debe insertar n�mero de ID VISITA v�lido.  Verifique.', []);
          end;
       end;
{       Cod_Prueba:=Dm.Verifica_Cliente_Inv_Ameba(qrEntradaPacienteClienteID.Value,qrEntradaPacienteRecid.AsString,'IA');
       If Cod_Prueba <> EmptyStr Then
       begin
            EtMensajeDlg('Entrada No Existe Prueba ('+ Cod_Prueba+').  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
            Exit;
       end;
}
       if Verifica_Comentario_Coberturas = 1 then
       begin
          if dm.qrPruebasCOMENTARIO_REQ.Value > 0 then
            EtMensajeDlg('Prueba ('+qrEntradaPacienteDetalleDescripcion.Value+') le falta el comentario.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          if (dm.qrPruebasCOMENTARIO_REQ.Value > 0) then Exit;
       end;
       if dm.qrPruebasCOD_SEC_PRUEBA.Value > 0 Then
       Begin
           if Verifica_Orden_Pruebas_Paternidad = 1 then
           begin
              EtMensajeDlg('Orden Selecci�n Pruebas de Paternidad NO CORRECTO.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              Exit;
           end;
           If qrEntradaPacienteCod_Caso.Value = EmptyStr then
              qrEntradaPacienteCod_Caso.Value := DM.Get_Secuencia_Pat('SEPAT', 'XX');
       end;
   end;

   if (Trim(qrEntradaPacienteSEXO.Text) = '') and (not(qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value)) then
   begin
        Raise exception.CreateFmt('Digite el SEXO.  Verifique.', []);
   end;

   If (qrEntradaPacienteCoberturaSeguro.Value < 1) And
      (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
   Begin
     if MessageDlg('Factura No ha Confirmado Cobertura.  Desea Confirmar Cobertura?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
     begin
      ConfirmarCobertura1Click(Sender);
     end;
   end;

   If (qrEntradaPaciente.State in [dsInsert]) And (qrEntradaPacienteCod_Diag.Value = EmptyStr) And
      (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
   Begin
     EtMensajeDlg('Favor seleccionar el diagn�stico del paciente. Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
     eddiagn.Setfocus;
     Exit;
   end;

   If (qrEntradaPaciente.State in [dsInsert]) And (qrEntradaPacienteCoberturaSeguro.Value > 0) And
      (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
   Begin
     intCob := StrToInt(CurrToStr(qrEntradaPacienteCoberturaSeguro.Value*100)) Mod StrToInt(CurrToStr(qrEntradaPacienteBruto.Value));
     if intCob > 0 then
     begin
        if MessageDlg('% de Cobertura a verificar.  Desea re-Confirmar Cobertura?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
        begin
          ConfirmarCobertura1Click(Sender);
        end;
     end;
   end;

{   If (qrEntradaPacienteCoberturaSeguro.Value > 0) And
      (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) And
      (Trim(qrEntradaPacienteAprobacionNo.Value)= EmptyStr) then
   Begin
     if MessageDlg('N�mero Aprobaci�n est� en blanco.  Desea Confirmar Cobertura?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
     begin
      ConfirmarCobertura1Click(Sender);
     end;
   end;
 }
 Confirmar_Cliente_Prueba;
// Val_Paciente;
// Val_Descuento;

 VerificarPagoDiferencia;
 //Agregado Para Actualizar el Valor del Combo para la Transferencia a Axapta.
// Actu_Precio_Combo;

 //Validando Los Datos de la 2da. Muestra.
 If (Act_2da = True) then Val_2da_Muestra;

 DM.qrParametro.close;
 DM.qrParametro.open;

// If ValidateRecord(dsEntradaPaciente.DataSet) Then
// begin
   If DM.Mensaje('Desea grabar este registro?', mb_yesno) = id_yes then
   begin
     If (qrEntradaPacienteHold.Value = 1) Then
       from_hold := True                    Else
       from_hold := False;
     ActTotales;
     qrEntradaPacienteNombreDoctor.Required := True;
     qrEntradaPaciente.Edit;
     qrEntradaPacienteHold.Value := 0;
//     qrEntradaPacienteUserId.Value := DM.CurUser;
     Muestrano :=qrEntradaPacienteMuestrano.Value;
     RecID     :=qrEntradaPacienteRecId.Value;
     TipoDoc   :=inttostr(qrEntradaPacienteTIPODOCUMENTO.Value);
     qrEntradaPacienteFLEBOTOMISTAID.Value  := DM.CurUser;
     qrEntradaPacienteFechaRegistro.Value   := DM.SystemDate; //DM.Buscar_Fecha_Actual;
     qrEntradaPacienteHoraRegistro.Value    := DM.Buscar_Hora_Actual;  //TimeToStr(Time);
     imprimirFactPaciente                   := False;
     imprimirFactExterior                   := False;
     imprimirRecibo                         := DM.qrParametroImprimirAlGrabarRecibo.Value;
     imprimirNC                             := DM.qrParametroImprimirAlGrabarNC.Value;
     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
        (qrEntradaPacienteTipoDocumento.Value = 3) Or
        (qrEntradaPacienteFactExterior.Value = 1) Then
     begin
           If ((dm.TotalPruebas_USA) = 1) And (Not (qrEntradaPacienteDetalle.Locate('PruebaID','SER00596',[]))) then
           begin
              if dm.IsAdicionalUSA = True then
              begin
                If MessageDlg('Por favor registre el cargo adicional de esta orden.  Desea registrarlo?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
                begin
                  Raise exception.CreateFmt(' USA CARGO ADICIONAL NO correcto. Favor verifique n�mero de pruebas USA.', []);
                end
              end
              else
              begin
                  Raise exception.CreateFmt(' USA CARGO ADICIONAL NO correcto. Favor verifique n�mero de pruebas USA.', []);
              end;
           end
           else
           If ((dm.TotalPruebas_USA) = 2) And (Not (qrEntradaPacienteDetalle.Locate('PruebaID','SER00597',[]))) then
           begin
              if dm.IsAdicionalUSA = True then
              begin
                If MessageDlg('Por favor registre el cargo adicional de esta orden.  Desea registrarlo?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
                begin
                  Raise exception.CreateFmt(' USA CARGO ADICIONAL NO correcto. Favor verifique n�mero de pruebas USA.', []);
                end
              end
              else
              begin
                  Raise exception.CreateFmt(' USA CARGO ADICIONAL NO correcto. Favor verifique n�mero de pruebas USA.', []);
              end;
           end
           else
           If ((dm.TotalPruebas_USA) >= 3) And (Not (qrEntradaPacienteDetalle.Locate('PruebaID','SER00598',[]))) then
           begin
              if dm.IsAdicionalUSA = True then
              begin
                If MessageDlg('Por favor registre el cargo adicional de esta orden.  Desea registrarlo?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
                begin
                  Raise exception.CreateFmt(' USA CARGO ADICIONAL NO correcto. Favor verifique n�mero de pruebas USA.', []);
                end
              end
              else
              begin
                  Raise exception.CreateFmt(' USA CARGO ADICIONAL NO correcto. Favor verifique n�mero de pruebas USA.', []);
              end;
           end;
     end;
//   Si es Nuevo o est� en Hold entonces entra
     If (Trim(qrEntradaPacienteEntradaID.Value) = EmptyStr) Or (from_hold = True) Or (copy(qrEntradaPacienteEntradaID.value, 1 ,3) = 'HOL') then
     begin
        If (from_hold = True) Or (copy(qrEntradaPacienteEntradaID.value, 1 ,3) = 'HOL') Then
          If MessageDlg('Esta Cotizaci�n se convertir� en Factura.  Desea continuar?', mtConfirmation, [mbYes,mbNo], 0) = mrNo  then Exit;
        qrEntradaPacienteEntradaID.Value        := GetEntradaID;
        qrEntradaPacienteFecha.Value            := DM.SystemDate;
        qrEntradaPacienteHoraEntrada.Value      := DM.Buscar_Hora_Actual;
        qrEntradaPacienteFechaRegistro.Value    := DM.SystemDate;
        qrEntradaPacienteDetalle.AutoCalcFields := False;
        qrEntradaPacienteCod_Area.Value         := DM.CurArea;
        qrEntradaPacienteUSERID.Value           := DM.CurUser;
        Tipo                                    := 'N';
        Imp_Internet                            := 'S';
        If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
           (qrEntradaPacienteTipoDocumento.Value = 3) Or
           (qrEntradaPacienteFactExterior.Value = 1) Then
        begin
           Val_Exterior;
           imprimirFactPaciente := False;
           Tipo := '';
           imprimirFactExterior := True;
        end
        Else
           imprimirFactPaciente := DM.qrParametroImprimirAlGrabar.Value;
     end
     else
       if (from_hold = True) then  imprimirFactPaciente := DM.qrParametroImprimirAlGrabar.Value;

//   Si es Cotizacion
     if (copy(qrEntradaPacienteEntradaID.value, 1 ,3) = 'COT') Then
     Begin
        If (qrEntradaPacienteTipoDocumento.Value = 0) or
           (qrEntradaPacienteTipoDocumento.Value = 3) or
           (QrEntradaPacienteFactExterior.Value = 1) then
        Begin
            qrEntradaPacienteEntradaID.Value := GetEntradaID;
            If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
               (qrEntradaPacienteTipoDocumento.Value = 3) Or
               (qrEntradaPacienteFactExterior.Value = 1) Or
               (CbDocumento.ItemIndex = 3) Then
            Begin
                Val_Exterior;
                imprimirFactPaciente := False;
                imprimirFactExterior := True;
            end
            Else
            begin
             imprimirFactPaciente := DM.qrParametroImprimirAlGrabar.Value;
             Tipo := 'N';
            end;
        end;
     end;
     EntradaId :=qrEntradaPacienteENTRADAID.Value;
//     If ( Operacion <> '' ) Then
     If qrEntradaPaciente.State in [dsEdit, dsInsert] then
     Begin
        If (qrEntradaPacienteTipoDocumento.Value = 0) or
           (qrEntradaPacienteTipoDocumento.Value = 3) then
        begin
            If (not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
                       (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
                       (qrEntradaPacientePacienteId.Value ='00006242'))) Then Act_Cliente;

            //Insertando Los Datos de la Tarjeta de Descuento.
             If (qrEntradaPacienteDescuentoTexto.Value <> 'DESCUENTO SUCURSAL') And
                (qrEntradaPacienteDescuentoPlanId.Value <> 'SUCURSAL') And (qrEntradaPacienteDescuentoTexto.Value <> 'DESCUENTO EMPLEADO') And
                (qrEntradaPacienteDescuentoCard.Value <> '') Then
             Begin
                Insert_Card_Descuento
             end;
        end;
     End;

//   Quita el Hold de la Entrada
     if qrEntradaPaciente.State in [dsEdit, dsInsert] then
     Begin
//        Mirar_Valor_CAB;
        qrEntradaPaciente.Properties['Update Criteria'].Value := 0;
        qrEntradaPaciente.Edit;
        qrEntradaPacienteHold.Value := 0;
        qrEntradaPaciente.Post;
     end;

     If qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
     Begin
        qrEntradaPacienteDetalle.Properties['Update Criteria'].Value := 0;
        qrEntradaPacienteDetalle.Edit;
        qrEntradaPacienteDetalle.Post;
     End;

    If Length(qrEntradaPacienteDetalleRefrecID.AsString)>0 then
    begin
      If FormatFloat(',0.00', qrEntradaPacienteBruto.Value) <> FormatFloat(',0.00',(Dm.TotalDetallePrueba(qrEntradaPacienteDetalleRefrecID.AsString))) then
      Begin
           Raise exception.CreateFmt(' Total Bruto entrada y Sumatoria Monto de pruebas No son iguales.  Verifique.', []);
      end;
    end;

   //Generando las Acciones del Boton COBRAR Original.
     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoCia.Value) And (Tipo='N') then
     begin
          if dm.Verifica_Referimiento(qrEntradaPacienteRecID.AsString) then
          begin
               ShowMessage('Debe entregar requerimiento estudio.  Verifique.');
          end;
     end;

     If (qrEntradaPacienteFormaDePago.Value = 'CRE') And (qrEntradaPacienteOrigen.Value <> DM.qrParametroGrupoSeg.Value) Then
     begin
          if DM.Mensaje('Factura a Cr�dito.  Est� seguro de realizar el pago ?',mb_yesno) = id_yes then
          begin
            If Not ExisteCobro And (Act_2da = False) And (TipoCob=EmptyStr) Then Boton_Cobrar;
          end;
     end
     else
      If Not ExisteCobro And (Act_2da = False) And (TipoCob=EmptyStr) Then Boton_Cobrar;

////////////////////////////////////////////////////////////////////////////////
//   Try
     //Iniciando la Transaccion.
//     DM.DataBase.BeginTrans;
////////////////////////////////////////////////////////////////////////////////
Try
     If TipoCob = 'RI' then
     begin
       if Inserta_Detalle_Int then
       begin
           If Not ActPago Then
           begin
             CancelarCobroAct;
             TipoCob:=EmptyStr;
             Raise exception.CreateFmt( ' NO Se Pudo Generar el Recibo de Ingreso. '+ #13 +
                                        ' Se Ha Generado Un Error en el SP. '+ #13 +
                                        ' Por Favor, Intentelo Nuevamente.!!!', []);
           end;
       end;
     end
     else if TipoCob = 'NC' then
     begin
           if cobroid<>EmptyStr then
           begin
               If Not ActNotaC Then
               begin
                 CancelarCobroAct;
                 TipoCob:=EmptyStr;
                 Raise exception.CreateFmt( ' NO Se Pudo Generar la Nota de Cr�dito. '+ #13 +
                                            ' Se Ha Generado Un Error. '+ #13 +
                                            ' Por Favor, Intentelo Nuevamente.!!!', []);
               end;
           end
           else
           begin
                 CancelarCobroAct;
                 TipoCob:=EmptyStr;
                 Raise exception.CreateFmt( ' NO Se Pudo Generar la Nota de Cr�dito. '+ #13 +
                                                ' Se Ha Generado Un Error en el cobroID. '+ #13 +
                                                ' Por Favor, Intentelo Nuevamente.!!!', []);
           end;
     end
     else if TipoCob = 'ND' then
     begin
           if cobroid<>EmptyStr then
           begin
               If Not ActNotaC Then
               begin
                 CancelarCobroAct;
                 TipoCob:=EmptyStr;
                 Raise exception.CreateFmt( ' NO Se Pudo Generar la Nota de D�bito. '+ #13 +
                                            ' Se Ha Generado Un Error. '+ #13 +
                                            ' Por Favor, Intentelo Nuevamente.!!!', []);
               end;
           end
           else
           begin
                 CancelarCobroAct;
                 TipoCob:=EmptyStr;
                 Raise exception.CreateFmt( ' NO Se Pudo Generar la Nota de D�bito. '+ #13 +
                                                ' Se Ha Generado Un Error en el cobroID. '+ #13 +
                                                ' Por Favor, Intentelo Nuevamente.!!!', []);
           end;
     end
     else if TipoCob = 'DV' then
     begin
           if cobroid<>EmptyStr then
           begin
               If Not ActNotaC Then
               begin
                 CancelarCobroAct;
                 TipoCob:=EmptyStr;
                 Raise exception.CreateFmt( ' NO Se Pudo Generar la Devoluci�n. '+ #13 +
                                            ' Se Ha Generado Un Error. '+ #13 +
                                            ' Por Favor, Intentelo Nuevamente.!!!', []);
               end;
           end
           else
           begin
                 CancelarCobroAct;
                 TipoCob:=EmptyStr;
                 Raise exception.CreateFmt( ' NO Se Pudo Generar la Devoluci�n. '+ #13 +
                                                ' Se Ha Generado Un Error en el cobroID. '+ #13 +
                                                ' Por Favor, Intentelo Nuevamente.!!!', []);
           end;
     end;
   Except
      If Not DM.DataBase.Connected then
             DM.DataBase.Connected := True;
      If DM.DataBase.Connected Then
      begin
           sqlString := 'SELECT * FROM PTEntradaPaciente (nolock) WHERE ';
           sqlString := sqlString + ' DataAreaId = ' + #39 + DM.CurEmpresa + #39;
           sqlString := sqlString + ' AND MuestraNo='+#39+Muestrano+#39;
           sqlString := sqlString + ' AND RecID='+IntToStr(RecID);
           With qrEntradaPaciente, sql do
           begin
               qrEntradaPaciente.Close;
               qrEntradaPaciente.SQL.Text := sqlString;
               qrEntradaPaciente.open;
               if not isEmpty then
               begin
                 sqlString := 'SELECT * FROM PTEntradaPacienteDetalle (nolock) WHERE ';
                 sqlString := sqlString + ' DataAreaId = ' + #39+DM.CurEmpresa+#39;
                 sqlString := sqlString + ' AND MuestraNo ='+#39+Muestrano+#39;
                 sqlString := sqlString + ' AND RefRecID ='+IntToStr(RecID);
                 qrEntradaPacienteDetalle.Close;
                 qrEntradaPacienteDetalle.sql.Clear;
                 qrEntradaPacienteDetalle.SQL.Text := sqlString;
                 qrEntradaPacienteDetalle.open;
               end;
           end;
      end
      else
      begin
        Raise exception.CreateFmt(' NO Se Pudo Generar el Recibo de Ingreso. '+ #13 +
                                ' Se Ha Generado Un Error. '+ #13 +
                                ' Por Favor, Intentelo Nuevamente.!!!', []);
        Application.Terminate;
        exit;
      end;
     //Error de la Transaccion (ERROR = ROLLBACK).
   End;

////////////////////////////////////////////////////////////////////////////////

     //Fin de la Transaccion (SIN ERROR = COMMIT).
//   If DM.DataBase.InTransaction then
//       DM.DataBase.CommitTrans;
//   Except
//      If DM.DataBase.InTransaction then
//        DM.DataBase.RollbackTrans;
//      Raise exception.CreateFmt(' NO Se Pudo Generar el Recibo de Ingreso. '+ #13 +
//                                ' Se Ha Generado Un Error. '+ #13 +
//                                ' Por Favor, Intentelo Nuevamente.!!!', []);
     //Error de la Transaccion (ERROR = ROLLBACK).
//   End;

////////////////////////////////////////////////////////////////////////////////

//    If (qfindSucursal.FieldByName('Impresiones').AsBoolean <> True) Then
    If (qfindSucursal.FieldByName('Impresiones').AsInteger <> 1) Then
    Begin
       imprimirNC := False;
       imprimirRecibo := False;
       imprimirFactExterior := False;
       imprimirFactPaciente := False;
    end;

    If not((qrEntradaPacienteTipoDocumento.Value = 0) or (qrEntradaPacienteTipoDocumento.Value = 3)) then
    Begin
       imprimirNC := False;
       imprimirRecibo := False;
       imprimirFactExterior := False;
       imprimirFactPaciente := False;
       Tipo:='';
    end;
{    If (qrEntradapacienteTotalPendiente.AsFloat > 0) Then
    begin
        if Not((qrEntradapacienteOrigen.AsString = DM.qrParametroGrupoLab.Value) Or
               (qrEntradapacienteOrigen.AsString = '08') Or
               (qrEntradapacienteOrigen.AsString = '09') Or
               (qrEntradapacienteOrigen.AsString = '10') Or
               (qrEntradapacienteOrigen.AsString = '12')) Then
        begin
           frmMain.LanzaVentana(-8026);
           if (Tiene_Balance = 0) Then
           Begin
              Raise exception.CreateFmt('Contrase�a no V�lida.  Por Favor Verifique.', []);
           end;
        end;
    end;
 }
    If imprimirFactExterior Or
       (Copy(EntradaId,1,3)='EXT') Or
       (qrEntradaPacienteTipoDocumento.Value = 3) then
    begin
       sqlString := 'SELECT * FROM PTEntradaPaciente (nolock) WHERE ';
       sqlString := sqlString + ' DataAreaId = ' + #39 + DM.CurEmpresa + #39;
       sqlString := sqlString + ' AND MuestraNo='+#39+Muestrano+#39;
       sqlString := sqlString + ' AND RecID='+qrEntradaPacienteRecID.AsString;
       With qrEntradaPaciente, sql do
       begin
           qrEntradaPaciente.Close;
           qrEntradaPaciente.SQL.Text := sqlString;
           qrEntradaPaciente.open;
           if not isEmpty then
           begin
             sqlString := 'SELECT * FROM PTEntradaPacienteDetalle (nolock) WHERE ';
             sqlString := sqlString + ' DataAreaId = ' + #39+DM.CurEmpresa+#39;
             sqlString := sqlString + ' AND MuestraNo ='+#39+Muestrano+#39;
             sqlString := sqlString + ' AND RefRecID ='+qrEntradaPacienteRecID.Asstring;
             qrEntradaPacienteDetalle.Close;
             qrEntradaPacienteDetalle.sql.Clear;
             qrEntradaPacienteDetalle.SQL.Text := sqlString;
             qrEntradaPacienteDetalle.open;
             if not qrEntradaPacienteDetalle.IsEmpty  then
             begin
               FacturaExterior1Click(nil);
             end;
           end;
       end;
    end;

    if (TipoDoc = '0') and (Tipo='N') And
       (copy(EntradaId,1,3) = 'FAC') then
    begin
       sqlString := 'SELECT * FROM PTEntradaPaciente (nolock) WHERE ';
       sqlString := sqlString + ' DataAreaId = ' + #39+DM.CurEmpresa+#39;
       sqlString := sqlString + ' AND MuestraNo ='+#39+Muestrano+#39;
       sqlString := sqlString + ' AND RecID='+qrEntradaPacienteRecID.AsString;
       With qrEntradaPaciente, sql do
       begin
           qrEntradaPaciente.Close;
           qrEntradaPaciente.sql.Clear;
           qrEntradaPaciente.SQL.Text := sqlString;
           qrEntradaPaciente.open;
           if not isEmpty then
           begin
             sqlString := 'SELECT * FROM PTEntradaPacienteDetalle (nolock) WHERE ';
             sqlString := sqlString + ' DataAreaId = ' + #39+DM.CurEmpresa+#39;
             sqlString := sqlString + ' AND MuestraNo ='+#39+Muestrano+#39;
             sqlString := sqlString + ' AND RefRecID ='+qrEntradaPacienteRecID.AsString;
             qrEntradaPacienteDetalle.Close;
             qrEntradaPacienteDetalle.sql.Clear;
             qrEntradaPacienteDetalle.SQL.Text := sqlString;
             qrEntradaPacienteDetalle.open;
             if not qrEntradaPacienteDetalle.IsEmpty then
             begin
               If (qrEntradaPacienteCoberturaSeguro.Value > 1) or
                  (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
                 VolantedePruebasARS1Click(Sender);

                 VolantedePruebasTomaMuestra1Click(Sender);
             end;
           end;
       end;
    End;
//    If (imprimirRecibo) and (cobroid <> '') and (TipoCobro = 'RI') then

    if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoCia.Value)
       And (qfindCltParams.FieldByName('QuienPaga').AsString = 'EMP') Then
    begin
       If Tipo <> 'N' then
       begin
         sqlString := 'SELECT * FROM PTEntradaPaciente (nolock) WHERE ';
         sqlString := sqlString + ' DataAreaId = ' + #39+DM.CurEmpresa+#39;
         sqlString := sqlString + ' AND MuestraNo ='+#39+Muestrano+#39;
         sqlString := sqlString + ' AND RecID='+qrEntradaPacienteRecID.AsString;
         qrEntradaPaciente.Close;
         qrEntradaPaciente.sql.Clear;
         qrEntradaPaciente.SQL.Text := sqlString;
         qrEntradaPaciente.open;
         if not qrEntradaPaciente.isEmpty then
         begin
            If(qrEntradaPacienteNeto.Value > 0)
              And (qrEntradaPacienteTotalPagado.Value = 0) then
            begin
              if MessageDlg('Paciente debe pagar la entrada, favor verificar con Cobros.  Desea efectuar el pago?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
              begin
                btgrabarClick(Sender);
              end;
            end;
         end;
       end
       else
       begin
            If(qrEntradaPacienteNeto.Value > 0)
              And (qrEntradaPacienteTotalPagado.Value = 0) then
            begin
              if MessageDlg('Paciente debe pagar la entrada, favor verificar con Cobros.  Desea efectuar el pago?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
              begin
                btgrabarClick(Sender);
              end;
            end;
       end;
    end;
    If (cobroid <> '') and (TipoCob = 'RI') then
       ImpresionRecibo;

    If (imprimirNC) and (cobroid <> '') and ((TipoCob = 'NC') or (TipoCob = 'DV') or (TipoCob = 'ND')) then
       ImpresionNC;

    If (Act_2da = True) then
    begin
        //Generando la Nota de Credito de la 2da. Muestra.
        Act_2da         := False;
        valorNC         := qrEntradaPacienteTotalPendiente.Value;
        ConceptoNC      := 'Nota Por Segunda Muestra.';
        CrearNotaCredito;
        ActNotaCredito;
        ImpresionNC;
    end;

    If (qrEntradaPacienteTipoDocumento.Value = 0) or
       (qrEntradaPacienteTipoDocumento.Value = 3) And (Copy(Trim(qrEntradaPacienteMuestrano.value),3,3) <> '000') then
    Begin
         If ( Operacion <> '' ) Then
           If ((qrEntradaPacientePublicarInternet.Value = 1) OR (qrEntradaPacientePublicarInternet.Value = 0))
               and (not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
                       (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
                       (qrEntradaPacientePacienteId.Value ='00006242')or (qrEntradaPacientePacienteId.Value ='01047251'))) Then
             Begin
              If (Dm.GetDigitoVerificador(copy(DM.Cortar_Char('-', qfindPacientes.FieldByName('Identificacion').AsString),1,11),qfindPacientes.FieldByName('Tipo_Documento').AsString)) Then
              begin
                 If Not Buscar_User_Internet(qrEntradaPacientePacienteId.Value) Then
                 Begin
                       If dm.qrParametroServidor_AS400.value <> EmptyStr then
                       begin
                            If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                            begin
                             InterfaseAS400.Buscar_Cedula_Internet(qfindPacientes.FieldByName('Identificacion').AsString,qrEntradaPacienteMuestrano.AsString,qfindPacientes.FieldByName('Tipo_Documento').AsString);
                             If (InterfaseAS400.User_Internet_AS400 <> '') And (InterfaseAS400.Clave_Internet_AS400 <> '') Then
                             Begin
                                If (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoAcc.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoEmp.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoVip.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoPriv.Value) Then
                                    Tipo := 'P'
                                Else
                                    Tipo := 'C';

                                If Not Dm.Verifica_Clave_Internet(Trim(InterfaseAS400.Clave_Internet_AS400)) then
                                begin
                                     If Not((Trim(InterfaseAS400.User_Internet_AS400)=EmptyStr) Or (Trim(InterfaseAS400.Clave_Internet_AS400)=EmptyStr) Or
                                            (Trim(qfindPacientes.FieldByName('Nombre').AsString)=EmptyStr) Or (Trim(qfindPacientes.FieldByName('Identificacion').AsString)=EmptyStr) Or
                                            (Trim(qrEntradaPacientePacienteId.Value)=EmptyStr))then
                                     begin
                                            Insertar_Usuario_New(Trim(InterfaseAS400.User_Internet_AS400),
                                                          FormatFloat('000000', StrToInt(Trim(InterfaseAS400.Clave_Internet_AS400))),
                                                          qfindPacientes.FieldByName('Nombre').AsString,
                                                          qfindPacientes.FieldByName('Identificacion').AsString,
                                                          qrEntradaPacientePacienteId.Value, Tipo, 'N');
                                            if (qrEntradaPacientePublicarInternet.Value = 1) And (Imp_Internet='S') then InstructivodeInternet1Click(nil);
                                     End;
                                end;
                             end
                             Else
                             begin
                                If Trim(qfindPacientes.FieldByName('Identificacion').AsString)<>EmptyStr then
                                begin
                                  Procesar_Usuario_New;
                                  If qrEntradaPacientePublicarInternet.Value = 1 then InstructivodeInternet1Click(nil);
                                end;
                             end;
                          end;
                       end;
                   end;
                   //Imprimiendo el Instructivo de Internet Generado.
                   if (qrEntradaPacientePublicarInternet.Value = 1) And (Tipo='N') then InstructivodeInternet1Click(nil);
                 end
                 Else
                   if qrEntradaPacientePublicarInternet.Value = 1 then
                      EtMensajeDlg('N�mero de c�dula no v�lido.  No podr� generar clave de internet.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
             end;

        If (qrEntradaPacienteFROM_CLINICA.Value <> 1) then
        Begin
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
           begin
                If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                begin
                   Try
                     InterfaseAS400.ASConnection.Close;
                     InterfaseAS400.ASConnection.Open;

                     //Insertando las Pruebas en el AS-400.
                     InterfaseAS400.MandarPruebaAS400(qrEntradaPacienteMuestraNo.Value, ifThen(Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value) <> EmptyStr,Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value),qrEntradaPacientePacienteID.Value));
                     InterfaseAS400.ASConnection.Close;
                   Except
                     Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                               ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                               ' � Intentelo Nuevamente.!!!', []);
                   End;
                end;
           end;
        End;
       end;
//    NuevaVenta;
      TipoCob:=EmptyStr;
      HabilitaConsultas;
    end
   else
    if ExisteCobro then CancelarCobro;
//  end
// else
//  if ExisteCobro then CancelarCobro;
end;

procedure TfrmPuntoVenta.BtHoldClick(Sender: TObject);
begin
 inherited;
     If (Trim(qrEntradaPacienteNombrePaciente.Text) = EmptyStr) then
     begin
            Raise exception.CreateFmt('Nombre del Paciente No puede estar en Blanco.  Verifique.', []);
     end
     else if (Trim(qrEntradaPacienteOrigen.Value) = EmptyStr) then
     begin
            Raise exception.CreateFmt('Debe seleccionar el Tipo de Cliente.  No puede estar en Blanco.  Verifique.', []);
     end
     else if (Trim(qrEntradaPacienteClienteID.Value) = EmptyStr) Or (Not(ValidateCliente)) then
     begin
            Raise exception.CreateFmt('Codigo del Cliente No puede estar en Blanco.  Verifique.', []);
     end
     else if (Trim(qrEntradaPacienteClienteNombre.Value) = EmptyStr) then
     begin
            Raise exception.CreateFmt('Nombre del Cliente No puede estar en Blanco.  Verifique.', []);
     end;

     If Not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
              (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
              (qrEntradaPacientePacienteId.Value ='00006242')) Then
     begin
            If Not Dm.Verifica_NombrePaciente(qrEntradaPacientePacienteId.Value,Trim(qrEntradaPacienteNombrePaciente.AsString)) Then
            Begin
              Raise exception.CreateFmt(' Nombre Paciente en Base de Datos es diferente a Paciente en Factura. Verifique.', []);
            end;
            If Not Dm.Verifica_FechaNacimiento(qrEntradaPacientePacienteId.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFechaNacimiento.AsDatetime)) Then
            Begin
              Raise exception.CreateFmt(' Fecha de Nacimiento en Base de Datos es diferente a Fecha de Nacimiento en Factura. Verifique.', []);
            end;
     end;
    if ValidateRecord(dsEntradaPaciente.DataSet) and
       ValidateCliente and
       (qrEntradaPacienteEntradaID.Value = '') then
     begin
      if DM.Mensaje('Desea Poner en Hold?',mb_yesno) = id_yes then
       begin
          qrEntradaPacienteEntradaID.Value := GetEntradaID_HOLD;
          qrEntradaPacienteHold.Value := 1;
          qrEntradaPacienteFLEBOTOMISTAID.Value := DM.CurUser;
          qrEntradaPacienteFechaRegistro.Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
          qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;  //TimeToStr(Time);
          if qrEntradaPacienteDetalle.State in [dsEdit,dsInsert] then
            qrEntradaPacienteDetalle.Post;
          if qrEntradaPaciente.State in [dsEdit,dsInsert] then
            qrEntradaPaciente.Post;
          DM.Info('El Registro Esta en Hold.!!!');
          if DM.Mensaje('Desea Imprimir Cotizaci�n?',mb_yesno) = id_yes then
          begin
              CotizaFacturaClick(Sender);
          end;
            HabilitaConsultas;
       end;
     end
    else
     if ExisteCobro then CancelarCobro;
end;


procedure TfrmPuntoVenta.btimpcotClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntradaID.Value <> '' then
  begin
       ppImpCotiza.ShowPrintDialog           := False;
       ppImpCotiza.ShowAutoSearchDialog      := True;
       ppImpCotiza.DeviceType                := dtScreen;
       ppImpCotiza.PrinterSetup.PaperHeight  := 8.5;
       ppImpCotiza.PrinterSetup.PaperName    := 'Custom';
       ppImpCotiza.PrinterSetup.PaperWidth   := 4;
       ppImpCotiza.PrinterSetup.PrinterName  := Ruta_Factura;
       ppImpCotiza.Print;
  end;
end;

procedure TfrmPuntoVenta.btnCancelaClick(Sender: TObject);
begin
  inherited;
  spBeneficiario.Visible := False;
end;

procedure TfrmPuntoVenta.btnInternetClick(Sender: TObject);
Var Tipo : String;
begin
  inherited;
    if qrEntradaPacienteEntradaID.Value <> EmptyStr then
    begin
      If (qrEntradaPacienteTipoDocumento.Value = 0) or
         (qrEntradaPacienteTipoDocumento.Value = 3) And (Copy(Trim(qrEntradaPacienteMuestrano.value),3,3) <> '000') then
      Begin
             If ((qrEntradaPacientePublicarInternet.Value = 1) OR (qrEntradaPacientePublicarInternet.Value = 0))
                 and (not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
                         (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
                         (qrEntradaPacientePacienteId.Value ='00006242'))) Then
               Begin
                 If Not Buscar_User_Internet(qrEntradaPacientePacienteId.Value) Then
                 Begin
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                     begin
                          if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                          begin
                             InterfaseAS400.Buscar_Cedula_Internet(qfindPacientes.FieldByName('Identificacion').AsString,qrEntradaPacienteMuestrano.AsString,qfindPacientes.FieldByName('Tipo_Documento').AsString);
                             If (Trim(InterfaseAS400.User_Internet_AS400) <> '') And (Trim(InterfaseAS400.Clave_Internet_AS400) <> '') Then
                             Begin
                                If (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoAcc.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoEmp.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoVip.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoPriv.Value) Then
                                  Tipo := 'P'
                                Else
                                  Tipo := 'C';
                                  If Not Dm.Verifica_Clave_Internet(Trim(InterfaseAS400.Clave_Internet_AS400)) then
                                  begin
                                     if Not((Trim(InterfaseAS400.User_Internet_AS400)=EmptyStr)      Or (Trim(InterfaseAS400.Clave_Internet_AS400)=EmptyStr) Or
                                            (Trim(qfindPacientes.FieldByName('Nombre').AsString)=EmptyStr) Or (Trim(qfindPacientes.FieldByName('Identificacion').AsString)=EmptyStr) Or
                                            (Trim(qrEntradaPacientePacienteId.Value)=EmptyStr))then
                                     begin
                                         Insertar_Usuario_New(Trim(InterfaseAS400.User_Internet_AS400),
                                                              FormatFloat('000000', StrToInt(Trim(InterfaseAS400.Clave_Internet_AS400))),
                                                              qfindPacientes.FieldByName('Nombre').AsString,
                                                              qfindPacientes.FieldByName('Identificacion').AsString,
                                                              qrEntradaPacientePacienteId.Value, Tipo, 'N');
                                     end;
                                  end;
                             end
                             Else
                               Procesar_Usuario_New;
                          end;
                     end;

                   end;

                 //Imprimiendo el Instructivo de Internet Generado.
                 if qrEntradaPacientePublicarInternet.Value = 1 then InstructivodeInternet1Click(nil);
               end;

         If (qrEntradaPacienteFROM_CLINICA.Value <> 1) then
         Begin
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
           begin
                if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                begin
                   Try
                     InterfaseAS400.ASConnection.Close;
                     InterfaseAS400.ASConnection.Open;

                     //Insertando las Pruebas en el AS-400.
                     InterfaseAS400.MandarPruebaAS400(qrEntradaPacienteMuestraNo.Value, ifThen(Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value) <> EmptyStr,Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value),qrEntradaPacientePacienteID.Value));
                     InterfaseAS400.ASConnection.Close;
                   Except
                     Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                               ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                               ' � Intentelo Nuevamente.!!!', []);
                   End;
                end;
           end;
         end;
      end;
    end;
end;

procedure TfrmPuntoVenta.btnOkClick(Sender: TObject);
Var pContrato   : integer;
    StrContrato : String;
    dFamilia : Double;
    i        : integer;
    resultValBen:Recdatben4ObjUser;
begin
  inherited;
  dm.dBenVal := StrtoFloat(mdBeneficiarioCNumAfiliado.AsString);
  pContrato  := Pos('-',qrEntradaPacientePolizaID.Value);
  if pContrato > 0 then
  begin
      StrContrato := Copy(qrEntradaPacientePolizaID.Value,1,pContrato-1);
      dFamilia    := strtofloat(Copy(qrEntradaPacientePolizaID.Value,pContrato+1,5));
  end
  else
  begin
      dFamilia := 0;
  end;
  resultValBen := Recdatben4ObjUser.Create;
  Try
    vBeneficiario := Beneficiario.create;
    vBeneficiario := WSUniv.ValidarBeneficiario2(dm.dWebID,dm.dBenVal,Trim(qrEntradaPacienteCod_Diag.value),dm.Cod_Doctor,StrContrato,dFamilia,CodProvUniv,Dm.CurUserUniv);
  if Trim(vBeneficiario.Error) <> EmptyStr then
  begin
      EtMensajeDlg(vBeneficiario.Error, etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
      Exit;
  end;
  Dm.TipoPlan := Trim(vBeneficiario.outMplnom);
  if ((Dm.TipoPlan='PBS') and (Trim(qrEntradapacienteClienteID.Value)<>'C00389')) Or
     ((Dm.TipoPlan<>'PBS') and (Trim(qrEntradapacienteClienteID.Value)='C00389')) then
  Begin
      Screen.Cursor     := crDefault;
      spMensaje.Visible := False;
      EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      exit;
  end;
  if mdBeneficiarioCFechaNac.AsString <> FormatDateTime('yyyy-mm-dd', qrEntradaPacienteFechaNacimiento.AsDateTime) then
  begin
      EtMensajeDlg('Fecha Nacimiento del Paciente en la entrada es ('+Copy(qrEntradaPacienteFechaNacimiento.AsString,7,4)+'-'+Copy(qrEntradaPacienteFechaNacimiento.AsString,4,2)+'-'+Copy(qrEntradaPacienteFechaNacimiento.AsString,1,2)+') difere de Fecha Nacimiento Paciente ARS ('+mdBeneficiarioCFechaNac.AsString+').', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
      Exit;
  end;
  if Trim(mdBeneficiarioCEdad.AsString) <> Trim(qrEntradaPacienteEdadPaciente.Asstring) then
  begin
      EtMensajeDlg('Edad del Paciente en la entrada es '+Trim(qrEntradaPacienteEdadPaciente.Asstring)+' difere a la Edad del Paciente en ARS ('+Trim(mdBeneficiarioCEdad.AsString)+').', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
      Exit;
  end;
  qrEntradaPacientePolizaID.Value := Trim(vBeneficiario.outDomnumcon);
  Dm.Afiliado := mdBeneficiarioCNombres.AsString+' '+mdBeneficiarioCApellidos.AsString;
  spBeneficiario.Visible := False;
  Screen.Cursor          := crHourGlass;
  Application.ProcessMessages;
  frmMain.LanzaVentana(-8034);
  except
    on E : Exception do
    ShowMessage(E.ClassName+' error con mensaje ='+E.Message+' Proc. ValidarBeneficiario');
  end;
end;

procedure TfrmPuntoVenta.btnotacreditoClick(Sender: TObject);
begin
  inherited;
//  if ((qrEntradaPacienteTotalPendiente.Value < 0) and (qrEntradaPaciente.State <> dsinsert)) or
//     ((qrEntradaPacienteNeto.Value > 0) and (qrEntradaPaciente.State <> dsinsert)) then
  if qrEntradaPacienteTotalPendiente.Value <> 0 then
  begin
   frmMain.LanzaVentana(-7992);
  end
  else
   beep;
end;

procedure TfrmPuntoVenta.btpacienteClick(Sender: TObject);
begin
  inherited;
  if Copy(qrEntradaPacienteClienteNombre.Asstring,1,15)='PERFIL GENETICO' then
  begin
    frmMain.LanzaVentana(-7979);
  end
  Else
  begin
    frmMain.LanzaVentana(-7999);
  end;
//  Val_Balance;
// Val_Paciente;
end;

procedure TfrmPuntoVenta.btpruebaClick(Sender: TObject);
Var qAutoriza    : TAdoQuery;
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;
  If ((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
      (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
      (qrEntradaPacientePacienteId.Value ='00006242')) Then
  begin
      cxDBCheckBox2.Properties.NullStyle := nssUnchecked;
  end
  else if (qrEntradaPaciente.State in [dsInsert]) and
          (cxDBCheckBox2.Properties.NullStyle = nssInactive) then
  begin
      Raise exception.CreateFmt('Favor marcar o desmarcar Publicar en Internet para el Paciente.  Verifique.!!!', []);
  end;

  If (qrEntradaPacientePacienteID.Value = '') Or
     (qrEntradaPacientePacienteID.IsNull) Or
     (qrEntradaPacienteClienteID.Value = '') Or
     (qrEntradaPacienteClienteID.IsNull) Then
    Begin
      Raise exception.CreateFmt(' NO Puede Registrar Pruebas Sin la Siguiente Informacion: '+ #13 +
                                ' La Informacion del Cliente y el Paciente Es Obligatoria. '+ #13 +
                                ' Por Favor Verifique.!!!', []);
    end
  Else
    If (qrEntradaPacienteTipoDocumento.Value = 3) And (qrEntradaPacienteOrigen.Value = GrupoOtrasCxc) then
    Begin
        EtMensajeDlg('Tipo de Documento <Exterior> NO es posible facturarlo para este Tipo de Cliente.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
        Exit;
    End;
    If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
      Begin

       If (qrEntradaPacienteDoctorID.Value = EmptyStr) Or
          (qrEntradaPacienteDoctorID.IsNull) Or
          (qrEntradaPacientePolizaID.Value = EmptyStr) Or
          (qrEntradaPacientePolizaID.IsNull) Then
       Begin
           Raise exception.CreateFmt(' NO Puede Registrar Pruebas Para las Aseguradoras: '+ #13 +
                                     ' La Informacion del Doctor y el Num. de Afiliado Es Obligatoria. '+ #13 +
                                     ' Por Favor Verifique.!!!', []);
       End
{       qAutoriza := DM.NewQuery;
       qAutoriza.Close;
       qAutoriza.SQL.Text := ' SELECT distinct CodProveedor,dbo.rellena(Right(a.CodProveedor,5),5) as CodProvUniv,a.WsArsid,p.Url,p.Password,p.Usuario,a.SucEx,a.proveedor,a.Monto_Limite '+
                              ' from ptars a (nolock) inner join ptcliente c (nolock) on c.CarnetNumero = a.CodProveedor inner join ptProveedor p (nolock) on a.proveedor=p.proveedorid '+
                              ' where clienteid='+#39+qrEntradaPacienteClienteID.Asstring+#39;
       qAutoriza.Open;
       If (qAutoriza.RecordCount > 0) then
       begin
             VerificaPacienteWS;
       end;
       If (qrEntradaPacienteDoctorID.Value = EmptyStr) Or
          (qrEntradaPacienteDoctorID.IsNull) Or
          (qrEntradaPacientePolizaID.Value = EmptyStr) Or
          (qrEntradaPacientePolizaID.IsNull) Then
       Begin
           Raise exception.CreateFmt(' NO Puede Registrar Pruebas Para las Aseguradoras: '+ #13 +
                                     ' La Informacion del Doctor y el Num. de Afiliado Es Obligatoria. '+ #13 +
                                     ' Por Favor Verifique.!!!', []);
       End
}
       Else
       Begin
           RefrescarInterface;
           If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
              (qrEntradaPacienteTipoDocumento.Value = 3) Or
              (qrEntradaPacienteFactExterior.Value = 1) Or
              (CbDocumento.ItemIndex = 3) Then
           Begin
               frmMain.LanzaVentana(-7985);
           End
           Else
           begin
//           If (qrEntradaPacienteOrigen.Value = GrupoOtrasCxc) And DM.Verifica_Cliente_Filiacion(qrEntradaPacienteClienteID.Value) then
//            begin
//                frmMain.LanzaVentana(-8035);
//            end
//            else
//            begin
                frmMain.LanzaVentana(-7998);
//            end;
           end;
           ActTotales;
           BtGrabar.SetFocus;
         End;
      End
    Else
      Begin
        RefrescarInterface;
        If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
           (qrEntradaPacienteTipoDocumento.Value = 3) Or
           (qrEntradaPacienteFactExterior.Value = 1) Or
           (CbDocumento.ItemIndex = 3) Then
          Begin
            frmMain.LanzaVentana(-7985);
          End
        Else
        begin
//          If (qrEntradaPacienteOrigen.Value = GrupoOtrasCxc) And DM.Verifica_Cliente_Filiacion(qrEntradaPacienteClienteID.Value) then
//            frmMain.LanzaVentana(-8035)
//          Else
            frmMain.LanzaVentana(-7998);
        end;
        ActTotales;
        BtGrabar.SetFocus;
      End;
end;


procedure TfrmPuntoVenta.FormActivate(Sender: TObject);
begin
  inherited;
  Factura_St := 'I';
end;

procedure TfrmPuntoVenta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmMain.Exis_Vta := False;
  lcGeneral.LookAndFeel.GroupOptions.Color := $00F8E3D1;
    If qrEntradaPacienteEntradaID.Value = EmptyStr then
      begin
        If (qrEntradaPacienteRECID.AsString <> EmptyStr) then
        begin
            DM.DataBase.Execute('Delete from PTGastosVarioTrans WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString);
            DM.DataBase.Execute('Delete from PTMaterialesFactura WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString); //TOMA DE MUESTRA
        end;
    end;
end;


procedure TfrmPuntoVenta.FormCreate(Sender: TObject);
begin
  inherited;
 // inicializamos el Contador de tiempo y registramos en Windows las funciones Hook
//  HookHandleTec := SetWindowsHookEx (WH_KEYBOARD, @CapturaMensajesTeclado,Hinstance, GetCurrentThreadId);
//  HookHandleRat := SetWindowsHookEx (WH_MOUSE, @CapturaMensajesRaton, Hinstance, GetCurrentThreadId);
  frmMain.Exis_Vta := True;
  dxLayoutControl1.LookAndFeel := dmAppActions.lnfWeb;
  lcGeneral.LookAndFeel := dmAppActions.lnfWeb;
  lgBotones.LookAndFeel := dmAppActions.lnfWeb;//dmAppActions.lnfButtonGroup;
  DM.qrProyecto.Close;
  DM.qrProyecto.Open;

  DM.qrDoctor.Close;
  DM.qrDoctor.Open;

  DM.qrDiagnostico.Close;
  With DM.qrDiagnostico, sql do
  begin
    Close;
    Clear;
    Add('SELECT * FROM PTDiagnostico (nolock) Where Estatus = '+#39+'A'+#39);
    Open;
  end;
  DM.qrDocumentoSeguro.Close;
  With DM.qrDocumentoSeguro, sql do
  begin
    Close;
    Clear;
    Add('SELECT * FROM PtTipoDocSeguro (nolock) Where Estatus = '+#39+'A'+#39);
    Open;
  end;

  DM.qrFlebotomistas.Close;
  DM.qrFlebotomistas.Open;

  DM.qrparametro.close;
  DM.qrParametro.Open;

  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  With DM.qrGrupoCliente, sql do
  begin
    Close;
    Clear;
    Add('SELECT * FROM PTGrupoCliente (nolock) WHERE DataAreaId = '+#39+'ldr'+#39);
    if dm.qrSucursal.FieldByName('stPlanSocial').AsString = 'N' then    Add(' And GrupoCliente <> '+#39+'02'+#39);
    if dm.CurRolClienteSeguro = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'01'+#39+')')
    end;
    if dm.CurRolClientePlanSocial = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'02'+#39+')')
    end;
    if dm.CurRolClientePrivado = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'03'+#39+')')
    end;
    if dm.CurRolClienteVIP = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'04'+#39+')')
    end;
    if dm.CurRolClienteFuncionario = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'05'+#39+')')
    end;
    if dm.CurRolClienteCAP = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'06'+#39+')')
    end;
    if dm.CurRolClienteLaboratorio = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'07'+#39+')')
    end;
    if dm.CurRolClienteLaboratorio = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'07'+#39+')')
    end;
    if dm.CurRolClienteClinica = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'08'+#39+')')
    end;
    if dm.CurRolClientePlanCia = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'09'+#39+')')
    end;
    if dm.CurRolClienteProyectos = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'10'+#39+')')
    end;
    if dm.CurRolClienteAccionistas = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'11'+#39+')')
    end;
    if dm.CurRolClienteOtrasCXC = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'12'+#39+')')
    end;
    if dm.CurRolClienteExterior = False then
    begin
     Add(' And GrupoCliente Not IN ('#39+'13'+#39+')')
    end;
    Open;

  end;

  //Buscando los Datos de la Sucursal Actual.
  qfindSucursal := DM.Find_Ldr('SELECT Cliente_Uno, Cliente_Dos, Sucursal, Impresiones, GrupoID FROM PTSucursal (nolock) WHERE SucursalId = :suc', DM.CurSucursal);

  SetMandatoryItems;

//  if (frmMain.Tran_fer <> True) then
//   NuevaVenta;
  HabilitaConsultas;
end;

procedure TfrmPuntoVenta.FormDestroy(Sender: TObject);
begin
  // Liberamos los Hooks
  UnHookWindowsHookEx (HookHandleTec);
  UnHookWindowsHookEx (HookHandleRat);
  lcGeneral.LookAndFeel.GroupOptions.Color := $00F8E3D1;
    If qrEntradaPacienteEntradaID.Value = EmptyStr then
    begin
      if (qrEntradaPacienteRECID.asstring <> EmptyStr) then
      begin
          DM.DataBase.Execute('DELETE FROM PTGastosVarioTrans WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString);
          DM.DataBase.Execute('DELETE FROM PTMaterialesFactura WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString); //TOMA DE MUESTRA
      end;
    end;
  inherited;
  frmMain.Exis_Vta := False;
end;


procedure TfrmPuntoVenta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F1) and (ssCtrl in Shift) then NuevaVenta;
  if (key = vk_f2) and (btcliente.Enabled) then btcliente.Click;
  if (key = vk_f3) and (btpaciente.Enabled) then btpaciente.Click;
  if (key = vk_f4) and (btprueba.Enabled) then btprueba.Click;
  if (key = vk_f5) and (btEntrada.Enabled) then btEntrada.Click;
  if (key = vk_f6) and (bteliminar.Enabled) then bteliminar.Click;
  if (key = vk_f7) and (btcancelar.Enabled) then btcancelar.Click;
  if (key = vk_f8) and (btgrabar.Enabled) then btgrabar.Click;
  if (key = vk_f9) and (btimprimir.Enabled) then btimprimir.Click;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.  if (key = vk_f9) and (btcobrar.Enabled) then btcobrarClick(nil);
//  if (key = vk_f10) and (btnotacredito.Enabled) then btnotacredito.Click;

  If ( CanMenuEspecial = True ) Then
    btnotacredito.Enabled := True
  Else
    btnotacredito.Enabled := False;

  if (key = vk_f10) and (btnotacredito.Enabled) then btnotacredito.Click;
  if (key = vk_f11) and (BtFunciones.Enabled) then BtFunciones.Click;
  if (key = vk_f12) and (BtHold.Enabled) then BtHold.Click;
//  if ((key = VK_CONTROL) And (key=#80)) or
//     ((key = VK_CONTROL) And (key=#112)) then RegistrarNuevoPaciente1Click(Sender);
end;


procedure TfrmPuntoVenta.FormShow(Sender: TObject);
begin
  inherited;
  if (dm.CurRol = 10) Or (dm.CurRol = 11) Or (dm.CurRol = 7) then
  begin
     lcGeneralItem49.Visible:= True;
  end
  else
  begin
     lcGeneralItem49.Visible:= False;
  end;

  With DM.qrDocumento, sql do
  begin
    Close;
    Clear;
    Text :='Select * From PtDocumento Where Estatus='+#39+'A'+#39;
    Open;
  end;
end;

procedure TfrmPuntoVenta.SetColorTo(iColor: TColor);
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
    //
  end;
end;


procedure TfrmPuntoVenta.SetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], True );
  end;
end;


procedure TfrmPuntoVenta.SetComponentReadOnly(thisComponent: TComponent; bFlag : Boolean);
var
  i : Integer;
  oColor : TColor;
begin
  oColor := DM.ColorConsulta;
    if ( thisComponent is TcxDbMaskEdit ) then begin
      ( thisComponent as TcxDbMaskEdit ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbTextEdit ) then begin
      ( thisComponent as TcxDbTextEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbTextEdit ).Enabled) then
          ( thisComponent as TcxDbTextEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbTextEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbLookupComboBox ) then begin
       ( thisComponent as TcxDbLookupComboBox ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbLookupComboBox ).Enabled) then
          ( thisComponent as TcxDbLookupComboBox ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbLookupComboBox ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDBExtLookupComboBox ) then begin
      ( thisComponent as TcxDBExtLookupComboBox ).Enabled := (not bFlag);
       if (( thisComponent as TcxDBExtLookupComboBox ).Enabled) then
          ( thisComponent as TcxDBExtLookupComboBox ).Style.Font.Style := []
       else
          ( thisComponent as TcxDBExtLookupComboBox ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbCheckBox ) then begin
      ( thisComponent as TcxDbCheckBox ).Enabled := (not bFlag);
    end;
    if ( thisComponent is TcxDbImageComboBox ) then begin
      ( thisComponent as TcxDbImageComboBox ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbImageComboBox ).Enabled) then
          ( thisComponent as TcxDbImageComboBox ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbImageComboBox ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbCalcEdit ) then begin
      ( thisComponent as TcxDbCalcEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbCalcEdit ).Enabled) then
          ( thisComponent as TcxDbCalcEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbCalcEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbSpinEdit ) then begin
      ( thisComponent as TcxDbSpinEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbSpinEdit ).Enabled) then
          ( thisComponent as TcxDbSpinEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbSpinEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbCurrencyEdit ) then begin
      ( thisComponent as TcxDbCurrencyEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbCurrencyEdit ).Enabled) then
          ( thisComponent as TcxDbCurrencyEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbCurrencyEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbTimeEdit ) then begin
      ( thisComponent as TcxDbTimeEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbTimeEdit ).Enabled) then
          ( thisComponent as TcxDbTimeEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbTimeEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbMemo ) then begin
      ( thisComponent as TcxDbMemo ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbMemo ).Enabled) then
          ( thisComponent as TcxDbMemo ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbMemo ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbHyperLinkEdit ) then begin
      ( thisComponent as TcxDbHyperLinkEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbHyperLinkEdit ).Enabled) then
          ( thisComponent as TcxDbHyperLinkEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbHyperLinkEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbDateEdit ) then begin
      ( thisComponent as TcxDbDateEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbDateEdit ).Enabled) then
          ( thisComponent as TcxDbDateEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbDateEdit ).Style.Font.Style := [fsBold]
    end;
end;


procedure TfrmPuntoVenta.UnSetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], False );
  end;
end;


procedure TfrmPuntoVenta.NotadeCredito1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntradaID.AsString <> EmptyStr then
  begin
    frmMain.LanzaConsulta(-7991, qrEntradaPacienteRECID.AsString,'NC');
  end;
end;
procedure TfrmPuntoVenta.notadedebito1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntradaID.AsString <> EmptyStr then
  begin
    frmMain.LanzaConsulta(-7991, qrEntradaPacienteRECID.AsString,'ND');
  end;
end;

procedure TfrmPuntoVenta.NuevaVenta;
Var qact : TADOQuery;
begin
  qact := DM.NewQuery;
  With  qact, sql do
  begin
    Close;
    Clear;
    Text := ' Select Top 1 Muestrano from PTEntradaPaciente (nolock) '+
            ' Where  DataAreaId = '+#39+DM.CurEmpresa+#39+' And UserId = '+#39+Dm.CurUser+#39+
            ' And Fecha= ' + #39+FormatDateTime('yyyymmdd', DM.SystemDate)+#39+
            ' Order by Fecha,HoraEntrada desc';
    Open;
    if not isEmpty  then
    begin
        lbUltimaMuestra.caption := 'ULT. ENT. = '+fieldbyname('Muestrano').AsString;
    end
    else
        lbUltimaMuestra.caption := EmptyStr;
  end;

  With qrEntradaPaciente, sql do
  begin
    Close;
    Clear;
    Text :='SELECT * FROM PTEntradaPaciente (nolock) WHERE RecId = :rec AND DataAreaId = '+#39+DM.CurEmpresa+#39
  end;
  With qrEntradaPacienteDetalle, sql do
  begin
    Close;
    Clear;
    Text :='SELECT * FROM PTEntradaPacienteDetalle (nolock) WHERE refrecid = :rec AND DataAreaId = '+#39+DM.CurEmpresa+#39+' ORDER BY secuencia '
  end;
  Operacion := 'E';
  cobroid := '';

  Desabilitarbotones(false);

//  _recorId := DM.Get_Secuencia('Secuencia');
  _recorId := GetSecuenciaId;

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  FreeAndNil(qfindprueba);
  FreeAndNil(qpruebadesc);
  FreeAndNil(qfindprulab);


  noseguro    := TcxStyle.Create(Self);
  Reportado   := TcxStyle.Create(Self);
  NReportado  := TcxStyle.Create(Self);
  Combo       := TcxStyle.Create(Self);
  Reportado.Color   := DM.ColorModifica;
  NReportado.Color  := DM.ColorBorra;
  noseguro.Color    := DM.ColorUrgente;
  Combo.Color       := clWhite;
  noseguro.TextColor := ClBlack;

  if (qrEntradaPaciente.State in [dsinsert,dsedit]) then qrEntradaPaciente.Cancel;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _recorId;
  qrEntradaPaciente.Open;

  if (qrEntradaPaciente.State in [dsinsert,dsedit]) then qrEntradaPaciente.Cancel;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _recorId;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPaciente.Insert;
  qrEntradaPacienteDATAAREAID.Value := DM.CurEmpresa;
  qrEntradaPacienteRECID.Value      := _recorId;
  qrEntradaPacienteRECORDID.Value   := _recorId;

  qrEntradaPacienteSINPRFILTER.Value            := 0;
  qrEntradaPacienteCoberturaConfirmada.Value    := 0;
  qrEntradaPacienteCoberturaRechazada.Value     := 0;
  qrEntradaPacienteCoberturaPreConfirmada.Value := 0;
  qrEntradaPacienteSucursalId.Value             := DM.CurSucursal;
  qrEntradaPacienteSucursal.Value               := qfindSucursal.FieldByName('SUCURSAL').AsInteger;

  If (qfindSucursal.FieldByName('GrupoId').AsString <> '') Then
    qrEntradaPacienteOrigen.Value := qfindSucursal.FieldByName('GrupoId').AsString
  Else
    qrEntradaPacienteOrigen.Value := '';

  If (qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
    qrEntradaPacienteClienteID.Value := qfindSucursal.FieldByName('Cliente_Uno').AsString
  Else
    qrEntradaPacienteClienteID.Value  := '';
  qrEntradaPacienteDomicilio.Value    := False;
  qrEntradaPacienteEmbarazada.Value   := False;
  qrEntradaPacienteBruto.Value        := 0;
  qrEntradaPacienteDescuento.Value    := 0;
  qrEntradaPacienteDescuentoBono.Value:= 0;
  qrEntradaPacienteDescuentoPorc.Value:= 0;
  qrEntradaPacienteDescuentoValor.Value:= 0;
  qrEntradaPacienteSubTotal.Value      := 0;
  qrEntradaPacienteCoberturaSeguro.Value := 0;
  qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
  qrEntradaPacienteNeto.Value := 0;
  qrEntradaPacienteTotalPagado.Value := 0;
  qrEntradaPacienteTotalPendiente.Value := 0;
  qrEntradaPacientePrioridad.Value := 0;
  qrEntradaPacienteRESULTADOPACIENTE.Value := 1;
  qrEntradaPacienteRESULTADODOCTOR.Value := 0;
  qrEntradaPacienteRESULTADOCLIENTE.Value := 0;
  qrEntradaPacienteTipoDocumento.Value := 0;
  qrEntradaPacienteUserId.Value := DM.CurUser;
  qrEntradaPacienteFLEBOTOMISTAID.Value := '';
  qrEntradaPacienteFecha.Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
  qrEntradaPacienteHoraEntrada.Value := DM.Buscar_Hora_Actual; //TimeToStr(Time);
  qrEntradaPacienteCoberturaPorc.Value := 0;
  qrEntradaPacienteCoberturaValor.Value := 0;
  qrEntradaPacienteMuestraNo.Value := GetMuestraNo;
  qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaID.Value;
  qrEntradaPacienteCoberturaExpPorc.Value := 0;
  cxDBCheckBox2.Properties.NullStyle := nssInactive;
  qrEntradaPacientePUBLICARINTERNET.Value := 0;
  qrEntradaPacientePUBLICARINTERNETDOCTOR.Value := 0;
  qrEntradaPacientePUBLICARINTERNETCLIENTE.Value := 0;
  qrEntradaPacienteHold.Value := 0;
  qrEntradaPacienteNoAS400.Value := 0;
  qrEntradaPacienteNoAxapta.Value := 0;
  qrEntradaPacienteNoFactura.Value := 0;
  qrEntradaPacienteRepMuestra.Value := 0;
  qrEntradaPacienteFactExterior.Value := 0;
  qrEntradaPacienteAcuerdoPropio.Value := 0;
  qrEntradaPacienteCUADRADO.Value := 0;
  qrEntradaPacienteTRANSFERIDO.Value := 0;

  qrEntradaPacienteENCLINICA.Value := 0;
  qrEntradaPacienteFROM_CLINICA.Value := 0;
  qrEntradaPacienteEntradaIdAnt.Value := '0';
  qrEntradaPacienteClientePadre.Value := '';
  qrEntradaPacienteTipoEntrada.Value  := 'N';
//  qrEntradaPacienteFormadePago.Value := 'CE';
  qrEntradaPacienteFormadePago.Value  := 'EFE';
  qrEntradaPacienteNota.Value         := EmptyStr;
  cxDbPaciente.Properties.ReadOnly    := False;
  cxDbPaciente.Style.Color            := ClWindow;
  cxDBMemo2.Style.Color               := ClWindow;
  edTipoCliente.Properties.ReadOnly   := False;
  edTipoCliente.Enabled               := True;
  edTipoCliente.Style.Color           := ClWindow;

  Val_Forma_Pago(qrEntradaPacienteFormadePago.Value);
  qrEntradaPacienteTasa.Value := DM.Tasa(DM.SystemDate, DM.qrParametroMonedaDolares.Value)/100;

 // edcoberturaporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
  edcobexpporc.Properties.ReadOnly := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
//  edcoberturavalor.Properties.ReadOnly := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
  ConfirmarCobertura1.Enabled := not (qrEntradaPacienteCoberturaConfirmada.Value = 1);
  RegistrarPruebadelExterior1.Enabled := True;
  Asignar2daMuestra1.Enabled := True;

  EliminarDescuentoAplicado1.Enabled            := False;
  AsignarDescuentoPermitidoalUsuario1.Enabled   := false;
  AsignarDescuentoPermitidoalEmpleado1.Enabled  := false;
  AsignarDescuentoAutorizadoporCobros1.Enabled  := false;
  AsignarDescuentoTarjeta1.Enabled              := false;
  btCliente.Enabled                             := True;
  btPaciente.Enabled                            := True;
  btPrueba.Enabled                              := True;
  btEliminar.Enabled                            := True;
  btHold.Enabled                                := True;
  combodescto                                   := 1;
  ClienteFirst                                  := EmptyStr;
  ClienteSecond                                 := EmptyStr;
  check_balance                                 := True;
  cambiarprecio                                 := False;

  ValorNC       := 0;
  ValorND       := 0;
  precio_combo  := 0;
  ConceptoNC    := EmptyStr;
  TipoCob       := EmptyStr;
  seg_late      := False;

  //Valores de la 2da. Muestra.
  Record_Ant    := 0;
  Docto_Ant     :=EmptyStr;
  Muestra_Ant   :=EmptyStr;
  Act_2da       := False;
  //Valores de la 2da. Muestra.

  SetColorTo(dm.ColorAgrega);
  //SetReadOnlyToNoEdit;

  cxPageControlCabecera.ActivePage := TabGeneral;
  actinterface;
  CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;

  //Pruebas de los Seguros.
  curCoberturaAplicada := 0;
  RefrescarGrid(false);
end;

procedure TfrmPuntoVenta.HabilitaConsultas;
Var qact : TADOQuery;
begin
  qact := DM.NewQuery;
  With  qact, sql do
  begin
    Close;
    Clear;
    Text := ' Select Top 1 Muestrano from PTEntradaPaciente (nolock) '+
            ' Where  DataAreaId = '+#39+DM.CurEmpresa+#39+' And UserId = '+#39+Dm.CurUser+#39+
            ' And Fecha= ' + #39+FormatDateTime('yyyymmdd', DM.SystemDate)+#39+
            ' Order by Fecha,HoraEntrada desc';
    Open;
    if not isEmpty  then
    begin
        lbUltimaMuestra.caption := 'ULT. ENT. = '+fieldbyname('Muestrano').AsString;
    end
    else
        lbUltimaMuestra.caption := EmptyStr;
  end;

  With qrEntradaPaciente, sql do
  begin
    Close;
    Clear;
    Text :='SELECT * FROM PTEntradaPaciente (nolock) WHERE RecId = :rec AND DataAreaId = '+#39+DM.CurEmpresa+#39
  end;
  With qrEntradaPacienteDetalle, sql do
  begin
    Close;
    Clear;
    Text :='SELECT * FROM PTEntradaPacienteDetalle (nolock) WHERE refrecid = :rec AND DataAreaId = '+#39+DM.CurEmpresa+#39+' ORDER BY secuencia '
  end;
  Operacion := 'E';
  cobroid := '';

  Desabilitarbotones(false);

//  _recorId := DM.Get_Secuencia('Secuencia');
  _recorId := GetSecuenciaId;

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  FreeAndNil(qfindprueba);
  FreeAndNil(qpruebadesc);
  FreeAndNil(qfindprulab);

  noseguro := TcxStyle.Create(Self);
  noseguro.Color := DM.ColorUrgente;
  noseguro.TextColor := ClBlack;


  Reportado   := TcxStyle.Create(Self);
  NReportado  := TcxStyle.Create(Self);
  Combo       := TcxStyle.Create(Self);
  Reportado.Color   := DM.ColorModifica;
  NReportado.Color  := DM.ColorBorra;
  Combo.Color       := clWhite;
//  Reportado.TextColor   := ClBlack;
//  NReportado.TextColor  := ClBlack;

  if (qrEntradaPaciente.State in [dsinsert,dsedit]) then qrEntradaPaciente.Cancel;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _recorId;
  qrEntradaPaciente.Open;

  if (qrEntradaPacienteDetalle.State in [dsinsert,dsedit]) then qrEntradaPacienteDetalle.Cancel;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _recorId;
  qrEntradaPacienteDetalle.Open;

  Operacion := 'E';
  cobroid := '';

  Desabilitarbotones(false);

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  FreeAndNil(qfindprueba);
  FreeAndNil(qpruebadesc);
  FreeAndNil(qfindprulab);
  Desabilitarbotones(false);
  edcobexpporc.Properties.ReadOnly              := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
  ConfirmarCobertura1.Enabled                   := not (qrEntradaPacienteCoberturaConfirmada.Value = 1);
  RegistrarPruebadelExterior1.Enabled           := True;
  Asignar2daMuestra1.Enabled                    := True;
  EliminarDescuentoAplicado1.Enabled            := False;
  AsignarDescuentoPermitidoalUsuario1.Enabled   := false;
  AsignarDescuentoPermitidoalEmpleado1.Enabled  := false;
  AsignarDescuentoAutorizadoporCobros1.Enabled  := false;
  AsignarDescuentoTarjeta1.Enabled              := false;  
  CambiarLaboratorioNoenlasLineas1.Enabled      := false;
  noseguro := TcxStyle.Create(Self);
//  noseguro.Color := DM.ColorBorra;
  noseguro.Color := DM.ColorUrgente;
  noseguro.TextColor    := ClBlack;
  Reportado := TcxStyle.Create(Self);
  NReportado := TcxStyle.Create(Self);
  Reportado.Color := DM.ColorModifica;
  NReportado.Color := DM.ColorBorra;
  Reportado.TextColor := ClBlack;
  NReportado.TextColor := ClBlack;

  if DM.CurRolCreaEntrada = True  then
     btNueva.Enabled     := True
  else
     btNueva.Enabled     := False;
  if DM.CurRolAplicaPagos = True  then
     btgrabar.Enabled     := True
  else
     btgrabar.Enabled     := False;
  if DM.CurRolNotaCredito = True  then
     btnotacredito.Enabled     := True
  else
     btnotacredito.Enabled     := False;

  btCliente.Enabled     := False;
  btPaciente.Enabled    := False;
  btprueba.Enabled      := False;
  btentrada.Enabled     := True;
  btEliminar.Enabled    := False;
  btCancelar.Enabled    := True;
  btGrabar.Enabled      := False;
//  btImprimir.Enabled    := False;
//  btNotaCredito.Enabled := False;
  btHold.Enabled        := False;
  SetColorTo(dm.ColorConsulta);
  cxPageControlCabecera.ActivePage := TabGeneral;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteAfterPost(DataSet: TDataSet);
Var
 qdelete : TADOQuery;
 tipodoc : string;
begin
  inherited;
  if cobroid = '' then
  begin
      Case qrEntradaPacienteTipoDocumento.Value of
        0 : TipoDoc := 'FT';
        1 : TipoDoc := 'CT';
        2 : TipoDoc := 'DV';
        3 : TipoDoc := 'EXT';
      End;

      If (qrEntradaPacienteHold.Value = 1) Then TipoDoc := 'HOL';

      if (TipoDoc <> 'CT') And (TipoDoc <> 'HOL') then
       begin
         qdelete := DM.NewQuery;
         qdelete.Close;
         qdelete.SQL.Text := ' DELETE FROM PTClienteTransacciones WHERE Isnull(RecId,'+#39+#39+')<>'+#39+#39+
                             ' AND Clienteid = '#39 + qrEntradaPacienteClienteID.Value + #39 +
                             ' AND PacienteId = '#39 + qrEntradaPacientePACIENTEID.Value + #39 +
    //                         ' AND TipoDoc = '#39 + TipoDoc + #39 +
                             ' AND Documento = '+ #39 + qrEntradaPacienteEntradaID.Value + #39;
         qdelete.ExecSQL;

         CrearTransCliente(qrEntradaPacienteClienteID.Value, TipoDoc, qrEntradaPacienteEntradaID.Value,
                           TipoDoc, qrEntradaPacienteEntradaID.value, qrEntradaPacienteFecha.value,
                           qrEntradaPacienteNeto.Value, qrEntradaPacienteMonedaID.Value,
                           qrEntradaPacientePACIENTEID.Value, qrEntradaPacienteSINPRFILTER.Value);
       end;
  end;
end;

procedure TfrmPuntoVenta.qrEntradaPacienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  qrEntradaPacienteTotalPendiente.Value := qrEntradaPacienteNeto.Value - qrEntradaPacienteTotalPagado.Value;
end;

procedure TfrmPuntoVenta.qrEntradaPacienteClienteIDChange(Sender: TField);
begin
  inherited;
  If (qrEntradaPaciente.State in [dsEdit, dsInsert]) And (qrEntradaPacienteClienteID.AsString<>EmptyStr) then
    Begin
      Confirmar_Cliente_Prueba;
      Val_Descuento;
      ActTotales;
    end;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteOrigenChange(Sender: TField);
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;

  If (qrEntradaPaciente.Active = True) Then
    Begin
      if Length(qrEntradaPacienteOrigen.Value) > 0 then
      begin
        If (qrEntradaPacienteOrigen.Value <> DM.qrParametroGrupoExt.Value) Then
        Begin
            qrEntradaPaciente.Edit;
            qrEntradaPacienteNoAS400.Value := 0;
            qrEntradaPacienteNoAxapta.Value := 0;
            qrEntradaPacienteNoFactura.Value := 0;
            qrEntradaPacienteSINPRFILTER.Value := 0;
            qrEntradaPacienteFactExterior.Value := 0;
            qrEntradaPacienteTipoDocumento.Value := 0;
            qrEntradaPacienteGrupoPrecio.value := EmptyStr;
            qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaID.Value;
            if qrentradapacienteorigen.value = dm.qrParametroGrupoPriv.Value then
            begin
             if Trim(qrentradapacienteClienteid.value)<> Trim(qrentradapacientePacienteId.value) then
             begin
                qrentradapacienteClienteid.value      := qrentradapacientePacienteId.value ;
                Confirmar_Precio_Prueba;
             end;
              qrentradapacienteClienteNombre.value  := qrEntradaPacienteNOMBREPACIENTE.value ;
              qrEntradaPacienteFORMADEPAGO.Value    := 'EFE' ;
            end;
            if qrentradapacienteorigen.value <> dm.qrParametroGrupoSeg.Value then
            begin
                qrEntradaPacienteCOBERTURAPORC.value:=0;
                qrEntradaPacientecoberturaseguro.value:=0;
                qrEntradaPacientecoberturavalor.value:=0;
                qrEntradaPacientecoberturaconfirmada.value:=0;
                qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.value:=0;
                qrEntradaPacienteAprobacionNo.Value := EmptyStr;
                qrEntradaPacienteAPROBACIONPOR.Value := EmptyStr;
            end;
           if Trim(qrentradapacienteClienteid.value)<> Trim(qrentradapacientePacienteId.value) then
           begin
              Confirmar_Precio_Prueba;
           end;
          End
        Else
          Val_Exterior;
      end;
    End;
//  actinterface;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteCoberturaExpPorcValidate(
  Sender: TField);
begin
  inherited;
  If (qrEntradaPacienteCoberturaValor.Value >= 100) And (qrEntradaPacienteCoberturaExpPorc.Value = 1) Then
    Raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;


procedure TfrmPuntoVenta.qrEntradaPacienteCoberturaPorcValidate(Sender: TField);
begin
  inherited;
  If (qrEntradaPacienteCoberturaPorc.Value > 100) Then
    Raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;


procedure TfrmPuntoVenta.qrEntradaPacienteCoberturaValorValidate(
  Sender: TField);
begin
  inherited;
  qrEntradaPaciente.Edit;
  qrEntradaPacienteDetalle.Edit;

//  ActTotales;
{
 if (qrEntradaPacienteCoberturaValor.Value >= 100) and
     (qrEntradaPacienteCoberturaExpPorc.Value) then
     raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
}
    If (qrEntradaPacienteCoberturaValor.Value > qrEntradaPacienteSubTotal.Value){ and
       (not qrEntradaPacienteCoberturaExpPorc.Value)} Then
      Raise exception.CreateFmt('El Valor de la Cobertura NO Puede Ser Mayor Que el Monto a Confirmar.',[]);
end;

procedure TfrmPuntoVenta.qrEntradaPacienteDetalleAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Val_Descuento;
//  VerificarPagoDiferencia;
//  ActTotales;
end;

procedure TfrmPuntoVenta.qrEntradaPacienteDetalleAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qrEntradaPaciente.State in [dsEdit, dsInsert] then
    Begin
//      Val_Descuento;
//      VerificarPagoDiferencia;
//      ActTotales;
    End;
end;


procedure TfrmPuntoVenta.BalanceActual1Click(Sender: TObject);
begin
  inherited;
  If (qrEntradaPacientePacienteId.Value <> '') Or
  Not(qrEntradaPacientePacienteId.IsNull) Then
    Begin
      //Consulta de Transacciones del Paciente.
      frmMain.LanzaConsulta(-7988, qrEntradaPacientePacienteId.Value);
    end
  Else
    Raise exception.CreateFmt('Debe Registrar Un Paciente Para Poder Ver Su Balance Actual. Por Favor Verifique.!!!', []);
end;


procedure TfrmPuntoVenta.VerTransacciones1Click(Sender: TObject);
begin
  inherited;
  If (qrEntradaPacientePacienteId.Value <> '') Or
  Not(qrEntradaPacientePacienteId.IsNull) Then
    Begin
      //Consulta de Transacciones del Paciente.
      frmMain.LanzaConsulta(-7989, qrEntradaPacientePacienteId.Value);
    end
  Else
    Raise exception.CreateFmt('Debe Registrar Un Paciente Para Poder Ver Sus Transacciones. Por Favor Verifique.!!!', []);
end;


procedure TfrmPuntoVenta.Val_Exterior;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  If (qrEntradaPaciente.Active = True) And (Copy(qrEntradaPacienteEntradaID.AsString,1,3)<>'NCR') Then
  Begin
      If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
         (CbDocumento.ItemIndex = 3) Then
        Begin
          qrEntradaPaciente.Edit;
          qrEntradaPacienteNoAS400.Value := 1;
          qrEntradaPacienteNoAxapta.Value := 1;
          qrEntradaPacienteNoFactura.Value := 1;
          qrEntradaPacienteSINPRFILTER.Value := 1;
          qrEntradaPacienteFactExterior.Value := 1;
          qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
          qrEntradaPacienteTipoDocumento.Value := 3;
          qrEntradaPacientePUBLICARINTERNET.Value := 0;
          qrEntradaPacientePUBLICARINTERNETDOCTOR.Value := 0;
          qrEntradaPacientePUBLICARINTERNETCLIENTE.Value := 0;
        End
      Else
        Begin
          qrEntradaPaciente.Edit;
          qrEntradaPacienteNoAS400.Value := 0;
          qrEntradaPacienteNoAxapta.Value := 0;
          qrEntradaPacienteNoFactura.Value := 0;
          qrEntradaPacienteSINPRFILTER.Value := 0;
          qrEntradaPacienteFactExterior.Value := 0;
          qrEntradaPacienteTipoDocumento.Value := 0;
//          qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaID.Value;
        End;
    End;
end;


procedure TfrmPuntoVenta.Val_Paciente;
begin
  DM.qrParametro.close;
  DM.qrParametro.open;

  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then
  Begin
      Val_Forma_Pago('EFE');
      check_balance := True;
      Val_Balance;
  End;

  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) And
     (qfindPacientes.FieldByName('CobrarDiferencia').Value = 1) Then
  Begin
      Val_Forma_Pago('EFE');
      check_balance := True;
      Val_Balance;
  End;

  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoCia.Value) Then
    If (qfindCltParams.FieldByName('QuienPaga').AsString = 'EMP') Then
      Begin
        Val_Forma_Pago('EFE');
        check_balance := True;
        Val_Balance;
      End
    Else
      Begin
        Val_Forma_Pago('CRE');
        check_balance := False;
      end;

  //Validando la Entrega de Resultados al Paciente de una Compa�ia.
  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoCia.Value) Then
    If (qfindCltParams.FieldByName('EntregarResultados').AsString = 'CIA') Then
      Begin
        qrEntradaPacientePUBLICARINTERNET.Value := 0;
        qrEntradaPacienteRESULTADOPACIENTE.Value := 0;
        qrEntradaPacienteRESULTADODOCTOR.Value := 0;
        qrEntradaPacientePUBLICARINTERNETDOCTOR.Value := 0;
//        qrEntradaPacienteRESULTADOCLIENTE.Value := 0;
//        qrEntradaPacientePUBLICARINTERNETCLIENTE.Value := 0;
      End;

  If (qrEntradaPacienteOrigen.Value <> DM.qrParametroGrupoPriv.Value) And
     (qrEntradaPacienteOrigen.Value <> DM.qrParametroGrupoCia.Value) And
     (qrEntradaPacienteOrigen.Value <> DM.qrParametroGrupoSeg.Value) Then
    Begin
      If (qfindCltParams.FieldByName('FormaPago').AsString = 'CE') Or
         (qfindCltParams.FieldByName('FormaPago').AsString = 'EFE') Or
         (qfindCltParams.FieldByName('FormaPago').AsString = 'CASH') Then
        Begin
          Val_Forma_Pago('EFE');
          check_balance := True;
          Val_Balance;
        end
      Else
        Begin
          Val_Forma_Pago('CRE');
          check_balance := False;
        end;
    End;
end;


procedure TfrmPuntoVenta.Val_Forma_Pago(Forma_Pago: string);
begin
// LbCondicion.Caption := '';

 If (Forma_Pago = 'EFE') Or (Forma_Pago = 'CASH') Or (Forma_Pago = 'CE') Then
   Begin
     qrEntradaPaciente.Edit;
     qrEntradaPacienteFormadePago.Value := Forma_Pago;
//     LbCondicion.Caption := 'CONTADO - Paga el Paciente.';
   end
 Else
   Begin
     qrEntradaPaciente.Edit;
//     qrEntradaPacienteFormadePago.Value := Forma_Pago;
     qrEntradaPacienteFormadePago.Value := 'CRE'; // forma de pago Generica para todas las de Credito.
//     LbCondicion.Caption := 'Facturacion a CREDITO.';
   end;
end;


procedure TfrmPuntoVenta.Leer_Forma_Pago;
begin
{
 LbCondicion.Caption := '';

 If (qrEntradaPacienteFormadePago.Value = 'EFE') Or
    (qrEntradaPacienteFormadePago.Value = 'CASH') Or
    (qrEntradaPacienteFormadePago.Value = 'CE') Then
   LbCondicion.Caption := 'CONTADO - Paga el Paciente.'
 Else
   LbCondicion.Caption := 'Facturacion a CREDITO.';
}
end;

procedure TfrmPuntoVenta.btCancelClick(Sender: TObject);
begin
  inherited;
  spDoctor.Visible := False;
end;

procedure TfrmPuntoVenta.btAceptaClick(Sender: TObject);
Var      CAfiliado                    : AfiliadoSM;
          fecha                       : WideString;
          codAfiliado                 : Int64;
begin
  inherited;

  if Not(mdDoctoresCodigo_Doctor.AsString='')  then
  begin
    dm.Cod_Doctor := mdDoctoresCodigo_Doctor.AsString;
    dm.Nombre_Doctor := mdDoctoresNombre.AsString;
    dm.Tipo_Doctor := mdDoctoresTipo.AsString;
    If qrEntradaPacienteTELEFONOS.Value <> EmptyStr then
      dm.Telefono_Pac := qrEntradaPacienteTELEFONOS.Value
    else  If qrEntradaPacienteTELEFONO2.Value <> EmptyStr then
      dm.Telefono_Pac := qrEntradaPacienteTELEFONO2.Value
    else
    begin
         EtMensajeDlg('Telefono del paciente no digitado.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
         exit;
    end;
    spMensaje.Visible := False;
    spDoctor.Visible := False;
    if Dm.WsArsID = GrupoArsSDs then
    begin
          codAfiliado   := StrToInt64Def(Trim(cxDBTextEdit16.Text), StrToInt64(Trim(qrEntradaPacientePolizaID.Value)));
          CAfiliado     := AfiliadoSM.Create;
          CAfiliado     := GetSimetricaSoap(false,Dm.vURLWSDL).ValidaAfiliado(Dm.codArs,codAfiliado,Dm.codProveedor,StrToInt64(Dm.Cod_Doctor));
          if (CAfiliado.ErrorSM.Valid = false) then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              if CAfiliado.ErrorSM.CodigoSalida+'-'+CAfiliado.ErrorSM.Descipcion ='02-P�liza suspendida' then
              begin
                  if qrEntradapacienteClienteID.Value='C00075' then
                    EtMensajeDlg(CAfiliado.ErrorSM.CodigoSalida+'-'+CAfiliado.ErrorSM.Descipcion+'.  Verifique si pertenece al Cliente (C03103)-HUMANO SEGUROS S A.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                  if qrEntradapacienteClienteID.Value='C03103' then
                    EtMensajeDlg(CAfiliado.ErrorSM.CodigoSalida+'-'+CAfiliado.ErrorSM.Descipcion+'.  Verifique si pertenece al Cliente (C00075)-PRIMERA ARS HUMANO.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                  if qrEntradapacienteClienteID.Value='C01673' then
                    EtMensajeDlg(CAfiliado.ErrorSM.CodigoSalida+'-'+CAfiliado.ErrorSM.Descipcion+'.  Verifique si pertenece al Cliente (C03209)-HUMANO SEGUROS S A - PLAN PLATINO.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                  if qrEntradapacienteClienteID.Value='C03209' then
                    EtMensajeDlg(CAfiliado.ErrorSM.CodigoSalida+'-'+CAfiliado.ErrorSM.Descipcion+'.  Verifique si pertenece al Cliente (C01673)-PRIMERA ARS HUMANO- PLAN PLATINO.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              end
              else
                  EtMensajeDlg(CAfiliado.ErrorSM.CodigoSalida+'-'+CAfiliado.ErrorSM.Descipcion+'.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          If (CAfiliado.TipoComplementariedad =1) And (CAfiliado.TipoPlan='C') And (Trim(qrEntradapacienteClienteID.Value)<>'C00075')then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Paciente pertenece al Cliente (C00075)-PRIMERA ARS HUMANO.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          If (CAfiliado.TipoComplementariedad =3)  And (Trim(qrEntradapacienteClienteID.Value)<>'C03103')then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Paciente pertenece al Cliente (C03103)-HUMANO SEGUROS S A.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;

          if ifThen(CAfiliado.Sexo='F','0','1') <> IntToStr(qrEntradapacienteSexo.Value) then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Sexo del paciente no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;

          if (CAfiliado.Nombre = 'Afiliado no existe') or (CAfiliado.Nombre ='Afiliado excluido') or
             (CAfiliado.Nombre = 'P�liza suspendida')  then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(CAfiliado.Nombre+'.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          Fecha := StringReplace(Copy(CAfiliado.FechaNacimiento.NativeToXS,1,10),'-', '', [rfReplaceAll, rfIgnoreCase]);
          case Dm.codArs of
             1  :Begin
                    if Copy(CAfiliado.Nombre,1,3) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                    if ((CAfiliado.TipoPlan='B') and (Trim(qrEntradapacienteClienteID.Value)<>'C00393')) Or
                       ((CAfiliado.TipoPlan='C') and (Trim(qrEntradapacienteClienteID.Value)<>'C00054')) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                 End;
             2,7 :Begin
                    if Copy(CAfiliado.PrimerNombre,1,3) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                    If ((CAfiliado.TipoPlan='B') and Not((Trim(qrEntradapacienteClienteID.Value)='C00075') Or (Trim(qrEntradapacienteClienteID.Value)='C00392') Or (Trim(qrEntradapacienteClienteID.Value)='C03103') Or (Trim(qrEntradapacienteClienteID.Value)='C03209'))) Or
                       ((CAfiliado.TipoPlan='C') and Not((Trim(qrEntradapacienteClienteID.Value)='C00075') Or (Trim(qrEntradapacienteClienteID.Value)='C01673') Or (Trim(qrEntradapacienteClienteID.Value)='C03103') Or (Trim(qrEntradapacienteClienteID.Value)='C03209'))) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                    If (Fecha) <> (formatdatetime('yyyymmdd',qrEntradapacienteFechaNacimiento.Value)) Then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Fecha Nac. Afiliado='+#39+Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4)+#39+' es diferente a Fecha Nac. entrada='+#39+formatdatetime('dd/mm/yyyy',qrEntradapacienteFechaNacimiento.Value)+#39+'.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                 End;
             4  :Begin
                    if Copy(CAfiliado.PrimerNombre,1,3) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                    If Not((CAfiliado.TipoPlan='A') and (Trim(qrEntradapacienteClienteID.Value)='C00156')) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                    If (Fecha) <> (formatdatetime('yyyymmdd',qrEntradapacienteFechaNacimiento.Value)) Then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Fecha Nac. Afiliado='+#39+Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4)+#39+' es diferente a Fecha Nac. entrada='+#39+formatdatetime('dd/mm/yyyy',qrEntradapacienteFechaNacimiento.Value)+#39+'.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                 End;

          end;
          Dm.Afiliado := CAfiliado.Nombre;
          Dm.TipoPlan := CAfiliado.TipoPlan;
          Dm.Complementariedad := CAfiliado.TipoComplementariedad;
          CAfiliado.Free;
    end
    else
    if Dm.WsArsID = GrupoArsUniversal then
    begin
      mdBeneficiarioC.First;
      dsBEneficiarioC.Enabled  := True;
      spMensaje.Visible := False;
      spBeneficiario.Visible  := True;
    end;
    if (Dm.WsArsID = GrupoArsPalic) Or (Dm.WsArsID = GrupoArsSDS) then frmMain.LanzaVentana(-8034);
    If btgrabar.Enabled = True then btgrabar.SetFocus;
  end
  else
  begin
      Raise exception.CreateFmt('Debe Seleccionar Doctor.  Verifique.', []);
  end;
end;

procedure TfrmPuntoVenta.Val_Balance;
begin
      if not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
         (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
         (qrEntradaPacientePacienteId.Value ='00006242')) then
          begin
          If (check_balance = True) Then
            Begin
              qrBalanceCliente.Close;
              qrBalanceCliente.Parameters[0].Value := qrEntradaPacientePacienteId.Value;
              qrBalanceCliente.Parameters[1].Value := qrEntradaPacienteENTRADAID.Value;
              qrBalanceCliente.Open;

              if (qrBalanceCliente.RecordCount > 0) then
              Begin
                  qrBalanceCliente.First;
                  while not qrBalanceCliente.Eof do
                  Begin
                       if (qrBalanceClienteValor.Value > 1) Then
                       begin
                         //Consulta de Transacciones del Paciente.
//                         frmMain.LanzaVentana(-7981);
                         if (Tiene_Balance = 0) Then
                         Begin
                             frmMain.LanzaConsulta(-7989, qrEntradaPacientePacienteId.Value);
                             EtMensajeDlg('El Paciente: ('+ qfindPacientes.FieldByName('Nombre').AsString +
                                                       ') Tiene Un Balance Pendiente.'+ #13 +
                                                       ' Por Favor Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);

                              Exit;
                         end;
                       end;
                       qrBalanceCliente.Next;
                  end
              end;
{              else
              begin
                if (qrBalanceCliente.RecordCount = 1 ) or (qrBalanceCliente.RecordCount = 2 )  then
                Begin
                     EtMensajeDlg('El Paciente: ('+ qfindPacientes.FieldByName('Nombre').AsString +
                                               ') Tiene Un Balance Pendiente.'+ #13 +
                                               ' Por Favor Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);


                end;
              end;
}
            end;
          end;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteDetalleBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  //Pruebas de los Seguros.
  curCoberturaAplicada := DM.CurCoberturaAplicada(qrEntradaPacienteRECID.Value); //DM.CurCoberturaAplicada(_recorId)
  If (qrEntradaPacienteCoberturaConfirmada.Value = 1) And
     (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
  Begin
          EtMensajeDlg('Prueba NO puede eliminarse Ya est� Confirmada.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
          Abort;
  end;
  If not ((Trim(qrEntradaPacienteEntradaid.value) ='') Or (Copy(qrEntradaPacienteEntradaid.value,1,3)='HOL')) then
  begin
     If dm.qrParametroServidor_AS400.value <> EmptyStr then
     begin
              if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
              begin
                   InterfaseAS400.ASConnection.Close;
                   InterfaseAS400.ASConnection.Open;
                   if Not((qrEntradaPacienteDetalleTipoPrueba.Value ='C') or
                          (qrEntradaPacienteDetalleExterior.Value = 1)) Then
                   begin
                     If Not InterfaseAS400.Verifica_Resultado(qrEntradaPacienteMuestraNo.Value,DM.BuscaCodigoIDAs400(qrEntradaPacienteDetallePruebaID.Value)) Then
                        No_Procesar_AS400
                     else
                     begin
                         InterfaseAS400.ASConnection.Close;
                         EtMensajeDlg('Prueba NO puede eliminarse Ya est� reportado su Resultado.  Verifique Departamento T�cnico.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                         Abort;
                     end;
                   end
                   else
                        No_Procesar_AS400;
                   InterfaseAS400.ASConnection.Close;
              end
              else
                  No_Procesar_AS400;
     end;
  end;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteDetalleBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  comboprecio := True;
  comboborrar := False;
end;

procedure TfrmPuntoVenta.qrEntradaPacienteDetalleBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  comboprecio := True;
  comboborrar := False;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteDetalleBeforePost(DataSet: TDataSet);
begin
 inherited;
 If qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
  Begin
    qrEntradaPacienteDetalle.Edit;
    If (qrEntradaPacienteDetalleDATAAREAID.IsNull) Or
       (qrEntradaPacienteDetalleDATAAREAID.Value = '') Or
       (qrEntradaPacienteDetalleDATAAREAID.Value = ' ') Then
      Begin
        qrEntradaPacienteDetalleCUADRADO.Value := qrEntradaPacienteCUADRADO.Value;
        qrEntradaPacienteDetalleTRANSFERIDO.Value := qrEntradaPacienteTRANSFERIDO.Value;
        qrEntradaPacienteDetalleDATAAREAID.Value := qrEntradaPacienteDATAAREAID.Value;
      End;

    If (qrEntradaPacienteDetalleRECID.IsNull) Or
       (qrEntradaPacienteDetalleRECID.Value < 1) Then
      Begin
        qrEntradaPacienteDetalleRECID.Value := GetSecuenciaId;
        qrEntradaPacienteDetalleCUADRADO.Value := qrEntradaPacienteCUADRADO.Value;
        qrEntradaPacienteDetalleTRANSFERIDO.Value := qrEntradaPacienteTRANSFERIDO.Value;
      End;

//    If (qrEntradaPacienteFROM_CLINICA.Value = 0) Or
    If (qrEntradaPacienteDetalleMUESTRANO_POS.IsNull) Or
       (qrEntradaPacienteDetalleMUESTRANO_POS.Value = '') Or
       (qrEntradaPacienteDetalleMUESTRANO_POS.Value = ' ') Then
      Begin
        qrEntradaPacienteDetalleREFRECID_POS.Value := 0;
        qrEntradaPacienteDetalleENTRADAID_POS.Value := '';
        qrEntradaPacienteDetalleMUESTRANO_POS.Value := qrEntradaPacienteDetalleMuestraNo.Value;
      End;

    qrEntradaPacienteDetalleSINPRFILTER.Value := qrEntradaPacienteSINPRFILTER.Value;
    qrEntradaPacienteDetalleTotalLinea.Value := ImporteLinea;

    If Not ValidateRecord(dsEntradaPacienteDetalle.DataSet) Then
      Raise exception.CreateFmt('La Prueba del Exterior ( ' + qrEntradaPacienteDetallePRUEBAID.Value +
                                ' ). NO Tiene Un Comentario Registrado.', []);
//      Raise exception.CreateFmt('La Prueba del Exterior No Tiene Un Comentario Registrado.', []);
  End;
{
  DM.Info(
          '   VALORES EN LA TABLA AL MOMENTO DE GUARDAR.   ' + #13 +
          'Prueba: ' + qrEntradaPacienteDetallePRUEBAID.AsString + #13 +
          'Cabecera: ' + qrEntradaPacienteDetalleREFRECID.AsString + #13 +
          'Area: ' + qrEntradaPacienteDetalleDATAAREAID.AsString + #13 +
          'RecId: ' + qrEntradaPacienteDetalleRECID.AsString);
}
End;


procedure TfrmPuntoVenta.qrEntradaPacienteDetalleCalcFields(DataSet: TDataSet);
begin
  inherited;
  If qrEntradaPacienteEntradaID.Value <> EmptyStr then
  Begin
    If qrEntradaPacienteDetalleTipoPrueba.Value = 'P' then
    begin
      if (qrEntradaPacienteDetalleTipoPrueba.Value = 'P') And (qrEntradaPacienteDetalleCodigoAS400.AsString=EmptyStr) then
      begin
         qrEntradaPacienteDetalleCodigoAS400.AsInteger := DM.BuscaCodigoIDAs400(qrEntradaPacienteDetallePruebaID.Value);
      end;
      If Trim(qrEntradaPacienteDetalleLdrDepartamentoID.AsString) <> EmptyStr then
      Begin
        If dm.qrParametroServidor_AS400.value <> EmptyStr then
        begin
             If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
             begin
{                  If InterfaseAS400.ASConnection.Connected = False then InterfaseAS400.ASConnection.Connected :=True;
                  If InterfaseAS400.ASConnection.Connected =True then
                  begin
                    qrEntradaPacienteDetalleResultado.Value := InterfaseAS400.Buscar_Resultados_Prueba(qrEntradaPacienteMuestrano.Value, qrEntradaPacienteDetalleCodigoAS400.AsInteger,qrEntradaPacienteDetalleLdrDepartamentoID.AsInteger)
                  end;
}
             end;
        end;
      end;
    end;
  end;
end;

procedure TfrmPuntoVenta.qrEntradaPacienteDetalleDescuentoChange(Sender: TField);
begin
  inherited;
  if qrEntradaPacienteDetalle.State in [dsInsert,dsEdit] then
    qrEntradaPacienteDetalleTotalLinea.Value := ImporteLinea;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteDetallePruebaIDChange(Sender: TField);
Var
 valor_precio     : Currency;
 permitido,CupID  : integer;
 qfind            : TADOQuery;
begin
 inherited;
 if (qrEntradaPacienteDetalle.State = dsInsert) or
    (qrEntradaPacienteDetalle.State = dsEdit) then
  begin
   DM.qrParametro.close;
   DM.qrParametro.open;

   //Valores Predeterminado de las Pruebas Registradas.
   qrEntradaPacienteDetalle.Edit;
   CupID := 0;
   qrEntradaPacienteDetalleSecuencia.Value    := MaxSecuenciaLinea;
   qrEntradaPacienteDetalleRefRecid.Value     := qrEntradaPacienteRECID.Value;
   qrEntradaPacienteDetalleMuestraNo.Value    := qrEntradaPacienteMuestraNo.Value;
   qrEntradaPacienteDetalleDATAAREAID.Value   := qrEntradaPacienteDATAAREAID.Value;
   qrEntradaPacienteDetalleRepMuestra.Value   := qrEntradaPacienteRepMuestra.Value;
   qrEntradaPacienteDetalleCUADRADO.Value     := qrEntradaPacienteCUADRADO.Value;
   qrEntradaPacienteDetalleTRANSFERIDO.Value  := qrEntradaPacienteTRANSFERIDO.Value;
   qrEntradaPacienteDetalleFROM_CLINICA.Value := qrEntradaPacienteFROM_CLINICA.Value;
   qrEntradaPacienteDetalleSINPRFILTER.Value := qrEntradaPacienteSINPRFILTER.Value;

   qrEntradaPacienteDetalleEXTERIOR.Value := qfindprueba.FieldByName('Exterior').Value;
   qrEntradaPacienteDetalleDescripcion.Value := qfindprueba.FieldByName('Descripcion').AsString;
   qrEntradaPacienteDetalleLDRDEPARTAMENTOID.Value := qfindprueba.FieldByName('DEPARTAMENTO').AsString;
   qrEntradaPacienteDetalleTipoPrueba.Value := qfindprueba.FieldByName('Tipo').AsString;
   qrEntradaPacienteDetalleUnidadMuestra.Value := qfindprueba.FieldByName('Unidad').AsString;

   qrEntradaPacienteDetalleComentario.Value := ' ';
   qrEntradaPacienteDetalleCodigoCupid.Value := ' ';

   If (qrEntradaPacienteDetalleCOMBO.IsNull) Or
      (qrEntradaPacienteDetalleCOMBO.Value <> 1) Or
      (qrEntradaPacienteDetalleCOMBO.AsString = '0') Then
     qrEntradaPacienteDetalleCOMBO.Value := 0; //LA PRUEBA NO ES UN COMBO.

   qrEntradaPacienteDetalleMUESTRAANT.Value := '0'; //DEFAULT TRANSFERENCIA AS-400.
   qrEntradaPacienteDetallePASARAXAPTA.Value := 1; //TRANSFERIR A AXAPTA (True).
   qrEntradaPacienteDetalleEstatus.Value := '0'; //TOMA DE MUESTRA.
   qrEntradaPacienteDetalleUrgente.Value := 0; //TOMA DE MUESTRA.
   qrEntradaPacienteDetalleSecuenciaAct.Value := secuencialabel; //TOMA DE MUESTRA.
   qrEntradaPacienteDetalleSeleccionar.Value := 0;  //TOMA DE MUESTRA.

   qrEntradaPacienteDetallePrecio.Value := 0;
   qrEntradaPacienteDetalleDescPct.Value := 0;
   qrEntradaPacienteDetalleFacturar.Value := 0;
   qrEntradaPacienteDetalleAdicional.Value := 0;
   qrEntradaPacienteDetalleDescuento.Value := 0;
   qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
   qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
   qrEntradaPacienteDetalleCoberturaEspecial.Value := 0;
   qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;

   //Registrando las Pruebas en Dollares del Exterior.
   If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
      (qrEntradaPacienteTipoDocumento.Value = 3) Or
      (qrEntradaPacienteFactExterior.Value = 1) Or
//      (qrEntradaPacienteDetalleldrDepartamentoid.Value = 111) Or
      (CbDocumento.ItemIndex = 3) Then
     Begin
       FreeAndNil(qfind);
{
       //OJO - JUAN JOSE - BLOQUEADO PARA PODER TOMAR EL PRECIO DE LA PRUEBA EN DOLLARES DESDE EL MANTENIMIENTO.
       If (qfindRepetir.RecordCount > 0) then
         frmMain.LanzaVentana(-8001)
       Else
         frmMain.LanzaVentana(-8002);
}
       qrEntradaPacienteDESCUENTOPORC.Value  := 0;
       qrEntradaPacienteDESCUENTO.Value  := 0;
       qrEntradaPacienteDetalleDescPct.Value := 0;

//       If (qrEntradaPacienteDetalleEXTERIOR.Value = 1) Then
//         qrEntradaPacienteDetalleCOMENTARIO.Required := True;

       If (qfindRepetir.RecordCount > 0) then
         Begin
           If (qfindprueba.FieldByName('PrecioDolares').Value > 1) Then
             qrEntradaPacienteDetallePrecio.Value := qfindprueba.FieldByName('PrecioDolares').Value
           Else
             frmMain.LanzaVentana(-8001)
         End
       Else
         frmMain.LanzaVentana(-8002);
     End
   Else
     Begin
       If (qfindprueba.FieldByName('Tipo').Value = 'C') then
         Begin
           If (qfindprueba.FieldByName('FacturarCabecera').Value = 1) then
             Begin
               qrEntradaPacienteDetalleCOMBO.Value       := 1; //LA PRUEBA ES UN COMBO.
//               qrEntradaPacienteDetallePASARAXAPTA.Value := 0; //TRANSFERIR A AXAPTA (False).

               //Registrando la Cabecera de los Combos (CON PRECIO).
               if (qrEntradaPacienteSucursalId.Value <> dm.Cursucursal ) then
                   dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(qrEntradaPacienteSucursalId.Value);
                 GrupoPrecio :=Dm.Buscar_GrupoPrecio(qrEntradaPacienteClienteID.Value);
                 GrupoCliente := Dm.Buscar_GrupoCliente(qrEntradaPacienteDetallePruebaID.Value,ClienteFactura,qrEntradaPacienteMonedaID.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                 if GrupoCliente <> EmptyStr then
                 begin
                    ClienteFact := ClienteFactura;
                    GrupoPrecio := ClienteFactura;
                 end
                 else
                 begin
                   if GrupoPrecio = EmptyStr then
                      ClienteFact := ClienteFactura
                   Else
                      ClienteFact := GrupoPrecio;
                 end;

                 qrEntradaPacienteDetallePrecio.Value := DM.Precio_Prueba_Configurado(qrEntradaPacienteDetallePruebaID.Value,
                                                                                      ClienteFact,
                                                                                      qrEntradaPacienteMonedaID.Value,
                                                                                      qrEntradaPacienteOrigen.value,
                                                                                      dm.GroupPrivado,GrupoPrecio,
                                                                                      qrEntradaPacienteClaseCredito.Value,
                                                                                      formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value)) * factor;
               //Validaciones de las Pruebas de Seguro.
               If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
                 Begin
{
                   qrEntradaPacienteDetalleCoberturaAplica.Value := DM.CoberturaAplica(qrEntradaPacienteClienteID.Value,
                                                                                       qrEntradaPacientePacienteID.Value,
                                                                                       curCoberturaAplicada,
                                                                                       qrEntradaPacienteRECID.value);
}
                   //Marcando la Prueba Como Cubierta por el Seguro o No Segun el Acuerdo Comercial.
                   qrEntradaPacienteDetalleCoberturaAplica.Value := DM.ValidarSeguroPruebaCobertura(qrEntradaPacienteOrigen.Value,
                                                                                                    qfindCltParams.FieldByName('GrupoPrecio').AsString,
                                                                                                    qrEntradaPacienteDetallePruebaID.Value,
                                                                                                    qrEntradaPacienteMonedaID.Value,
                                                                                                    qrEntradaPacienteClienteID.Value,
                                                                                                    qrEntradaPacientePacienteID.Value,
                                                                                                    formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value),
                                                                                                    curCoberturaAplicada,
                                                                                                    qrEntradaPacienteRECID.value);

                   If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
                     Begin
                       //Pruebas de los Seguros.
                       curCoberturaAplicada := DM.CurCoberturaAplicada(qrEntradaPacienteRECID.Value); //DM.CurCoberturaAplicada(_recorId)
//                       curCoberturaAplicada := curCoberturaAplicada + 1;

                       valor_precio := DM.ValidarSeguroPruebaCobertura_Precio(qrEntradaPacienteClienteID.Value,
                                                                              qrEntradaPacienteDetallePruebaID.Value,
                                                                              qrEntradaPacienteMonedaID.Value,
                                                                              qrEntradaPacienteSucursalID.Value,
                                                                              formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                       If (valor_precio > 1) Then
                         Begin
//                           qrEntradaPacienteDetalle.Edit;
//                           qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
//                           qrEntradaPacienteDetallePrecio.Value := DM.Redondeo(valor_precio);
                           DM.Warning('   EL TOTAL DE PRUEBAS X DIAS DE ESTA ASEGURADORA YA FUE ALCANZADO.  VERIFIQUE.' + #13 );
//                                   '   La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +')    ' + #13 +
//                                   '   Sera Facturada a Precio Normal. NO Tiene Cobertura.!!!');
                         End;
                     End;
{
                   qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.Cobertura_Prueba_Configurada(qrEntradaPacienteDetallePruebaID.Value,
                                                                                                      qrEntradaPacienteClienteID.Value,
                                                                                                      qrEntradaPacienteMonedaID.Value) * factor;
                   if qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
                     qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(qrEntradaPacienteDetallePruebaID.Value,
                                                                                              qrEntradaPacienteClienteID.Value,
                                                                                              qrEntradaPacienteMonedaID.Value)
                   else
                     qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                   //Validando los Descuentos en los Combos.
                   If (qfindprueba.FieldByName('PERMITECAMBIOPRECIO').Value = 1) then
                     Begin
                       combodescto := 1;
                       qrEntradaPacienteDetalleDescPct.Value := qrEntradaPacienteDESCUENTOPORC.Value;
                     end
                   Else
                     Begin
                       combodescto := 0;
                       qrEntradaPacienteDESCUENTOPORC.Value  := 0;
                       qrEntradaPacienteDetalleDESCPCT.Value := 0;
                     end;

                   //Buscando la Cobertura Adicional para el SFS.
                   qrEntradaPacienteDetalleAdicional.Value := DM.VerificarCoberturaPruebaAdicional(qrEntradaPacienteOrigen.Value,
                                                                                                   qrEntradaPacienteDetallePruebaID.Value,
                                                                                                   qrEntradaPacienteClienteID.Value,
                                                                                                   qrEntradaPacienteMonedaID.Value);
}
                 End; //Final de los Calculos de Seguro.

               precio_combo := DM.Redondeo(qrEntradaPacienteDetallePrecio.Value);
               Buscar_Combo;
               If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) and (CupID = 0) Then
                  Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value);
               Insertar_Combo_Blanco;
           End
           Else
             Begin
               qrEntradaPacienteDetalleCOMBO.Value       := 1; //LA PRUEBA ES UN COMBO.
//               qrEntradaPacienteDetallePASARAXAPTA.Value := 0; //TRANSFERIR A AXAPTA (False).
               qrEntradaPacienteDetalleDESCPCT.Value     := 0;

               //Registrando la Cabecera de los Combos (SIN PRECIO).
               Buscar_Combo;
{
               //Validando los Descuentos en los Combos.
               If (qfindprueba.FieldByName('PERMITECAMBIOPRECIO').Value = 1) then
                 Begin
                   combodescto := 1;
                   qrEntradaPacienteDetalleDescPct.Value := qrEntradaPacienteDESCUENTOPORC.Value;
                 end
               Else
                 Begin
                   combodescto := 0;
                   qrEntradaPacienteDESCUENTOPORC.Value  := 0;
                   qrEntradaPacienteDetalleDESCPCT.Value := 0;
                 end;
}
               Insertar_Combo_Precio;
             End;
         End
       Else
         Begin
           If (comboprecio = True) Then
             Begin
               //Registrando las Pruebas NORMALES y/o Detalle de los Combos (CON PRECIO).
               if (qrEntradaPacienteSucursalId.Value <> dm.Cursucursal ) then
                   dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(qrEntradaPacienteSucursalId.Value);
                 GrupoPrecio :=Dm.Buscar_GrupoPrecio(qrEntradaPacienteClienteID.Value);
                 GrupoCliente := Dm.Buscar_GrupoCliente(qrEntradaPacienteDetallePruebaID.Value,ClienteFactura,qrEntradaPacienteMonedaID.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                 if GrupoCliente <> EmptyStr then
                 begin
                    ClienteFact := ClienteFactura;
                    GrupoPrecio := ClienteFactura;
                 end
                 else
                 begin
                   if GrupoPrecio = EmptyStr then
                      ClienteFact := ClienteFactura
                   Else
                      ClienteFact := GrupoPrecio;
                 end;

                 qrEntradaPacienteDetallePrecio.Value := DM.Precio_Prueba_Configurado(qrEntradaPacienteDetallePruebaID.Value,
                                                                                      ClienteFact,
                                                                                      qrEntradaPacienteMonedaID.Value,
                                                                                      qrEntradaPacienteOrigen.value,
                                                                                      dm.GroupPrivado,GrupoPrecio,qrEntradaPacienteClaseCredito.Value,
                                                                                      formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value))* factor;
               //Validaciones de las Pruebas de Seguro.
               If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
                 Begin
{
                   qrEntradaPacienteDetalleCoberturaAplica.Value := DM.CoberturaAplica(qrEntradaPacienteClienteID.Value,
                                                                                       qrEntradaPacientePacienteID.Value,
                                                                                       curCoberturaAplicada,
                                                                                       qrEntradaPacienteRECID.value);
}
                   //Marcando la Prueba Como Cubierta por el Seguro o No Segun el Acuerdo Comercial.
                   qrEntradaPacienteDetalleCoberturaAplica.Value := DM.ValidarSeguroPruebaCobertura(qrEntradaPacienteOrigen.Value,
                                                                                                    qfindCltParams.FieldByName('GrupoPrecio').AsString,
                                                                                                    qrEntradaPacienteDetallePruebaID.Value,
                                                                                                    qrEntradaPacienteMonedaID.Value,
                                                                                                    qrEntradaPacienteClienteID.Value,
                                                                                                    qrEntradaPacientePacienteID.Value,
                                                                                                    formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value),
                                                                                                    curCoberturaAplicada,
                                                                                                     qrEntradaPacienteRECID.value);
                   permitido := DM.CoberturaPermitida(qrEntradaPacienteClienteID.Value);
                   if (curCoberturaAplicada >= permitido) and (permitido > 0) then
                   begin
//                           CupID:=1;
//                           qrEntradaPacienteDetalleCODIGOCUPID.Value := EmptyStr;
//                           qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
//                           qrEntradaPacienteDetallePrecio.Value := DM.Precio_Prueba_Configurado(qrEntradaPacienteDetallePruebaID.Value,
//                                                                                                qrEntradaPacientePacienteID.Value,
//                                                                                                qrEntradaPacienteMonedaID.Value) * factor;
//                           DM.Warning('   EL TOTAL DE PRUEBAS X DIAS ('+inttostr(permitido)+') DE ESTA ASEGURADORA YA FUE ALCANZADO.  VERIFIQUE.' + #13 );
//                                   '   La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +')    ' + #13 +
//                                   '   Sera Facturada a Precio Normal. NO Tiene Cobertura.!!!');
                   end;
                   If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
                   Begin
                       //Pruebas de los Seguros.
                       if qrEntradapacienteDetalle.State in [dsinsert]  then
                          curCoberturaAplicada := curCoberturaAplicada + 1
                       else
                            curCoberturaAplicada := DM.CurCoberturaAplicada(qrEntradaPacienteRECID.Value); //DM.CurCoberturaAplicada(_recorId)

                         valor_precio := DM.ValidarSeguroPruebaCobertura_Precio(qrEntradaPacienteClienteID.Value,
                                                                             qrEntradaPacienteDetallePruebaID.Value,
                                                                             qrEntradaPacienteMonedaID.Value,
                                                                             qrEntradaPacienteSucursalID.Value,
                                                                             formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                       If (valor_precio > 1) Then
                         Begin
//                           qrEntradaPacienteDetalle.Edit;
//                           qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
//                           qrEntradaPacienteDetallePrecio.Value := DM.Redondeo(valor_precio);
                           DM.Warning('   EL TOTAL DE PRUEBAS X DIAS ('+inttostr(curCoberturaAplicada-1)+') DE ESTA ASEGURADORA YA FUE ALCANZADO.  VERIFIQUE.' + #13 );
//                                   '   La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +')    ' + #13 +
//                                   '   Sera Facturada a Precio Normal. NO Tiene Cobertura.!!!');
                         End;
                     End;
{
                   qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.Cobertura_Prueba_Configurada(qrEntradaPacienteDetallePruebaID.Value,
                                                                                                      qrEntradaPacienteClienteID.Value,
                                                                                                      qrEntradaPacienteMonedaID.Value) * factor;

                   if qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
                     qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(qrEntradaPacienteDetallePruebaID.Value,
                                                                                              qrEntradaPacienteClienteID.Value,
                                                                                              qrEntradaPacienteMonedaID.Value)
                   else
                     qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                   //Buscando la Cobertura Adicional para el SFS.
                   qrEntradaPacienteDetalleAdicional.Value := DM.VerificarCoberturaPruebaAdicional(qrEntradaPacienteOrigen.Value,
                                                                                                   qrEntradaPacienteDetallePruebaID.Value,
                                                                                                   qrEntradaPacienteClienteID.Value,
                                                                                                   qrEntradaPacienteMonedaID.Value);
}
                 End; //Final de los Calculos de Seguro.
             end
           Else
             Begin
               //Registrando el Detalle de los Combos (SIN PRECIO).
               combodescto                                         := 0;
               qrEntradaPacienteDESCUENTOPORC.Value                := 0;
               qrEntradaPacienteDESCUENTO.Value                    := 0;
               qrEntradaPacienteDetalleDESCPCT.Value               := 0;
               qrEntradaPacienteDetalleCOMBO.Value                 := 1; //LA PRUEBA ES UN COMBO.
               qrEntradaPacienteDetallePrecio.Value                := 0;
               qrEntradaPacienteDetalleDescPct.Value               := 0;
               qrEntradaPacienteDetalleFacturar.Value              := 0;
               qrEntradaPacienteDetalleDescuento.Value             := 0;
               qrEntradaPacienteDetalleCoberturaAplica.Value       := 0;
               qrEntradaPacienteDetalleCoberturaExpPorc.Value      := 0;
               qrEntradaPacienteDetalleCoberturaEspecial.Value     := 0;
               qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
             End;
         end;
     End;

    //Validaciones de las Pruebas de Seguro.
    If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) and (CupID = 0) Then
      Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value);
  end;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteDetallePruebaIDValidate(Sender: TField);
begin
  inherited;
  Begin
    qrEntradaPacienteDetalle.Edit;
    qfindprueba := DM.Find_Ldr('Select * From PtPrueba (nolock) WHERE PruebaID = :pru',qrEntradaPacienteDetallePruebaID.value);

    If qfindprueba.RecordCount = 0 then
      raise exception.CreateFmt('El c�digo de prueba digitado no existe.',[]);

    If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
       (qrEntradaPacienteTipoDocumento.Value = 3) Or
       (qrEntradaPacienteFactExterior.Value = 1) Or
       (CbDocumento.ItemIndex = 3) Then
      Begin
        //Registrando las Pruebas en Dollares del Exterior.
        qfindRepetir := DM.NewQuery;
        qfindRepetir.Close;
        qfindRepetir.SQL.Text := ' Select * From PtPrueba (nolock) '+
                                 ' Where Exterior = 1 '+
                                 ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                 ' AND PruebaID = :pru ';
        qfindRepetir.Parameters.ParamByName('pru').Value := qrEntradaPacienteDetallePruebaID.Value;
        qfindRepetir.Open;
      end
    Else
      Begin
        //Validando la 2da. Muestra.
//        if ( qrEntradaPacienteRepMuestra.Value = True And Act_2da = True) Then
        if (Act_2da = True) Then
          Begin
            qfindRepetir := DM.NewQuery;
            qfindRepetir.Close;
            qfindRepetir.SQL.Text := ' SELECT * FROM PTEntradaPacienteDetalle (nolock)'+
                                     ' WHERE RefRecId = :rec '+
                                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                     ' AND MuestraNo = :num '+
                                     ' AND PruebaId = :pru '+
                                     ' AND RepMuestra = 1 ';
            qfindRepetir.Parameters.ParamByName('rec').Value := Record_Ant;
            qfindRepetir.Parameters.ParamByName('num').Value := Muestra_Ant;
            qfindRepetir.Parameters.ParamByName('pru').Value := qrEntradaPacienteDetallePruebaID.Value;
            qfindRepetir.Open;

            if (qfindRepetir.RecordCount > 0) then
              Begin
                if (qfindRepetir.FieldByName('RepRealizada').AsInteger = 0) then
                  Begin
                    qrEntradaPacienteDetalleRepMuestra.Value := 1;
                    qrEntradaPacienteDetalleRepRealizada.Value := 1;
                    qrEntradaPacienteDetalleMuestraAnt.Value := Muestra_Ant;
                    DM.Info('La Prueba: ('+ qfindRepetir.FieldByName('Descripcion').AsString +') Es Una 2da. Muestra.');
                  End
                Else
                  Begin
                    qrEntradaPacienteDetalle.Delete;
                    Raise exception.CreateFmt('La Repeticion de la Prueba: ('+ qfindprueba.FieldByName('Descripcion').AsString + ').' + #13 +
                                              'Ya Fue Realizada en la Muestra Num.: ('+ qfindprueba.FieldByName('MuestraAnt').AsString + ').'+ #13 +
                                              'Por Favor Verifique.!!!', []);
                  End;
              End
            Else
              Begin
                qrEntradaPacienteDetalle.Delete;
                Raise exception.CreateFmt('Esta Prueba: ('+ qfindprueba.FieldByName('Descripcion').AsString +'). NO Existe en la Factura Anterior.', []);
              End;
          End;
      End;
  End;

End;


procedure TfrmPuntoVenta.qrEntradaPacienteDoctorIDChange(Sender: TField);
begin
  inherited;
//  Buscar_Doctor;
end;

procedure TfrmPuntoVenta.EdDoctorDblClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7984);
end;

procedure TfrmPuntoVenta.EdDoctorPropertiesChange(Sender: TObject);
begin
  inherited;
  Buscar_Doctor;
end;

procedure TfrmPuntoVenta.EdNombreDoctorDblClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7984);
end;

procedure TfrmPuntoVenta.Buscar_Doctor;
var
 qfind : TADOQuery;
begin
  inherited;
  if (qrEntradaPaciente.State in [dsInsert,dsEdit]) And (EdDoctor.Text <> '') then
  begin
//   qfind := DM.Find('Select * from PTDoctor Where DoctorId = :doc', qrEntradaPacienteDoctorID.Value);
   qfind := DM.Find_Ldr('SELECT * FROM PTDoctor (nolock) WHERE DoctorId = :doc', EdDoctor.Text);

   qrEntradaPacienteDoctorID.Value              := qfind.FieldByName('DoctorId').AsString;
   qrEntradaPacienteNombreDoctor.Value          := qfind.FieldByName('Nombre').AsString;
   if cxDBImageComboBox7.ItemIndex = 1 then
      qrEntradaPacienteFax.Value                   := qfind.FieldByName('Telefono').AsString
   else
   if cxDBImageComboBox7.ItemIndex = 2 then
      qrEntradaPacienteFax.Value                   := qfind.FieldByName('Fax').AsString;

   qrEntradaPacienteResultadoDoctor.Value       := qfind.FieldByName('ResultadoDoctor').AsInteger;
   qrEntradaPacientePublicarInternetDoctor.Value:= qfind.FieldByName('PublicarInternet').AsInteger;

   if (qfind.FieldByName('DoctorId').AsInteger = 1) then
   Begin
       qrEntradaPacienteNombreDoctor.Value := '';
       EdNombreDoctor.Properties.ReadOnly := False;
   end
   else
     EdNombreDoctor.Properties.ReadOnly := True;
   FreeAndNil(qfind);
  end;
end;
procedure TfrmPuntoVenta.Buscar_Diagnostico;
begin
  inherited;
  if (qrEntradaPaciente.State in [dsInsert,dsEdit]) And (EdDiagn.Text <> '') then
  begin
//   qfind := DM.Find('Select * from PTDoctor Where DoctorId = :doc', qrEntradaPacienteDoctorID.Value);
    qrEntradaPacienteCod_Diag.Value := EdDiagn.EditValue;
  end;
end;
procedure TfrmPuntoVenta.BuscarDoctor;
Var strDoctor,strVerifDoctor : String;
    vIdx      : integer;
    qrDoctorArs : TAdoQuery;
begin
  inherited;
    if Dm.WsArsID = GrupoArsSDS then
    begin
          spMensaje.Visible := True;
          StrDoctor := '%'+StringReplace(edbuscar.Text, ' ', '%', [rfReplaceAll, rfIgnoreCase])+'%';
          qrDoctorArs := DM.NewQuery;
          qrDoctorArs := DM.Find('SELECT * FROM PtDoctorArs (nolock) WHERE Nombre like :cli', StrDoctor);
          DsDoctores.Enabled    := False;
          if not mdDoctores.Active then
            mdDoctores.Active := true;
          mdDoctores.EmptyTable;
        if Not(qrEntradaPacienteClienteID.Value = 'C00392') then
        Begin
          mdDoctores.Append;
          mdDoctoresSecuencia.AsInteger    := vIdx;
          mdDoctoresSeleccion.AsBoolean    := False;
          mdDoctoresCodigo_Doctor.AsString := '0';
          mdDoctoresNombre.AsString        := qrEntradaPacienteNombreDoctor.Value;
          mdDoctoresTipo.AsString          := 'M';
          mdDoctoresEstatus.AsString       := 'Activo';
        End;
          vIdx := 0;
          while not qrDoctorArs.Eof do
          Begin
            mdDoctores.Append;
            vIdx := vIdx+1;
            mdDoctoresSecuencia.AsInteger    := vIdx;
            mdDoctoresSeleccion.AsBoolean    := False;
            mdDoctoresCodigo_Doctor.AsString := qrDoctorArs.FieldByName('Codigo').Value;
            mdDoctoresNombre.AsString        := qrDoctorArs.FieldByName('Nombre').Value;
            mdDoctoresTipo.AsString          := qrDoctorArs.FieldByName('Tipo').Value;
            mdDoctoresEstatus.AsString       := 'Activo';
            qrDoctorArs.Next;
            mdDoctores.Next;
          End;
          mdDoctores.First;
          dsDoctores.Enabled := True;
          spMensaje.Visible := False;
          spDoctor.Visible  := True;
          FreeAndNil(qrDoctorArs);
    end
    else
    if Dm.WsArsID = GrupoArsUniversal then
    begin
        spMensaje.Visible := true;
        vArrayOfRecDoctor := 0;
        strDoctor       := '%'+StringReplace(edbuscar.Text, ' ', '%', [rfReplaceAll, rfIgnoreCase])+'%';
        strVerifDoctor    := WSUniv.Verifica_Doctor(strDoctor);
        If strVerifDoctor = 'S' then
        begin
            vArrayOfRecDoctor := WSUniv.Buscar_Doctor2(strDoctor);
        end;
        DsDoctores.Enabled := False;
        if not mdDoctores.Active then
          mdDoctores.Active := true;
        mdDoctores.EmptyTable;
        vIdx := 0;
        if Not(qrEntradaPacienteClienteID.Value = 'C00389') then
        Begin
          mdDoctores.Append;
          mdDoctoresSecuencia.AsInteger    := vIdx;
          mdDoctoresSeleccion.AsBoolean    := False;
          mdDoctoresCodigo_Doctor.AsString := '99999';
          mdDoctoresNombre.AsString        := qrEntradaPacienteNombreDoctor.Value;
          mdDoctoresTipo.AsString          := 'MEDICO';
          mdDoctoresEstatus.AsString       := 'Activo';
        End;
        for vIdx := 0 to Length(vArrayOfRecDoctor)-1 do
        begin
          mdDoctores.Append;
          mdDoctoresSecuencia.AsInteger    := vIdx+1;
          mdDoctoresSeleccion.AsBoolean    := False;
          mdDoctoresCodigo_Doctor.AsString := vArrayOfRecDoctor[vIdx].codigo;
          mdDoctoresNombre.AsString        := vArrayOfRecDoctor[vIdx].nombre;
          mdDoctoresTipo.AsString          := 'MEDICO';
          mdDoctoresEstatus.AsString       := 'Activo';
          Next;
        End;
        mdDoctores.First;
        dsDoctores.Enabled := True;
        spMensaje.Visible := False;
    end
    Else
    if Dm.WsArsID = GrupoArsPalic then
    begin
        spMensaje.Visible := True;
        vArrayOfRecDoctorPal  := 0;
        strDoctor             := '%'+StringReplace(edbuscar.Text, ' ', '%', [rfReplaceAll, rfIgnoreCase])+'%';

        vArrayOfRecDoctorPal  := GetPalicSoap(false,Dm.vURLWSDL).fbusca_doctor(strDoctor,ifThen(qrEntradaPacienteClienteId.Value='C00389','BASICO','BASICO Y PREPAGO'));
        DsDoctores.Enabled := False;
        if not mdDoctores.Active then
          mdDoctores.Active := true;
        mdDoctores.EmptyTable;
        vIdx := 0;
        if Not(qrEntradaPacienteClienteID.Value = 'C00390') then
        Begin
          mdDoctores.Append;
          mdDoctoresSecuencia.AsInteger    := vIdx;
          mdDoctoresSeleccion.AsBoolean    := False;
          mdDoctoresCodigo_Doctor.AsString := '0';
          mdDoctoresNombre.AsString        := qrEntradaPacienteNombreDoctor.Value;
          mdDoctoresTipo.AsString          := 'MEDICO';
          mdDoctoresEstatus.AsString       := 'Activo';
        End;
        for vIdx := 0 to Length(vArrayOfRecDoctorPal)-1 do
        begin
          mdDoctores.Append;
          mdDoctoresSecuencia.AsInteger    := vIdx+1;
          mdDoctoresSeleccion.AsBoolean    := False;
          mdDoctoresCodigo_Doctor.AsString := vArrayOfRecDoctorPal[vIdx].codigo;
          mdDoctoresNombre.AsString        := vArrayOfRecDoctorPal[vIdx].nombre;
          mdDoctoresTipo.AsString          := vArrayOfRecDoctorPal[vIdx].TipoRemitente;
          mdDoctoresEstatus.AsString       := 'Activo';
          Next;
        End;
        if Length(vArrayOfRecDoctorPal) > 0 then mdDoctores.First;
        dsDoctores.Enabled := True;
        spMensaje.Visible := False;
    end

end;
procedure TfrmPuntoVenta.Buscar_Doctor_Cambio;
var
 qfind : TADOQuery;
begin
  inherited;
  if (qrEntradaPaciente.State in [dsInsert,dsEdit]) And (EdDoctor.Text <> '') then
  begin
     qfind := DM.Find_Ldr('SELECT * FROM PTDoctor (nolock) WHERE DoctorId = :doc', EdDoctor.Text);
     if cxDBImageComboBox7.ItemIndex = 1 then
        qrEntradaPacienteFax.Value                   := qfind.FieldByName('Telefono').AsString
     else
     if cxDBImageComboBox7.ItemIndex = 2 then
        qrEntradaPacienteFax.Value                   := qfind.FieldByName('Fax').AsString;
     qrEntradaPacientePublicarInternetDoctor.Value:= qfind.FieldByName('PublicarInternet').AsInteger;
     FreeAndNil(qfind);
  end;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteNombrePacienteValidate(Sender: TField);
begin
  inherited;
  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value) Or
     (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSoc.Value) Or
     (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoProy.Value) Then
    begin
      If (qrEntradaPacientePolizaID.Value = EmptyStr) Then
        Begin
          qrEntradaPacientePolizaID.Value := qrEntradaPacienteNombrePaciente.Value;
        end;
    end;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteTipoDocumentoChange(Sender: TField);
begin
 inherited;
 if qrEntradaPacienteTipoDocumento.Value = 2 then
    factor := -1
 else
    factor := 1;

 if qrEntradaPaciente.State in [dsedit, dsinsert] then RecalcularLineas;
end;


procedure TfrmPuntoVenta.qrEntradaPacienteTipoEntradaChange(Sender: TField);
begin
  inherited;
  If (qrEntradaPacienteTipoEntrada.Value = 'D') then
    qrEntradaPacienteFormadePago.Value := 'CE'
  Else
    qrEntradaPacienteFormadePago.Value := 'EFE';

  Val_Forma_Pago(qrEntradaPacienteFormadePago.Value);
end;


procedure TfrmPuntoVenta.Materiales1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7982, qrEntradaPacienteRECID.AsString);
end;


function TfrmPuntoVenta.MaxSecuenciaLinea : Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
// qfind.SQL.Text := 'Select max(Secuencia) from PTEntradaPacienteDetalle Where refRecid = '+ inttostr(_recorId);
 qfind.SQL.Text := ' SELECT MAX(Secuencia) FROM PTEntradaPacienteDetalle (nolock) WHERE refRecid = '+ IntToStr(qrEntradaPacienteRECID.Value);
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;


function TfrmPuntoVenta.Buscar_Linea: Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT MAX(LineaNo) FROM PTMaterialesFactura (nolock) ';
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;

procedure TfrmPuntoVenta.MenuItem1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7988);
end;



procedure TfrmPuntoVenta.ActTotales;
Var
 qfind : TADOQuery;
begin
 If (qrEntradaPacienteDetalle.RecordCount > 0) Then
 Begin
     ActDetalle;
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := ' SELECT SUM(Precio), SUM(DescuentoLineaAplicado), '+
                       ' SUM(CoberturaAplicada), SUM(Adicional) '+
                       ' FROM PTEntradaPacienteDetalle (nolock)'+
                       ' WHERE refRecid = '+ inttostr(qrEntradaPacienteRECID.Value) +
                       ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
     inttostr(qrEntradaPacienteRECID.Value);
     qfind.Open;

     qrEntradaPaciente.Edit;
     //Redondeo de los Valores del Punto de Venta.
//     qrEntradaPacienteBruto.Value := Dm.Redondeo(qfind.Fields[0].AsFloat);
     qrEntradaPacienteBruto.Value       := Dm.Redondeo(qfind.Fields[0].AsFloat + qfind.Fields[3].AsFloat);
     qrEntradaPacienteDescuento.Value   := Dm.Redondeo(qfind.Fields[1].AsFloat + qrEntradaPacienteDescuentoBono.Value);
     qrEntradaPacienteSubTotal.Value    := Dm.Redondeo(qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value);
//     qrEntradaPacienteCoberturaSeguro.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);

     If (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
       Begin
         qrEntradaPacienteCoberturaSeguro.Value             := Dm.Redondeo(qfind.Fields[2].AsFloat);
         qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);
       end
     Else
       Begin
         qrEntradaPacienteCoberturaSeguro.Value             := 0;
         qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);
       end;

//     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
       If (qrEntradaPacienteTipoDocumento.Value = 3) Or
        (qrEntradaPacienteFactExterior.Value = 1) Then
       qrEntradaPacienteGastosVarios.Value := Dm.Redondeo(DM.TotalGastosVariosUsa(qrEntradaPacienteRECID.Value))
     Else
       qrEntradaPacienteGastosVarios.Value := Dm.Redondeo(DM.TotalGastosVarios(qrEntradaPacienteRECID.Value));

     qrEntradaPacienteNeto.Value := Dm.Redondeo(qrEntradaPacienteSubTotal.Value -
                                                qrEntradaPacienteCoberturaSeguro.Value +
                                                qrEntradaPacienteGastosVarios.Value);
     FreeAndNil(qfind);
   End
 Else
 Begin
     //Redondeo de los Valores del Punto de Venta.
     qrEntradaPaciente.Edit;
     qrEntradaPacienteBruto.Value := 0;
     qrEntradaPacienteDescuento.Value := 0;
//     qrEntradaPacienteDescuentoPorC.Value := 0;
     qrEntradaPacienteSubTotal.Value := 0;
     qrEntradaPacienteNeto.Value := 0;
//     qrEntradaPacienteTotalPagado.Value := 0;
//     qrEntradaPacienteTotalPendiente.Value := 0;
     qrEntradaPacienteCoberturaSeguro.Value := 0;
     qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
 End;
{
 ActDetalle;

 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio), SUM(DescuentoLineaAplicado), '+
                   ' SUM(CoberturaAplicada), SUM(Adicional) '+
                   ' FROM PTEntradaPacienteDetalle '+
                   ' WHERE refRecid = '+ inttostr(qrEntradaPacienteRECID.Value);
//                   ' FROM PTEntradaPacienteDetalle WHERE refRecid = '+ inttostr(_recorId);
inttostr(qrEntradaPacienteRECID.Value);
 qfind.Open;

// CALCULO ANTERIOR. // qrEntradaPacienteBruto.Value := qfind.Fields[0].AsFloat;
// CALCULO ANTERIOR. //  qrEntradaPacienteDescuento.Value := qfind.Fields[1].AsFloat;
// CALCULO ANTERIOR. //  qrEntradaPacienteSubTotal.Value := qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value;
// CALCULO ANTERIOR. //  qrEntradaPacienteCoberturaSeguro.Value := qfind.Fields[2].AsFloat;
// CALCULO ANTERIOR. //  qrEntradaPacienteGastosVarios.Value := DM.TotalGastosVarios(qrEntradaPacienteRecid.Value);
// CALCULO ANTERIOR. //  qrEntradaPacienteNeto.Value := qrEntradaPacienteSubTotal.Value - qrEntradaPacienteCoberturaSeguro.Value + qrEntradaPacienteGastosVarios.Value;

 //Redondeo de los Valores del Punto de Venta.
// qrEntradaPacienteBruto.Value := Int(qfind.Fields[0].AsFloat);
 qrEntradaPacienteBruto.Value := Int(qfind.Fields[0].AsFloat) + Int(qfind.Fields[3].AsFloat);
 qrEntradaPacienteDescuento.Value := Int(qfind.Fields[1].AsFloat + qrEntradaPacienteDescuentoBono.Value);
 qrEntradaPacienteSubTotal.Value := Int(qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value);
// qrEntradaPacienteCoberturaSeguro.Value := Int(qfind.Fields[2].AsFloat);

 If (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
   Begin
     qrEntradaPacienteCoberturaSeguro.Value := Int(qfind.Fields[2].AsFloat);
     qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := Int(qfind.Fields[2].AsFloat);
   end
 Else
   Begin
     qrEntradaPacienteCoberturaSeguro.Value := 0;
     qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := Int(qfind.Fields[2].AsFloat);
   end;

 If ( qrEntradaPacienteTipoDocumento.Value = 3 ) Or
    ( qrEntradaPacienteFactExterior.Value = 1 ) Then
   qrEntradaPacienteGastosVarios.Value := Round(DM.TotalGastosVariosUsa(qrEntradaPacienteRECID.Value))
 Else
   qrEntradaPacienteGastosVarios.Value := Int(DM.TotalGastosVarios(qrEntradaPacienteRECID.Value));

 qrEntradaPacienteNeto.Value := Int(qrEntradaPacienteSubTotal.Value -
                                    qrEntradaPacienteCoberturaSeguro.Value +
                                    qrEntradaPacienteGastosVarios.Value);

 FreeAndNil(qfind);
}
end;


procedure TfrmPuntoVenta.AsignarDescuentoAutorizadoporCobros1Click(
  Sender: TObject);
begin
 Dm.Info('Esta Opcion Esta Desactivada. Utilice el Descuento Permitido al Usuario.');
 Beep;
//  inherited;
//  frmMain.LanzaVentana(-7986);

end;


procedure TfrmPuntoVenta.AsignarDescuentoPermitidoalEmpleado1Click(
  Sender: TObject);
begin
  inherited;
  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) And
     (qrEntradaPacienteCoberturaSeguro.Value > 1) Then
  begin
      if Trim(qrEntradaPacientePacienteID.Value) <> EmptyStr then
      Begin
          if (Not DM.Empleado_Existe(qrEntradaPacientePacienteID.Value)) And (Dm.CurDescuentoTope = 0) then
            EtMensajeDlg('Empleado ('+qrEntradaPacienteNombrePaciente.Value+') NO pertenece a este Grupo � no est� activo.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
          else
            frmMain.LanzaVentana(-7989,2);
      end;
  end
  else
  begin
            EtMensajeDlg('Orden s�lo aplicable a Tipo-Cliente Seguros con Paciente=Empleado Referencia y Asignado el Monto Cobertura del Seguro.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
  end;
end;

procedure TfrmPuntoVenta.AsignarDescuentoPermitidoalUsuario1Click(
  Sender: TObject);
begin
  inherited;
  if dm.Verifica_Pago(inttostr(qrEntradaPacienteRecid.value)) = 0 then
    frmMain.LanzaVentana(-7989,0)
  else
    EtMensajeDlg('Entrada No puede aplicar % descuento, realiz� pago factura.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
end;


procedure TfrmPuntoVenta.AsignarDescuentoTarjeta1Click(Sender: TObject);
begin
  inherited;
  if dm.Verifica_Pago(inttostr(qrEntradaPacienteRecid.value)) = 0 then
    frmMain.LanzaVentana(-7989,1)
  else
    EtMensajeDlg('Entrada No puede aplicar % descuento, realiz� pago factura.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)

end;

procedure TfrmPuntoVenta.RecalcularLineas;
begin
 qrEntradaPacienteDetalle.DisableControls;
 qrEntradaPacienteDetalle.First;

 while not qrEntradaPacienteDetalle.Eof do
 begin
  qrEntradaPacienteDetalle.Properties['Update Criteria'].Value := 0;
  qrEntradaPacienteDetalle.Edit;
  if (factor > 0) and (qrEntradaPacienteDetallePrecio.Value < 0 ) then
     qrEntradaPacienteDetallePrecio.Value := qrEntradaPacienteDetallePrecio.Value * -1
   else
    if (factor < 0) and (qrEntradaPacienteDetallePrecio.Value > 0 ) then
       qrEntradaPacienteDetallePrecio.Value := qrEntradaPacienteDetallePrecio.Value * factor;

  qrEntradaPacienteDetalle.Post;
  qrEntradaPacienteDetalle.Next;
 end;

 qrEntradaPacienteDetalle.First;
 qrEntradaPacienteDetalle.EnableControls;
end;



procedure TfrmPuntoVenta.RecibodeCobro1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntradaID.AsString <> EmptyStr then
  begin
    frmMain.LanzaConsulta(-7994, qrEntradaPacienteRECID.AsString);
  end;
end;

procedure TfrmPuntoVenta.EliminarDescuentoAplicado1Click(Sender: TObject);
begin
  inherited;
  qrEntradaPaciente.Edit;
  qrEntradaPacienteDescuentoPorc.Value  := 0;
  qrEntradaPacienteDescuento.Value      := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteDescAutorizadoPor.value := '';
  ActTotales;
end;


procedure TfrmPuntoVenta.EliminarOrdenesenHold1Click(Sender: TObject);
begin
  inherited;
  //Eliminando Los Documentos en Hold.
  Del_Hold;
//  Showmessage(DateToStr(FechaPrometida(qrEntradaPacienteDetallePruebaId.Value)));
end;


procedure TfrmPuntoVenta.MarcarPruebaNOProcesar1Click(Sender: TObject);
begin
  inherited;
  No_Procesar;
end;


function TfrmPuntoVenta.ExisteCobro : Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTCobro (nolock) WHERE CobroID = '+ #39 + cobroid + #39 +
                   ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39 +
                   ' AND EntradaId = '+ #39 + qrEntradaPacienteEntradaId.AsString + #39;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := True
 else
   result := false;

 FreeAndNil(qfind);
end;


function TfrmPuntoVenta.TipoCobro : String;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTCobro (nolock) WHERE CobroID = '+ #39 + cobroid + #39 +
                   ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39 +
                   ' AND EntradaId = '+ #39 + qrEntradaPacienteEntradaId.AsString + #39;
 qfind.Open;

 result := qfind.fieldbyname('TipoDoc').asstring;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta.DesabilitarBotones(_SiNo : Boolean);
begin
 btcliente.Enabled := not _SiNo;
 btHold.Enabled := not _SiNo;
 btpaciente.Enabled := not _SiNo;
 btprueba.Enabled := not _SiNo;
 btentrada.Enabled := not _SiNo;
 btcancelar.Enabled := not _SiNo;
 bteliminar.Enabled := not _SiNo;
 btgrabar.Enabled := not _SiNo;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR. btcobrar.Enabled := not _SiNo;
// btnotacredito.Enabled := not _SiNo;

 If ( CanMenuEspecial = True ) Then
   btnotacredito.Enabled := not _SiNo
 Else
   btnotacredito.Enabled := False;

// If (qfindSucursal.FieldByName('Impresiones').AsBoolean <> True) Then
 If (qfindSucursal.FieldByName('Impresiones').AsInteger <> 1) Then
    btimprimir.Enabled := False
 Else
   btimprimir.Enabled := not _SiNo;

 ConfirmarCobertura1.Enabled := not _SiNo;
 edcobexpporc.Properties.ReadOnly := not _SiNo;
 edcoberturavalor.Properties.ReadOnly := not _SiNo;

 Asignar2daMuestra1.Enabled := not _SiNo;
 EliminarDescuentoAplicado1.Enabled := not _SiNo;
 RegistrarPruebadelExterior1.Enabled := not _SiNo;
 CambiarLaboratorioNoenlasLineas1.Enabled := not _SiNo;
 AsignarDescuentoPermitidoalUsuario1.Enabled := not _SiNo;
 AsignarDescuentoPermitidoalEmpleado1.Enabled := not _SiNo;
 AsignarDescuentoAutorizadoporCobros1.Enabled := not _SiNo;
 AsignarDescuentoTarjeta1.Enabled             := not _SiNo;
end;


procedure TfrmPuntoVenta.Devoluciones1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntradaID.AsString <> EmptyStr then
  begin
    frmMain.LanzaConsulta(-7991, qrEntradaPacienteRECID.AsString,'DV');
  end;
end;

procedure TfrmPuntoVenta.DistribucionCaja1Click(Sender: TObject);
begin
  inherited;
     frmMain.LanzaVentana(-7981);
     if (Tiene_Balance = 0) Then
     Begin
        Raise exception.CreateFmt('Contrase�a no V�lida.  Por Favor Verifique.', []);
     end
     else
        frmMain.LanzaConsulta(-7992, dm.CurUser,formatdatetime('yyyymmdd',DM.Buscar_Fecha_Actual));
end;

procedure TfrmPuntoVenta.dsEntradaPacienteStateChange(Sender: TObject);
var ds: string;
begin
  inherited;
 case qrEntradaPaciente.State of
  dsInactive: ds:='Closed';
  dsBrowse  : ds:='Browsing';
  dsEdit    : ds:='Editing';
  dsInsert  : ds:='New record inserting';
 else
  ds:='Other states'
 end
end;

procedure TfrmPuntoVenta.edbuscarExit(Sender: TObject);
begin
  inherited;
  if (edbuscar.Text <> '') then
    BuscarDoctor;
end;

procedure TfrmPuntoVenta.EdCoberturaValorExit(Sender: TObject);
begin
  inherited;
  Act_Cobertura
end;


procedure TfrmPuntoVenta.EDDIAGNPropertiesChange(Sender: TObject);
begin
  inherited;
  Buscar_Diagnostico;
end;

procedure TfrmPuntoVenta.Act_Cobertura;
begin
 if qrEntradaPaciente.State in [dsedit, dsinsert] then
  begin
    qrEntradaPacienteDescuentoValor.Value := 0;
    Val_Descuento;
//    VerificarPagoDiferencia;
//    ActTotales;
  end;
end;


function TfrmPuntoVenta.GetNextSecDoc(tipodoc : string) : String;
var
 qsecdoc : TADOQuery;
begin
 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+tipodoc+#39+',');
   Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400,@r_result3 as UsarIdentificador');
   Open;
   if not IsEmpty then
   begin
       If (FieldByName('UsarIdentificador').AsBoolean) then
        result := tipodoc+
                  FormatFloat('000', qfindSucursal.FieldByName('SUCURSAL').AsFloat) +
                  FormatFloat('000000', FieldByName('Secuencia').AsFloat)
       Else
        result := FormatFloat('000', qfindSucursal.FieldByName('SUCURSAL').AsFloat) +
                  FormatFloat('000000', FieldByName('Secuencia').AsFloat);

   end;
 end;
 FreeAndNil(qsecdoc);
end;


procedure TfrmPuntoVenta.GastosVarios1Click(Sender: TObject);
begin
  inherited;
 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
    (qrEntradaPacienteTipoDocumento.Value = 3) Or
    (qrEntradaPacienteFactExterior.Value = 1) Then
   begin
      frmMain.lanzaConsulta(-7984, qrEntradaPacienteRECID.AsString);
   end;
//  frmMain.LanzaVentana(-7984, qrEntradaPacienteRECID.asstring);
end;

function TfrmPuntoVenta.GetEntradaID : String;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

  Case qrEntradaPacienteTipoDocumento.Value of
   0 : begin
        result := GetNextSecDoc('FAC');
       end;

   1 : begin
        result := GetNextSecDoc('COT');
       end;

   2 : begin
        result := GetNextSecDoc('DEV');
       end;

   3 : begin
        result := GetNextSecDoc('EXT');
       end;
  end;
end;


function TfrmPuntoVenta.GetEntradaID_Hold : String;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 result := GetNextSecDoc('HOL');
end;

procedure TfrmPuntoVenta.Boton_Cobrar;
begin
 If ( qrEntradaPacienteNeto.Value > 0.00 ) And
    ( qrentradaPacienteBruto.Value > 0.00 ) And
    ( qrEntradaPacienteTotalPendiente.Value > 0.00 ) And
    ( (qrEntradaPacienteTipoDocumento.Value = 0) Or
      (qrEntradaPacienteTipoDocumento.Value = 3) ) Then
  Begin
//    CrearCobro;
    RefrescarCobro;
    if cobroid=Emptystr then
    begin
         Raise exception.CreateFmt( ' NO Se Pudo Generar el Recibo de Ingreso. '+ #13 +
                                    ' Se Ha Generado Un Error en el cobroID. '+ #13 +
                                    ' Por Favor, Intentelo Nuevamente.!!!', []);

    end;
    if (Act_2da = False) then
    Begin
        If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
           (qrEntradaPacienteTipoDocumento.Value = 3) Or
           (qrEntradaPacienteFactExterior.Value = 1) Or
           (qrEntradaPacienteMonedaID.Value = DM.qrParametroMonedaDolares.Value) Then
              frmMain.LanzaVentana(-8011)
        else
              frmMain.LanzaVentana(-8010);
    end;
  End
 else
  beep;
end;


procedure TfrmPuntoVenta.Viejo_Cobrar;
begin
  inherited;
  if qrEntradaPacienteNeto.Value <> 0 then
   begin
     CrearCobro;
     RefrescarCobro;
//     frmMain.LanzaVentana(-7997);

    If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
       (qrEntradaPacienteTipoDocumento.Value = 3) Or
       (qrEntradaPacienteFactExterior.Value = 1) Then
      frmMain.LanzaVentana(-8011)
    else
      frmMain.LanzaVentana(-8010);
   end
  else
   beep;
end;


//LLenando la Tabla para los Cobros.
procedure TfrmPuntoVenta.CotizaFacturaClick(Sender: TObject);
begin
  inherited;
  If Copy(qrEntradaPacienteEntradaid.value,1,3)='HOL' Then
  begin
      DM.qrParametro.close;
      DM.qrParametro.open;
      Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FC');
      ppImpCotiza.ShowPrintDialog           := False;
      ppImpCotiza.ShowAutoSearchDialog      := True;
      ppImpCotiza.DeviceType                := dtScreen;
      ppImpCotiza.PrinterSetup.PaperHeight  := 8.5;
      ppImpCotiza.PrinterSetup.PaperName    := 'Custom';
      ppImpCotiza.PrinterSetup.PaperWidth   := 4;
      If Ruta_Factura <> EmptyStr then ppImpCotiza.PrinterSetup.PrinterName  := Ruta_Factura;
      ppImpCotiza.Print;
  end;
end;

procedure TfrmPuntoVenta.CrearCobro;
Var
 qinsert    : TADOQuery;
 qformapago : TADOQuery;
 monto      : Currency;
 busqueda   : String;
 sql        : String;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

 pendiente := 0;
// cobroid := IntToStr(DM.Get_Secuencia('Secuencia'));
 cobroid := DM.Get_Secuencia_Big('COBRO', DM.CurSucursal);

 DM.qrParametro.Close;
 DM.qrParametro.Open;
 qinsert := DM.NewQuery;
 Try
     With qinsert,sql do
     begin
         Close;
         Clear;
         Add(' INSERT INTO PTCobro (CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid,TotalFactura,'+
               ' TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc,EntradaId,SinPrFilter,RecId) '+
               ' VALUES ('+#39+cobroid+#39+','+#39+DM.CurSucursal+#39+','+#39+FormatDateTime('yyyymmdd', DM.SystemDate)+#39+','#39+DM.Buscar_Hora_Actual+#39+','+#39+qrEntradaPacientePacienteID.Value+#39+','+#39+qrEntradaPacienteFLEBOTOMISTAID.Value+#39+','+
                        IntToStr(qrEntradaPacienteRECID.Value)+','+FloatToStr(DM.Redondeo(qrEntradaPacienteNeto.Value))+','+FloatToStr(DM.Redondeo(qrEntradaPacienteTotalPagado.Value))+','+
                        FloatToStr(DM.Redondeo(qrEntradaPacienteTotalPendiente.Value))+','+#39+qrEntradaPacienteClienteID.Value+#39+','+('0')+','+
                        #39+qrEntradaPacienteMonedaID.Value+#39+','+#39+'RI'+#39+','+#39+qrEntradaPacienteEntradaId.Value+#39+','+
                        IntToStr(qrEntradaPacienteSINPRFILTER.Value)+','+IntToStr(GetSecuenciaId)+')');
         ExecSQL;
     end;
 Except
     Raise exception.CreateFmt('Error Creando PTCobro.', []);
 End;
 //Cargando las Formas de Pago en Peso.
 If (qrEntradaPacienteTipoDocumento.Value = 0) And
    (qrEntradaPacienteFactExterior.Value = 0) And
    (qrEntradaPacienteMonedaID.Value <> DM.qrParametroMonedaDolares.Value) Then
   Begin
     qformapago := DM.NewQuery;
     qformapago.close;

     sql := ' SELECT * FROM PTFormaDePago (nolock) '+
            ' WHERE moneda = '+ #39 + DM.qrParametroMonedaID.Value + #39 +
             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
    if dm.CurRolPagoEfectivo = False then
    begin
     sql:=sql+' And FormadePagoID Not IN ('+#39+'EFE'+#39+')';
    end;
    if dm.CurRolPagoTC = False then
    begin
     sql:=sql+' And FormadePagoID Not IN ('+#39+'TC'+#39+')';
    end;
    if dm.CurRolPagoTD = False then
    begin
     sql:=sql+' And FormadePagoID Not IN ('+#39+'TD'+#39+')';
    end;
    if dm.CurRolPagoCK = False then
    begin
     sql:=sql+' And FormadePagoID Not IN ('+#39+'CK'+#39+')';
    end;
    qformapago.SQL.Text := sql;
    qformapago.Open;
   end;

 //Cargando las Formas de Pago en Dolares.
 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
    (qrEntradaPacienteTipoDocumento.Value = 3) Or
    (qrEntradaPacienteFactExterior.Value = 1) Or
    (qrEntradaPacienteMonedaID.Value = DM.qrParametroMonedaDolares.Value) Then
   Begin
     qformapago := DM.NewQuery;
     qformapago.close;
      SQL := ' SELECT * FROM PTFormaDePago (nolock) '+
                            ' WHERE moneda = '+ #39 + DM.qrParametroMonedaDolares.Value + #39 +
                            ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
    If dm.CurRolPagoUS = False then
    begin
      sql:=sql+' And FormadePagoID NOT ('+#39+'CASH'+#39+')';
    end;
    qformapago.SQL.Text := sql;
    qformapago.Open;
   end;

 Try
     monto := qrEntradaPacienteTotalPendiente.Value;
     pendiente := qrEntradaPacienteTotalPendiente.Value;
     qformapago.First;
     while not qformapago.Eof do
     begin
         monto := 0;  //Para Obligar a Registrar el Monto Correspondiente.
         With qinsert,sql do
         begin
             Close;
             Clear;
             Add('  INSERT INTO PTCobroDetalle (CobroID, FormaDePagoID, Monto, Orden, '+
                         ' RefRecid, MonedaID, MontoMST, SinPrFilter, RecId) '+
                         ' VALUES ('+#39+cobroid+#39+','+#39+qformapago.FieldByName('FormaDePagoId').AsString+#39+','+
                            FloatToStr(monto)+','+#39+qformapago.FieldByName('Orden').AsString+#39+','+
                            IntToStr(qrEntradaPacienteRECID.Value)+','+#39+qformapago.FieldByName('Moneda').AsString+#39+','+
                            FloatToStr(DM.ValorMoneda(monto,qrEntradaPacienteMonedaID.Value,DM.qrParametroMonedaID.Value, DM.SystemDate))+','+
                            IntToStr(qrEntradaPacienteSINPRFILTER.Value)+','+IntToStr(GetSecuenciaId)+')');
             ExecSQL;
         end;
         qformapago.Next;
     end;
 Except
     Raise exception.CreateFmt('Error Creando PTCobroDetalle.', []);
  end;

 FreeAndNil(qinsert);
 FreeAndNil(qformapago);
end;


//Llenando la Tabla Temporal Para La Pantalla de Cobro.
procedure TfrmPuntoVenta.RefrescarCobro;
Var
 sql   : String;
 qfind : TADOQuery;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Limpiar Detalle de Pago
  mdPago.Close;
  mdPago.Open;
  mdPago.First;

  while not mdPago.Eof do
  begin
     mdPago.Delete;
     mdPago.Next;
  end;
  cobroid := DM.Get_Secuencia_Big('COBRO', DM.CurSucursal);
  qfind := DM.NewQuery;
  sql := ' SELECT * FROM PTFormaDePago (nolock) '+
         ' WHERE moneda = '+ #39 + qrEntradaPacienteMonedaID.value  + #39 +
         ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  if dm.CurRolPagoEfectivo = False then
  begin
   sql:=sql+' And FormadePagoID Not IN ('+#39+'EFE'+#39+')';
  end;
  if dm.CurRolPagoTC = False then
  begin
   sql:=sql+' And FormadePagoID Not IN ('+#39+'TC'+#39+')';
  end;
  if dm.CurRolPagoTD = False then
  begin
   sql:=sql+' And FormadePagoID Not IN ('+#39+'TD'+#39+')';
  end;
  if dm.CurRolPagoCK = False then
  begin
   sql:=sql+' And FormadePagoID Not IN ('+#39+'CK'+#39+')';
  end;
  if dm.CurRolPagoUS = False then
  begin
   sql:=sql+' And FormadePagoID Not IN ('+#39+'CASH'+#39+')';
  end;
  qfind.SQL.Text := sql+' ORDER BY Orden ';
  qfind.Open;
  if qfind.IsEmpty then
  begin
      DM.Error('Error Cargando Formas de Pago en '+qrEntradaPacienteMonedaID.value+'.  Verifique.');
  end
  else
  begin
    qfind.First;
     while not qfind.Eof do
     begin
         mdPago.Insert;
         mdPagoFormaPagoID.Value  := qfind.FieldByName('FormaDePagoId').AsString;
         mdPagoFormaDePago.Value  := qfind.FieldByName('Descripcion').AsString;
         mdPagoPagado.Value       := 0;
         mdPagoOrden.Value        := qfind.FieldByName('Orden').AsInteger;
         mdPagorefrecid.Value     := StrToInt64(qrEntradaPacienteRecid.AsString);
         mdPagoMoneda.Value       := qrEntradaPacienteMonedaID.AsString;
         mdPagoCobroID.Value      := cobroid;
         mdPago.Post;
         qfind.Next;
     end;
  end;
  mdPago.First;
  FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta.ActCobro;
Var
 qupdate    : TADOquery;
 qfind      : TADOQuery;
 qfindcobro : TADOquery;
begin
{
 Try
     DM.qrParametro.close;
     DM.qrParametro.open;
     mdPago.First;
     qupdate := DM.NewQuery;
     While not mdPago.Eof do
     begin
         With qupdate, sql do
         begin
             Close;
             Text := ' UPDATE PTCobroDetalle SET '+
                     ' Monto = '+Floattostr(mdPagoPagado.Value)+', MontoMST = '+Floattostr(DM.ValorMoneda(mdPagoPagado.Value,qrEntradaPacienteMonedaID.Value,DM.qrParametroMonedaID.Value,DM.SystemDate))+
                     ' WHERE CobroID = '+#39+cobroid+#39+
                     ' AND RefRecId = '+IntToStr(qrEntradaPacienteRECID.Value)+
                     ' AND RecId = '+IntToStr(mdPagorefrecid.Value);
              ExecSQL;
         end;
         mdPago.Next;
     end;
 Except
     Raise exception.CreateFmt('Error Actualizando PTCobroDetalle. Cobroid='+cobroid+' RefRecId = '+IntToStr(qrEntradaPacienteRECID.Value)+' RecId = '+IntToStr(mdPagorefrecid.Value), []);
 End;

 Try
     qupdate := DM.NewQuery;
     With qupdate, sql do
     begin
        Close;
        Clear;
        Text := 'DELETE FROM PTCobroDetalle WHERE CobroID = '+#39+cobroid+#39+' AND Monto < 0.01 ';
        ExecSQL;
     end;
 Except
     Raise exception.CreateFmt('Error Borrando PTCobroDetalle. CobroID = '+cobroid, []);
 End;

 qfind := DM.NewQuery;
 With qfind , sql do
 begin
     Close;
     Clear;
     Text := ' SELECT Isnull(SUM(Monto),0) as Sum_Monto FROM PTCobroDetalle WHERE CobroId = '+ #39 + cobroid + #39 +
                   ' AND refRecId = '+inttostr(qrEntradaPacienteRECID.Value);
     Open;
     if IsEmpty then
        DM.Error('Error Realizando Sumatoria de Recibos.  CobroId = '+cobroid+' refRecId = '+inttostr(qrEntradaPacienteRECID.Value))
     else
     begin
         Try
             if (Fieldbyname('Sum_Monto').AsFloat > 0) then
               Begin
                 With qupdate, sql do
                 begin
                    Close;
                    Clear;
                    Add(' UPDATE PTCobro SET TotalCobrado = '+FloatToStr(DM.Redondeo(qfind.Fieldbyname('Sum_Monto').AsFloat)));
                    If (DM.Redondeo(qrEntradaPacienteTotalPendiente.Value - qfind.Fieldbyname('Sum_Monto').AsFloat) > 1) then
                        Add(' ,PendienteCobro = '+FloatToStr(DM.Redondeo(qrEntradaPacienteTotalPendiente.Value - qfind.Fieldbyname('Sum_Monto').AsFloat)))
                    Else
                       Add(' ,PendienteCobro = '+FloatToStr(0));
                    Add(' ,ReciboNo ='+#39+GetReciboNo+#39);
                    Add(' ,Aplicado = '+'1');
                    Add(' WHERE CobroID = '+#39+cobroid+#39);
                    Add(' AND refRecId  = '+InttoStr(qrEntradaPacienteRECID.Value));
                    Add(' AND EntradaId = '+#39+qrEntradaPacienteEntradaId.Value+#39);
                    ExecSQL;
                 end;
               End;
         Except
             Raise exception.CreateFmt('Error Actualizando PTCobro.  CobroID = '+cobroid+' refRecId  = '+InttoStr(qrEntradaPacienteRECID.Value)+' EntradaId = '+qrEntradaPacienteEntradaId.Value, []);
         End;
     end;
 end;

 qfindcobro := DM.NewQuery;
 With qfindcobro, sql do
 begin
    Close;
    Clear;
    Text := ' SELECT * FROM PTCobro WHERE CobroID = '+#39 + cobroid + #39 +
            ' AND refRecId = '+Inttostr(qrEntradaPacienteRECID.Value)+
            ' AND EntradaId = '+#39+qrEntradaPacienteEntradaId.AsString+#39;
    Open;
    if not isEmpty then
    begin
       Try
           if (RecordCount > 0) and (qfind.Fieldbyname('Sum_Monto').AsFloat > 0) then
           Begin
               CrearTransCliente(qrEntradaPacienteCLIENTEID.Value, 'RI', FieldByName('ReciboNo').value, 'FT',
                                 qrEntradaPacienteEntradaID.Value, FieldByName('Fecha').Value,
                                 qfind.Fieldbyname('Sum_Monto').AsFloat * -1, qrEntradaPacienteMonedaId.Value,
                                 qrEntradaPacientePACIENTEID.Value, qrEntradaPacienteSINPRFILTER.Value);
           End;
       Except
           Raise exception.CreateFmt('Error Creando ClienteTransacciones.', []);
       End;
    end;
 end;
 Try
     if (qfind.Fieldbyname('Sum_Monto').AsFloat > 0) then
     Begin
         qupdate := DM.NewQuery;
         With qupdate, sql do
         begin
                    Close;
                    Clear;
                    Text := ' INSERT INTO PTCobroAplicado (CobroID, EntradaId, MontoAplicado, RecId) '+
                            ' VALUES ('+#39+cobroid+#39+','+#39+qrEntradaPacienteEntradaID.value+#39','+
                              FloattoStr(qfind.Fieldbyname('Sum_Monto').AsFloat)+','+Inttostr(GetSecuenciaId)+')';
                    ExecSQL;
         End;
     end;
 Except
     Raise exception.CreateFmt('Error Creando PTCobroAplicado.  Cobro='+cobroid+' EntradaID='+qrEntradaPacienteEntradaID.value, []);
 End;

 ///////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
 if (qfindcobro.RecordCount > 0) and (qfind.Fieldbyname('Sum_Monto').AsFloat > 0) then
 Begin
     mdPago.First;
     while not mdPago.Eof do
     begin
         if (mdPagoPagado.Value > 0) then
         Begin
           Try
             CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'RI', cobroid,
                              qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                              qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                              qrEntradaPacienteRECID.Value, qfind.Fieldbyname('Sum_Monto').AsFloat, qrEntradaPacienteDATAAREAID.Value,
                              GetSecuenciaId, qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, DM.CurSucursal,
                              mdPagoFormaPagoID.Value, DM.Redondeo(mdPagoPagado.Value),
                              qrEntradaPacienteSINPRFILTER.Value);

           Except
                 Raise exception.CreateFmt('Error Creando PtCobroAxapta. RecId='+InttoStr(GetSecuenciaId)+' Cobroid='+cobroid+' Documento Aplica='+qrEntradaPacienteEntradaID.Value+' RefRecid='+InttoStr(qrEntradaPacienteRECID.Value)+' Forma Pago='+FloattoStr(mdPagoFormaPagoID.AsFloat), []);
           End;
         End;
         mdPago.Next;
     end;
 end;

 Try
   qrEntradaPaciente.Properties['Update Criteria'].Value := 0;
   qrEntradaPaciente.Edit;
   qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + qfind.Fieldbyname('Sum_Monto').AsFloat;
   qrEntradaPaciente.Post;
 Except
     Raise exception.CreateFmt('Error Posteando qrEntradaPaciente. Monto='+FloatTostr(qfind.Fieldbyname('Sum_Monto').AsFloat), []);
 End;

 /////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
 FreeAndNil(qfind);
 FreeAndNil(qupdate);
 FreeAndNil(qfindcobro);
 }
end;


Function TfrmPuntoVenta.buscar_valores;
Var
  valor : Boolean;
begin
  valor := True;

  efectivo  := 0;
  sumatotal := 0;
  devuelta  := 0;
  tarjetac  := 0;
  tarjetad  := 0;
  cheque    := 0;
  tpago     := 0;

  mdPago.First;
  While Not mdPago.Eof do
   Begin
     If (mdPagoFormaPagoID.Value = 'EFE') Or
        (mdPagoFormaPagoID.Value = 'CASH') Or
        (mdPagoFormaPagoID.Value = 'EFECTIVO') Then
       efectivo := DM.Redondeo(efectivo + mdPagoPagado.Value)
     Else
     begin
        If (mdPagoFormaPagoID.Value = 'TC') Then  tarjetac  := DM.Redondeo(tarjetac + mdPagoPagado.Value);
        If (mdPagoFormaPagoID.Value = 'TD') Then  tarjetad  := DM.Redondeo(tarjetad + mdPagoPagado.Value);
        If (mdPagoFormaPagoID.Value = 'CK') Then  cheque    := DM.Redondeo(cheque + mdPagoPagado.Value);
        If (mdPagoFormaPagoID.Value = 'TP') Then  tpago     := DM.Redondeo(tpago + mdPagoPagado.Value);
        sumatotal := DM.Redondeo(sumatotal + mdPagoPagado.Value);
     end;
     mdPago.Next;
   End;

   if not ((dm.CurRol = 10)) then
    begin
      if (efectivo > qrEntradaPacienteTotalPendiente.Value) Or
         (((efectivo>0) and (sumatotal>0)) and (efectivo+sumatotal > qrEntradaPacienteTotalPendiente.Value)) then
      Begin
          devuelta := DM.Redondeo((sumatotal + efectivo) - qrEntradaPacienteTotalPendiente.Value);
      end;
    end;
  If ((sumatotal > qrEntradaPacienteTotalPendiente.Value) And not(dm.CurRol = 10)) Or
     ((efectivo  >= qrEntradaPacienteTotalPendiente.Value) And (sumatotal > 0)) Or
     ((sumatotal >= qrEntradaPacienteTotalPendiente.Value) And (efectivo > 0))  Then
  Begin
     valor := False;
  end;
  Result := valor;
end;


procedure TfrmPuntoVenta.correccion;
begin
  mdPago.First;
  While Not mdPago.Eof do
   Begin
     If (mdPagoFormaPagoID.Value = 'EFE') Or
        (mdPagoFormaPagoID.Value = 'CASH') Or
        (mdPagoFormaPagoID.Value = 'EFECTIVO') Then
       Begin
         If (efectivo > 0.00) And (devuelta > 0.00) Then
         Begin
             mdPago.Edit;
             mdPagoPagado.Value := DM.Redondeo(efectivo - devuelta);
         End;
       End;

     mdPago.Next;
   End;
end;


function TfrmPuntoVenta.ValidarMontoCobrado : Boolean;
Var
 monto : Currency;
begin
 monto := 0;
 mdPago.First;
 while not mdPago.Eof do
 begin
  monto := DM.Redondeo(monto + mdPagoPagado.Value);
  mdPago.Next;
 end;

 if monto > qrEntradaPacienteTotalPendiente.Value then
   result := false
 else
   result := true;
end;


procedure TfrmPuntoVenta.CrearNotaCredito;
Var
 qinsert : TADOQuery;
begin
// cobroid := IntToStr(DM.Get_Secuencia('Secuencia'));
 cobroid := DM.Get_Secuencia_Big('COBRO', DM.CurSucursal);

 DM.qrParametro.Close;
 DM.qrParametro.Open;

 qinsert := DM.NewQuery;
 qinsert.Close;
 qinsert.SQL.Text := ' INSERT INTO PTCobro (CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid, '+
                     ' TotalFactura,TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc,Concepto, '+
                     ' EntradaId, SinPrFilter, RecId) VALUES '+
                     ' (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17) ';

 qinsert.Parameters[0].Value := cobroid;
 qinsert.Parameters[1].Value := DM.CurSucursal;
 qinsert.Parameters[2].Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
 qinsert.Parameters[3].Value := DM.Buscar_Hora_Actual; //TimeToStr(Time);
 qinsert.Parameters[4].Value := qrEntradaPacientePacienteID.Value;
 qinsert.Parameters[5].Value := qrEntradaPacienteFLEBOTOMISTAID.Value; //qrEntradaPacienteUserID.Value;
 qinsert.Parameters[6].Value := qrEntradaPacienteRECID.Value;
 qinsert.Parameters[7].Value := qrEntradaPacienteNeto.Value;
 qinsert.Parameters[8].Value := qrEntradaPacienteTotalPagado.Value;
 qinsert.Parameters[9].Value := qrEntradaPacienteTotalPendiente.Value;
 qinsert.Parameters[10].Value := qrEntradaPacienteClienteID.Value;
 qinsert.Parameters[11].Value := 0;
 qinsert.Parameters[12].Value := qrEntradaPacienteMonedaID.Value;
 qinsert.Parameters[13].Value := 'NC';
 qinsert.Parameters[14].Value := ConceptoNC;
 qinsert.Parameters[15].Value := qrEntradaPacienteEntradaId.Value;
 qinsert.Parameters[16].Value := qrEntradaPacienteSINPRFILTER.Value;
 qinsert.Parameters[17].Value := GetSecuenciaId;
 qinsert.ExecSQL;

 FreeAndNil(qinsert);
end;

procedure TfrmPuntoVenta.CrearDevolucion(Tipo: String;Usuario: String;Sucursal : String);
Var
 qinsert : TADOQuery;
begin
// cobroid := IntToStr(DM.Get_Secuencia('Secuencia'));
 cobroid := DM.Get_Secuencia_Big('COBRO', Sucursal);
 DM.qrParametro.Close;
 DM.qrParametro.Open;
     qinsert := DM.NewQuery;
     With qinsert, sql do
     begin
        Close;
        Text := ' INSERT INTO PTCobro (CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid, '+
                ' TotalFactura,TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc,Concepto, '+
                ' EntradaId, SinPrFilter, RecId) VALUES '+
                ' (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17) ';
         Parameters[0].Value := cobroid;
         Parameters[1].Value := Sucursal;
         Parameters[2].Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
         Parameters[3].Value := DM.Buscar_Hora_Actual; //TimeToStr(Time);
         Parameters[4].Value := qrEntradaPacientePacienteID.Value;
         Parameters[5].Value := Usuario; //qrEntradaPacienteUserID.Value;
         Parameters[6].Value := qrEntradaPacienteRECID.Value;
         Parameters[7].Value := qrEntradaPacienteNeto.Value;
         Parameters[8].Value := ValorNC;
         Parameters[9].Value := qrEntradaPacienteTotalPendiente.Value;
         Parameters[10].Value := qrEntradaPacienteClienteID.Value;
         Parameters[11].Value := 0;
         Parameters[12].Value := qrEntradaPacienteMonedaID.Value;
         Parameters[13].Value := 'DV';
         Parameters[14].Value := ConceptoNC;
         Parameters[15].Value := qrEntradaPacienteEntradaId.Value;
         Parameters[16].Value := qrEntradaPacienteSINPRFILTER.Value;
         Parameters[17].Value := GetSecuenciaId;
         ExecSQL;
     end;

     With qinsert, sql do
     begin
        Close;
        Clear;
        Text := ' INSERT INTO PTCobroDetalle (CobroID, FormaDePagoID, MonedaId, Monto, MontoMST, Orden, SinPrFilter, RefrecID, RecId) '+
                ' VALUES (:0, :1, :2, :3, :4, :5, :6, :7, :8)';
         Parameters[0].Value := cobroid;
         Parameters[1].Value := Tipo;
         Parameters[2].Value := qrEntradaPacienteMonedaID.Value;
         Parameters[3].Value := ValorNC*-1;
         Parameters[4].Value := ValorNC*-1;
         Parameters[5].Value := BuscaNumeroOrden(Cobroid);
         Parameters[6].Value := qrEntradaPacienteSINPRFILTER.Value;
         Parameters[7].Value := qrEntradaPacienteRECID.Value;
         Parameters[8].Value := GetSecuenciaId;
         ExecSQL;
     end;
 FreeAndNil(qinsert);
end;

procedure TfrmPuntoVenta.ActNotaCredito;
Var
 qupdate    : TADOquery;
 qfindcobro : TADoQuery;
begin

 qupdate := DM.NewQuery;
 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := ' UPDATE PTCobro with (rowlock) SET '+
                     ' TotalCobrado = :tot, '+
                     ' PendienteCobro = :pen, '+
                     ' ReciboNo = :rec, '+
                     ' Aplicado = :apl, '+
                     ' Concepto = :con, '+
                     ' EntradaId = :ent '+
                     ' WHERE CobroID = :cob '+
                     ' AND refRecId = :ref ';

 qupdate.Parameters.ParamByName('tot').Value := ValorNC;

 //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
 If Seg_Late then
   qupdate.Parameters.ParamByName('pen').Value := 0
 Else
   If (DM.Redondeo(qrEntradaPacienteTotalPendiente.Value - ValorNC) > 1) then
     qupdate.Parameters.ParamByName('pen').Value := DM.Redondeo(qrEntradaPacienteTotalPendiente.Value - ValorNC)
   Else
     qupdate.Parameters.ParamByName('pen').Value := 0;

 qupdate.Parameters.ParamByName('rec').Value := GetNotaCredito;
 qupdate.Parameters.ParamByName('apl').Value := 1;
 qupdate.Parameters.ParamByName('con').Value := ConceptoNC;
 qupdate.Parameters.ParamByName('cob').Value := cobroid;
 qupdate.Parameters.ParamByName('ref').Value := qrEntradaPacienteRECID.Value;
 qupdate.Parameters.ParamByName('ent').Value := qrEntradaPacienteEntradaId.Value;
 qupdate.ExecSQL;

 qfindcobro := DM.NewQuery;
 qfindcobro.Close;
 qfindcobro.SQL.Text := ' SELECT * FROM PTCobro (nolock) WHERE CobroID = '+ #39 + cobroid + #39 +
                        ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39 +
                        ' AND EntradaId = '+ #39 + qrEntradaPacienteEntradaId.AsString + #39;
 qfindcobro.Open;

 if (qfindcobro.RecordCount > 0) then
   Begin
     //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
     If Seg_Late then
       CrearTransCliente(qrEntradaPacienteClienteId.Value, 'NC', qfindcobro.FieldByName('ReciboNo').Value, 'FT',
                         qrEntradaPacienteEntradaID.Value, qfindcobro.FieldByName('Fecha').value, ValorNC,
                         qrEntradaPacienteMonedaId.Value, qrEntradaPacientePACIENTEID.Value,
                         qrEntradaPacienteSINPRFILTER.Value)
     Else
       CrearTransCliente(qrEntradaPAcienteClienteId.Value, 'NC', qfindcobro.FieldByName('ReciboNo').Value, 'FT',
                         qrEntradaPacienteEntradaID.Value, qfindcobro.FieldByName('Fecha').value, ValorNC * -1,
                         qrEntradaPacienteMonedaId.Value, qrEntradaPacientePACIENTEID.Value,
                         qrEntradaPacienteSINPRFILTER.Value);

     CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'NC', cobroid,
                      qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                      qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                      qrEntradaPacienteRECID.Value, ValorNC, qrEntradaPacienteDATAAREAID.Value, GetSecuenciaId, //StrtoInt(cobroid),
                      qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, qrEntradaPacienteSUCURSALID.Value, 'NC',
                      ValorNC, qrEntradaPacienteSINPRFILTER.Value);

     qupdate.Close;
     qupdate.SQL.Clear;
     qupdate.SQL.Text := ' INSERT INTO PTCobroAplicado (CobroID, EntradaId, MontoAplicado, RecId) '+
                         ' VALUES (:0, :1, :2, :3)';
     qupdate.Parameters[0].Value := cobroid;
     qupdate.Parameters[1].Value := qrEntradaPacienteEntradaID.value;
     qupdate.Parameters[2].Value := ValorNC;
     qupdate.Parameters[3].Value := GetSecuenciaId;
     qupdate.ExecSQL;
   End;

 //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
 If Seg_Late then ValorNC := 0;

 qrEntradaPaciente.Edit;
 qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + ValorNC;
 qrEntradaPaciente.Post;

 FreeAndNil(qupdate);
 FreeAndNil(qfindcobro);
end;
procedure TfrmPuntoVenta.ActDevolucion;
Var
 qupdate    : TADOquery;
 qfindcobro : TADoQuery;
begin
 qupdate := DM.NewQuery;

 ValorNC := ValorNC * -1;
 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := ' UPDATE PTCobro with (rowlock) SET '+
                     ' TotalCobrado = :tot, '+
                     ' PendienteCobro = :pen, '+
                     ' ReciboNo = :rec, '+
                     ' Aplicado = :apl, '+
                     ' Concepto = :con, '+
                     ' EntradaId = :ent '+
                     ' WHERE CobroID = :cob '+
                     ' AND refRecId = :ref ';

 qupdate.Parameters.ParamByName('tot').Value := ValorNC;

 //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
 If Seg_Late then
   qupdate.Parameters.ParamByName('pen').Value := 0
 Else
   If (DM.Redondeo(qrEntradaPacienteTotalPendiente.Value - ValorNC) > 1) then
     qupdate.Parameters.ParamByName('pen').Value := DM.Redondeo(qrEntradaPacienteTotalPendiente.Value - ValorNC)
   Else
     qupdate.Parameters.ParamByName('pen').Value := 0;

 qupdate.Parameters.ParamByName('rec').Value := GetDevolucion;
 qupdate.Parameters.ParamByName('apl').Value := 1;
 qupdate.Parameters.ParamByName('con').Value := ConceptoNC;
 qupdate.Parameters.ParamByName('cob').Value := cobroid;
 qupdate.Parameters.ParamByName('ref').Value := qrEntradaPacienteRECID.Value;
 qupdate.Parameters.ParamByName('ent').Value := qrEntradaPacienteEntradaId.Value;
 qupdate.ExecSQL;

 qfindcobro := DM.NewQuery;
 qfindcobro.Close;
 qfindcobro.SQL.Text := ' SELECT c.*,d.formadepagoid FROM PTCobro c (nolock), PtCobroDetalle d (nolock) WHERE c.CobroID=d.CobroID '+
                        ' And c.CobroID= '+ #39 + cobroid + #39 +
                        ' And c.refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39 +
                        ' And c.EntradaId = '+ #39 + qrEntradaPacienteEntradaId.AsString + #39;
 qfindcobro.Open;

 if (qfindcobro.RecordCount > 0) then
   Begin
     //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
     If Seg_Late then
       CrearTransCliente(qrEntradaPacienteClienteId.Value, 'DV', qfindcobro.FieldByName('ReciboNo').Value, 'FT',
                         qrEntradaPacienteEntradaID.Value, qfindcobro.FieldByName('Fecha').value, ValorNC,
                         qrEntradaPacienteMonedaId.Value, qrEntradaPacientePACIENTEID.Value,
                         qrEntradaPacienteSINPRFILTER.Value)
     Else
       CrearTransCliente(qrEntradaPAcienteClienteId.Value, 'DV', qfindcobro.FieldByName('ReciboNo').Value, 'FT',
                         qrEntradaPacienteEntradaID.Value, qfindcobro.FieldByName('Fecha').value, ValorNC * -1,
                         qrEntradaPacienteMonedaId.Value, qrEntradaPacientePACIENTEID.Value,
                         qrEntradaPacienteSINPRFILTER.Value);

     CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'DV', cobroid,
                      qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                      qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                      qrEntradaPacienteRECID.Value, ValorNC, qrEntradaPacienteDATAAREAID.Value, GetSecuenciaId, //StrtoInt(cobroid),
                      qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, dm.qrUsuarioSucursalSucursalID.value, qfindcobro.FieldByName('FormadePagoID').Value,
                      ValorNC, qrEntradaPacienteSINPRFILTER.Value);

     qupdate.Close;
     qupdate.SQL.Clear;
     qupdate.SQL.Text := ' INSERT INTO PTCobroAplicado (CobroID, EntradaId, MontoAplicado, RecId) '+
                         ' VALUES (:0, :1, :2, :3)';
     qupdate.Parameters[0].Value := cobroid;
     qupdate.Parameters[1].Value := qrEntradaPacienteEntradaID.value;
     qupdate.Parameters[2].Value := ValorNC;
     qupdate.Parameters[3].Value := GetSecuenciaId;
     qupdate.ExecSQL;
   End;

 //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
 If Seg_Late then ValorNC := 0;

  if (qrEntradaPacienteDetalle.RecordCount > 0) or
     ((qrEntradaPacienteDetalle.RecordCount = 0) and (qrEntradaPacienteTotalPagado.value > 0)) then
  begin
     qrEntradaPaciente.Edit;
     qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + ValorNC;
     qrEntradaPaciente.Post;
  end;
 FreeAndNil(qupdate);
 FreeAndNil(qfindcobro);
end;

procedure TfrmPuntoVenta.CrearNotaDebito;
Var
 qinsert : TADOQuery;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

// cobroid := IntToStr(DM.Get_Secuencia('Secuencia'));
 cobroid := DM.Get_Secuencia_Big('COBRO', DM.CurSucursal);

 qinsert := DM.NewQuery;
 qinsert.Close;
 qinsert.SQL.Text := ' INSERT INTO PTCobro (CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid, '+
                     ' TotalFactura,TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc,Concepto, '+
                     ' EntradaId,SinPrFilter,RecId) VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17) ';
 qinsert.Parameters[0].Value := cobroid;
 qinsert.Parameters[1].Value := qrEntradaPacienteSUCURSALID.Value;
 qinsert.Parameters[2].Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
 qinsert.Parameters[3].Value := DM.Buscar_Hora_Actual; //TimeToStr(Time);
 qinsert.Parameters[4].Value := qrEntradaPacientePacienteID.Value;
 qinsert.Parameters[5].Value := qrEntradaPacienteFLEBOTOMISTAID.Value; //qrEntradaPacienteUserID.Value;
 qinsert.Parameters[6].Value := qrEntradaPacienteRECID.Value;
 qinsert.Parameters[7].Value := qrEntradaPacienteNeto.Value;
 qinsert.Parameters[8].Value := qrEntradaPacienteTotalPagado.Value;
 qinsert.Parameters[9].Value := qrEntradaPacienteTotalPendiente.Value;
 qinsert.Parameters[10].Value := qrEntradaPacienteClienteID.Value;
 qinsert.Parameters[11].Value := 0;
 qinsert.Parameters[12].Value := qrEntradaPacienteMonedaID.Value;
 qinsert.Parameters[13].Value := 'ND';
 qinsert.Parameters[14].Value := ConceptoNC;
 qinsert.Parameters[15].Value := qrEntradaPacienteEntradaId.Value;
 qinsert.Parameters[16].Value := qrEntradaPacienteSINPRFILTER.Value;
 qinsert.Parameters[17].Value := GetSecuenciaId;
 qinsert.ExecSQL;
 FreeAndNil(qinsert);
end;


procedure TfrmPuntoVenta.ActNotaDebito;
Var
qupdate    : TADOquery;
 qfindcobro : TADoQuery;
begin
 qupdate := DM.NewQuery;
 ValorND := ValorND * -1;
 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := ' UPDATE PTCobro with (rowlock) SET '+
                     ' TotalCobrado = :tot, '+
                     ' PendienteCobro = :pen, '+
                     ' ReciboNo = :rec, '+
                     ' Aplicado = :apl, '+
                     ' Concepto = :con, '+
                     ' EntradaId = :ent, '+
                     ' TurnoID = :tur '+
                     ' WHERE CobroID = :cob '+
                     ' AND refRecId = :ref ';

 qupdate.Parameters.ParamByName('tot').Value := ValorND;
 qupdate.Parameters.ParamByName('pen').Value := 0; //qrEntradaPacienteTotalPendiente.Value - ValorND;
 qupdate.Parameters.ParamByName('rec').Value := GetNotaDebito;
 qupdate.Parameters.ParamByName('apl').Value := 1;
 qupdate.Parameters.ParamByName('con').Value := ConceptoNC;
 qupdate.Parameters.ParamByName('cob').Value := cobroid;
 qupdate.Parameters.ParamByName('ref').Value := qrEntradaPacienteRECID.Value;
 qupdate.Parameters.ParamByName('ent').Value := qrEntradaPacienteEntradaId.Value;
 qupdate.Parameters.ParamByName('tur').Value := DM.Buscar_Random;
 qupdate.ExecSQL;

 qfindcobro := DM.NewQuery;
 qfindcobro.Close;
 qfindcobro.SQL.Text := ' SELECT * FROM PTCobro (nolock) WHERE CobroID = '+ #39 + cobroid + #39 +
                        ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39 +
                        ' AND EntradaId = '+ #39 + qrEntradaPacienteEntradaId.AsString + #39;
 qfindcobro.Open;

 if (qfindcobro.RecordCount > 0) then
   Begin
     CrearTransCliente(qrEntradaPacienteClienteId.value, 'ND', qfindcobro.FieldByName('ReciboNo').value, 'FT',
                       qrEntradaPacienteEntradaID.value, qfindcobro.FieldByName('Fecha').value, ValorND,
                       qrEntradaPacienteMonedaId.Value, qrEntradaPacientePACIENTEID.Value,
                       qrEntradaPacienteSINPRFILTER.Value);
//                       qrEntradaPAcienteEntradaId.value,qfindcobro.FieldByName('Fecha').value, ValorND * -1,

     CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'ND', cobroid,
                      qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                      qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                      qrEntradaPacienteRECID.Value, ValorND, qrEntradaPacienteDATAAREAID.Value, GetSecuenciaId, //StrtoInt(cobroid),
                      qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, DM.CurSucursal,
                      'ND', ValorND, qrEntradaPacienteSINPRFILTER.Value);

     qupdate.Close;
     qupdate.SQL.Clear;
     qupdate.SQL.Text := ' INSERT INTO PTCobroAplicado (CobroID, EntradaId, MontoAplicado, RecId) '+
                         ' VALUES (:0, :1, :2, :3)';
     qupdate.Parameters[0].Value := cobroid;
     qupdate.Parameters[1].Value := qrEntradaPacienteEntradaID.value;
     qupdate.Parameters[2].Value := ValorND;
     qupdate.Parameters[3].Value := GetSecuenciaId;
     qupdate.ExecSQL;
   End;

 //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
 If Seg_Late then ValorND := 0;

  if (qrEntradaPacienteDetalle.RecordCount > 0) or
     ((qrEntradaPacienteDetalle.RecordCount = 0) and (qrEntradaPacienteTotalPagado.value > 0)) then
  begin
     qrEntradaPaciente.Edit;
     qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + ValorND;
     qrEntradaPaciente.Post;
  end;
 FreeAndNil(qupdate);
 FreeAndNil(qfindcobro);
end;


procedure TfrmPuntoVenta.VolantedePruebasARS1Click(Sender: TObject);
begin
  inherited;
    If not ((Trim(qrEntradaPacienteEntradaid.value) ='') OR (Copy(qrEntradaPacienteEntradaid.value,1,3)='HOL')) Then
    begin
      Buscar_Cliente;
      qrEntradaPacienteDetalle.AutoCalcFields := False;
      qrEntradaPacienteDetalle.Filtered := False;
      qrEntradaPacienteDetalle.Filter := 'CoberturaAplica = 1';
      qrEntradaPacienteDetalle.Filtered := True;
      if Ruta_Factura <> Emptystr then
      begin
           LbFechayHora2.Caption := 'Fecha Ent.: ' + qrEntradaPacienteFECHA.AsString +
                                    ' * Hora Ent.: ' + qrEntradaPacienteHORAENTRADA.AsString;

           Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FS');
           ppImpFacturaSeguro.ShowPrintDialog := False;
           ppImpFacturaSeguro.ShowAutoSearchDialog := True;
           ppImpFacturaSeguro.DeviceType := dtPrinter;
           ppImpFacturaSeguro.PrinterSetup.PaperHeight  := 8.5;
           ppImpFacturaSeguro.PrinterSetup.PaperName    := 'Custom';
           ppImpFacturaSeguro.PrinterSetup.PaperWidth   := 4;
           ppImpFacturaSeguro.PrinterSetup.Copies       := qfindCltParams.Fieldbyname('NumPrint').Asinteger;
           ppImpFacturaSeguro.PrinterSetup.PrinterName := Ruta_Factura;
           ppImpFacturaSeguro.Print;
      end
      else
      Begin
            LbFechayHora2.Caption := 'Fecha Ent.: ' + qrEntradaPacienteFECHA.AsString +
                                    ' * Hora Ent.: ' + qrEntradaPacienteHORAENTRADA.AsString;
            if InttoStr(dm.CodArs) = GrupoArsUniversal then
            begin
                ppLabel85.Caption := 'P�liza No.';
            end
            else
            begin
                ppLabel85.Caption := 'Afiliado No.';
            end;
            Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FS');
            ppImpFacturaSeguro.DeviceType           := dtScreen;
            ppImpFacturaSeguro.PrinterSetup.Copies  := qfindCltParams.Fieldbyname('NumPrint').Asinteger;
            ppImpFacturaSeguro.Print;
      end;
    end;
    qrEntradaPacienteDetalle.Filtered := False;
end;

procedure TfrmPuntoVenta.VolantedePruebasTomaMuestra1Click(Sender: TObject);
begin
  inherited;
  qrEntradaPacienteDetalle.AutoCalcFields := False;
  If not ((Trim(qrEntradaPacienteEntradaid.value) ='') OR (Copy(qrEntradaPacienteEntradaid.value,1,3)='HOL')) Then
  begin
      DM.qrParametro.close;
      DM.qrParametro.open;
//      ShowMessage('Ruta printer fac. '+Ruta_Factura);
      if Ruta_Factura <> EmptyStr then
      Begin
         If (qrEntradaPacienteCoberturaSeguro.Value > 1) Or
            (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
         begin
             Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FPS');
             ppImpFactPacienteConSeguro.ShowPrintDialog := False;
             ppImpFactPacienteConSeguro.DeviceType := dtPrinter;
             ppImpFactPacienteConSeguro.PrinterSetup.PaperHeight := 8.5;
             ppImpFactPacienteConSeguro.PrinterSetup.PaperName := 'Custom';
             ppImpFactPacienteConSeguro.PrinterSetup.PaperWidth := 4;
             If qrEntradaPacienteNO_INDICACION.Value = True Then
                ppImpFactPacienteConSeguro.PrinterSetup.Copies := 2
             else
                ppImpFactPacienteConSeguro.PrinterSetup.Copies := 1;
             ppImpFactPacienteConSeguro.PrinterSetup.Copies := 1;
             ppImpFactPacienteConSeguro.PrinterSetup.PrinterName := Ruta_Factura;
             ppImpFactPacienteConSeguro.Print;
         end
         else
         begin
             Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FSS');
             ppImpFactPacienteSinSeguro.ShowPrintDialog := False;
             ppImpFactPacienteSinSeguro.DeviceType := dtPrinter;
             ppImpFactPacienteSinSeguro.PrinterSetup.PaperHeight := 8.5;
             ppImpFactPacienteSinSeguro.PrinterSetup.PaperName := 'Custom';
             ppImpFactPacienteSinSeguro.PrinterSetup.PaperWidth := 4;
             If qrEntradaPacienteNO_INDICACION.Value = True Then
                ppImpFactPacienteSinSeguro.PrinterSetup.Copies := 2
             else
                ppImpFactPacienteSinSeguro.PrinterSetup.Copies := 1;
             ppImpFactPacienteSinSeguro.PrinterSetup.PrinterName := Ruta_Factura;
             ppImpFactPacienteSinSeguro.Print;
         end;
      End
      Else
      Begin
         If (qrEntradaPacienteCoberturaSeguro.Value > 1) Or
            (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
         begin
             Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FPS');
             ppImpFactPacienteConSeguro.DeviceType := dtScreen;
             ppImpFactPacienteConSeguro.Print;
         end
         else
         begin
             Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FSS');
             ppImpFactPacienteSinSeguro.DeviceType := dtScreen;
             ppImpFactPacienteSinSeguro.Print;
         end;
      End;
    end;
end;
procedure TfrmPuntoVenta.FacturaconNCF1Click(Sender: TObject);
begin
  inherited;
    With DM.qrDocumento, sql do
    begin
      Close;
      Clear;
      Text :='Select *  From PtDocumento Where TipoDocID IN (1,2,3)';
      Open;
    end;
    if qrEntradaPacienteEntradaID.Value <> EmptyStr then
    begin
      if qrEntradaPacienteTotalPendiente.Value <= 0 then
      begin
          dm.qrNCF.Close;
          dm.qrNCF.SQL.Text := ' Select CASE NCFTYPEID  WHEN '+#39+'01'+#39+' THEN '+#39+'Factura Cr�dito Fiscal'+#39+
                               ' WHEN '+#39+'12'+#39+' THEN '+#39+'Factura Valor Unico'+#39+
                               ' WHEN '+#39+'14'+#39+' THEN '+#39+'Factura R�gimen Especial'+#39+
                               ' WHEN '+#39+'15'+#39+' THEN '+#39+'Factura R�gimen Gubernamental'+#39+
                               ' END NCFTYPEID,Muestrano,EntradaID,NCFID,NCFNAME,RNC,Fecha From dbo.NCFTABLEPTV (nolock) '+
                               ' Where muestrano='+#39+qrEntradaPacienteMuestrano.value+#39+' And EntradaID='+#39+qrEntradaPacienteEntradaid.value+#39+' And DataAreaID='+#39+DM.CurEmpresa+#39;
          dm.qrNCF.Open;
          If (dm.qrNCF.RecordCount = 0) Then
          Begin
              spImpresionNCF.Visible := True;
          end
          else
          begin
            If not ((Trim(qrEntradaPacienteEntradaid.value) ='') OR (Copy(qrEntradaPacienteEntradaid.value,1,3)='HOL')) Then
            begin
                DM.qrParametro.close;
                DM.qrParametro.open;
                if Ruta_Factura <> EmptyStr then
                Begin
                       Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FNCF');
                       ppImpFactPacienteNCF.ShowPrintDialog := False;
                       ppImpFactPacienteNCF.DeviceType := dtPrinter;
                       ppImpFactPacienteNCF.PrinterSetup.PaperHeight := 8.5;
                       ppImpFactPacienteNCF.PrinterSetup.PaperName := 'Custom';
                       ppImpFactPacienteNCF.PrinterSetup.PaperWidth := 4;
                       ppImpFactPacienteNCF.PrinterSetup.PrinterName := Ruta_Factura;
                       ppImpFactPacienteNCF.Print;
                End
                Else
                Begin
                       Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FNCF');
                       ppImpFactPacienteNCF.DeviceType := dtScreen;
                       ppImpFactPacienteNCF.Print;
                End;
              end;
          end;
      end
      else
      begin
          EtMensajeDlg('Entrada con Balance Pendiente No permite generar NCF.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true)
      end;
    end;
end;

procedure TfrmPuntoVenta.vwDiagnosticoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    Key := 0;
    SendMessage(edDiagn.InnerControl.Handle, WM_KEYDOWN, VK_RETURN, 0);
  end;
end;

procedure TfrmPuntoVenta.vwDoctoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    Key := 0;
    SendMessage(edDoctor.InnerControl.Handle, WM_KEYDOWN, VK_RETURN, 0);
  end;
end;

procedure TfrmPuntoVenta.FacturaExterior1Click(Sender: TObject);
begin
  if (qrEntradaPacienteEntradaID.Value <> '') and
     ( (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
       (qrEntradaPacienteTipoDocumento.Value = 3) Or
       (qrEntradaPacienteFactExterior.Value = 1) ) Then
  begin
      if Ruta_Factura <> EmptyStr then
      Begin
          Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FE');
          ppImpFacturaExterior.ShowPrintDialog          := False;
          ppImpFacturaExterior.DeviceType               := dtPrinter;
          ppImpFacturaExterior.PrinterSetup.PaperHeight := 8.5;
          ppImpFacturaExterior.PrinterSetup.PaperName   := 'Custom';
          ppImpFacturaExterior.PrinterSetup.PaperWidth  := 4;
          ppImpFacturaExterior.PrinterSetup.PrinterName := Ruta_Factura;
          ppImpFacturaExterior.Print;
      End
      else
      Begin
          Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FE');
          ppImpFacturaExterior.DeviceType := dtScreen;
          ppImpFacturaExterior.Print;
      End;
  end;
end;


procedure TfrmPuntoVenta.BuscarDatos;
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _recorId;
  qrEntradaPaciente.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _recorId;
  qrEntradaPacienteDetalle.Open;
  curCoberturaAplicada := DM.CurCoberturaAplicada(_recorId);

  Leer_Forma_Pago;
  cxDBCheckBox2.Properties.NullStyle := nssUnchecked;
end;


procedure TfrmPuntoVenta.ActInterface;
begin
{
 Act_Hold;

 If (qrEntradaPaciente.State in [dsEdit,dsInsert]) then
   Begin
     Act_Hold;
     Val_Descuento;
}
     DM.qrParametro.close;
     DM.qrParametro.open;

     Val_Exterior;
     qrEntradaPacienteSexo.Required := True;
     qrEntradaPacienteClienteID.Required := True;

     qrEntradaPacientePacienteID.Required := True;
     qrEntradaPacienteEdadPaciente.Required := True;

     qrEntradaPacienteDoctorID.Required := False;
     qrEntradaPacientePolizaID.Required := False;
     qrEntradapacienteFechaEntrada.Required := False;

     lcGeneralItem13.Visible := false;
     lcGeneralItem22.Visible := false;
     lcGeneralItem31.Visible := false;
     lcGeneralGroup11.Visible := false;
{
     lcGeneralGroup6.Visible := false;
     ConfirmarCobertura1.Enabled := false;
     GridPruebasEntradasPacienteDetCoberturaAplica.Visible := false;
     GridPruebasEntradasPacienteDetCodigoCupID.Visible := false;
//     GridPruebasEntradasPacienteDetCoberturaExpPorc.Visible := false;
//     GridPruebasEntradasPacienteDetCoberturaEspecial.Visible := false;
}
     if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
       begin
        lcGeneralGroup6.Visible := true;

        lcGeneralItem15.Caption := 'Contrato/Afiliado.:';
        qrEntradaPacientePolizaID.DisplayLabel := 'Contrato/Afiliado.:';

//        ConfirmarCobertura1.Enabled := not qrEntradaPacienteCoberturaConfirmada.AsBoolean;
        ConfirmarCobertura1.Enabled := not (qrEntradaPacienteCoberturaConfirmada.AsInteger = 1);

        If (qrEntradaPacienteCoberturaRechazada.Value = 1) then
          ConfirmarCobertura1.Enabled := False;

        GridPruebasEntradasPacienteDetCoberturaAplica.Visible := true;
        GridPruebasEntradasPacienteDetCodigoCupID.Visible := True;
//        GridPruebasEntradasPacienteDetCoberturaExpPorc.Visible := true;
//        GridPruebasEntradasPacienteDetCoberturaEspecial.Visible := true;
        qrEntradaPacienteDoctorID.Required := True;
        qrEntradaPacientePolizaID.Required := True;

        EdCoberturaValor.Style.Color := ClAqua;
        EdCoberturaValor.Properties.ReadOnly := True;
       end
     else
      if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoCli.Value) Then
        begin
//         lcGeneralItem15.Caption := 'Record';
//         qrEntradaPacientePolizaID.DisplayLabel := 'Record';
//         qrEntradapacienteFechaEntrada.Required := True;
         lcGeneralItem13.Visible := True;
         lcGeneralItem22.Visible := True;
         lcGeneralItem31.Visible := True;
         lcGeneralGroup11.Visible := True;
        end
      else
       if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value then
         begin
          lcGeneralItem15.Caption := 'Contrato/Afiliado.:';
          qrEntradaPacientePolizaID.DisplayLabel := 'Contrato/Afiliado.:';
         end
       else
        if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value then
          begin
           lcGeneralItem15.Caption := 'Contrato/Afiliado.:';
           qrEntradaPacientePolizaID.DisplayLabel := 'Contrato/Afiliado.:';
          end
        else
//         if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value then
         if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value) Or
            (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSoc.Value) then
           begin
             CxDbPaciente.Enabled := True;
             edTipoCliente.Enabled := True;
             lcGeneralGroup9.Enabled := True;
             lcGeneralItem6.Enabled := True;
             qrEntradaPacientePolizaID.Required := True;
             qrEntradaPacienteNombrePaciente.Required := True;
             lcGeneralItem15.Caption := 'Contrato/Afiliado.:';
             qrEntradaPacientePolizaID.DisplayLabel := 'Contrato/Afiliado.:';
             qrEntradaPacienteSexo.Required := False;
             qrEntradaPacienteEdadPaciente.Required := False;
           end
         else
           if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoProy.Value then
             begin
               CxDbPaciente.Enabled := True;
               edTipoCliente.Enabled := True;
               lcGeneralGroup9.Enabled := True;
               lcGeneralItem6.Enabled := True;
               qrEntradaPacientePolizaID.Required := True;
               qrEntradaPacienteNombrePaciente.Required := True;
               lcGeneralItem15.Caption := 'Contrato/Afiliado.:';
               qrEntradaPacientePolizaID.DisplayLabel := 'Contrato/Afiliado.:';
               qrEntradaPacienteSexo.Required := False;
               qrEntradaPacienteEdadPaciente.Required := False;
             end
           Else
             begin
               lcGeneralItem15.Caption := 'Contrato/Afiliado.:';
               qrEntradaPacientePolizaID.DisplayLabel := 'Contrato/Afiliado.:';
             end;
//   end;

  Act_Hold;
  //Activar las Impresiones del Punto de Venta.

  Impresiones;
//  Val_Descuento;

//  Leer_Forma_Pago;
end;

procedure TfrmPuntoVenta.RefrescarInterface;
begin
// actinterface;
 DM.qrParametro.Close;
 DM.qrParametro.Open;
 //Si Ya Se Registro EL CUADRE DE CAJA.
 if (qrEntradaPacienteEstatus.Value = 2) Or (qrEntradaPacienteEstatus.Value = 4) then
 begin
   btpaciente.Enabled := false;
   btprueba.Enabled := false;
   bteliminar.Enabled := false;
   btcliente.Enabled := false;
   btgrabar.Enabled := false;
   btNotaCredito.Enabled := false;
   btHold.Enabled           := false;
   ConfirmarCobertura1.Enabled                  := False;
   edcobexpporc.Properties.ReadOnly             := True;
   edcoberturavalor.Properties.ReadOnly         := True;
   Asignar2daMuestra1.Enabled := False;
   EliminarDescuentoAplicado1.Enabled           := False;
   RegistrarPruebadelExterior1.Enabled          := False;
   CambiarLaboratorioNoenlasLineas1.Enabled     := False;
   AsignarDescuentoPermitidoalUsuario1.Enabled  := False;
   AsignarDescuentoPermitidoalEmpleado1.Enabled := False;
   AsignarDescuentoAutorizadoporCobros1.Enabled := False;
   AsignarDescuentoTarjeta1.Enabled             := False;
   UnSetReadOnlyToNoEdit;
   SetColorTo(dm.ColorConsulta);
   RefrescarGrid(true);
   Exit;
 end;
 if (qrEntradaPacienteCUADRADO.Value = 1) Then
 begin
   btpaciente.Enabled := false;
   btprueba.Enabled := false;
   bteliminar.Enabled := false;
   btcliente.Enabled := false;
   btHold.Enabled := false;
   btgrabar.Enabled := false;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.   btcobrar.Enabled := false;
   btnotacredito.Enabled := false;

   If (qrEntradaPacienteCoberturaRechazada.Value = 1) Or
      (qrEntradaPacienteCoberturaConfirmada.Value = 1) Then
     ConfirmarCobertura1.Enabled                := False;

   If (qrEntradaPacienteCoberturaRechazada.Value = 0) And
      (qrEntradaPacienteCoberturaConfirmada.Value = 0) Then
     ConfirmarCobertura1.Enabled := True;

   edcobexpporc.Properties.ReadOnly             := True;
   edcoberturavalor.Properties.ReadOnly         := True;

   Asignar2daMuestra1.Enabled := False;
   EliminarDescuentoAplicado1.Enabled           := False;
   RegistrarPruebadelExterior1.Enabled          := False;
   CambiarLaboratorioNoenlasLineas1.Enabled     := False;
   AsignarDescuentoPermitidoalUsuario1.Enabled  := False;
   AsignarDescuentoPermitidoalEmpleado1.Enabled := False;
   AsignarDescuentoAutorizadoporCobros1.Enabled := False;
   AsignarDescuentoTarjeta1.Enabled             := False;

   UnSetReadOnlyToNoEdit;
   SetColorTo(dm.ColorConsulta);
   RefrescarGrid(true);
 end;

 //Si Ya Se Registro Un Pago y NO Tiene Monto Pendiente.
 if (qrEntradaPacienteTotalPagado.Value > 0.00) and
    (qrEntradaPacienteTotalPendiente.Value < 0.01) Then
 begin
   btpaciente.Enabled := false;
   btprueba.Enabled := false;
   bteliminar.Enabled := false;
   btcliente.Enabled := false;
   btHold.Enabled := false;
   btgrabar.Enabled := false;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.   btcobrar.Enabled := false;
   If ( CanMenuEspecial = True ) Then
      btnotacredito.Enabled := True
   Else
      btnotacredito.Enabled := False;

   If (qrEntradaPacienteCoberturaRechazada.Value = 1) Or
      (qrEntradaPacienteCoberturaConfirmada.Value = 1) Then
     ConfirmarCobertura1.Enabled := False;

   If (qrEntradaPacienteCoberturaRechazada.Value = 0) And
      (qrEntradaPacienteCoberturaConfirmada.Value = 0) Then
     ConfirmarCobertura1.Enabled := True;

   edcobexpporc.Properties.ReadOnly := True;
   edcoberturavalor.Properties.ReadOnly := True;

   Asignar2daMuestra1.Enabled := False;
   EliminarDescuentoAplicado1.Enabled := False;
   RegistrarPruebadelExterior1.Enabled := False;
   CambiarLaboratorioNoenlasLineas1.Enabled := False;
   AsignarDescuentoPermitidoalUsuario1.Enabled := False;
   AsignarDescuentoPermitidoalEmpleado1.Enabled:= False;
   AsignarDescuentoAutorizadoporCobros1.Enabled := False;
   AsignarDescuentoTarjeta1.Enabled             := False;

   UnSetReadOnlyToNoEdit;
   SetColorTo(dm.ColorConsulta);
   RefrescarGrid(true);
 end;

 //Si Ya Se Registro Un Pago y Tiene Monto Pendiente.
 if (qrEntradaPacienteTotalPagado.Value > 0.00) and
    (qrEntradaPacienteTotalPendiente.Value > 0.00) Then
 begin
    btpaciente.Enabled := false;
    btprueba.Enabled := false;
    bteliminar.Enabled := false;
    btcliente.Enabled := false;
    btHold.Enabled := false;
    btgrabar.Enabled := true;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.    btcobrar.Enabled := true;
//    btnotacredito.Enabled := true;

    If ( CanMenuEspecial = True ) Then
      btnotacredito.Enabled := True
    Else
      btnotacredito.Enabled := False;

    If (qrEntradaPacienteCoberturaRechazada.Value = 1) Or
       (qrEntradaPacienteCoberturaConfirmada.Value = 1) Then
      ConfirmarCobertura1.Enabled := False;

    If (qrEntradaPacienteCoberturaRechazada.Value = 0) And
       (qrEntradaPacienteCoberturaConfirmada.Value = 0) Then
      ConfirmarCobertura1.Enabled := True;

    edcobexpporc.Properties.ReadOnly := True;
    edcoberturavalor.Properties.ReadOnly := True;

    CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;
    EliminarDescuentoAplicado1.Enabled := false;
    AsignarDescuentoPermitidoalUsuario1.Enabled := false;
    AsignarDescuentoPermitidoalEmpleado1.Enabled := false;
    AsignarDescuentoAutorizadoporCobros1.Enabled := false;
    AsignarDescuentoTarjeta1.Enabled             := False;
 end;

 //Si Esta Registrando el Documento Actualmente.
 If (qrEntradaPacienteTotalPagado.Value < 0.01) And
    (qrEntradaPaciente.State = dsInsert) Then
 begin
     btpaciente.Enabled := true;
     btprueba.Enabled := true;
     bteliminar.Enabled := true;
     btcliente.Enabled := true;
     btHold.Enabled := true;
     btgrabar.Enabled := true;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.     btcobrar.Enabled := true;
//     btnotacredito.Enabled := true;

    If ( CanMenuEspecial = True ) Then
      btnotacredito.Enabled := True
    Else
      btnotacredito.Enabled := False;

//     edcoberturaporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
     edcobexpporc.Properties.ReadOnly := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
     edcoberturavalor.Properties.ReadOnly := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
     CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;

     If (qrEntradaPacienteCoberturaRechazada.Value = 1) then
      Begin
        //Actualizando la Cobertura Rechazada.
        ConfirmarCobertura1.Enabled := False;
        edcobexpporc.Properties.ReadOnly := True;
        edcoberturavalor.Properties.ReadOnly := True;
      End;

     if qrEntradaPaciente.State = dsInsert then
        SetColorTo(dm.ColorAgrega)
     else
        SetColorTo(dm.ColorModifica);
    // SetReadOnlyToNoEdit;
     qrEntradaPaciente.Edit;
     RefrescarGrid(false);
 end;
 //Si el Registro Es Una Transferencia de Clinica.
 if (qrEntradaPacienteENCLINICA.Value = 1) Or
    (qrEntradaPacienteFROM_CLINICA.Value = 1) Then
 begin
    btpaciente.Enabled := false;
    btprueba.Enabled := false;
    bteliminar.Enabled := false;
    btcliente.Enabled := false;
    btHold.Enabled := false;
    btgrabar.Enabled := true;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.    btcobrar.Enabled := true;
//    btnotacredito.Enabled := true;

    If ( CanMenuEspecial = True ) Then
      btnotacredito.Enabled := True
    Else
      btnotacredito.Enabled := False;

    If (qrEntradaPacienteCoberturaRechazada.Value = 1) Or
       (qrEntradaPacienteCoberturaConfirmada.Value = 1) Then
      ConfirmarCobertura1.Enabled := False;

    If (qrEntradaPacienteCoberturaRechazada.Value = 0) And
       (qrEntradaPacienteCoberturaConfirmada.Value = 0) Then
      ConfirmarCobertura1.Enabled := True;

    edcobexpporc.Properties.ReadOnly := True;
    edcoberturavalor.Properties.ReadOnly := True;

    CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;
    EliminarDescuentoAplicado1.Enabled := false;
    AsignarDescuentoPermitidoalUsuario1.Enabled := false;
    AsignarDescuentoPermitidoalEmpleado1.Enabled := false;
    AsignarDescuentoAutorizadoporCobros1.Enabled := false;
    AsignarDescuentoTarjeta1.Enabled             := False;

    lcGeneralItem13.Visible := True;
    lcGeneralItem22.Visible := True;
    lcGeneralItem31.Visible := True;
    lcGeneralGroup11.Visible := True;
   end;

 //Si la Cobertura Fue Confirmada.
 if (qrEntradaPacienteCoberturaConfirmada.Value = 1) Then
 begin
    btpaciente.Enabled          := false;
    btprueba.Enabled            := false;
    bteliminar.Enabled          := false;
    btcliente.Enabled           := false;
    btHold.Enabled              := false;
    Asignar2daMuestra1.Enabled  := False;
    EliminarDescuentoAplicado1.Enabled := false;
    RegistrarPruebadelExterior1.Enabled := False;
    CambiarLaboratorioNoenlasLineas1.Enabled := false;
    AsignarDescuentoPermitidoalUsuario1.Enabled := false;
    AsignarDescuentoPermitidoalEmpleado1.Enabled := false;
    AsignarDescuentoAutorizadoporCobros1.Enabled := false;
    AsignarDescuentoTarjeta1.Enabled             := False;

    ConfirmarCobertura1.Enabled := False;
    edcobexpporc.Properties.ReadOnly := True;
    edcoberturavalor.Properties.ReadOnly := True;

    //Si Tiene Monto Pendiente.
    if (qrEntradaPacienteTotalPendiente.Value > 0) Then
      Begin
        btgrabar.Enabled := true;
        If ( CanMenuEspecial = True ) Then
          btnotacredito.Enabled := True
        Else
          btnotacredito.Enabled := False;
      end;

    UnSetReadOnlyToNoEdit;
    SetColorTo(dm.ColorConsulta);
    RefrescarGrid(true);
  end;

   if Not ((Copy(qrEntradaPacienteMuestrano.value,3,3)='000') and
          (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value)) Then ActInterface;
   if (Copy(qrEntradaPacienteMuestrano.value,3,3)='000') then
      lcGeneral.LookAndFeel.GroupOptions.Color := clMoneyGreen
   else
      lcGeneral.LookAndFeel.GroupOptions.Color := $00F8E3D1;

   if (Trim(qrEntradaPacienteEntradaID.Value) <> EmptyStr) and  (Copy(Trim(qrEntradaPacienteEntradaID.Value),1,3) <> 'HOL') then
   begin
       cxDbPaciente.Properties.ReadOnly   := True;
       cxDbPaciente.Style.Color           := ClAqua;
       edTipoCliente.Properties.ReadOnly  := True;
       edTipoCliente.Enabled              := False;
       edTipoCliente.Style.Color          := ClAqua;
       btCliente.Enabled                  := False;
       btHold.Enabled                     := False;
       btPaciente.Enabled                 := False;
       btPrueba.Enabled                   := False;
       btEliminar.Enabled                 := False;
       If (dm.CurRol = 17) 
       And (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then
       begin
          AsignarDescuentoTarjeta1.Enabled := True;
       end;
       
   end;
  If (qrEntradaPacienteCoberturaRechazada.Value = 0) And
     (qrEntradaPacienteCoberturaConfirmada.Value = 0) And
     (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
  Begin
      if Verifica_Autorizacion then
      begin
        cboExtTipoDoc.Enabled := True;
{        If dm.qrParametroServidor_AS400.value <> EmptyStr then
        begin
          btAutoriza.Enabled := True;
        end;
}
        btAutoriza.Enabled := True;
      end;
  end;
 If (qrEntradaPacienteTotalPagado.Value = 0) and
     (qrEntradaPacienteTotalPendiente.Value > 0.00) and
     (qrEntradaPaciente.State = dsEdit) and
     (qrEntradaPacienteCUADRADO.Value =0) Then
 begin
     btgrabar.Enabled := true;
 end;
 If ((qrEntradaPacienteOrigen.Value = '07') or (qrEntradaPacienteOrigen.Value = '09') or (qrEntradaPacienteOrigen.Value = '10')) and
    (qrEntradaPacienteTotalPendiente.Value > 0.00) and
    (qrEntradaPaciente.State = dsEdit) and
    (qrEntradaPacienteCUADRADO.Value = 0) and
    (qrEntradaPacienteFormadePago.Value = 'CRE') and
    dm.FechaCorteLab(qrEntradaPacienteFecha.Value) Then
 begin
     btgrabar.Enabled := False;
 end;
 if (Copy(Trim(qrEntradaPacienteEntradaID.Value),1,3) = 'HOL') then
 begin
     btCliente.Enabled                  := True;
     btHold.Enabled                     := False;
     btPaciente.Enabled                 := True;
     btPrueba.Enabled                   := True;
     btEliminar.Enabled                 := True;
     btgrabar.Enabled                   := true;
     SetColorTo(dm.ColorAgrega);
 end;
 If Length(Trim(cxDbMemo2.Text)) > 80 then
 begin
   cxDbMemo2.Style.Color  := ClYellow;
   cxDbMemo2.StyleFocused.Color  := ClYellow;
 end;

end;

//Validando Los Parametros de Descuentos.
procedure TfrmPuntoVenta.Val_Descuento;
begin
 //Buscando los Datos del Cliente a Facturar y Sus Parametros.
 Buscar_Cliente;
{
 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Or
    (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoCli.Value) Or
    (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value) Or
    (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSoc.Value) Or
    (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value) then
   Begin
    If qrEntradaPaciente.State in [dsEdit,dsInsert] then
      Begin
        EliminarDescuentoAplicado1.Enabled := True;
        EliminarDescuentoAplicado1Click(Nil);
      end;
    EliminarDescuentoAplicado1.Enabled := false;
    AsignarDescuentoPermitidoalUsuario1.Enabled := false;
    AsignarDescuentoAutorizadoporCobros1.Enabled := false;
   end
 Else
   Begin
    If (qfindCltParams.FieldByName('ActivarDescuentos').AsBoolean = True) then
      Begin
        EliminarDescuentoAplicado1.Enabled := True;
        AsignarDescuentoPermitidoalUsuario1.Enabled := true;
        AsignarDescuentoAutorizadoporCobros1.Enabled := true;
      end;
   end;
}
 //Si el Empleado Puede Otorgar Descuentos.
 If ( Asignar_Descuento = True ) Then
   Begin
    //Si el Cliente Puede Recibir Descuentos.
    If (qfindCltParams.FieldByName('ActivarDescuentos').AsInteger = 1) then
      Begin
        EliminarDescuentoAplicado1.Enabled := True;
        if qrEntradaPacienteOrigen.Asstring= DM.qrParametroGrupoPriv.Value then
        Begin
          AsignarDescuentoPermitidoalUsuario1.Enabled := true;
          AsignarDescuentoTarjeta1.Enabled            := true;
        end
        else
        begin
          AsignarDescuentoPermitidoalUsuario1.Enabled := false;
          AsignarDescuentoTarjeta1.Enabled            := false;
        end;
        AsignarDescuentoPermitidoalEmpleado1.Enabled := true;
        AsignarDescuentoAutorizadoporCobros1.Enabled := true;
      end
    Else
      Begin
        //Si el Cliente NO Puede Recibir Descuentos.
        If qrEntradaPaciente.State in [dsEdit,dsInsert] then
          Begin
            EliminarDescuentoAplicado1.Enabled := True;
            EliminarDescuentoAplicado1Click(Nil);
          end;
        EliminarDescuentoAplicado1.Enabled := false;
        AsignarDescuentoPermitidoalUsuario1.Enabled := false;
        AsignarDescuentoPermitidoalEmpleado1.Enabled := false;
        AsignarDescuentoAutorizadoporCobros1.Enabled := false;
        AsignarDescuentoTarjeta1.Enabled            := false;
      End;
   End
 Else
   Begin
     //Si el Empleado NO Puede Otorgar Descuentos.
     If qrEntradaPaciente.State in [dsEdit,dsInsert] then
       Begin
         EliminarDescuentoAplicado1.Enabled := True;
         EliminarDescuentoAplicado1Click(Nil);
       end;

     EliminarDescuentoAplicado1.Enabled := false;
     AsignarDescuentoPermitidoalUsuario1.Enabled  := false;
     AsignarDescuentoPermitidoalEmpleado1.Enabled := true;
     AsignarDescuentoAutorizadoporCobros1.Enabled := false;
     AsignarDescuentoTarjeta1.Enabled             := false;
   End;
// if qrEntradaPaciente.RecordCount > 0 then   qrEntradaPaciente.Post;
 If ((qrEntradaPaciente.State in [dsInsert])) Or
    ((qrEntradaPaciente.State in [dsEdit]) And ((qrEntradaPacienteOrigen.value = dm.qrParametroGrupoVip.Value ) ))  then
//
// If qrEntradaPaciente.State in [dsInsert] then
   Begin
     //Buscando el Descuento Configurado al Cliente.
     qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(ClienteFactura,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));

     //Buscando el Cargo - Gasto Configurado al Cliente.
     DM.VerificarGastosVarios(ClienteFactura, qrEntradaPacienteRECID.value);

     If (qrEntradaPacienteDescuentoPorc.Value < 0.1) then
       Begin
         //Buscando el Descuento Configurado al Paciente (EMPLEADOS - VIP - DOCTORES - ETC).
         If (qfindPacientes.FieldByName('Principal').AsString <> '') Then
           qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(qfindPacientes.FieldByName('Principal').AsString,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value))
         Else
           qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(qfindPacientes.FieldByName('ClienteId').AsString,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
       end;

//     VerificarPagoDiferencia;
//     ActTotales;
   end;
end;


procedure TfrmPuntoVenta.VerificarPagoDiferencia;
Var
 qfind : TADOQuery;
begin
 //Buscando los Datos del Cliente a Facturar y Sus Parametros.
 Buscar_Cliente;

 DM.qrParametro.close;
 DM.qrParametro.open;

 if ( qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value ) Then
  begin
//   qfind := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteId = :cli', qrEntradaPacientePacienteId.Value);
   qfind := DM.Find_Ldr('SELECT CobrarDiferencia FROM PTCliente (nolock) WHERE ClienteId = :cli', qrEntradaPacientePacienteId.Value);

   If (qfind.FieldByName('CobrarDiferencia').Value = 0) then
     begin
      qrEntradaPaciente.Edit;
      qrEntradaPacienteDescuentoPorc.Value  := 0;
      qrEntradaPacienteDescuento.Value      := 0;
      qrEntradaPacienteDescuentoValor.Value := 0;

      If (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
        Begin
          qrEntradaPacienteDescuentoValor.Value := DM.Redondeo(qrEntradaPacienteSubTotal.Value -
                                                               qrEntradaPacienteCoberturaSeguro.Value);
        end;
     end
   Else
     begin
       if  Not((qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoVip.Value) Or
               (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoAcc.Value) Or
               (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoEmp.Value) Or
               (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoPriv.Value)) Then
         Begin
           qrEntradaPaciente.Edit;
           qrEntradaPacienteDescuentoPorc.Value := 0;
           qrEntradaPacienteDescuento.Value     := 0;
           qrEntradaPacienteDescuentoValor.Value:= 0;
{
           If (qrEntradaPacienteDescuentoPorc.Value < 0.1) then
             Begin
               //Buscando el Descuento Configurado al Paciente (EMPLEADOS - VIP - DOCTORES - ETC).
               If (qfindPacientes.FieldByName('Principal').AsString <> '') Then
                 qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(qfindPacientes.FieldByName('Principal').AsString)
               Else
                 qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(qfindPacientes.FieldByName('ClienteId').AsString)
             end;
}
         end;
     end;

   FreeAndNil(qfind);
  end;

 qrEntradaPaciente.Edit;
 ActTotales;
end;


function TfrmPuntoVenta.CanCambiarLaboratorio;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('SELECT CambiarMuestraNo FROM SysUsuarios (nolock) WHERE UserID = :user',DM.CurUser);
 result := qfind.FieldByName('CambiarMuestraNo').AsBoolean;
 FreeAndNil(qfind);
end;


function TfrmPuntoVenta.CanMenuEspecial;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'SELECT FuncionesEspeciales FROM SysUsuarios (nolock) WHERE UserID ='+#39+DM.CurUser+#39;
 qfind.Open;
 if (qfind.RecordCount > 0) then
   result := True
 else
   result := false;
 FreeAndNil(qfind);
end;


function TfrmPuntoVenta.Asignar_Descuento;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('SELECT AsignarDescuentos FROM SysUsuarios (nolock) WHERE UserID = :user', DM.CurUser);
 result := qfind.FieldByName('AsignarDescuentos').AsBoolean;
 FreeAndNil(qfind);
end;


//Poniendo el Documento en Hold.
procedure TfrmPuntoVenta.Act_Hold;
var
 qfind : TADOQuery;
begin
{
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT COUNT(RecId) FROM PTEntradaPaciente '+
                   ' WHERE SucursalId = :suc '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND Hold = 1 ';
 qfind.Parameters[0].Value := DM.CurSucursal;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   Begin
     LbHold.Caption := qfind.Fields[0].AsString + ' en Hold.' ;
     LbHold.Refresh;
   End
 Else
   Begin
     LbHold.Caption := '';
     LbHold.Refresh;
   End;

 FreeAndNil(qfind);
}
end;


//Eliminando Los Documentos en Hold.
procedure TfrmPuntoVenta.Del_Hold;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTEntradaPaciente (nolock) '+
                   ' WHERE SucursalId = :suc '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND UserId = :usr '+
                   ' AND Hold = 1 ';
 qfind.Parameters[0].Value := DM.CurSucursal;
 qfind.Parameters[1].Value := DM.CurUser;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   Begin
     qfind.First;
     While Not qfind.Eof do
      Begin
        DM.DataBase.Execute('DELETE FROM PTEntradaPaciente WHERE RecId = '+ qfind.FieldByName('RecId').AsString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);
        DM.DataBase.Execute('DELETE FROM PTEntradaPacienteDetalle WHERE Refrecid = '+ qfind.FieldByName('RecId').AsString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);

        qfind.Next;
      End;
   End;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta.DepositosSucursales1Click(Sender: TObject);
begin
  DM.Cobro_Var := 'USUARIO';
  DM.qrCorteDeposito.Close;
  DM.qrCorteDeposito.Parameters.ParamByName('suc').Value := DM.CurSucursal;
  DM.qrCorteDeposito.Open;

  If (DM.qrCorteDeposito.RecordCount > 0) then
    Begin
      DM.ppDepositoSucursal.DeviceType := dtScreen;
      DM.ppDepositoSucursal.Print;
    End
  Else
    Raise exception.CreateFmt(' Ningun Cajero a Generado un Corte de Caja.!!!', []);
end;

procedure TfrmPuntoVenta.No_Procesar;
Var
 qact : TADOQuery;
begin
{
 If ( DM.Mensaje('Desea Marcar Esta Prueba Como NO Procesar?' ,mb_yesno ) = id_yes ) Then
  Begin
   If ( qrEntradaPacienteDetalle.State in [dsEdit,dsInsert] ) Then
    If ( qrEntradaPacienteDetalle.RecordCount > 0 ) then
     Begin
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteDetalleEstatus.Value := 'N';
      DM.Info('La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') NO Sera Procesada.!!!');
     End;
  End;
}
 If ( DM.Mensaje('Esta Seguro de que Esta Prueba NO Se Procesara?' ,mb_yesno) = id_yes ) Then
   Begin
     qact := DM.NewQuery;

     qact.Close;
     qact.SQL.Clear;
     qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle with (rowlock) SET '+
                      ' Estatus = '+ #39 + 'N' + #39 +
                      ' WHERE RefRecid = :rec '+
                      ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                      ' AND Secuencia = :sec '+
                      ' AND pruebaId = :pru ';
     qact.Parameters[0].Value := qrEntradaPacienteDetalleRefRecid.Value;
     qact.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.Value;
     qact.Parameters[2].Value := qrEntradaPacienteDetallePruebaid.Value;
     qact.ExecSQL;

     FreeAndNil(qact);

     DM.Info('La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') NO Sera Procesada.!!!');
     If dm.qrParametroServidor_AS400.value <> EmptyStr then
     begin
          if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
          begin
             BtInterfaseAS400Click(Nil);
          end;
     end;
   end;
end;


procedure TfrmPuntoVenta.Asignar2daMuestra1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-8000);
  if (Docto_Ant <> '') then
    Buscar_Muestra
  else
    beep;
end;

procedure TfrmPuntoVenta.Buscar_Muestra;
Var
 Dias   : Extended;
 qfind  : TADOQuery;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTEntradaPaciente (nolock) '+
                   ' WHERE EntradaId = '+ #39 + Docto_Ant + #39 +
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND RepMuestra = 1 ';
 qfind.Open;

 if (qfind.RecordCount > 0) then
   Begin
     Dias := (DM.SystemDate - qfind.FieldByName('Fecha').AsDateTime);

     If (Dias <= DM.qrParametroDiasEntrePruebas.Value) then
       Begin
         qrEntradaPaciente.Edit;

         Agregar_Clientes(qfind.FieldByName('ClienteId').AsString);
         Agregar_Pacientes(qfind.FieldByName('PacienteId').AsString);

         //Inactivando Los Botones.
         btpaciente.Enabled     := false;
         btcliente.Enabled      := false;
         btHold.Enabled         := False;
         bteliminar.Enabled     := false;
         btnotacredito.Enabled  := False;

         if (qfind.FieldByName('DoctorId').AsString <> '') then
          begin
            qrEntradaPacienteDoctorID.Value               := qfind.FieldByName('DoctorId').AsString;
            qrEntradaPacienteNombreDoctor.Value           := qfind.FieldByName('NombreDoctor').AsString;
            if cxDBImageComboBox7.ItemIndex = 1 then
                qrEntradaPacienteFax.Value                := qfind.FieldByName('Telefono').AsString
            else
            if cxDBImageComboBox7.ItemIndex = 2 then
                qrEntradaPacienteFax.Value                := qfind.FieldByName('Fax').AsString;
            qrEntradaPacienteResultadoDoctor.Value        := qfind.FieldByName('ResultadoDoctor').AsInteger;
            qrEntradaPacientePublicarInternetDoctor.Value := qfind.FieldByName('PublicarInternetDoctor').AsInteger;

            if (qfind.FieldByName('DoctorId').AsInteger = 1) then
              EdNombreDoctor.Properties.ReadOnly := False
            else
              EdNombreDoctor.Properties.ReadOnly := True;
          end;

         Act_2da     := True;
         Record_Ant  := StrtoInt64(qfind.FieldByName('RecId').AsString);
         Muestra_Ant := qfind.FieldByName('MuestraNo').AsString;

         edtipocliente.Properties.ReadOnly := True;

         qrEntradaPaciente.Edit;
         qrEntradaPacienteEntradaIdAnt.Value := Docto_Ant;

         DM.Info('La Factura No. ('+ Docto_Ant +') Tiene Pruebas en 2da. Muestra.');
       end
     Else
       Raise exception.CreateFmt('Ha Vencido el Plazo Para Realizar las Pruebas en 2da. Muestra de Esta Factura.', [])
   end
 Else
   Raise exception.CreateFmt('La Factura No. ('+ Docto_Ant +') NO Tiene Pruebas en 2da. Muestra.', []);

 FreeAndNil(qfind);
end;

//Validando Los Datos de la 2da. Muestra.
procedure TfrmPuntoVenta.Val_2da_Muestra;
Var
 qfind  : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTEntradaPaciente (nolock) '+
                   ' WHERE EntradaId = '+ #39 + Docto_Ant + #39 +
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND RepMuestra = 1 ';
 qfind.Parameters.ParamByName('val').Value := '0';
 qfind.Open;

 if (qfind.RecordCount > 0) then
   Begin
     if (qrEntradaPacienteClienteId.Value <> qfind.FieldByName('ClienteId').AsString) Then
       Begin
         Raise exception.CreateFmt('El Cliente Actual: ('+ qrEntradaPacienteClienteId.Value + ').' + #13 +
                                   'Es Diferente del Cliente Original: ('+ qfind.FieldByName('ClienteId').AsString + ').'+ #13 +
                                   'Por Favor Verifique.!!!', []);
       End;

     if (qrEntradaPacientePacienteId.Value <> qfind.FieldByName('PacienteId').AsString) Then
       Begin
         Raise exception.CreateFmt('El Paciente Actual: ('+ qrEntradaPacientePacienteId.Value + ').' + #13 +
                                   'Es Diferente del Paciente Original: ('+ qfind.FieldByName('PacienteId').AsString + ').'+ #13 +
                                   'Por Favor Verifique.!!!', []);
       End;
   End;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta.Buscar_Combo;
begin
  qfindcombo := DM.NewQuery;

  qfindcombo.Close;
  qfindcombo.SQL.Text := ' SELECT * FROM PTCombosPruebas (nolock) '+
                         ' WHERE ComboId = '+ #39 + qrEntradaPacienteDetallePruebaID.Value + #39 +
                         ' ORDER BY linea ';
  qfindcombo.Open;

  If (qfindcombo.RecordCount > 0) then
    qfindcombo.First;
//  Else
//    Raise exception.CreateFmt('El COMBO ('+ qrEntradaPacienteDetallePruebaID.Value +') NO Tiene Pruebas Registrada.', []);
end;


procedure TfrmPuntoVenta.Borrar_Combo;
begin
  If ( DM.Mensaje('Esta Seguro de Eliminar el Combo Registrado?' ,mb_yesno) = id_yes ) And
     ( comboborrar = True )Then
   Begin
     DM.DataBase.Execute('DELETE FROM PTEntradaPacienteDetalle WHERE Combo = 1 '+
                         ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                         ' AND Refrecid = ' + qrEntradaPacienteRECID.AsString);

     qrEntradaPacienteDetalle.Close;
     qrEntradaPacienteDetalle.parameters[0].Value := qrEntradaPacienteRECID.Value;
     qrEntradaPacienteDetalle.Open;

     qrEntradaPacienteDetalle.Last;

     ActTotales;

     DM.Info('Las Pruebas del Combo Fueron Eliminadas Exitosamente.');
    End
  Else
   DM.Info('El Proceso Ha Sido Cancelado por el Usuario.');
end;


procedure TfrmPuntoVenta.Actu_Precio_Combo;
Var
  valor : Currency;
  qfind : TAdoQuery;
Begin
  qfind := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT COUNT(PruebaId) FROM PTEntradaPacienteDetalle (nolock) '+
                    ' WHERE Combo = 1 AND Precio < 1 '+
                    ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                    ' AND Refrecid = '+ #39 + qrEntradaPacienteRECID.AsString + #39;
  qfind.Open;

  If (qfind.RecordCount > 0) And (qfind.Fields[0].AsInteger > 0) And (precio_combo > 1) then
    Begin
      valor := DM.Redondeo(precio_combo / qfind.Fields[0].AsInteger);

      qrEntradaPacienteDetalle.Close;
      qrEntradaPacienteDetalle.parameters[0].Value := Strtoint64(qrEntradaPacienteRECID.AsString);
      qrEntradaPacienteDetalle.Open;

      qrEntradaPacienteDetalle.DisableControls;
      qrEntradaPacienteDetalle.First;
      While not qrEntradaPacienteDetalle.Eof do
       begin
         if (qrEntradaPacienteDetalleCombo.Value = 1) And (qrEntradaPacienteDetallePrecio.Value < 1) then
           Begin
             qrEntradaPacienteDetalle.Properties['Update Criteria'].Value := 0;
             qrEntradaPacienteDetalle.Edit;
             qrEntradaPacienteDetallePrecioCombo.Value := valor;
             qrEntradaPacienteDetalle.Post;
           end;

         qrEntradaPacienteDetalle.Next;
       end;
    end;

  qrEntradaPacienteDetalle.First;
  qrEntradaPacienteDetalle.EnableControls;
  qrEntradaPacienteDetalle.Last;

  FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta.Insertar_Combo_Precio;
begin
 While Not qfindcombo.Eof Do
  Begin
   If (qrEntradaPacienteDetallePruebaID.Value = '') Or
      (qrEntradaPacienteDetallePruebaID.IsNull) Then
     qrEntradaPacienteDetalle.Delete
   Else
     qrEntradaPacienteDetalle.Post;

   qrEntradaPacienteDetalle.Insert;

   If (qfindcombo.FieldByName('Sexo').AsInteger < 2) then
    Begin
     If (qfindcombo.FieldByName('Sexo').AsInteger <> qrEntradaPacienteSexo.Value) Then
      Begin
       //El Paciente NO ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := True;
       DM.Info('La Prueba: ( '+ qfindcombo.FieldByName('Descripcion').AsString +' ). NO Aplica Para Pacientes de Este Sexo.');
       qfindcombo.Next;
      End
     Else
      Begin
       //El Paciente ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := True;
{
       //Validando los Descuentos en los Combos.
       If (combodescto = 1) then
         qrEntradaPacienteDetalleDescPct.Value := qrEntradaPacienteDESCUENTOPORC.Value
       Else
         qrEntradaPacienteDetalleDESCPCT.Value := 0;
}
       qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
       qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
       qfindcombo.Next;
      End;
    End
   Else
    Begin
     //La Prueba Se Le Realiza a Ambos Sexos.
     comboprecio := True;
{
     //Validando los Descuentos en los Combos.
     If (combodescto = 1) then
       qrEntradaPacienteDetalleDescPct.Value := qrEntradaPacienteDESCUENTOPORC.Value
     Else
       qrEntradaPacienteDetalleDESCPCT.Value := 0;
}
     qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
     qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
     qfindcombo.Next;
    End;
  End;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 If (qrEntradaPacienteDetallePruebaID.Value = '') Or
    (qrEntradaPacienteDetallePruebaID.IsNull) Then
   qrEntradaPacienteDetalle.Delete;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 qrEntradaPacienteDetalle.Edit;
 FreeAndNil(qfindcombo);
end;


procedure TfrmPuntoVenta.Insertar_Combo_Blanco;
begin
 While Not qfindcombo.Eof Do
  Begin
   If (qrEntradaPacienteDetallePruebaID.Value = '') Or
      (qrEntradaPacienteDetallePruebaID.IsNull) Then
     qrEntradaPacienteDetalle.Delete
   Else
     qrEntradaPacienteDetalle.Post;

   qrEntradaPacienteDetalle.Insert;

   If (qfindcombo.FieldByName('Sexo').AsInteger < 2) then
    Begin
     If (qfindcombo.FieldByName('Sexo').AsInteger <> qrEntradaPacienteSexo.Value) Then
      Begin
       //El Paciente NO ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := False;
       DM.Info('La Prueba: ( '+ qfindcombo.FieldByName('Descripcion').AsString +' ). NO Aplica Para Pacientes de Este Sexo.');
       qfindcombo.Next;
      End
     Else
      Begin
       //El Paciente ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := False;
       qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
       qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
       qfindcombo.Next;
      End;
    End
   Else
    Begin
     //La Prueba Se Le Realiza a Ambos Sexos.
     comboprecio := False;
     qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
     qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
     qfindcombo.Next;
    End;
  End;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 If (qrEntradaPacienteDetallePruebaID.Value = '') Or
    (qrEntradaPacienteDetallePruebaID.IsNull) Then
   qrEntradaPacienteDetalle.Delete;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 qrEntradaPacienteDetalle.Edit;
 qrEntradaPacienteDetalle.Post;
 FreeAndNil(qfindcombo);

 //Agregado Para Actualizar el Valor del Combo para la Transferencia a Axapta.
 Actu_Precio_Combo;
end;
procedure TfrmPuntoVenta.Edita_Combo_Blanco;
begin
 While Not qfindcombo.Eof Do
  Begin
   If (qrEntradaPacienteDetallePruebaID.Value = '') Or
      (qrEntradaPacienteDetallePruebaID.IsNull) Then
     qrEntradaPacienteDetalle.Delete ;
//   Else
//     qrEntradaPacienteDetalle.Post;

//   qrEntradaPacienteDetalle.Insert;

   If (qfindcombo.FieldByName('Sexo').AsInteger < 2) then
    Begin
     If (qfindcombo.FieldByName('Sexo').AsInteger <> qrEntradaPacienteSexo.Value) Then
      Begin
       //El Paciente NO ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := False;
       DM.Info('La Prueba: ( '+ qfindcombo.FieldByName('Descripcion').AsString +' ). NO Aplica Para Pacientes de Este Sexo.');
       qfindcombo.Next;
      End
     Else
      Begin
       //El Paciente ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := False;
       qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
       qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
       qfindcombo.Next;
      End;
    End
   Else
    Begin
     //La Prueba Se Le Realiza a Ambos Sexos.
     comboprecio := False;
     qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
     qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
     qfindcombo.Next;
    End;
  End;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 If (qrEntradaPacienteDetallePruebaID.Value = '') Or
    (qrEntradaPacienteDetallePruebaID.IsNull) Then
   qrEntradaPacienteDetalle.Delete;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
// qrEntradaPacienteDetalle.Edit;
// qrEntradaPacienteDetalle.Post;
 FreeAndNil(qfindcombo);

 //Agregado Para Actualizar el Valor del Combo para la Transferencia a Axapta.
 Actu_Precio_Combo;
end;


//Actualizando los Datos del Cliente (Numeros de Telefono - Fax - Internet).
procedure TfrmPuntoVenta.Act_Cliente;
Var
  texto       : String;
  qActualiza  : TAdoQuery;
begin
 If Not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
          (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
          (qrEntradaPacientePacienteId.Value ='00006242')) Then
 begin

       texto := ' UPDATE PTCliente with (rowlock) SET ';
       if (qrEntradaPacientePublicarInternet.Value = 1) then
                texto := texto + ' PublicarInternet = :publ, ';
                texto := texto +' Telefono =  :tel1, '+
                                ' Telefono2 = :tel2, '+
                                ' Direccion = :Dir, '+
                                ' Email = :Email, '+
                                ' Fax = :fax1 ';
       if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
       begin
                 texto := texto+ ' ,Poliza = :pol ';
                 texto := texto+ ' ,Seguro = :seg ';
       end;
                texto := texto+' WHERE ClienteID = :pac ';
                texto := texto+' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
     qActualiza := DM.NewQuery;
     qActualiza.Close;
     qActualiza.SQL.Text := texto;
     if (qrEntradaPacientePublicarInternet.Value = 1) then
       qActualiza.Parameters.ParamByName('publ').Value := qrEntradaPacientePublicarInternet.Value;
     qActualiza.Parameters.ParamByName('tel1').Value    := qrEntradaPacienteTelefonos.Value;
     qActualiza.Parameters.ParamByName('tel2').Value    := qrEntradaPacienteTelefono2.Value;
     qActualiza.Parameters.ParamByName('Dir').Value     := qrEntradaPacienteDireccion.Value;
     qActualiza.Parameters.ParamByName('Email').Value   := qrEntradaPacienteEmail.Value;
     qActualiza.Parameters.ParamByName('fax1').Value    := qrEntradaPacienteFax.Value;
     if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
     begin
         qActualiza.Parameters.ParamByName('pol').Value := Copy(qrEntradaPacientePolizaID.Value, 1, 20);
         qActualiza.Parameters.ParamByName('seg').Value := qrEntradaPacienteClienteID.Value;
     end;
     qActualiza.Parameters.ParamByName('pac').Value  := qrEntradaPacientePacienteID.Value;
     qActualiza.ExecSQL;
 end;
end;


//Buscando los Datos del Cliente a Facturar y Sus Parametros.
procedure TfrmPuntoVenta.Buscar_Cliente;
begin
// If (qrEntradaPacienteClienteId.Value <> '') then
//  Begin
    //Buscando los Datos del Cliente Registrado en el Punto de Venta.
    qfindCltParams := DM.Find_Ldr('SELECT Principal,UsarAcuerdoPropio,GrupoCliente FROM PTCliente (nolock) WHERE ClienteID = :cli', qrEntradaPacienteClienteId.Value);

    If qfindCltParams.FieldByName('Principal').AsString <> '' then
      Begin
        If (qfindCltParams.FieldByName('UsarAcuerdoPropio').AsInteger = 1) then
          Begin
            //Buscando los Acuerdos Comerciales del Cliente HIJO.
            ClienteFactura := qrEntradaPacienteClienteId.Value;
//            If (Operacion <> '') Then
            If qrEntradaPaciente.State in [dsInsert] Then
              Begin
                qrEntradaPacienteAcuerdoPropio.Value := 1;
                qrEntradaPacienteClientePadre.Value := qfindCltParams.FieldByName('Principal').AsString;
              End;
          End
        Else
          Begin
            //Buscando los Acuerdos Comerciales del Cliente (PADRE - PRINCIPAL).
            ClienteFactura := qfindCltParams.FieldByName('Principal').AsString;
//            If (Operacion <> '') Then
            If qrEntradaPaciente.State in [dsInsert] Then
              Begin
                qrEntradaPacienteAcuerdoPropio.Value := 0;
                qrEntradaPacienteClientePadre.Value := qfindCltParams.FieldByName('Principal').AsString;
              End;
          End;
      End
    Else
      Begin
        //Buscando los Acuerdos Comerciales del Cliente Registrado en el Punto de Venta.
        ClienteFactura := qrEntradaPacienteClienteId.Value;
//        If (Operacion <> '') Then
        If qrEntradaPaciente.State in [dsInsert] Then
         Begin
           qrEntradaPacienteAcuerdoPropio.Value := 0;
           qrEntradaPacienteClientePadre.Value := qrEntradaPacienteClienteId.Value;
         End;
      End;

    //Cargando los PARAMETROS del CLIENTE A FACTURAR en el Punto de Venta.
    qfindCltParams := DM.Find_Ldr('SELECT * FROM PTCliente (nolock) WHERE ClienteID = :cli', ClienteFactura);

    //Buscando los Datos del Grupo del Cliente.
    Buscar_Grupo_Clt(qfindCltParams.FieldByName('GrupoCliente').AsString);

    //Buscando los Datos del PACIENTE Registrado y Sus Parametros.
    Buscar_Paciente;
//  End;
end;


//Buscando los Datos del PACIENTE Registrado y Sus Parametros.
procedure TfrmPuntoVenta.Buscar_Paciente;
begin
  qfindPacientes := DM.Find_Ldr('Select * from PTCliente (nolock) Where ClienteID = :pac', qrEntradaPacientePacienteId.Value);

  //Buscando los Datos del Grupo del Paciente.
  Buscar_Grupo_Pac(qfindPacientes.FieldByName('GrupoCliente').AsString);
end;


//Buscando los Datos del Grupo del Cliente.
Procedure TfrmPuntoVenta.Buscar_Grupo_Clt(Grupo: string);
begin
 qfindGrupoClt := DM.Find_Ldr('SELECT * FROM PTGrupoCliente (nolock) WHERE GrupoCliente = :grp', Grupo);
end;


//Buscando los Datos del Grupo del Paciente.
Procedure TfrmPuntoVenta.Buscar_Grupo_Pac(Grupo: string);
begin
 qfindGrupoPac := DM.Find_Ldr('SELECT * FROM PTGrupoCliente (nolock) WHERE GrupoCliente = :grp', Grupo);
end;


//Buscando los Datos del Codigo CUPS del Cliente.
procedure TfrmPuntoVenta.Buscar_Cod_Cups(cliente: String; prueba: String);
begin
  qfindcodcup := DM.NewQuery;
  qfindcodcup.Close;
  qfindcodcup.SQL.Text := ' SELECT * FROM PTCodigoCup (nolock) '+
                          ' WHERE ClienteId = '#39 + cliente + #39 +
                          ' AND PruebaId = '#39 + prueba + #39 +
                          ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                          ' ORDER BY PruebaId ';
  qfindcodcup.Active := True;

  qrEntradaPacienteDetalle.Edit;

  if (qfindcodcup.RecordCount > 0) then
    Begin
      qrEntradaPacienteDetalleCodigoCupID.Value := qfindcodcup.FieldByName('CodigoCupID').AsString;

      if (qfindcodcup.FieldByName('DescripcionCup').AsString <> '') then
        qrEntradaPacienteDetalleDescripcionCup.Value := qfindcodcup.FieldByName('DescripcionCup').AsString
      else
        qrEntradaPacienteDetalleDescripcionCup.Value := qrEntradaPacienteDetalleDescripcion.Value;
    end
  Else
    Begin
      qrEntradaPacienteDetalleCodigoCupID.Value := prueba;
      qrEntradaPacienteDetalleDescripcionCup.Value := qrEntradaPacienteDetalleDescripcion.Value;
    end;

  FreeAndNil(qfindcodcup);
end;


//Insertando Los Datos de la Tarjeta de Descuento.
procedure TfrmPuntoVenta.Insert_Card_Descuento;
Var qfind, qactu, qinsert : TAdoQuery;
begin
 If (qrEntradaPacienteDescuentoTexto.Value <> 'DESCUENTO SUCURSAL') And
    (qrEntradaPacienteDescuentoPlanId.Value <> 'SUCURSAL') And
    (qrEntradaPacienteDescuentoCard.Value <> '') Then
   Begin
     //Actualizando el Estatus del BONO Utilizado.
     qactu := DM.NewQuery;
     qactu.Close;
     qactu.SQL.Text := ' UPDATE PTTarjetaBono with (rowlock) SET '+
//                       ' Activo = 0, '+
                       ' Consumido = Consumido + :con '+
                       ' WHERE TarjetaID = :tar '+
                       ' AND TarjetaNumero = :num ';
     qactu.Parameters.ParamByName('con').Value := qrEntradaPacienteDescuentoBono.Value;
     qactu.Parameters.ParamByName('tar').Value := qrEntradaPacienteDescuentoPlanId.Value;
     qactu.Parameters.ParamByName('num').Value := qrEntradaPacienteDescuentoCard.Value;
     qactu.ExecSQL;

     //Buscando Los Datos de la Tarjeta de Descuento En el Cliente.
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := ' SELECT * FROM PTTarjetaCliente (nolock) '+
                       ' WHERE ClienteId = :clt '+
                       ' AND TarjetaID = :tar '+
                       ' AND TarjetaNumero = :num ';
     qfind.Parameters.ParamByName('clt').Value := qrEntradaPacientePacienteID.Value;
     qfind.Parameters.ParamByName('tar').Value := qrEntradaPacienteDescuentoPlanId.Value;
     qfind.Parameters.ParamByName('num').Value := qrEntradaPacienteDescuentoCard.Value;
     qfind.Open;

     If (qfind.RecordCount = 0) then
       Begin
         //Insertando Los Datos de la Tarjeta de Descuento En el Cliente.
         qinsert := DM.NewQuery;
         qinsert.Close;
         qinsert.SQL.Text := ' INSERT INTO PTTarjetaCliente '+
                             ' (ClienteId, TarjetaID, TarjetaNumero) '+
                             ' VALUES (:clt, :tar, :num) ';
         qinsert.Parameters.ParamByName('clt').Value := qrEntradaPacientePacienteID.Value;
         qinsert.Parameters.ParamByName('tar').Value := qrEntradaPacienteDescuentoPlanId.Value;
         qinsert.Parameters.ParamByName('num').Value := qrEntradaPacienteDescuentoCard.Value;
         qinsert.ExecSQL;

         FreeAndNil(qinsert);
       end;

     FreeAndNil(qactu);
     FreeAndNil(qfind);
   end;
end;


procedure TfrmPuntoVenta.InstructivodeInternet1Click(Sender: TObject);
Var ClienteID : String;
 qPacientet : TAdoQuery;
begin
  inherited;
        if (not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
                (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
                (qrEntradaPacientePacienteId.Value ='00006242'))) Then
        begin
         Buscar_Paciente;
         If (Dm.GetDigitoVerificador(copy(DM.Cortar_Char('-', qfindPacientes.FieldByName('Identificacion').AsString),1,11),qfindPacientes.FieldByName('Tipo_Documento').AsString)) Then
         begin
            If Trim(qrEntradaPacientePACIENTEID.Value) <> '' then
            begin
              if dm.Busca_Internet_Identificacion(qfindPacientes.FieldByName('Identificacion').AsString)=EmptyStr then
              begin
               If dm.qrParametroServidor_AS400.value <> EmptyStr then
               begin
                   If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                   begin
                     InterfaseAS400.Buscar_Cedula_Internet(qfindPacientes.FieldByName('Identificacion').AsString,qrEntradaPacienteMuestrano.AsString,qfindPacientes.FieldByName('Tipo_Documento').AsString);
                     ClienteID:=DM.Cortar_Char('-', dm.Retorna_Cliente_Internet(qfindPacientes.FieldByName('Identificacion').AsString));
                     If (InterfaseAS400.User_Internet_AS400 <> EmptyStr) And (InterfaseAS400.Clave_Internet_AS400 <> EmptyStr) Then
                     Begin
                         If Not((Trim(InterfaseAS400.User_Internet_AS400)=EmptyStr) Or   (Trim(InterfaseAS400.Clave_Internet_AS400)=EmptyStr) Or
                                (Trim(InterfaseAS400.Nombre_Internet_AS400)=EmptyStr) Or (Trim(InterfaseAS400.Identificacion_Internet_AS400)=EmptyStr)Or
                                (Trim(ClienteID)=EmptyStr)) Then
                         begin
                                Insertar_Usuario_New(Trim(InterfaseAS400.User_Internet_AS400),
                                              FormatFloat('000000', StrToInt(Trim(InterfaseAS400.Clave_Internet_AS400))),
                                              Trim(InterfaseAS400.Nombre_Internet_AS400),
                                              Trim(InterfaseAS400.Identificacion_Internet_AS400),
                                              ClienteID, Trim(InterfaseAS400.Tipo_Internet_AS400), 'N');

                         End;
                     end;
                   end;
               end;
              end;
              if dm.Busca_Internet_Identificacion(qfindPacientes.FieldByName('Identificacion').AsString) <> EmptyStr then
              begin
                  qPacientet := DM.NewQuery;
                  qPacientet.Close;
                  qPacientet.SQL.Text := ' Select identificacion From ptcliente (nolock) '+
                                            ' WHERE clienteid = '+#39+qrEntradaPacientePacienteID.Value+#39+
                                            ' AND identificacion like '+#39+'%'+'0000000'+'%'+#39+
                                            ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
                  qPacientet.Open;
                  if Not qPacientet.IsEmpty then
                  begin
                    Raise exception.CreateFmt('C�dula del paciente '+qPacientet.FieldByName('identificacion').AsString+' es inv�lida .  Favor Verifique.', []);
                    FreeAndNil(qPacientet);
                    exit;
                  end;

                  qrInternet.Close;
                  qrInternet.SQL.Text := ' SELECT top 1 * FROM ptUsuariosInternet (nolock) '+
                                            ' WHERE Tipo = '+#39+'P'+#39+
                                            ' AND Identificacion='+#39+Copy(DM.Cortar_Char('-', dm.Busca_Internet_Identificacion(qfindPacientes.FieldByName('Identificacion').AsString)),1,11)+#39+
                                            ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
                  qrInternet.Open;

                  DM.qrEntradaCabRep.Close;
                  DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente (nolock) '+
                                                 ' WHERE RecId = :rec '+
                                                 ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
                  DM.qrEntradaCabRep.Parameters.ParamByName('rec').Value := qrEntradaPacienteRECID.Value;
                  DM.qrEntradaCabRep.Open;

                  If (qrInternet.RecordCount > 0) Then
                  Begin
                      If Ruta_Factura <> Emptystr then
                      Begin
                         ppImpInternet.ShowPrintDialog := False;
                         ppImpInternet.DeviceType := dtPrinter;
                         ppImpInternet.PrinterSetup.PaperHeight := 8.5;
                         ppImpInternet.PrinterSetup.PaperName := 'Custom';
                         ppImpInternet.PrinterSetup.PaperWidth := 4;
                         ppImpInternet.PrinterSetup.PrinterName := Ruta_Factura;
                         ppImpInternet.Print;
                      End
                      else
                      Begin
                         ppImpInternet.DeviceType := dtScreen;
                         ppImpInternet.Print;
                      End;
                  End;
                  FreeAndNil(qPacientet);
              end;
            end;
        end
        else
        begin
            Raise exception.CreateFmt('N�mero de c�dula no v�lido.  No podr� generar clave de internet.',[]);
            exit;
        end
        end
        else
        begin
            Raise exception.CreateFmt('Los GENERICOS NO se generan clave de Internet.  Favor Verifique.',[]);
            exit;
        end;
end;


procedure TfrmPuntoVenta.ppHeaderBand4BeforePrint(Sender: TObject);
Var Texto1, Texto2 : String;
begin
 Texto1 := '';
 Texto2 := '';
{
  ppLbTelefono02.Caption := 'Tel.: ' + DM.qrSucursalTELEFONO.Value;
  if DM.qrSucursalFAX.Value <> '' then
    ppLbTelefono02.Caption := 'Tel.: ' + DM.qrSucursalTELEFONO.Value + '. Fax : '+ DM.qrParamFax.Value + '.';

  if (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
    LbEntregaCobertura.Caption := 'Cobertura Confirmada';

  if (qrEntradaPacienteCoberturaRechazada.Value = 1) then
    LbEntregaCobertura.Caption := 'Cobertura Rechazada';

  If (qrEntradaPacienteCoberturaConfirmada.Value = 0) And
     (qrEntradaPacienteCoberturaRechazada.Value = 0) Then
    LbEntregaCobertura.Caption := 'No Se Ha Solicitado La Cobertura';
}
//  LbEdad.Caption := 'Edad: ' + qrEntradaPacienteEDADPACIENTE.AsString;

  LbFechayHora.Caption := 'Fecha Ent.: ' + qrEntradaPacienteFECHA.AsString +
                          ' * Hora Ent.: ' + qrEntradaPacienteHORAENTRADA.AsString;

  if (qrEntradaPacienteRESULTADOPACIENTE.Value = 0) then
    Texto1 := 'No Entregar los Resultados';

  if (qrEntradaPacienteRESULTADOPACIENTE.Value = 1) then
    Texto1 := 'Entrega de Resultados Personal';

  if (qrEntradaPacienteRESULTADOPACIENTE.Value = 2) then
    Texto1 := 'Enviar los Resultados por Fax';

  If (qrEntradaPacienteRESULTADOPACIENTE.Value = 0) And
     (qrEntradaPacienteRESULTADODOCTOR.Value <> 0) Then
    Texto1 := 'Enviar los Resultados al Doctor';
{
  if (qrEntradaPacienteRESULTADOPACIENTE.Value = 0) then
    Texto1 := 'No Entregar Resultados';

  if (qrEntradaPacienteRESULTADOPACIENTE.Value = 1) then
    Texto1 := 'Resultados Personal';

  if (qrEntradaPacienteRESULTADOPACIENTE.Value = 2) then
    Texto1 := 'Resultados por Fax';

  If (qrEntradaPacienteRESULTADOPACIENTE.Value = 0) And
     (qrEntradaPacienteRESULTADODOCTOR.Value <> 0) Then
    Texto1 := 'Enviar al Doctor';
}
  if (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
    Texto2 := 'Cobertura Confirmada';

  if (qrEntradaPacienteCoberturaRechazada.Value = 1) then
    Texto2 := 'Cobertura Rechazada';

  If (qrEntradaPacienteCoberturaConfirmada.Value = 0) And
     (qrEntradaPacienteCoberturaRechazada.Value = 0) Then
    Texto2 := 'Cobertura No Solicitada';

    LbEntregaCobertura.Caption := Texto1 + ' * ' + Texto2;
end;


procedure TfrmPuntoVenta.ppHeaderBand5BeforePrint(Sender: TObject);
Var Texto1, Texto2 : String;
begin
 Texto1 := '';
 Texto2 := '';
{
  ppLbTelefono03.Caption := 'Tel.: ' + DM.qrSucursalTELEFONO.Value;
  if DM.qrSucursalFAX.Value <> '' then
    ppLbTelefono03.Caption := 'Tel.: ' + DM.qrSucursalTELEFONO.Value + '. Fax : '+ DM.qrParamFax.Value + '.';
}
//  LbEdad1.Caption := 'Edad: ' + qrEntradaPacienteEDADPACIENTE.AsString;

  LbFechayHora1.Caption := 'Fecha Ent.: ' + qrEntradaPacienteFECHA.AsString +
                           ' * Hora Ent.: ' + qrEntradaPacienteHORAENTRADA.AsString;

  if (qrEntradaPacienteRESULTADOPACIENTE.Value = 0) then
    Texto1 := 'No Entregar los Resultados';

  if (qrEntradaPacienteRESULTADOPACIENTE.Value = 1) then
    Texto1 := 'Entrega de Resultados Personal';

  if (qrEntradaPacienteRESULTADOPACIENTE.Value = 2) then
    Texto1 := 'Enviar los Resultados por Fax';

  If (qrEntradaPacienteRESULTADOPACIENTE.Value = 0) And
     (qrEntradaPacienteRESULTADODOCTOR.Value <> 0) Then
    Texto1 := 'Enviar los Resultados al Doctor';

  if (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
    Texto2 := 'Cobertura Confirmada';

  if (qrEntradaPacienteCoberturaRechazada.Value = 1) then
    Texto2 := 'Cobertura Rechazada';

  If (qrEntradaPacienteCoberturaConfirmada.Value = 0) And
     (qrEntradaPacienteCoberturaRechazada.Value = 0) Then
    Texto2 := 'Cobertura No Solicitada';

    LbEntregaCobertura1.Caption := Texto1; // + ' * ' + Texto2;
end;


procedure TfrmPuntoVenta.ppHeaderBand6BeforePrint(Sender: TObject);
begin
//  ppLbTelefono04.Caption := 'Tel.: ' + DM.qrSucursalTELEFONO.Value;
//  if DM.qrSucursalFAX.Value <> '' then
//    ppLbTelefono04.Caption := 'Tel.: ' + DM.qrSucursalTELEFONO.Value + '. Fax : '+ DM.qrParamFax.Value + '.';
end;

procedure TfrmPuntoVenta.ppImpFactPacienteSinSeguroBeforePrint(Sender: TObject);
begin
  inherited;
  Buscar_Cliente;

  //Imprimiendo Los Totales en la Factura del Paciente sin Seguro.
  case qfindCltParams.FieldByName('GrupoCliente').AsInteger of
     1,2,3,4,5,6,8,10,11,12  :Begin
            pplabel263.Caption:='FACTURA PACIENTE';
        End;
     7  :Begin
            pplabel263.Caption:='FACTURA LAB. CLIENTES';
         End;
     9  :Begin
            pplabel263.Caption:='FACTURA PRE-EMPLEO';
         End;
  end;
  if qrEntradaPacienteNO_INDICACION.Value = True then
  begin
    ppMemo3.Visible:=True;
    ppMemo3.Lines.Clear;
    ppMemo3.Lines.Append(DM.qrParametroNota_AutorizacionX.Value);
    ppLabel284.Visible:=True;
    ppLine7.Visible:=True;
  end
  else
  begin
    ppMemo3.Clear;
    ppMemo3.Visible:=False;
    ppLabel284.Visible:=False;
    ppLine7.Visible:=False;
  end

end;

procedure TfrmPuntoVenta.ppImpInternetBeforePrint(Sender: TObject);
Var I : Integer;
    qSerial : TADOQuery;
begin
  qSerial := DM.NewQuery;
  qSerial.Close;
  qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision  from ptSeriales (nolock) '+
                      ' Where Grupo_ID ='+#39+'99'+#39+' And Tipo='+#39+'IN'+#39+' And Sub_Tipo='+#39+'P'+#39+
                      ' And Estatus='+#39+'A'+#39;
  qSerial.Open;

  if qSerial.RecordCount > 0 then
  begin
      ppRichText8.RichText:='Aprobado por: '+qSerial.FieldByName('Aprobado').AsString+'                 Serial: '+qSerial.FieldByName('Serial').AsString+chr(10)+
                            'Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value)+'    Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value);
  end;
  FreeAndNil(qSerial);
end;

procedure TfrmPuntoVenta.ppSummaryFacturaSeguroBeforePrint(Sender: TObject);
Var I : Integer;
    qSerial : TADOQuery;
begin
  ppLbCoberturaPorc.Caption   := FormatFloat('##0.00', qrEntradaPacienteCOBERTURAPORC.Value);
  ppLbCoberturaValor.Caption  := FormatFloat('###,###,##0.00', Valor_Cobertura(qrEntradaPacienteRECID.Value));
  ppLabel178.Caption          := IntToStr(dm.Total_Pruebas(qrEntradaPacienteRECID.Value))+' coberturas(s)';
  ppLabel179.Caption          := FormatFloat('##,##0.00', Dm.Valor_Afiliado_Seg(qrEntradaPacienteRECID.Value));
{
  if (qrEntradaPacienteCoberturaExpPorc.Value = 1)then
    pplbcobertura.Caption := formatfloat('##0.00', qrEntradaPacienteCoberturaValor.Value)
  else
    pplbcobertura.Caption := formatfloat('##0.00',( (qrEntradaPacienteCoberturaSeguro.Value * 100) / qrEntradaPacienteSubtotal.value) );
}
  //Buscando los Datos del Cliente.
  Buscar_Cliente;
{
  Eliminado el Jueves 21-12-2006. Acordamos Siempre Imprimir El Nombre del Paciente.
  //Imprimiendo el Nombre del Pacliente
  If (qfindCltParams.FieldByName('ImprimirAliasNombre').AsBoolean = True) Then
    LbPaciente.Caption := qfindCltParams.FieldByName('Alias').AsString     //qfindPacientes.FieldByName('Alias').AsString
  Else
    LbPaciente.Caption := qrEntradaPacienteNombrePaciente.Value;
}
  if InttoStr(dm.CodArs) = GrupoArsPalic then
  begin
      ppSummaryFacturaSeguro.Height :=1.7604001;
      ppRichText1.Height            :=0.45829999;
      ppRichText1.RichText          :='Por este medio autorizo  al Laboratorio, a suministrar toda '+
                                      'informaci�n que sea solicitada por ARS Palic Salud, S.A., '+
                                      'correspondiente a pruebas de laboratorio realizadas a mi favor.';
  end
  else
  begin
      ppRichText1.RichText          :=EmptyStr;
      ppRichText1.Height            :=0.0;
      ppSummaryFacturaSeguro.Height :=1.2708;
  end;

//  ppMemoFactSeg.Visible:=False;
//  ppMemoFactSeg.Lines.Append(DM.qrParametroNotaFacturaSeguro.Value);

  qSerial := DM.NewQuery;
  qSerial.Close;
  qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision from ptSeriales (nolock) '+
                      ' Where Grupo_ID ='+#39+qrEntradaPacienteOrigen.AsString+#39+' And Tipo='+#39+'FT'+#39+' And Sub_Tipo='+#39+'S'+#39+
                      ' And Estatus='+#39+'A'+#39;
  qSerial.Open;

  ppMemoFactSinSeg.Lines.Clear;
  if qrEntradaPacienteOrigen.Value <> dm.qrParametroGrupoCia.Value then
    ppMemoFactSinSeg.Lines.Append(DM.qrParametroNotaFacturaNoSeguro.Value);

  if qSerial.RecordCount > 0 then
  begin
      ppRichText7.RichText:='Aprobado por: '+qSerial.FieldByName('Aprobado').AsString+'                 Serial: '+qSerial.FieldByName('Serial').AsString+chr(10)+
                            'Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value)+'    Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value);
  end;
{
  If (Trim(qrEntradaPacienteNota.Value)<> EmptyStr) Then
  Begin
      ppMemoFactSeg.Visible:=True;
      ppMemoFactSeg.Lines.Append('');
      ppMemoFactSeg.Lines.Append(qrEntradaPacienteNota.Value);
  end;
  If (Trim(qfindGrupoClt.FieldByName('Comentario').AsString) <> EmptyStr) Then
  Begin
      ppMemoFactSeg.Visible:=True;
      ppMemoFactSeg.Lines.Append('');
      ppMemoFactSeg.Lines.Append(qfindGrupoClt.FieldByName('Comentario').AsString);
  end;

  If (qfindGrupoPac.FieldByName('Comentario').AsString <> '') Then
    Begin
      ppMemoFactSeg.Lines.Append('');
      ppMemoFactSeg.Lines.Append(qfindGrupoPac.FieldByName('Comentario').AsString);
    end;
}
end;


procedure TfrmPuntoVenta.ppSummaryBand4BeforePrint(Sender: TObject);
Var qSerial : TADOQuery;
begin
  inherited;
  ppMemoFactExterior.Lines.Clear;
  ppMemoFactExterior.Lines.Append(DM.qrParametroNotaFacturaExterior.Value);

  qSerial := DM.NewQuery;
  qSerial.Close;
  qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision from ptSeriales (nolock) '+
                      ' Where Grupo_ID ='+#39+qrEntradaPacienteOrigen.AsString+#39+' And Tipo='+#39+'FT'+#39+' And Sub_Tipo='+#39+'P'+#39+
                      ' And Estatus='+#39+'A'+#39;
  qSerial.Open;

  ppMemoFactSinSeg.Lines.Clear;
  if qrEntradaPacienteOrigen.Value <> dm.qrParametroGrupoCia.Value then
    ppMemoFactSinSeg.Lines.Append(DM.qrParametroNotaFacturaNoSeguro.Value);

  if qSerial.RecordCount > 0 then
  begin
      ppRichText5.RichText:='Aprobado por: '+qSerial.FieldByName('Aprobado').AsString+'                 Serial: '+qSerial.FieldByName('Serial').AsString+chr(10)+
                            'Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value)+'    Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value);
  end;
  FreeAndNil(qSerial);
end;


procedure TfrmPuntoVenta.ppSummaryFactPacienteConSeguroBeforePrint(Sender: TObject);
Var qSerial : TADOQuery;
begin
  inherited;
  Buscar_Cliente;

  //Imprimiendo Los Totales en la Factura del Paciente con Seguro.
  If (qfindCltParams.FieldByName('ClienteId').AsString <> '') Then
    Begin
      if (qrEntradaPacienteDescuentoTexto.Value <> '') Then
        LbDescConTitulo.Caption := qrEntradaPacienteDescuentoTexto.Value + ' : '
      else
        LbDescConTitulo.Caption := 'Descuento : ';

      LbDescuentoCon.Caption    := FormatFloat('##,###,##0.00', qrEntradaPacienteDescuento.Value);
      LbBrutoCon.Caption        := FormatFloat('##,###,##0.00', qrEntradaPacienteBruto.Value - qrEntradaPacienteCoberturaSeguro.Value);
      LbNetoCon.Caption         := FormatFloat('##,###,##0.00', qrEntradaPacienteNeto.Value);
      LbPagadoCon.Caption       := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPagado.Value);
      LbPendienteCon.Caption    := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPendiente.Value);
    end
  Else
    Begin
      LbDescConTitulo.Caption   := 'Descuento : ';
      LbDescuentoCon.Caption    := '';
      LbBrutoCon.Caption        := '';
      LbDescuentoCon.Caption    := '';
      LbNetoCon.Caption         := '';
      LbPagadoCon.Caption       := '';
      LbPendienteCon.Caption    := '';
    end;

  ppMemoFactConSeg.Lines.Clear;
  ppMemo5.Lines.Clear;
  If (qrEntradaPacienteOrigen.Value = dm.qrParametroGrupoSeg.Value) then
  begin
    IF (dm.Verifica_Universal_UroCopro(qrEntradaPacienteRecId.AsString)) Then
        ppMemoFactConSeg.Lines.Append(DM.qrParametroNotaFacturaSeguroUniv.Value)
    else
        ppMemoFactConSeg.Lines.Append(DM.qrParametroNotaFacturaPaciente.Value);
    If (dm.Verifica_Envase_Unifix_CoprolArs(qrEntradaPacienteRecId.AsString)) Then
        ppMemo5.Lines.Append(DM.qrParametroNotaFacturaEnvase.Value);
  end;

  qSerial := DM.NewQuery;
  qSerial.Close;
  qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision from ptSeriales (nolock) '+
                      ' Where Grupo_ID ='+#39+qrEntradaPacienteOrigen.AsString+#39+' And Tipo='+#39+'FT'+#39+' And Sub_Tipo='+#39+'P'+#39+
                      ' And Estatus='+#39+'A'+#39;
  qSerial.Open;

  ppMemoFactSinSeg.Lines.Clear;
  if qrEntradaPacienteOrigen.Value <> dm.qrParametroGrupoCia.Value then
    ppMemoFactSinSeg.Lines.Append(DM.qrParametroNotaFacturaNoSeguro.Value);

  if qSerial.RecordCount > 0 then
  begin
      ppRichText4.RichText:='Aprobado por: '+qSerial.FieldByName('Aprobado').AsString+'                 Serial: '+qSerial.FieldByName('Serial').AsString+chr(10)+
                            'Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value)+'    Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value);
  end;

  If (Trim(qrEntradaPacienteNota.Value) <> EmptyStr) Then
    Begin
      ppMemoFactConSeg.Lines.Append('');
      ppMemoFactConSeg.Lines.Append(qrEntradaPacienteNota.Value);
    end;
  If (Trim(qfindGrupoPac.FieldByName('Comentario').AsString) <> EmptyStr) Then
    Begin
      ppMemoFactConSeg.Lines.Append('');
      ppMemoFactConSeg.Lines.Append(qfindGrupoPac.FieldByName('Comentario').AsString);
    end;
  FreeAndNil(qSerial);
end;

procedure TfrmPuntoVenta.ppSummaryFactPacienteSinSeguroBeforePrint(Sender: TObject);
Var qSerial : TADOQuery;
    Tipo : String;
begin
  //Buscando los Datos del Cliente.
  Buscar_Cliente;
  //Imprimiendo Los Totales en la Factura del Paciente sin Seguro.
  If (qfindCltParams.FieldByName('IncluirPrecioTicket').AsInteger = 1) Then
  Begin
      if (qrEntradaPacienteDescuentoTexto.Value <> '') Then
        LbDescSinTitulo.Caption := qrEntradaPacienteDescuentoTexto.Value + ' : '
      else
        LbDescSinTitulo.Caption := 'Descuento : ';
      if Copy(qrEntradaPacienteEntradaID.Value,1,3)<>'HOL' then
      begin
        Tipo:='FT';
        LbDescuentoSin.Caption  := FormatFloat('##,###,##0.00', qrEntradaPacienteDescuento.Value);
        LbBrutoSin.Caption      := FormatFloat('##,###,##0.00', qrEntradaPacienteBruto.Value);
        LbNetoSin.Caption       := FormatFloat('##,###,##0.00', qrEntradaPacienteNeto.Value);
        LbPagadoSin.Caption     := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPagado.Value);
        LbPendienteSin.Caption  := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPendiente.Value);
      end
      else
      begin
        Tipo:='CT';
        ppLabel282.Caption      := FormatFloat('##,###,##0.00', qrEntradaPacienteBruto.Value);
        ppLabel292.Caption      := FormatFloat('##,###,##0.00', qrEntradaPacienteDescuento.Value);
        ppLabel287.Caption      := FormatFloat('##,###,##0.00', qrEntradaPacienteCoberturaSeguro.Value);
        ppLabel290.Caption      := FormatFloat('##,###,##0.00', qrEntradaPacienteNeto.Value);
      end;
    end
  Else
  Begin
      if Copy(qrEntradaPacienteEntradaID.Value,1,3)<>'HOL' then
      begin
          Tipo:='FT';
          LbDescSinTitulo.Caption := 'Descuento : ';
          LbDescuentoSin.Caption  := '';
          LbBrutoSin.Caption      := '';
          LbDescuentoSin.Caption  := '';
          LbNetoSin.Caption       := '';
          LbPagadoSin.Caption     := '';
          LbPendienteSin.Caption  := '';
      end
      else
      begin
          Tipo:='CT';
          ppLabel282.Caption      := '';
          ppLabel292.Caption      := '';
          ppLabel290.Caption      := '';
          ppLabel287.Caption      := '';
      end;
  end;
  qSerial := DM.NewQuery;
  qSerial.Close;
  qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision from ptSeriales (nolock) '+
                      ' Where Grupo_ID ='+#39+qrEntradaPacienteOrigen.AsString+#39+' And Tipo='+#39+Tipo+#39+' And Sub_Tipo='+#39+'P'+#39+
                      ' And Estatus='+#39+'A'+#39;
  qSerial.Open;

  ppMemoFactSinSeg.Lines.Clear;
  if qrEntradaPacienteOrigen.Value <> dm.qrParametroGrupoCia.Value then
    ppMemoFactSinSeg.Lines.Append(DM.qrParametroNotaFacturaNoSeguro.Value);

  if qSerial.RecordCount > 0 then
  begin
      if Copy(qrEntradaPacienteEntradaID.Value,1,3)<>'HOL' then
          ppRichText2.RichText:='Aprobado por: '+qSerial.FieldByName('Aprobado').AsString+'                 Serial: '+qSerial.FieldByName('Serial').AsString+chr(10)+
                            'Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value)+'    Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value)
      else
          ppRichText3.RichText:='Aprobado por: '+qSerial.FieldByName('Aprobado').AsString+'                 Serial: '+qSerial.FieldByName('Serial').AsString+chr(10)+
                            'Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value)+'    Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value);
  end;

  If (Trim(qrEntradaPacienteNota.Value) <> EmptyStr) Then
  Begin
      ppMemoFactSinSeg.Lines.Append('');
      ppMemoFactSinSeg.Lines.Append(qrEntradaPacienteNota.Value);
  end;
  If (Trim(qfindGrupoPac.FieldByName('Comentario').AsString) <> EmptyStr) Then
  Begin
      ppMemoFactSinSeg.Lines.Append('');
      ppMemoFactSinSeg.Lines.Append(qfindGrupoPac.FieldByName('Comentario').AsString);
  end;
  FreeAndNil(qSerial);
end;
procedure TfrmPuntoVenta.ppSummaryFactPacienteNCFBeforePrint(Sender: TObject);
Var qSerial : TADOQuery;
begin
  //Buscando los Datos del Cliente.
  Buscar_Cliente;

  //Imprimiendo Los Totales en la Factura del Paciente sin Seguro.

  If (qfindCltParams.FieldByName('IncluirPrecioTicket').AsInteger = 1) Then
  Begin
      if (qrEntradaPacienteDescuentoTexto.Value <> '') Then
        ppLabel211.Caption := qrEntradaPacienteDescuentoTexto.Value + ' : '
      else
        ppLabel211.Caption := 'Descuento : ';

      ppLabel216.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDescuento.Value);
      ppLabel205.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteBruto.Value);
      ppLabel213.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteNeto.Value);
      ppLabel209.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPagado.Value);
      ppLabel210.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPendiente.Value);
    end
  Else
  Begin
      ppLabel211.Caption := 'Descuento : ';
      ppLabel212.Caption := '';
      ppLabel216.Caption := '';
      ppLabel205.Caption := '';
      ppLabel213.Caption := '';
      ppLabel209.Caption := '';
      ppLabel210.Caption := '';
  end;
  qSerial := DM.NewQuery;
  qSerial.Close;
  qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision from ptSeriales (nolock) '+
                      ' Where Grupo_ID ='+#39+qrEntradaPacienteOrigen.AsString+#39+' And Tipo='+#39+'FT'+#39+' And Sub_Tipo='+#39+'N'+#39+
                      ' And Estatus='+#39+'A'+#39;
  qSerial.Open;

  ppMemoFactSinSeg.Lines.Clear;
  if qrEntradaPacienteOrigen.Value <> dm.qrParametroGrupoCia.Value then
    ppMemoFactSinSeg.Lines.Append(DM.qrParametroNotaFacturaNoSeguro.Value);

  if qSerial.RecordCount > 0 then
  begin
      ppRichText6.RichText:='Aprobado por: '+qSerial.FieldByName('Aprobado').AsString+'                 Serial: '+qSerial.FieldByName('Serial').AsString+chr(10)+
                            'Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value)+'    Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value);
  end;
  FreeAndNil(qSerial);
end;

//Impresion de los Codigos CUPS - Factura de Seguros.
procedure TfrmPuntoVenta.ppDetailBand3BeforePrint(Sender: TObject);
begin
//  qfindprint := DM.find('Select * from PTPrueba where PruebaID = :pru', qrEntradaPacienteDetalleCodigoCupID.Value);
  qfindprint := DM.Find_Ldr('SELECT * FROM PtPrueba (nolock) where PruebaID = :pru', qrEntradaPacienteDetallePruebaId.Value);
  If (qfindprint.FieldByName('Tipo').Value = 'C') And (qrEntradaPacienteDetalleCoberturaAplica.Value = 0) then
  Begin

     LbPrecio.Caption      := EmptyStr;
     ppLabel214.Caption    := EmptyStr;
     LbDescripcion.Caption := EmptyStr;
     LbPrecio.Visible      := False;
     ppLabel214.Visible    := False;
     LbDescripcion.Visible := False;
  end
  Else
  Begin
  If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
  Begin
        if (qfindprint.FieldByName('Font_Bold').Value = True) then
          LbDescripcion.Font.Style := [fsBold]
        else
          LbDescripcion.Font.Style := [];
        LbDescripcion.Caption := qrEntradaPacienteDetalleCodigoCupID.Value+'-'+qrEntradaPacienteDetalleDescripcionCup.Value+' '+Trim(qrEntradaPacienteDetalleComentario.Value);
        LbPrecio.Caption      := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
        ppLabel214.Caption    := FormatFloat('##,###,##0.00', (qrEntradaPacienteDetallePrecio.Value-qrEntradaPacienteDetalleCoberturaAplicada.Value));
        LbPrecio.Visible      := True;
        LbDescripcion.Visible := True;
        ppLabel214.Visible    := True;
  end
  Else
  Begin
{        LbPrecio.Caption      := EmptyStr;
        LbDescripcion.Caption := EmptyStr;
        ppLabel214.Caption    := EmptyStr;
        LbPrecio.Visible      := False;
        LbDescripcion.Visible := False;
        ppLabel214.Visible    := False;
}
  end;
  end;
end;

//Imprimiendo el Comentario Como Descripcion en la Factura del Exterior.
procedure TfrmPuntoVenta.ppDetailBand4BeforePrint(Sender: TObject);
begin
 ppDBComentario.Visible := True;
 ppDBDescripcion.Visible := False;
end;


procedure TfrmPuntoVenta.ppDetailBandSinSeguroBeforePrint(Sender: TObject);
Var qComboPrueba  : TAdoQuery;
begin
  qfindPrueba := DM.Find_Ldr('SELECT * FROM PtPrueba (nolock) WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaId.Value);
  Buscar_Cliente;
  If (qfindCltParams.FieldByName('ImprimirAliasPrueba').AsInteger = 1) Then
  Begin
    qComboPrueba := DM.NewQuery;
    qComboPrueba.Close;
    qComboPrueba.SQL.Text := ' SELECT Alias FROM PTCOMBOSPRUEBAS (nolock) WHERE COMBOID = '+#39+DM.PruebaCombo(qrEntradaPacienteRecID.Value)+#39+
                       ' AND PRUEBAID = '+#39+qrEntradaPacienteDetallePruebaId.Value+#39;
    qComboPrueba.Open;
    If qComboPrueba.FieldByName('Alias').AsString <> EmptyStr then
    begin
      if Copy(qrEntradaPacienteEntradaID.Value,1,3)='HOL' then
         pplabel279.Caption       := qComboPrueba.FieldByName('Alias').AsString
      else
         LbDescripcion1.Caption   := qComboPrueba.FieldByName('Alias').AsString;
    end
    else
    begin
      if Copy(qrEntradaPacienteEntradaID.Value,1,3)='HOL' then
         pplabel279.Caption       := qComboPrueba.FieldByName('Alias').AsString
      else
         LbDescripcion1.Caption   := qComboPrueba.FieldByName('Alias').AsString;
    end;
    If qfindPrueba.FieldByName('Font_Bold').Value = True Then
    begin
      if Copy(qrEntradaPacienteEntradaID.Value,1,3)='HOL' then
       pplabel279.Font.Style := [fsBold]
      else
       LbDescripcion1.Font.Style := [fsBold];
    end
    else
    begin
      if Copy(qrEntradaPacienteEntradaID.Value,1,3)='HOL' then
       pplabel279.Font.Style := []
      else
       LbDescripcion1.Font.Style := [];
    end;
    FreeAndNil(qComboPrueba);
  end
  else
  begin
      if qfindPrueba.FieldByName('Font_Bold').Value = True Then
      begin
           if Copy(qrEntradaPacienteEntradaID.Value,1,3)='HOL' then
                pplabel279.Font.Style := [fsBold]
           else
                LbDescripcion1.Font.Style := [fsBold];
      end
      else
      begin
           if Copy(qrEntradaPacienteEntradaID.Value,1,3)='HOL' then
                pplabel279.Font.Style := []
           else
                LbDescripcion1.Font.Style := [];
      end;
      if Copy(qrEntradaPacienteEntradaID.Value,1,3)='HOL' then
         pplabel279.Caption := qrEntradaPacienteDetalleDescripcion.Value
      else
         LbDescripcion1.Caption := qrEntradaPacienteDetalleDescripcion.Value;
  end;
  //Imprimiendo el Precio de la Prueba.
  If (qfindCltParams.FieldByName('IncluirPrecioTicket').AsInteger = 1) And
     (qfindCltParams.FieldByName('ImprimirAliasPrueba').AsInteger = 0) Then
  Begin
      LbDescSinTitulo.Visible := True;
      LbBrutoTit.Visible      := True;
      LbDescSinTitulo.Visible := True;
      LbNetoTit.Visible       := True;
      LbPagadoTit.Visible     := True;
      LbPendienteTit.Visible  := True;
      if Copy(qrEntradaPacienteEntradaID.Value,1,3)<>'HOL' then
      begin
        LbPrecio1.Caption       := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
      end
      else
      begin
        ppLabel281.Caption      := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
      end;
  end
  Else
  Begin
      if Copy(qrEntradaPacienteEntradaID.Value,1,3)<>'HOL' then
        LbPrecio1.Caption       := ''
      else
        ppLabel281.Caption      := '';
  end;
end;
procedure TfrmPuntoVenta.ppDetailBandImpCotizaBeforePrint(Sender: TObject);
Var qComboPrueba  : TAdoQuery;
begin
  qfindPrueba := DM.Find_Ldr('SELECT * FROM PtPrueba (nolock) WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaId.Value);
  Buscar_Cliente;
  If (qfindCltParams.FieldByName('ImprimirAliasPrueba').AsInteger = 1) Then
  Begin
    qComboPrueba := DM.NewQuery;
    qComboPrueba.Close;
    qComboPrueba.SQL.Text := ' SELECT Alias FROM PTCOMBOSPRUEBAS (nolock) WHERE COMBOID = '+#39+DM.PruebaCombo(qrEntradaPacienteRecID.Value)+#39+
                       ' AND PRUEBAID = '+#39+qrEntradaPacienteDetallePruebaId.Value+#39;
    qComboPrueba.Open;
    If qComboPrueba.FieldByName('Alias').AsString <> EmptyStr then
       LbDescripcion1.Caption := qComboPrueba.FieldByName('Alias').AsString
    else
       LbDescripcion1.Caption := qrEntradaPacienteDetalleDescripcion.Value;
    If qfindPrueba.FieldByName('Font_Bold').Value = True Then
       LbDescripcion1.Font.Style := [fsBold]
    else
       LbDescripcion1.Font.Style := [];
    FreeAndNil(qComboPrueba);
  end
  else
  begin
      if qfindPrueba.FieldByName('Font_Bold').Value = True Then
         LbDescripcion1.Font.Style := [fsBold]
      else
         LbDescripcion1.Font.Style := [];
      LbDescripcion1.Caption := qrEntradaPacienteDetalleDescripcion.Value;
  end;
  //Imprimiendo el Precio de la Prueba.
  If (qfindCltParams.FieldByName('IncluirPrecioTicket').AsInteger = 1) And
     (qfindCltParams.FieldByName('ImprimirAliasPrueba').AsInteger = 0) Then
  Begin
      LbDescSinTitulo.Visible := True;
      LbBrutoTit.Visible      := True;
      LbDescSinTitulo.Visible := True;
      LbNetoTit.Visible       := True;
      LbPagadoTit.Visible     := True;
      LbPendienteTit.Visible  := True;
      LbPrecio1.Caption       := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
  end
  Else
  Begin
      LbDescSinTitulo.Visible := True;
      LbBrutoTit.Visible      := True;
      LbNetoTit.Visible       := True;
      LbPagadoTit.Visible     := True;
      LbPendienteTit.Visible  := True;
      LbPrecio1.Caption       := '';
  end;
end;

procedure TfrmPuntoVenta.ppDetailBandConSeguroBeforePrint(Sender: TObject);
begin
  qfindPrueba := DM.Find_Ldr('SELECT * FROM PtPrueba (nolock) WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaId.Value);
  If qfindPrueba.FieldByName('Font_Bold').Value = True Then
       ppDBText13.Font.Style := [fsBold]
  else
       ppDBText13.Font.Style := [];
  FreeAndNil(qfindPrueba);
end;
procedure TfrmPuntoVenta.ppDetailBandFactNCFBeforePrint(Sender: TObject);
begin
  qfindprint := DM.Find_Ldr('SELECT * FROM PtPrueba (nolock) WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaId.Value);

  //Buscando los Datos del Cliente.
  Buscar_Cliente;

  //Imprimiendo la Descripcion de la Prueba.
  If (qfindCltParams.FieldByName('ImprimirAliasPrueba').AsInteger = 1) Then
    Begin
      ppLabel218.Caption := qfindprint.FieldByName('Alias').AsString;
    end
  Else
    Begin
      ppLabel218.Caption := qrEntradaPacienteDetalleDescripcion.Value;
    end;

  //Imprimiendo el Precio de la Prueba.
  If (qfindCltParams.FieldByName('IncluirPrecioTicket').AsInteger = 1) Then
  Begin
      LbDescSinTitulo.Visible := True;
      LbBrutoTit.Visible      := True;
      LbDescSinTitulo.Visible := True;
      LbNetoTit.Visible       := True;
      LbPagadoTit.Visible     := True;
      LbPendienteTit.Visible  := True;
      ppLabel204.Caption       := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
  end
  Else
  Begin
      LbDescSinTitulo.Visible := True;
      LbBrutoTit.Visible      := True;
      LbNetoTit.Visible       := True;
      LbPagadoTit.Visible     := True;
      LbPendienteTit.Visible  := True;
//      ppLabel204.Caption      := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
  end;
end;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TfrmPuntoVenta.Insertar_Materiales_Prueba;
Var
 qfind, qinsert : TADOQuery;
begin
 qfind := DM.NewQuery;
 qinsert := DM.NewQuery;

 qrEntradaPacienteDetalle.DisableControls;
 qrEntradaPacienteDetalle.First;

 While Not qrEntradaPacienteDetalle.Eof Do
  Begin
    qfind := DM.NewQuery;
    qfind.Close;
    qfind.SQL.Text := 'SELECT * FROM PTMaterialesPrueba (nolock) WHERE PruebaId = '+ #39 + qrEntradaPacienteDetallePruebaId.Value + #39;
    qfind.Open;

    If (qfind.RecordCount > 0) then
     begin
       qinsert.Close;
       qinsert.SQL.Text := ' INSERT INTO PTMaterialesFactura '+
                           ' (RefRecId, RefRecIdLine, MaterialId, Cantidad, PruebaId, LineaNo, RecId) '+
                           ' VALUES (:0, :1, :2, :3, :4, :5, :6) ';
       qfind.First;
       While (not qfind.Eof) do
        begin
          qinsert.Parameters[0].Value := qrEntradaPacienteRECID.Value;
          qinsert.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.value;
          qinsert.Parameters[2].Value := qfind.FieldByName('MaterialId').AsString;
          qinsert.Parameters[3].Value := qfind.FieldByName('Cantidad').AsFloat;
          qinsert.Parameters[4].Value := qrEntradaPacienteDetallePruebaid.value;
          qinsert.Parameters[5].Value := Buscar_Linea();
          qinsert.Parameters[6].Value := GetSecuenciaId;
          qinsert.ExecSQL;

          qfind.Next;
        end;
     end;

    qrEntradaPacienteDetalle.Next;
  End;

 qrEntradaPacienteDetalle.First;
 qrEntradaPacienteDetalle.EnableControls;

 FreeAndNil(qfind);
 FreeAndNil(qinsert);
end;


procedure TfrmPuntoVenta.Insertar_Materiales_Envase;
Var
 qfind, qinsert : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTMaterialesPrueba (nolock) '+
                   ' WHERE PruebaId = '+ #39 + 'Default' + #39 +
                   ' AND MuestraId = 2 ';
 qfind.Open;

 If (qfind.RecordCount > 0) then
  Begin
    qinsert := DM.NewQuery;
    qinsert.Close;
    qinsert.SQL.Text := ' INSERT INTO PTMaterialesFactura '+
                        ' (RefRecId, MaterialId, Cantidad, LineaNo, RecId) '+
                        ' VALUES (:0, :1, :2, :3, :4) ';
    qinsert.Parameters[0].Value := qrEntradaPacienteRECID.Value;
    qinsert.Parameters[1].Value := qfind.FieldByName('MaterialId').AsString;
    qinsert.Parameters[2].Value := _total_envase; //qfind.FieldByName('Cantidad').AsFloat;
    qinsert.Parameters[3].Value := Buscar_Linea();
    qinsert.Parameters[4].Value := GetSecuenciaId;
    qinsert.ExecSQL;

    FreeAndNil(qinsert);
  End;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta.Insertar_Materiales_Sangre;
Var
 qfind, qinsert : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTMaterialesPrueba (nolock) '+
                   ' WHERE PruebaId = '+ #39 + 'Default' + #39 +
                   ' AND MuestraId = 1 ';
 qfind.Open;

 If (qfind.RecordCount > 0) then
  Begin
    qinsert := DM.NewQuery;
    qinsert.Close;
    qinsert.SQL.Text := ' INSERT INTO PTMaterialesFactura '+
                        ' (RefRecId, MaterialId, Cantidad, LineaNo, RecId) '+
                        ' VALUES (:0, :1, :2, :3, :4) ';
    qfind.First;
    While (not qfind.Eof) Do
     begin
      qinsert.Parameters[0].Value := qrEntradaPacienteRECID.Value;
      qinsert.Parameters[1].Value := qfind.FieldByName('MaterialId').AsString;
      qinsert.Parameters[2].Value := qfind.FieldByName('Cantidad').AsFloat;
      qinsert.Parameters[3].Value := Buscar_Linea();
      qinsert.Parameters[4].Value := GetSecuenciaId;
      qinsert.ExecSQL;

      qfind.Next;
     end;

    FreeAndNil(qinsert);
  End;

 FreeAndNil(qfind);
end;


function TfrmPuntoVenta.BuscarDia(dia: Integer) : Integer;
Var
 valor : Integer;
begin
 valor := 0;

 If (dia = 1) And (Dias.Lunes > 0) then
   valor := 1;

 If (dia = 2) And (Dias.Martes > 0) then
   valor := 1;

 If (dia = 3) And (Dias.Miercoles > 0) then
   valor := 1;

 If (dia = 4) And (Dias.Jueves > 0) then
   valor := 1;

 If (dia = 5) And (Dias.Viernes > 0) then
   valor := 1;

 If (dia = 6) And (Dias.Sabado > 0) then
   valor := 1;

 If (dia = 7) And (Dias.Domingo > 0) then
   valor := 1;

 Result := valor;
end;


function TfrmPuntoVenta.FechaPrometida(Prueba: string) : TDate;
Var
 fecha : TDate;
 qtest : TADOQuery;
 qfrec : TADOQuery;
 idx, valor, conteo, semana, proceso : Integer;
begin
 valor := 0;
 conteo := 0;
 semana := 0;
 proceso := 0;
 idx := 0;

 Dias.Lunes := 0;
 Dias.Martes := 0;
 Dias.Miercoles := 0;
 Dias.Jueves := 0;
 Dias.Viernes := 0;
 Dias.Sabado := 0;
 Dias.Domingo := 0;

 qtest := DM.Find_Ldr('SELECT * FROM PtPrueba (nolock) WHERE PruebaID = :pru', prueba);

 semana := DayOfTheWeek(DM.SystemDate);

 If (qtest.RecordCount > 0) Then
  Begin
    qfrec := DM.Find_Ldr('SELECT * FROM PTDiasProcesamiento (nolock) WHERE CodDiasProc = :cod',
                          qtest.FieldByName('CodDiaProc').AsString);

    If (qfrec.RecordCount > 0) Then
      Begin
        If (qfrec.FieldByName('Lunes').AsInteger = 1) Then
          Begin
            Dias.Lunes := 1;
            valor := valor + 1;
          End;

        If (qfrec.FieldByName('Martes').AsInteger = 1) Then
          Begin
            Dias.Martes := 2;
            valor := valor + 2;
          End;

        If (qfrec.FieldByName('Miercoles').AsInteger = 1) Then
          Begin
            Dias.Miercoles := 3;
            valor := valor + 3;
          End;

        If (qfrec.FieldByName('Jueves').AsInteger = 1) Then
          Begin
            Dias.Jueves := 4;
            valor := valor + 4;
          End;

        If (qfrec.FieldByName('Viernes').AsInteger = 1) Then
          Begin
            Dias.Viernes := 5;
            valor := valor + 5;
          End;

        If (qfrec.FieldByName('Sabado').AsInteger = 1) Then
          Begin
            Dias.Sabado := 6;
            valor := valor + 6;
          End;

        If (qfrec.FieldByName('Domingo').AsInteger = 1) Then
          Begin
            Dias.Domingo := 7;
            valor := valor + 7;
          End;
      End;

    If ( valor > 0 ) Then
      Begin
       conteo := 0;
       idx  := semana - 1;
       Repeat
       Inc(idx);
       Inc(conteo);
       If (idx > 7) Then idx := idx - 7;

       Proceso := BuscarDia(idx);
       Until (Proceso > 0) Or (conteo = 7);

       If (Proceso > 0) Then
         Fecha := DM.SystemDate + (conteo - 0) + qtest.FieldByName('DiasResultado').AsInteger
       Else
         Fecha := DM.SystemDate + qtest.FieldByName('DiasResultado').AsInteger;
      End
    Else
      Fecha := DM.SystemDate + qtest.FieldByName('DiasResultado').AsInteger;
  End;

 Result := Fecha;
end;


//Insertando la Prueba Registrada en la Tabla Temporal
procedure TfrmPuntoVenta.Insertar_LabelTemp;
Var
 Valor      : String;
 Qinsert    : TADOQuery;
begin
 Qinsert := DM.NewQuery;
 qrEntradaPacienteDetalle.DisableControls;
 qrEntradaPacienteDetalle.First;

 While Not qrEntradaPacienteDetalle.Eof Do
  Begin
   If Not Validar_Label_Temp(qrEntradaPacientePacienteId.Value,
                             qrEntradaPacienteEntradaId.Value,
                             qrEntradaPacienteDetalleMuestraNo.Value,
                             qrEntradaPacienteDetallePruebaId.Value) Then
     Begin
       qfindprulab := DM.Find_Ldr('SELECT * FROM PtPrueba (nolock) WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaID.Value);

       If (qfindprulab.FieldByName('Tipo').Value = 'P') Or
          (qfindprulab.FieldByName('Tipo').Value = 'S') Then
         Begin
           Qinsert.Close;
           Qinsert.SQL.Text := ' INSERT INTO PTLabelTemp (PacienteId, Sucursal, EntradaId, MuestraNo, '+
                               ' PruebaId, Descripcion, Abreviacion, DeptId, TipoMuestra, Medio, Color, '+
                               ' SecuenciaAct, RecId) VALUES (:00,:01,:02,:03,:04,:05,:06,:07,:08,:09,:10,:11,:12) ';
           Qinsert.Parameters.ParamByName('00').Value := qrEntradaPacientePacienteId.Value;
           Qinsert.Parameters.ParamByName('01').Value := qrEntradaPacienteSucursalID.Value; //DM.CurSucursal; //qrEntradaPacienteSucursal.Value;
           Qinsert.Parameters.ParamByName('02').Value := qrEntradaPacienteEntradaId.Value;
           Qinsert.Parameters.ParamByName('03').Value := qrEntradaPacienteDetalleMuestraNo.Value;
           Qinsert.Parameters.ParamByName('04').Value := qrEntradaPacienteDetallePruebaId.Value;
           Qinsert.Parameters.ParamByName('05').Value := qfindprulab.FieldByName('Descripcion').Value;
           Qinsert.Parameters.ParamByName('06').Value := qfindprulab.FieldByName('Abreviacion').Value;
           Qinsert.Parameters.ParamByName('07').Value := qfindprulab.FieldByName('Departamento').Value;
           Qinsert.Parameters.ParamByName('08').Value := qfindprulab.FieldByName('TipoMuestra').Value;
           Qinsert.Parameters.ParamByName('09').Value := qfindprulab.FieldByName('Medio').Value;
           Qinsert.Parameters.ParamByName('10').Value := qfindprulab.FieldByName('Color').Value;
           Qinsert.Parameters.ParamByName('11').Value := qrEntradaPacienteDetalleSecuenciaAct.Value;
           Qinsert.Parameters.ParamByName('12').Value := GetSecuenciaId;
           Qinsert.ExecSQL;
         End;
     End;

    qrEntradaPacienteDetalle.Next;
  End;

 FreeAndNil(Qinsert);
 qrEntradaPacienteDetalle.EnableControls;
end;


//Buscando la Prueba Registrada en la Tabla Temporal
function TfrmPuntoVenta.Validar_Label_Temp(_paciente: String; _entrada: String;
                                           _muestra: String; _prueba: String): Boolean;
Var
 qfind : TADOQuery;
 valor : Boolean;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTLabelTemp (nolock) '+
                   ' WHERE PacienteId = :pac '+
                   ' AND EntradaId = :ent '+
                   ' AND MuestraNo = :mue '+
                   ' AND PruebaId = :pru ';
 qfind.Parameters.ParamByName('pac').Value := _paciente;
 qfind.Parameters.ParamByName('ent').Value := _entrada;
 qfind.Parameters.ParamByName('mue').Value := _muestra;
 qfind.Parameters.ParamByName('pru').Value := _prueba;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   result := True
 Else
   result := False;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta.Crear_Labels_Temp(_secuenciaact: integer);
Var
 qbuscar  : TADOQuery;
begin
 _total_sangre  := 0;
 _total_envase  := 0;
 LabelNumero    := 0;
 LabelSecuencia := 0;

 qbuscar := DM.NewQuery;

 qbuscar.Close;
 qbuscar.SQL.Text := ' SELECT   pacienteid, sucursal, Entradaid, MuestraNo, TipoMuestra, '+
                     '          DeptId, Medio, Color, COUNT(MuestraNo) As Total FROM PTLabelTemp (nolock) '+
                     ' WHERE    SecuenciaAct = '+ IntToStr(_secuenciaact) +
                     ' GROUP BY pacienteid, sucursal, Entradaid, MuestraNo, '+
                     '          TipoMuestra, DeptId, Medio, Color '+
                     ' ORDER BY TipoMuestra, DeptId, Medio, Color ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        LabelNumero := LabelNumero + 1;
        Buscar_Label_Temp(qbuscar.FieldByName('PacienteId').AsString, qbuscar.FieldByName('Sucursal').AsString,
                          qbuscar.FieldByName('EntradaId').AsString, qbuscar.FieldByName('MuestraNo').AsString,
                          qbuscar.FieldByName('TipoMuestra').AsString, qbuscar.FieldByName('DeptId').AsString,
                          qbuscar.FieldByName('Medio').AsString, qbuscar.FieldByName('Color').AsString,
                          qbuscar.FieldByName('Total').AsInteger);

        If (qbuscar.FieldByName('Medio').AsInteger = 1) Then
          _total_envase := _total_envase + 1
        Else
          _total_sangre := _total_sangre + 1;

        qbuscar.Next;
      End;
   End;

 FreeAndNil(qbuscar);
End;


procedure TfrmPuntoVenta.Buscar_Label_Temp(_paciente: String; _sucursal: String; _entrada: String;
                                           _muestra: String; TipoMuestra: String; _departamento: String;
                                           _medio: String; _color: String; _total: Integer);
Var
 qdata  : TADOQuery;
 _valor, _desclabel  : string;
 _actual, _numero : Integer;
begin
 _actual    := 0;
 _numero    := 0;

 qdata := DM.NewQuery;
 qdata.Close;
 qdata.SQL.Text := ' SELECT * FROM PTLabelTemp (nolock) '+
                   ' WHERE PacienteId = :pac '+
                   ' AND Sucursal = :suc '+
                   ' AND EntradaId = :ent '+
                   ' AND MuestraNo = :mue '+
                   ' AND TipoMuestra = :tpo '+
                   ' AND DeptId = :dep '+
                   ' AND Medio = :med '+
                   ' AND Color = :col '+
                   ' ORDER BY PruebaID ';
 qdata.Parameters.ParamByName('pac').Value := _paciente;
 qdata.Parameters.ParamByName('suc').Value := _sucursal;
 qdata.Parameters.ParamByName('ent').Value := _entrada;
 qdata.Parameters.ParamByName('mue').Value := _muestra;
 qdata.Parameters.ParamByName('tpo').Value := TipoMuestra;
 qdata.Parameters.ParamByName('dep').Value := _departamento;
 qdata.Parameters.ParamByName('med').Value := _medio;
 qdata.Parameters.ParamByName('col').Value := _color;
 qdata.Open;

 qdata.First;
 While Not qdata.Eof Do
   Begin
     _actual := _actual + 1;
     _numero := _numero + 1;

     If (_numero > 8) Then
       Begin
         Update_Label_Descripcion(_valor, _desclabel);
         _numero := 1;
         _desclabel := '';
       End;

     If (_numero = 1) Then
       Begin
         LabelSecuencia := LabelSecuencia + 1;

//         LabelRecId := DM.Get_Secuencia('SecuenciaLabel');
         LabelRecId := StrToInt(DM.Get_Secuencia_Big('LABEL', DM.CurSucursal));

         DM.qrParametro.Close;
         DM.qrParametro.Open;

         _valor := _muestra + '-' + IntToStr(LabelSecuencia) + '-' + DM.CurSucursal;
       End;

     If (_total = 1) Then
       Update_Label_Temp(qdata.FieldByName('PacienteId').AsString, qdata.FieldByName('EntradaId').AsString,
                         qdata.FieldByName('MuestraNo').AsString, qdata.FieldByName('PruebaID').AsString,
                         _valor, _valor, _valor, qdata.FieldByName('Descripcion').AsString,
                         LabelRecId, LabelSecuencia, LabelNumero)
     Else
       Begin
         _desclabel := _desclabel + ' ' + qdata.FieldByName('Abreviacion').AsString;
         Update_Label_Temp(qdata.FieldByName('PacienteId').AsString, qdata.FieldByName('EntradaId').AsString,
                           qdata.FieldByName('MuestraNo').AsString, qdata.FieldByName('PruebaID').AsString,
                           _valor, _valor, '', '', LabelRecId, LabelSecuencia, LabelNumero);

         If (_actual = qdata.RecordCount) And (_total > 1) Then
           Update_Label_Descripcion(_valor, _desclabel);
       End;

     qdata.Next;
   End;

 FreeAndNil(qdata);
End;


//Insertando la Prueba Registrada en la Tabla Temporal
procedure TfrmPuntoVenta.Update_Label_Temp(_paciente: String; _entrada: String; _muestra: String;
                                           _prueba: String; _label: String; _labelglobal: String;
                                           _labelunico: String; _desc: String; _recid: Int64;
                                           _secuencia: Integer; _numero: Int64);
Var
 qactu    : TADOQuery;
begin
  qactu := DM.NewQuery;

  qactu.Close;
  qactu.SQL.Text := ' UPDATE PTLabelTemp with (rowlock) SET Label = :lab, LabelGlobal = :glo, '+
                    ' LabelUnico = :uni, Recid = :rec, Secuencia = :sec, '+
                    ' Numero = :num, DescripcionLabel = :des '+
                    ' WHERE PacienteId = :pac AND EntradaId = :ent '+
                    ' AND MuestraNo = :mue AND PruebaId = :pru ';
  qactu.Parameters.ParamByName('lab').Value := _label;
  qactu.Parameters.ParamByName('glo').Value := _labelglobal;
  qactu.Parameters.ParamByName('uni').Value := _labelunico;
  qactu.Parameters.ParamByName('rec').Value := _recid;
  qactu.Parameters.ParamByName('sec').Value := _secuencia;
  qactu.Parameters.ParamByName('num').Value := _numero;
  qactu.Parameters.ParamByName('des').Value := _desc;
  qactu.Parameters.ParamByName('pac').Value := _paciente;
  qactu.Parameters.ParamByName('ent').Value := _entrada;
  qactu.Parameters.ParamByName('mue').Value := _muestra;
  qactu.Parameters.ParamByName('pru').Value := _prueba;
  qactu.ExecSQL;

  FreeAndNil(qactu);
end;


procedure TfrmPuntoVenta.Update_Label_Descripcion(_label: String; _descripcion: String);
Var
 qactu    : TADOQuery;
begin
  qactu := DM.NewQuery;

  qactu.Close;
  qactu.SQL.Text := ' UPDATE PTLabelTemp with (rowlock) '+
                    ' SET DescripcionLabel = :des '+
                    ' WHERE Label = :lab ';
  qactu.Parameters.ParamByName('lab').Value := _label;
  qactu.Parameters.ParamByName('des').Value := _descripcion;
  qactu.ExecSQL;

  FreeAndNil(qactu);
end;


//Generando los Labels de la Toma de Muestra.
procedure TfrmPuntoVenta.Generar_Labels;
Begin
{
  Insertar_LabelTemp;

  Crear_Labels_Temp(qrEntradaPacienteDetalleSecuenciaAct.Value);

  Insertar_Materiales_Prueba;

  If (_total_envase > 0) Then
    Insertar_Materiales_Envase;

  If (_total_sangre > 0) Then
    Insertar_Materiales_Sangre;
}
end;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

//Validando el Cambio del Cliente Actual.
procedure TfrmPuntoVenta.Confirmar_Cliente_Prueba;
Var
  qfind1  : TADOQuery;
  qfind2  : TADOQuery;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  if (ClienteFirst = '') Then
    Begin
      cambiarprecio := False;
      ClienteSecond := '';
      ClienteFirst := qrEntradaPacienteClienteID.Value;
    end
  Else
    if (ClienteFirst = qrEntradaPacienteClienteID.Value) Then
      Begin
        cambiarprecio := False;
        ClienteSecond := '';
        ClienteFirst := qrEntradaPacienteClienteID.Value;
      end
    Else
      Begin
       if (ClienteFirst <> '') And (ClienteSecond <> '') Then
         ClienteFirst := ClienteSecond;

        cambiarprecio := False;
        ClienteSecond := qrEntradaPacienteClienteID.Value;
      end;

  if (ClienteFirst <> '') And (ClienteSecond <> '') And (ClienteFirst <> ClienteSecond) Then
    Begin
      qfind1 := DM.Find_Ldr('SELECT GrupoCliente FROM PTCliente (nolock) WHERE ClienteId = :cli', ClienteFirst);
      qfind2 := DM.Find_Ldr('SELECT GrupoCliente FROM PTCliente (nolock) WHERE ClienteId = :cli', ClienteSecond);

      if (qfind1.RecordCount > 0) And (qfind2.RecordCount > 0) Then
        Begin
          If ( (qfind1.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoSeg.Value) And
               (qfind2.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoPriv.Value) ) Then
            cambiarprecio := True
          Else
            cambiarprecio := True;
        End;
    End;

  FreeAndNil(qfind1);
  FreeAndNil(qfind2);

  If (cambiarprecio = True) Then
    Confirmar_Precio_Prueba;
end;


//Calculando el Nuevo Precio de la Prueba Dependiendo del Cliente Actual.
procedure TfrmPuntoVenta.Confirmar_Precio_Prueba;
Var
 valor_precio     : Currency;
 qprueba          : TADOQuery;
 Precio_Cabecera  : integer;
begin
  DM.qrParametro.close;
  DM.qrParametro.open;

  qrEntradaPacienteDetalle.DisableControls;
  qrEntradaPacienteDetalle.First;

  //Calculando el Nuevo Precio de la Prueba Dependiendo del Cliente Actual.
  While Not qrEntradaPacienteDetalle.Eof Do
   Begin
     qrEntradaPacienteDetalle.Properties['Update Criteria'].Value := 0;
     qrEntradaPacienteDetalle.Edit;

     //Buscando los Datos del Cliente a Facturar y Sus Parametros.
     Buscar_Cliente;

     //Calculando el Descuento a las PRUEBAS y los COMBOS.
     qprueba := DM.Find_Ldr('SELECT * FROM PtPrueba (nolock) WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaID.value);

     qrEntradaPacienteDetalleRefRecid.Value   := qrEntradaPacienteRECID.Value;
     qrEntradaPacienteDetalleMuestraNo.Value  := qrEntradaPacienteMuestraNo.Value;
     qrEntradaPacienteDetalleDATAAREAID.Value := qrEntradaPacienteDATAAREAID.Value;
     qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
     qrEntradaPacienteDetalleCUADRADO.Value   := qrEntradaPacienteCUADRADO.Value;
     qrEntradaPacienteDetalleTRANSFERIDO.Value:= qrEntradaPacienteTRANSFERIDO.Value;
     qrEntradaPacienteDetalleSINPRFILTER.Value:= qrEntradaPacienteSINPRFILTER.Value;

     //Registrando las Pruebas en Dollares del Exterior.
     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
        (qrEntradaPacienteTipoDocumento.Value = 3) Or
        (qrEntradaPacienteFactExterior.Value = 1) Then
       Begin
         qrEntradaPacienteDESCUENTOPORC.Value   := 0;
         qrEntradaPacienteDESCUENTO.Value       := 0;
         qrEntradaPacienteDetalleDescPct.Value  := 0;
       End
     Else
       Begin
         If (qprueba.FieldByName('Tipo').Value = 'C') then
           Begin
             If (qprueba.FieldByName('FacturarCabecera').Value = 1) then
               Begin
                 qrEntradaPacienteDetalleCOMBO.Value       := 1; //LA PRUEBA ES UN COMBO.
//                 qrEntradaPacienteDetallePASARAXAPTA.Value := 0; //TRANSFERIR A AXAPTA (False).

                 //Registrando la Cabecera de los Combos (CON PRECIO).
                 if (qrEntradaPacienteSucursalId.Value <> dm.Cursucursal ) then
                     dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(qrEntradaPacienteSucursalId.Value);
                 GrupoPrecio :=Dm.Buscar_GrupoPrecio(qrEntradaPacienteClienteID.Value);
                 GrupoCliente := Dm.Buscar_GrupoCliente(qrEntradaPacienteDetallePruebaID.Value,ClienteFactura,qrEntradaPacienteMonedaID.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                 if GrupoCliente <> EmptyStr then
                 begin
                    ClienteFact := ClienteFactura;
                    GrupoPrecio := ClienteFactura;
                 end
                 else
                 begin
                   if GrupoPrecio = EmptyStr then
                      ClienteFact := ClienteFactura
                   Else
                      ClienteFact := GrupoPrecio;
                 end;

                 qrEntradaPacienteDetallePrecio.Value := DM.Precio_Prueba_Configurado(qrEntradaPacienteDetallePruebaID.Value,
                                                                                      ClienteFact,
                                                                                      qrEntradaPacienteMonedaID.Value,
                                                                                      qrEntradaPacienteOrigen.value,
                                                                                      dm.GroupPrivado,GrupoPrecio,qrEntradaPacienteClaseCredito.Value,
                                                                                      formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value)) * factor;

                 if (qrEntradaPacienteDetallePrecio.Value > 0) and (qrEntradaPacienteDetalleCombo.Value = 1) Then
                    Precio_Cabecera:=1
                 else if (qrEntradaPacienteDetallePrecio.Value = 0) and (qrEntradaPacienteDetalleCombo.Value = 1) Then
                    Precio_Cabecera:=0;
                 //Validaciones de las Pruebas de Seguro.
                 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
                   Begin
                     //Marcando la Prueba Como Cubierta por el Seguro o No Segun el Acuerdo Comercial.
                     qrEntradaPacienteDetalleCoberturaAplica.Value := DM.ValidarSeguroPruebaCobertura(qrEntradaPacienteOrigen.Value,
                                                                                                      qfindCltParams.FieldByName('GrupoPrecio').AsString,
                                                                                                      qrEntradaPacienteDetallePruebaID.Value,
                                                                                                      qrEntradaPacienteMonedaID.Value,
                                                                                                      qrEntradaPacienteClienteID.Value,
                                                                                                      qrEntradaPacientePacienteID.Value,
                                                                                                      formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value),
                                                                                                      curCoberturaAplicada,
                                                                                                      qrEntradaPacienteRECID.value);

                     If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
                       Begin
                         //Pruebas de los Seguros.
                         curCoberturaAplicada := DM.CurCoberturaAplicada(qrEntradaPacienteRECID.Value); //DM.CurCoberturaAplicada(_recorId)
//                         curCoberturaAplicada := curCoberturaAplicada + 1;

                         valor_precio := DM.ValidarSeguroPruebaCobertura_Precio(qrEntradaPacienteClienteID.Value,
                                                                                qrEntradaPacienteDetallePruebaID.Value,
                                                                                qrEntradaPacienteMonedaID.Value,
                                                                                qrEntradaPacienteSucursalID.Value,
                                                                                formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                         If (valor_precio > 1) Then
                           Begin
//                             qrEntradaPacienteDetalle.Edit;
//                             qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
//                             qrEntradaPacienteDetallePrecio.Value := DM.Redondeo(valor_precio);
                             DM.Warning('   EL TOTAL DE PRUEBAS X DIAS DE ESTA ASEGURADORA YA FUE ALCANZADO.   ' + #13);
//                                     '   La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +')    ' + #13 +
//                                     '   Sera Facturada a Precio Normal. NO Tiene Cobertura.!!!');
                           End;
                       End;
{
                     qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.Cobertura_Prueba_Configurada(qrEntradaPacienteDetallePruebaID.Value,
                                                                                                        qrEntradaPacienteClienteID.Value,
                                                                                                        qrEntradaPacienteMonedaID.Value) * factor;
                     if qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
                       qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(qrEntradaPacienteDetallePruebaID.Value,
                                                                                                qrEntradaPacienteClienteID.Value,
                                                                                                qrEntradaPacienteMonedaID.Value)
                     else
                       qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
}
                   End; //Final de las Validaciones de las Pruebas de Seguro.

                 precio_combo := DM.Redondeo(qrEntradaPacienteDetallePrecio.Value);
                 Buscar_Combo;
                 if qrEntradaPacienteDetallePruebaID.value = EmptyStr then  Insertar_Combo_Blanco;
               End
             Else
               Begin
                 qrEntradaPacienteDetalleCOMBO.Value       := 1; //LA PRUEBA ES UN COMBO.
//                 qrEntradaPacienteDetallePASARAXAPTA.Value := 0; //TRANSFERIR A AXAPTA (False).
                 qrEntradaPacienteDetalleDESCPCT.Value := 0;

                 //Registrando la Cabecera de los Combos (SIN PRECIO).
                 Buscar_Combo;
                 if qrEntradaPacienteDetallePruebaID.value = EmptyStr then  Insertar_Combo_Precio;
               End;
           End
         Else
           Begin
             If (comboprecio = True) Then
               Begin
                 //Registrando las Pruebas NORMALES y/o Detalle de los Combos (CON PRECIO).
                 if Not((qrEntradaPacienteDetallePrecio.Value = 0) and (qrEntradaPacienteDetalleCombo.Value = 1)) then
                 begin
                     if (qrEntradaPacienteSucursalId.Value <> dm.Cursucursal ) then
                         dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(qrEntradaPacienteSucursalId.Value);
                     GrupoPrecio :=Dm.Buscar_GrupoPrecio(qrEntradaPacienteClienteID.Value);
                     GrupoCliente := Dm.Buscar_GrupoCliente(qrEntradaPacienteDetallePruebaID.Value,ClienteFactura,qrEntradaPacienteMonedaID.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                     if GrupoCliente <> EmptyStr then
                     begin
                        ClienteFact := ClienteFactura;
                        GrupoPrecio := ClienteFactura;
                     end
                     else
                     begin
                       if GrupoPrecio = EmptyStr then
                          ClienteFact := ClienteFactura
                       Else
                          ClienteFact := GrupoPrecio;
                     end;

                     qrEntradaPacienteDetallePrecio.Value := DM.Precio_Prueba_Configurado(qrEntradaPacienteDetallePruebaID.Value,
                                                                                          ClienteFact,
                                                                                          qrEntradaPacienteMonedaID.Value,
                                                                                          qrEntradaPacienteOrigen.value,dm.GroupPrivado,
                                                                                          GrupoPrecio,qrEntradaPacienteClaseCredito.Value,
                                                                                          formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value)) * factor;
                 end
                 else
                 begin
                    qrEntradaPacienteDetallePrecio.Value := 0;
                 end;
                 //Validaciones de las Pruebas de Seguro.
                 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
                   Begin
{
                     qrEntradaPacienteDetalleCoberturaAplica.Value := DM.CoberturaAplica(qrEntradaPacienteClienteID.Value,
                                                                                         qrEntradaPacientePacienteID.Value,
                                                                                         curCoberturaAplicada,
                                                                                         qrEntradaPacienteRECID.value);
}
                   //Marcando la Prueba Como Cubierta por el Seguro o No Segun el Acuerdo Comercial.
                   qrEntradaPacienteDetalleCoberturaAplica.Value := DM.ValidarSeguroPruebaCobertura(qrEntradaPacienteOrigen.Value,
                                                                                                    qfindCltParams.FieldByName('GrupoPrecio').AsString,
                                                                                                    qrEntradaPacienteDetallePruebaID.Value,
                                                                                                    qrEntradaPacienteMonedaID.Value,
                                                                                                    qrEntradaPacienteClienteID.Value,
                                                                                                    qrEntradaPacientePacienteID.Value,
                                                                                                    formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value),
                                                                                                    curCoberturaAplicada,
                                                                                                    qrEntradaPacienteRECID.value);

                     If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
                       Begin
                         //Pruebas de los Seguros.
                         curCoberturaAplicada := DM.CurCoberturaAplicada(qrEntradaPacienteRECID.Value); //DM.CurCoberturaAplicada(_recorId)
//                         curCoberturaAplicada := curCoberturaAplicada + 1;

                         valor_precio := DM.ValidarSeguroPruebaCobertura_Precio(qrEntradaPacienteClienteID.Value,
                                                                                qrEntradaPacienteDetallePruebaID.Value,
                                                                                qrEntradaPacienteMonedaID.Value,
                                                                                qrEntradaPacienteSucursalID.Value,
                                                                                formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                         If (valor_precio > 1) Then
                           Begin
//                             qrEntradaPacienteDetalle.Edit;
//                             qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
//                             qrEntradaPacienteDetallePrecio.Value := DM.Redondeo(valor_precio);
                             DM.Warning('   EL TOTAL DE PRUEBAS X DIAS DE ESTA ASEGURADORA YA FUE ALCANZADO.   ' + #13);
//                                     '   La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +')    ' + #13 +
//                                     '   Sera Facturada a Precio Normal. NO Tiene Cobertura.!!!');
                           End;
                       End;
{
                     qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.Cobertura_Prueba_Configurada(qrEntradaPacienteDetallePruebaID.Value,
                                                                                                        qrEntradaPacienteClienteID.Value,
                                                                                                        qrEntradaPacienteMonedaID.Value) * factor;
                     if qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
                       qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(qrEntradaPacienteDetallePruebaID.Value,
                                                                                                qrEntradaPacienteClienteID.Value,
                                                                                                qrEntradaPacienteMonedaID.Value)
                     else
                       qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
}
                   end; //Final de las Validaciones de las Pruebas de Seguro.

               end
             Else
               Begin
                 //Registrando el Detalle de los Combos (SIN PRECIO).
                 combodescto                                         := 0;
                 qrEntradaPacienteDESCUENTOPORC.Value                := 0;
                 qrEntradaPacienteDESCUENTO.Value                    := 0;
                 qrEntradaPacienteDetalleDESCPCT.Value               := 0;
                 qrEntradaPacienteDetalleCOMBO.Value                 := 1; //LA PRUEBA ES UN COMBO.
                 qrEntradaPacienteDetallePrecio.Value                := 0;
                 qrEntradaPacienteDetalleDescPct.Value               := 0;
                 qrEntradaPacienteDetalleFacturar.Value              := 0;
                 qrEntradaPacienteDetalleDescuento.Value             := 0;
                 qrEntradaPacienteDetalleCoberturaAplica.Value       := 0;
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value      := 0;
                 qrEntradaPacienteDetalleCoberturaEspecial.Value     := 0;
                 qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
               End;
           end;
       End;


     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
       Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value)
     else
     begin
       qrEntradaPacienteDetalleCODIGOCUPID.Value := Emptystr;
       qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
     end;
         if qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
         Begin
            qrEntradaPacienteDetalle.Post;
         End;
       qrEntradaPacienteDetalle.Next;
   end;

  FreeAndNil(qprueba);
  qrEntradaPacienteDetalle.EnableControls;

//  Val_Descuento;
//  VerificarPagoDiferencia;
//  ActTotales;
end;


procedure TfrmPuntoVenta.Agregar_Pacientes(PacienteId : String);
Var
 sqlString : String;
 qfind, qfindciudad : TADOQuery;
begin
// If ( qrEntradaPaciente.State in [dsinsert,dsedit] ) Then
 If ( (qrEntradaPaciente.State in [dsinsert,dsedit]) ) And
    ( (qrEntradaPacientePacienteID.Value = '') Or
      (qrEntradaPacientePacienteID.IsNull) ) Then
  Begin
   DM.qrParametro.Close;
   DM.qrParametro.Open;

   sqlString := ' SELECT TOP 1 * FROM PTCliente (nolock) WHERE GrupoCliente IN (' + #39 +
                DM.qrParametroGrupoVip.Value + #39 + ',' + #39 +
                DM.qrParametroGrupoAcc.Value + #39 + ',' + #39 +
                DM.qrParametroGrupoEmp.Value + #39 + ',' + #39 +
                DM.qrParametroGrupoPriv.Value + #39 + ') '+
                ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                ' AND ClienteID ='+ #39+PacienteId +#39;

   DM.qrPacientes.Close;
   DM.qrPacientes.SQL.Text := sqlString;
   DM.qrPacientes.Open;

   If (DM.qrPacientes.RecordCount > 0) Then
    Begin
      qfindciudad := DM.Find_Ldr('SELECT * FROM PTCIUDAD (nolock) Where CiudadID = :ciu', DM.qrPacientesCiudadID.AsString);

      qrEntradaPacientePacienteID.Value := DM.qrPacientesClienteID.Value;
      if DM.Empleado_Existe(qrEntradaPacientePacienteID.Value) then
      begin
           If Length(Trim(qrEntradaPacienteDireccion.AsString)) > 80 then  cxDbMemo2.Style.Color  := ClYellow;
           cxDbPaciente.Properties.ReadOnly := True;
           cxDbPaciente.Style.Color := ClAqua;
      end
      else
      begin
           If Length(Trim(qrEntradaPacienteDireccion.AsString)) > 80 then  cxDbMemo2.Style.Color  := ClYellow;
           cxDbPaciente.Properties.ReadOnly := False;
           cxDbPaciente.Style.Color := ClWindow;
      end;
      qrEntradaPacienteNombrePaciente.Value       := DM.qrPacientesNombre.Value;
      qrEntradaPacienteDireccion.Value            := DM.qrPacientesDireccion.Value;
      qrEntradaPacienteTelefonos.Value            := DM.qrPacientesTelefono.Value;
      qrEntradaPacienteTelefono2.Value            := DM.qrPacientesTelefono2.Value;
      qrEntradaPacienteFax.Value                  := DM.qrPacientesFax.Value;
      qrEntradaPacienteEmail.Value                := DM.qrPacientesEMail.Value;
      qrEntradaPacienteSexo.Value                 := DM.qrPacientesSexo.Value;
      qrEntradaPacienteFECHANACIMIENTO.Value      := DM.qrPacientesFECHANACIMIENTO.Value;
      qrEntradaPacienteEmail.value                := DM.qrPacientesEMAIL.Value;
      qrEntradaPacienteEdadPaciente.Value         := Trunc((StrtoInt(FormatDateTime('yyyymmdd', DM.SystemDate))-StrtoInt(FormatDateTime('yyyymmdd', DM.qrPacientesFechaNacimiento.Value)))/10000);
      qrEntradaPacientePUBLICARINTERNET.Value     := 0;
      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
      qrEntradaPacienteGrupoDescuentoTotal.Value  := DM.qrPacientesGrupoDescuentoTotal.Value;
      qrEntradaPacienteGrupoDescuentoLinea.Value  := DM.qrPacientesGrupoDescuentoLinea.Value;
      qrEntradaPacienteGrupoPrecio.Value          := DM.qrPacientesGrupoPrecio.Value;
//      qrEntradaPacienteFormadePago.Value          := DM.qrPacientesFormaPago.Value;
//      Val_Forma_Pago(qrEntradaPacienteFormadePago.Value);
      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.

{      If (qfindciudad.RecordCount > 0) then
        if True then

        qrEntradaPacienteDireccion.Value := qrEntradaPacienteDireccion.Value +  +
                                            qfindciudad.FieldByName('Descripcion').AsString;
}

      //Llenar Los Parametros de los Pacientes. ////////////////////////////////////////////////////////////
      qrEntradaPacienteResultadoPaciente.Value := DM.qrPacientesEnvioResultado.Value;
//WILLIAMS
//      qrentradaPacientePublicarInternet.value := DM.qrPacientesPublicarInternet.Value;

      If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
      begin
          If (DM.qrPacientesCobrarDiferencia.Value = 1) then
            EliminarDescuentoAplicado1Click(Nil);
      end;
      If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) then
         AsignarDescuentoPermitidoAlUsuario1.Enabled := True
      else
         AsignarDescuentoPermitidoAlUsuario1.Enabled := False;

      //Buscando los Datos del Cliente a Facturar y Sus Parametros.
//      Buscar_Cliente;

      //Validando Los Parametros de Descuentos.
//      Val_Descuento;
//      VerificarPagoDiferencia;

      FreeAndNil(qfind);
      FreeAndNil(qfindCiudad);

      RefrescarInterface;
    End;

  End;
end;


procedure TfrmPuntoVenta.Agregar_Clientes(ClienteId : String);
Var
 sqlString : String;
 qfind, qfindseg : TADOQuery;
begin
// If ( qrEntradaPaciente.State in [dsinsert,dsedit] ) Then
 If ( (qrEntradaPaciente.State in [dsinsert, dsedit]) ) And
    ( (qrEntradaPacienteClienteID.Value = '') Or
      (qrEntradaPacienteClienteID.IsNull) ) Then
  Begin
   DM.qrParametro.Close;
   DM.qrParametro.Open;

   sqlString := ' SELECT TOP 1 * FROM PTCliente (nolock) WHERE GrupoCliente IN ('  + #39 +
                                      DM.qrParametroGrupoVip.Value  + #39 + ',' + #39 +
                                      DM.qrParametroGrupoAcc.Value  + #39 + ',' + #39 +
                                      DM.qrParametroGrupoEmp.Value  + #39 + ',' + #39 +
                                      DM.qrParametroGrupoPriv.Value + #39 + ') '+
                ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                ' AND ClienteID ='+#39+ClienteId+#39;

   DM.qrPacientes.Close;
   DM.qrPacientes.SQL.Text := sqlString;
   DM.qrPacientes.Open;

   If (DM.qrPacientes.RecordCount > 0) Then
    Begin
      qfind       := DM.Find('SELECT ProyectoID FROM PTProyecto (nolock) Where ClienteID = :clt', ClienteId);
      qfindseg    := DM.Find_Ldr('SELECT ClienteID,Nombre,GrupoCliente,SinprFilter,grupoprecio,FormaPago FROM PTCLIENTE (nolock) Where Estatus = 0 And ClienteID = :clt', DM.qrPacientesSeguro.Value);

       if DM.Empleado_Existe(DM.qrPacientesClienteID.AsString) then
       begin
           If Length(Trim(qrEntradaPacienteDireccion.AsString)) > 80 then  cxDbMemo2.Style.Color  := ClYellow;
           cxDbPaciente.Properties.ReadOnly := True;
           cxDbPaciente.Style.Color := ClAqua;
       end
       else
       begin
           If Length(Trim(qrEntradaPacienteDireccion.AsString)) > 80 then  cxDbMemo2.Style.Color  := ClYellow;
           cxDbPaciente.Properties.ReadOnly := False;
           cxDbPaciente.Style.Color := ClWindow;
       end;
       if qfindseg.FieldByName('ClienteID').AsString <> EmptyStr then
       begin
          If dm.Plan_Premium = 'S' Then
          begin
              qrEntradaPacienteClienteID.Value      := qrEntradaPacientePacienteID.Value;
              qrEntradaPacienteClienteNombre.Value  := DM.qrPacientesNombre.AsString;
              qrEntradaPacienteOrigen.Value         := DM.qrPacientesGrupoCliente.Value;
              qrEntradaPacienteClienteID.Value      := DM.qrPacientesClienteID.Value;
              qrEntradaPacienteProyectoID.Value     := qfind.FieldByName('ProyectoID').AsString;
              qrEntradaPacienteSINPRFILTER.Value    := DM.qrPacientesSINPRFILTER.Value;
              qrEntradaPacienteGrupoPrecio.Value    := EmptyStr;
          end
          else
          begin
              qrEntradaPacienteClienteID.Value       := qfindseg.FieldByName('ClienteID').AsString;
              qrEntradaPacienteClienteNombre.Value      := qfindseg.FieldByName('Nombre').AsString;
              qrEntradaPacienteOrigen.Value             := qfindseg.FieldByName('GrupoCliente').AsString;
              qrEntradaPacientePolizaID.Value           := DM.qrPacientesPoliza.AsString;
              qrEntradaPacienteProyectoID.Value         := qfind.FieldByName('ProyectoID').AsString;
              qrEntradaPacienteSINPRFILTER.Value        := qfindseg.FieldByName('SinprFilter').AsInteger;
          end;
          ActTotales;          
       end
       else
       begin
          qrEntradaPacienteClienteNombre.Value      := DM.qrPacientesNombre.AsString;
          qrEntradaPacienteOrigen.Value             := DM.qrPacientesGrupoCliente.Value;
          qrEntradaPacienteClienteID.Value          := DM.qrPacientesClienteID.Value;
          qrEntradaPacienteProyectoID.Value         := qfind.FieldByName('ProyectoID').AsString;
          qrEntradaPacienteSINPRFILTER.Value        := DM.qrPacientesSINPRFILTER.Value;
       end;

      qrEntradaPacienteClaseCredito.Value           := DM.qrPacientesClaseCredito.Value;
      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
      qrEntradaPacienteGrupoDescuentoTotal.Value    := DM.qrPacientesGrupoDescuentoTotal.Value;
      qrEntradaPacienteGrupoDescuentoLinea.Value    := DM.qrPacientesGrupoDescuentoLinea.Value;
      qrEntradaPacienteGrupoPrecio.Value            := qfindseg.FieldByName('grupoprecio').AsString;                    //DM.qrPacientesGrupoPrecio.Value;
      if DM.qrPacientesFormaPago.Value ='CASH' Then
      begin
           qrEntradaPacienteFormadePago.Value:='EFE';
      end;
      if dm.plan_premium <> 'S' then
         qrEntradaPacienteFormadePago.Value            := ifthen(qfindseg.FieldByName('FormaPago').AsString<>EmptyStr,qfindseg.FieldByName('FormaPago').AsString,qrEntradaPacienteFormadePago.Value);//DM.qrPacientesFormaPago.Value;

      Val_Forma_Pago(qrEntradaPacienteFormadePago.Value);
      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
{
      If (qrEntradaPacienteOrigen.Value = '') Or (qrEntradaPacienteOrigen.IsNull) Then
        cambiarprecio := False
      Else
        Begin
          If ( (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) And
               (DM.qrPacientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) ) Then
            cambiarprecio := False
          Else
            cambiarprecio := True;
        end;

      qrEntradaPacienteOrigen.Value := DM.qrPacientesGrupoCliente.Value;

//      qrEntradaPacienteResultadoPaciente.Value := DM.qrPacientesEnvioResultado.Value;
//      qrentradaPacientePublicarInternet.value := DM.qrPacientesPublicarInternet.Value;
}
      If DM.qrPacientesCOBERTURAPORC.Value > 1 then
        begin
          qrEntradaPacienteCoberturaConfirmada.Value := 0;
          qrEntradaPacienteCoberturaPreConfirmada.Value := 1;
          qrEntradaPacienteCoberturaPorc.Value := DM.qrPacientesCoberturaPorc.value;
//          qrEntradaPacienteCoberturaPreConfirmada.Value := DM.qrPacientesAutoConfirmar.Value;
        end
      else
        begin
          qrEntradaPacienteCoberturaPorc.Value := 0;
          qrEntradaPacienteCoberturaConfirmada.Value := 0;
          qrEntradaPacienteCoberturaPreConfirmada.Value := 0;
        end;

      If (DM.qrPacientesMonedaID.Value <> '') Then
        Begin
          If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
             (qrEntradaPacienteTipoDocumento.Value = 3) Or
             (qrEntradaPacienteFactExterior.Value = 1) Then
            Begin
              qrEntradaPaciente.Edit;
              qrEntradaPacienteNoAS400.Value := 1;
              qrEntradaPacienteNoAxapta.Value := 1;
              qrEntradaPacienteNoFactura.Value := 1;
              qrEntradaPacienteFactExterior.Value := 1;
              qrEntradaPacienteTipoDocumento.Value := 3;
              qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
            End
          Else
            Begin
              qrEntradaPaciente.Edit;
              qrEntradaPacienteNoAS400.Value := 0;
              qrEntradaPacienteNoAxapta.Value := 0;
              qrEntradaPacienteNoFactura.Value := 0;
              qrEntradaPacienteFactExterior.Value := 0;
              qrEntradaPacienteTipoDocumento.Value := 0;
              qrEntradaPacienteMonedaID.Value := DM.qrPacientesMonedaID.Value;
            End;
        End;

      //Buscando los Datos del Cliente a Facturar y Sus Parametros.
//      Buscar_Cliente;

      //Validando Los Parametros de Descuentos.
//      Val_Descuento;
//      VerificarPagoDiferencia;

      FreeAndNil(qfind);
      FreeAndNil(qfindseg);
      RefrescarInterface;
    End;
  End;
end;


Function TfrmPuntoVenta.Cargar_Valor(campo: String; valor: Variant): String;
begin
 Result := campo + ' - ( ' + VarToStr(valor) + ' ).';
end;


procedure TfrmPuntoVenta.Mirar_Valor_CAB;
Var idx : Integer;
begin
  For idx := 0 To qrEntradaPaciente.FieldCount - 1 Do
   begin
     Showmessage('CAB - ' + Cargar_Valor(qrEntradaPaciente.Fields[idx].DisplayLabel,
                                         qrEntradaPaciente.Fields[idx].Value));
   end;
end;


procedure TfrmPuntoVenta.Mirar_Valor_DET;
Var idx : Integer;
begin
  For idx := 0 To qrEntradaPacienteDetalle.FieldCount - 1 Do
   begin
     Showmessage('DET - ' + Cargar_Valor(qrEntradaPacienteDetalle.Fields[idx].DisplayLabel,
                                         qrEntradaPacienteDetalle.Fields[idx].Value));
   end;
end;


procedure TfrmPuntoVenta.Act_RecIdDetalle;
begin
 If MessageDlg('Este Proceso ACTUALIZARA Todas Las Pruebas Registradas.!!!' + #13 +
               'Esta Seguro de Querer Ejecutarlo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   qrEntradaPacienteDetalle.Close;
   qrEntradaPacienteDetalle.SQL.Text := 'SELECT * FROM ptentradapacientedetalle (nolock) ORDER BY refrecid, secuencia ';
   qrEntradaPacienteDetalle.Open;

   qrEntradaPacienteDetalle.First;
   While not qrEntradaPacienteDetalle.EOF do
    Begin
      qrEntradaPacienteDetalle.Properties['Update Criteria'].Value := 0;
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteDetalleDATAAREAID.Value := DM.CurEmpresa;
      qrEntradaPacienteDetalleRECID.Value := GetSecuenciaId;
      qrEntradaPacienteDetalleSINPRFILTER.Value := qrEntradaPacienteSINPRFILTER.Value;
      qrEntradaPacienteDetalle.Post;

      qrEntradaPacienteDetalle.Next;
    End;

   showmessage('Se Han ACTUALIZADO Todas Las Pruebas Registradas.!!!');
  end
 else
  begin
   showmessage('Operacion Abortada Por el Usuario.!!!');
   abort;
  end;
end;


procedure TfrmPuntoVenta.GridPruebasEntradasPacienteDetComentarioPropertiesInitPopup(
  Sender: TObject);
Var
 qfind : TADOQuery;
 strsql,strPruebaAnt : String;
begin
  inherited;
 qfind := DM.NewQuery;
 strPruebaAnt := '';
 qfind.Close;
 strsql := ' Select * From PtPrueba (nolock) Where ';
 if Copy(qrEntradaPacienteDetalleDESCRIPCION.Value,1,2) = 'AL' then
    strsql := strsql + ' DESCRIPCION LIKE '+#39+'ALERGENO DE%'+#39+' AND '
 else  if Copy(qrEntradaPacienteDetalleDESCRIPCION.Value,1,2) = 'CU' then
 begin
    strsql := strsql + ' DESCRIPCION LIKE '+#39+'CULTIVO DE%'+#39;
    strsql := strsql + ' AND SUBSTRING(PRUEBAID,5,4) IN ( SELECT SUBSTRING(COD_COMEN,3,4) FROM '+
                       ' PTCOMENTARIOPRUEBAS (nolock) WHERE ESTATUS='+#39+'A'+#39+' AND SUBSTRING(COD_COMEN,1,2)='+#39+'CU'+#39+') AND '
 end
 else  if Copy(qrEntradaPacienteDetalleDESCRIPCION.Value,1,2) = 'ZI' then
 begin
    strsql := strsql + ' DESCRIPCION LIKE '+#39+'ZIKA%'+#39;
    strsql := strsql + ' AND SUBSTRING(PRUEBAID,5,4) IN ( SELECT SUBSTRING(COD_COMEN,3,4) FROM '+
                       ' PTCOMENTARIOPRUEBAS (nolock) WHERE ESTATUS='+#39+'A'+#39+' AND SUBSTRING(COD_COMEN,1,2)='+#39+'ZI'+#39+') AND ';
 end
 else
 begin
    strsql := strsql + ' COMENTARIO_REQ ='+#39+'1'+#39+' AND ';
 end;
 strsql := strsql +' DATAAREAID='+#39+'ldr'+#39+' ORDER BY PRUEBAID ';
 qfind.SQL.Text := strsql;
 qfind.Open;
 If qfind.Recordcount > 0 then
 begin
      qfind.Locate('PruebaId', qrEntradaPacienteDetallePruebaId.Value, []);
      if qfind.FieldByName('PruebaID').Value = qrEntradaPacienteDetallePruebaId.Value then
      begin
            if Copy(qrEntradaPacienteDetalleDESCRIPCION.Value,1,2) = 'AL' then
               frmMain.LanzaConsulta(-7980, 'AL')
            Else if Copy(qrEntradaPacienteDetalleDESCRIPCION.Value,1,2) = 'CU' then
               frmMain.LanzaConsulta(-7980, 'CU'+Copy(qrEntradaPacienteDetallePruebaId.Value,5,4))
            Else if Copy(qrEntradaPacienteDetalleDESCRIPCION.Value,1,2) = 'ZI' then
               frmMain.LanzaConsulta(-7980, 'ZI'+Copy(qrEntradaPacienteDetallePruebaId.Value,5,4))

      end;
  end;
  FreeAndNil(qfind);
end;

procedure TfrmPuntoVenta.GridPruebasEntradasPacienteDetResultadoStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
    if ARecord.Values[GridPruebasEntradasPacienteDetResultado.Index] = 'Reportado' then
       AStyle := Reportado
    else If ARecord.Values[GridPruebasEntradasPacienteDetResultado.Index] = 'No Reportado' then
       AStyle := NReportado
    else If ARecord.Values[GridPruebasEntradasPacienteDetResultado.Index] = '' Then
       AStyle := Combo;
end;

procedure TfrmPuntoVenta.GridPruebasEntradasPacienteDetStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
  begin
    If (ARecord.Values[GridPruebasEntradasPacienteDetCoberturaAplica.Index] <> 1) Then  AStyle := noseguro;
  end;
end;



procedure TfrmPuntoVenta.Cancelar_Entrada;
begin
 If qrEntradaPaciente.State = dsinsert then
  begin
    If qrEntradaPacienteEntradaID.Value = EmptyStr then
      begin
        DM.DataBase.Execute('DELETE FROM PTEntradaPacienteDetalle WHERE Refrecid = '+qrEntradaPacienteRECID.AsString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);
        DM.DataBase.Execute('DELETE FROM PTGastosVarioTrans WHERE Refrecid = '+qrEntradaPacienteRECID.AsString);
        DM.DataBase.Execute('DELETE FROM PTMaterialesFactura WHERE Refrecid = '+qrEntradaPacienteRECID.AsString);
        If ExisteCobro then
         begin
          CancelarCobro;
         end;
      end;
    qrEntradaPaciente.Cancel;
  end;

 If (qrEntradaPacienteEntradaID.Value <> '') then
   begin
    if qrEntradaPaciente.State = dsEdit then
      qrEntradaPaciente.Cancel;
   end;

  NuevaVenta;
end;


procedure TfrmPuntoVenta.Guardar_Entrada;
begin
 inherited;
 Confirmar_Cliente_Prueba;
 Val_Paciente;
 Val_Descuento;
// VerificarPagoDiferencia;
// ActTotales;

 DM.qrParametro.close;
 DM.qrParametro.open;

 qrEntradaPacienteNombreDoctor.Required := True;

 If ValidateRecord(dsEntradaPaciente.DataSet) And ValidateCliente Then
   begin
     qrEntradaPaciente.Edit;
     qrEntradaPacienteHold.Value := 0;
//     qrEntradaPacienteUserId.Value := DM.CurUser;
     qrEntradaPacienteFLEBOTOMISTAID.Value := DM.CurUser;
     qrEntradaPacienteFechaRegistro.Value := DM.SystemDate;
     qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;
     qrEntradaPacienteEntradaID.Value := GetEntradaID;

     If qrEntradaPaciente.State in [dsInsert] Then
       Begin
        If (qrEntradaPacienteTipoDocumento.Value = 0) or
           (qrEntradaPacienteTipoDocumento.Value = 3) then
          begin
            //Actualizando los Datos del Cliente.
            Act_Cliente;

            //Insertando Los Datos de la Tarjeta de Descuento.
            Insert_Card_Descuento
          end;
       End;

     If qrEntradaPaciente.State in [dsEdit, dsInsert] then
       Begin
        qrEntradaPaciente.Edit;
        qrEntradaPacienteHold.Value := 0;
        qrEntradaPaciente.Post;
       end;

     If qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
       Begin
        qrEntradaPacienteDetalle.Edit;
        qrEntradaPacienteDetalle.Post;
       End;
{
     //Generando las Acciones del Boton COBRAR Original.
     If Not ExisteCobro And (Act_2da = False) Then Boton_Cobrar;

     if ExisteCobro then
      begin
       if TipoCobro = 'RI' then
         Begin
           ActCobro;
         end
       else
         Begin
           ActNotaCredito;
         end
      end;
}
//     If (imprimirRecibo) and (cobroid <> '') and (TipoCobro = 'RI') then ImpresionRecibo;
//     If (imprimirNC) and (cobroid <> '') and (TipoCobro = 'NC') then ImpresionNC;
   end;
end;


procedure TfrmPuntoVenta.Re_Grabar;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;

 if DM.Mensaje('Desea Re-Grabar Este Registro?', mb_yesno) = id_yes then
   begin
     qrEntradaPaciente.Edit;
     qrEntradaPacienteHold.Value := 0;

     Val_Descuento;
//     VerificarPagoDiferencia;
//     ActTotales;

     qrEntradaPaciente.Post;
{
     If qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
       Begin
        qrEntradaPacienteDetalle.Post;
       End;
}
   end;
end;


//Procesando el Usuario de Internet de Este (NUEVO) Paciente.
procedure TfrmPuntoVenta.Procesar_Usuario_New;
Var
  Valor : Boolean;
  Pass2, Clave, i : Integer;
  Limpio, Usuario, Useralt, Tipo : String;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Eliminando los Guiones de la Cedula - RNC del Cliente.
  Limpio  := Trim(DM.Cortar_Char('-', qfindPacientes.FieldByName('Identificacion').AsString));

  //Creando la Clave de Internet.
  If qfindPacientes.FieldByName('Tipo_Documento').AsString = '3' Then
    Clave :=  DM.Crear_Clave_Alfa(Copy(Limpio, 1, 20))
  else
    Clave :=  Crear_Clave(Copy(Limpio, 1, 11));

  //Creando el Usuario de Internet.
  Usuario :=  Crear_Usuario(qfindPacientes.FieldByName('Nombre').AsString);

  //Creando el Usuario Alternativo. 6 Digitos o Menos.
  If ( Length(Usuario) > 8 ) Then
    Useralt := Copy(Usuario, 1, 8)
  Else
    Useralt := Usuario;

  //Creando el Usuario Alternativo. 4 Digitos de la Clave.
  Pass2 := StrToInt( RightStr (IntToStr (Clave), 4) );

      If dm.qrParametroServidor_AS400.value <> EmptyStr then
      begin
            if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
            begin
                  If Not InterfaseAS400.Buscar_Usuario_Internet(Usuario) then
                  begin
                    //Creando el Usuario Alternativo (Useralt + Pass2).
                    Usuario:= Useralt+Copy(IntToStr(Pass2),1,10-Length(Useralt));
//                    Usuario := Useralt + IntToStr(Pass2);
                    i:=1;
                    While Not InterfaseAS400.Buscar_Usuario_Internet(Usuario) do
                    Begin
                       Pass2    := Pass2 + 100;
                       Usuario  := Copy(Useralt,1,Length(Useralt)-i)+Copy(IntToStr(Pass2),1,10-Length(Copy(Useralt,1,Length(Useralt)-i)));
                       Clave    := Clave+100;
                       i:=i+1;
                       Next;
                    end;
                  end;
            end;
      end;
  If (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoAcc.Value) Or
     (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoEmp.Value) Or
     (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoVip.Value) Or
     (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoPriv.Value) Then
   Tipo := 'P'
 Else
   Tipo := 'C';

//  Insertar_Usuario(Usuario, IntToStr(Clave),
 if Not((Trim(usuario)=EmptyStr) Or (Trim(IntToStr(Clave))=EmptyStr) Or
        (Trim(qfindPacientes.FieldByName('Nombre').AsString)=EmptyStr) Or (Trim(qfindPacientes.FieldByName('Identificacion').AsString)=EmptyStr) Or
        (Trim(qrEntradaPacientePacienteId.Value)=EmptyStr))then
  begin
  Insertar_Usuario_New(Usuario, FormatFloat('000000', Clave),
                       qfindPacientes.FieldByName('Nombre').AsString,
                       qfindPacientes.FieldByName('Identificacion').AsString,
                       qrEntradaPacientePacienteId.Value, Tipo, 'N');
  end;
end;


//Creando la Clave de Internet Segun el Algoritmo de Alejandro Espinosa Curiel.
Function TfrmPuntoVenta.Crear_Clave(cedularnc : String) : Integer;
Var
  Numero  : Currency;
  Valor   : Int64;
//  Valor   : Integer;
  Texto   : String; //AnsiString;
begin
  //Cargando la Cedula - RNC.
//  Valor := StrToInt(cedularnc);
  Valor := StrToInt64(cedularnc);

  //Obteniendo el Numero Unico (Alejandro Espinosa Curiel).
  Numero := ((Valor * 180) / 360) * 3.1416;

  //Obteniendo la Parte Entera del Numero Unico.
  Valor := Trunc(Numero);

  //Tomando las 1ras 6 Posiciones del Entero.
  Texto := RightStr(IntToStr(Valor), 6);
//  Texto := AnsiRightStr(IntToStr(Valor), 6);

  //Asignando la Clave Obtenida.
  Result := StrToInt(Texto);
end;


//Creando el Usuario de Internet.
Function TfrmPuntoVenta.Crear_Usuario(nombre : String) : String;
Var
  Texto : String;
  Valor, Largo, Blanco : Integer;
begin
  Largo := Length(nombre);

  Blanco := AnsiPos(' ', nombre);

  If (Largo > 8) Then
    Begin
      If (Blanco > 1) Then
        Begin
         Valor := Blanco - 1;

         If (Valor > 7) Then
           Texto := Copy(nombre, 1, 8)
         Else
           Texto := Copy(nombre, 1, Valor);
        End
      Else
        Texto := Copy(nombre, 1, 8);
    End
  Else
    Texto := nombre;

  Result := Texto;
end;


//Validando la Existencia del Usuario Creado.
Function TfrmPuntoVenta.Valida_Usuario(usuario : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.Find_Ldr('SELECT * FROM PTUsuariosInternet (nolock) WHERE UsuarioInternet = :usr', usuario);

  If (qfind.RecordCount > 0) then
    Result := False
  Else
    Result := True;

  FreeAndNil(qfind);
end;


//Insertando el Usuario de Internet Creado.
procedure TfrmPuntoVenta.Insertar_Usuario_New(usuario: string; clave: string; name: string; cedula: string;
                                              cliente: string; tipo: string; actual: string);
var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;

 qinsert.Close;
 qinsert.SQL.Text := ' INSERT INTO PTUsuariosInternet(UsuarioInternet, ClaveInternet, Nombre, Identificacion, '+
                     ' ClienteId, Tipo, Actualizado, DataAreaId, RecId) VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8)';
 qinsert.Parameters[0].Value := usuario;
 qinsert.Parameters[1].Value := clave;
 qinsert.Parameters[2].Value := name;
 qinsert.Parameters[3].Value := cedula;
 qinsert.Parameters[4].Value := cliente;
 qinsert.Parameters[5].Value := tipo;
 qinsert.Parameters[6].Value := 'N';
 qinsert.Parameters[7].Value := qrEntradaPacienteDATAAREAID.Value;
 qinsert.Parameters[8].Value := qrEntradaPacienteRECID.Value;
 qinsert.ExecSQL;

 FreeAndNil(qinsert);
end;


//Validando la Existencia del Usuario Creado.
Function TfrmPuntoVenta.Buscar_User_Internet(_customer : String) : Boolean;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;

  qinter.Close;
  qinter.SQL.Text := ' SELECT * FROM PTUsuariosInternet (nolock) '+
                     ' WHERE ClienteId = ' + #39 + _customer + #39 +
                     ' AND Tipo = ' + #39 + 'P' + #39 +
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;

  if (qinter.RecordCount > 0) then
    result := True
  else
    result := False;

  FreeAndNil(qinter);
end;


procedure TfrmPuntoVenta.Insertar_Pago_AS400_PuntodeVenta;
Var
  _fecha     : String;
  monto      : Currency;
  qfind      : TADOQuery;
  qupdate    : TADOquery;
  qfindcobro : TADOquery;
  qinsert    : TADOQuery;
  qentrada   : TADOQuery;
  qsucursal  : TADOQuery;
  qpagoEfec  : TADOQuery;
  qpagoCard  : TADOQuery;
begin
  if DM.Mensaje('Desea Transferir Los Cobros del AS-400 al Punto de Venta.?',mb_yesno) = id_yes then
   begin
     qfind      := DM.NewQuery;
     qinsert    := DM.NewQuery;
     qupdate    := DM.NewQuery;
     qentrada   := DM.NewQuery;
     qfindcobro := DM.NewQuery;
     If dm.qrParametroServidor_AS400.value <> EmptyStr then
     begin
          if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
          begin
             Try
               InterfaseAS400.ASConnection.Close;
               InterfaseAS400.ASConnection.Open;

               InterfaseAS400.qrPagosAs400.Close;
               InterfaseAS400.qrPagosAs400.Open;

               If (InterfaseAS400.qrPagosAs400.RecordCount > 0) then
                Begin
                  InterfaseAS400.qrPagosAs400.First;
                  While Not InterfaseAS400.qrPagosAs400.Eof Do
                  Begin
                   qentrada.Close;
                   qentrada.SQL.Text := ' SELECT * FROM PTEntradaPaciente (nolock) '+
                                        ' WHERE MuestraNo = '+ #39 + InterfaseAS400.qrPagosAs400IN14MU.AsString + #39 +
                                        ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
                   qentrada.Open;

                   If (qentrada.Recordcount > 0) then
                     Begin
                       monto := 0;
                       qrEntradaPaciente.Close;
                       qrEntradaPaciente.parameters[0].Value := qentrada.FieldByName('RecID').AsString;
                       qrEntradaPaciente.Open;

                       qrEntradaPacienteDetalle.Close;
                       qrEntradaPacienteDetalle.parameters[0].Value := qentrada.FieldByName('RecID').AsString;
                       qrEntradaPacienteDetalle.Open;
                       qSucursal := DM.Find_Ldr('SELECT SucursalID FROM PTSucursal (nolock) WHERE Sucursal = :suc', InterfaseAS400.qrPagosAs400IN14SU.AsString);

                       If (InterfaseAS400.qrPagosAs400IN14EF.AsFloat > 1) then
                         qpagoEfec := DM.Find_Ldr('SELECT FormadePagoID, Orden, Moneda FROM PTFormaDePago (nolock) WHERE FormaDePagoID = :pay', 'EFE');

                       If (InterfaseAS400.qrPagosAs400IN14TA.AsFloat > 1) then
                         qpagoCard := DM.Find_Ldr('SELECT FormadePagoID, Orden, Moneda FROM PTFormaDePago (nolock) WHERE FormaDePagoID = :pay', 'CK');

        ////////////////////////////////////////////////////////////////////////////////

        //               cobroid := IntToStr(DM.Get_Secuencia('Secuencia'));
                       cobroid := DM.Get_Secuencia_Big('COBRO', qSucursal.FieldByName('SUCURSALID').AsString);

                       _fecha := Copy(InterfaseAS400.qrPagosAs400IN14FE.AsString, 1, 2) + '/' +
                                 Copy(InterfaseAS400.qrPagosAs400IN14FE.AsString, 3, 2) + '/' +
                                 Copy(InterfaseAS400.qrPagosAs400IN14FE.AsString, 5, 4) + '/';

                       qinsert.Close;
                       qinsert.SQL.Text := ' INSERT INTO PTCobro (CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid,TotalFactura,'+
                                           ' TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc,EntradaId,SinPrFilter,RecId) '+
                                           ' VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16)';
                       qinsert.Parameters[0].Value := cobroid;
                       qinsert.Parameters[1].Value := qSucursal.FieldByName('SUCURSALID').AsString;
                       qinsert.Parameters[2].Value := _fecha; //DM.Buscar_Fecha_Actual;
                       qinsert.Parameters[3].Value := InterfaseAS400.qrPagosAs400IN14HO.AsString;
                       qinsert.Parameters[4].Value := qrEntradaPacientePacienteID.Value;
                       qinsert.Parameters[5].Value := InterfaseAS400.qrPagosAs400IN14ID.AsString;
                       qinsert.Parameters[6].Value := qrEntradaPacienteRECID.Value;
                       qinsert.Parameters[7].Value := DM.Redondeo(qrEntradaPacienteNeto.Value);
                       qinsert.Parameters[8].Value := DM.Redondeo(qrEntradaPacienteTotalPagado.Value);
                       qinsert.Parameters[9].Value := DM.Redondeo(qrEntradaPacienteTotalPendiente.Value);
                       qinsert.Parameters[10].Value := qrEntradaPacienteClienteID.Value;
                       qinsert.Parameters[11].Value := 0;
                       qinsert.Parameters[12].Value := qrEntradaPacienteMonedaID.Value;
                       qinsert.Parameters[13].Value := 'RI';
                       qinsert.Parameters[14].Value := qrEntradaPacienteEntradaId.Value;
                       qinsert.Parameters[15].Value := qrEntradaPacienteSINPRFILTER.Value;
                       qinsert.Parameters[16].Value := StrToInt(DM.Get_Secuencia_Big('SEDOC', qSucursal.FieldByName('SUCURSALID').AsString));
                       qinsert.ExecSQL;

                       If (InterfaseAS400.qrPagosAs400IN14TA.AsFloat > 1) then
                         Begin
                           monto := DM.Redondeo(InterfaseAS400.qrPagosAs400IN14TA.AsFloat);
                           qinsert.Close;
                           qinsert.SQL.Clear;
                           qinsert.SQL.Text := ' INSERT INTO PTCobroDetalle (CobroID, FormaDePagoID, Monto, Orden, '+
                                               ' RefRecid, MonedaID, MontoMST, SinPrFilter, RecId) '+
                                               ' VALUES (:0, :1, :2, :3, :4, :5, :6, :7, :8)';

                           qinsert.Parameters[0].Value := cobroid;
                           qinsert.Parameters[1].Value := qpagoEfec.FieldByName('FormaDePagoId').AsString;
                           qinsert.Parameters[2].Value := monto;
                           qinsert.Parameters[3].Value := qpagoEfec.FieldByName('Orden').AsString;
                           qinsert.Parameters[4].Value := qrEntradaPacienteRECID.Value;
                           qinsert.Parameters[5].Value := qpagoEfec.FieldByName('Moneda').AsString; //qrEntradaPacienteMonedaID.Value;
                           qinsert.Parameters[6].Value := DM.ValorMoneda(monto, qrEntradaPacienteMonedaID.Value,DM.qrParametroMonedaID.Value, DM.SystemDate);
                           qinsert.Parameters[7].Value := qrEntradaPacienteSINPRFILTER.Value;
                           qinsert.Parameters[8].Value := StrToInt(DM.Get_Secuencia_Big('SEDOC', qSucursal.FieldByName('SUCURSALID').AsString));

                           qinsert.ExecSQL;
                         End;

                       If (InterfaseAS400.qrPagosAs400IN14EF.AsFloat > 1) then
                         Begin
                           monto := DM.Redondeo(InterfaseAS400.qrPagosAs400IN14EF.AsFloat);
                           qinsert.Close;
                           qinsert.SQL.Clear;
                           qinsert.SQL.Text := ' INSERT INTO PTCobroDetalle (CobroID, FormaDePagoID, Monto, Orden, '+
                                               ' RefRecid, MonedaID, MontoMST, SinPrFilter, RecId) '+
                                               ' VALUES (:0, :1, :2, :3, :4, :5, :6, :7, :8)';
                           qinsert.Parameters[0].Value := cobroid;
                           qinsert.Parameters[1].Value := qpagoEfec.FieldByName('FormaDePagoId').AsString;
                           qinsert.Parameters[2].Value := monto;
                           qinsert.Parameters[3].Value := qpagoEfec.FieldByName('Orden').AsString;
                           qinsert.Parameters[4].Value := qrEntradaPacienteRECID.Value;
                           qinsert.Parameters[5].Value := qpagoEfec.FieldByName('Moneda').AsString; //qrEntradaPacienteMonedaID.Value;
                           qinsert.Parameters[6].Value := DM.ValorMoneda(monto, qrEntradaPacienteMonedaID.Value,DM.qrParametroMonedaID.Value, DM.SystemDate);
                           qinsert.Parameters[7].Value := qrEntradaPacienteSINPRFILTER.Value;
                           qinsert.Parameters[8].Value := StrToInt(DM.Get_Secuencia_Big('SEDOC', qSucursal.FieldByName('SUCURSALID').AsString));
                           qinsert.ExecSQL;
                         End;

                       qfind.Close;
                       qfind.SQL.Text := ' SELECT SUM(Monto) FROM PTCobroDetalle (nolock) WHERE CobroId = '+ #39 + cobroid + #39 +
                                         ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39;
                       qfind.Open;

                       If (qfind.Fields[0].AsFloat > 1) then
                         Begin
                           qupdate.Close;
                           qupdate.SQL.Text := ' DELETE FROM PTCobroDetalle (nolock) WHERE CobroID = :rec AND Monto < 1 ';
                           qupdate.Parameters[0].Value := cobroid;
                           qupdate.ExecSQL;

                           qupdate.Close;
                           qupdate.SQL.Text := ' UPDATE PTCobro with (rowlock) SET '+
                                               ' TotalCobrado = :tot, '+
                                               ' PendienteCobro = :pen, '+
                                               ' ReciboNo = :rec, '+
                                               ' Aplicado = :apl '+
                                               ' WHERE CobroID = :cob '+
                                               ' AND refRecId = :ref '+
                                               ' AND EntradaId = :ent';
                           qupdate.Parameters.ParamByName('tot').Value := DM.Redondeo(qfind.Fields[0].AsFloat);

                           If (DM.Redondeo(qrEntradaPacienteTotalPendiente.Value - qfind.Fields[0].AsFloat) > 1) then
                             qupdate.Parameters.ParamByName('pen').Value := DM.Redondeo(qrEntradaPacienteTotalPendiente.Value - qfind.Fields[0].AsFloat)
                           Else
                             qupdate.Parameters.ParamByName('pen').Value := 0;

                           qupdate.Parameters.ParamByName('rec').Value := GetReciboAS400('RI', qSucursal.FieldByName('SUCURSALID').AsString,
                                                                                               InterfaseAS400.qrPagosAs400IN14ID.AsInteger);
                           qupdate.Parameters.ParamByName('apl').Value := 1;
                           qupdate.Parameters.ParamByName('cob').Value := cobroid;
                           qupdate.Parameters.ParamByName('ref').Value := qrEntradaPacienteRECID.Value;
                           qupdate.Parameters.ParamByName('ent').Value := qrEntradaPacienteEntradaId.Value;
                           qupdate.ExecSQL;
                         End;

                       qfindcobro.Close;
                       qfindcobro.SQL.Text := ' SELECT * FROM PTCobro (nolock) WHERE CobroID = '+ #39 + cobroid + #39 +
                                              ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39 +
                                              ' AND EntradaId = '+ #39 + qrEntradaPacienteEntradaId.AsString + #39;
                       qfindcobro.Open;

                       if (qfindcobro.RecordCount > 0) and (qfind.Fields[0].AsFloat > 1) then
                         Begin
                           CrearTransCliente(qrEntradaPacienteCLIENTEID.Value, 'RI', qfindcobro.FieldByName('ReciboNo').value, 'FT',
                                             qrEntradaPacienteEntradaID.Value, qfindcobro.FieldByName('Fecha').Value,
                                             qfind.Fields[0].AsFloat * -1, qrEntradaPacienteMonedaId.Value,
                                             qrEntradaPacientePACIENTEID.Value, qrEntradaPacienteSINPRFILTER.Value);
                         End;

                       If (qfind.Fields[0].AsFloat > 1) then
                         Begin
                           qupdate.Close;
                           qupdate.SQL.Clear;
                           qupdate.SQL.Text := ' INSERT INTO PTCobroAplicado (CobroID, EntradaId, MontoAplicado, RecId) '+
                                               ' VALUES (:0, :1, :2, :3)';
                           qupdate.Parameters[0].Value := cobroid;
                           qupdate.Parameters[1].Value := qrEntradaPacienteEntradaID.value;
                           qupdate.Parameters[2].Value := qfind.Fields[0].AsFloat;
                           qupdate.Parameters[3].Value := StrToInt(DM.Get_Secuencia_Big('SEDOC', qSucursal.FieldByName('SUCURSALID').AsString));
                           qupdate.ExecSQL;
                         end;

                       qrEntradaPaciente.Edit;
                       qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + qfind.Fields[0].AsFloat;
                       qrEntradaPaciente.Post;

                       If (InterfaseAS400.qrPagosAs400IN14TA.AsFloat > 1) then
                         Begin
                           monto := DM.Redondeo(InterfaseAS400.qrPagosAs400IN14TA.AsFloat);
                           CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'RI', cobroid,
                                            qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                                            qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                                            qrEntradaPacienteRECID.Value, qfind.Fields[0].AsFloat, qrEntradaPacienteDATAAREAID.Value,
                                            GetSecuenciaAS400(qSucursal.FieldByName('SUCURSALID').AsString,
                                                              InterfaseAS400.qrPagosAs400IN14ID.AsInteger),
                                            qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, qSucursal.FieldByName('SUCURSALID').AsString,
                                            qpagoEfec.FieldByName('FormaDePagoId').AsString, DM.Redondeo(monto),
                                            qrEntradaPacienteSINPRFILTER.Value);
                         End;

                       If (InterfaseAS400.qrPagosAs400IN14EF.AsFloat > 1) then
                         Begin
                           monto := DM.Redondeo(InterfaseAS400.qrPagosAs400IN14EF.AsFloat);
                           CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'RI', cobroid,
                                            qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                                            qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                                            qrEntradaPacienteRECID.Value, qfind.Fields[0].AsFloat, qrEntradaPacienteDATAAREAID.Value,
                                            GetSecuenciaAS400(qSucursal.FieldByName('SUCURSALID').AsString,
                                                              InterfaseAS400.qrPagosAs400IN14ID.AsInteger),
                                            qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, qSucursal.FieldByName('SUCURSALID').AsString,
                                            qpagoEfec.FieldByName('FormaDePagoId').AsString, DM.Redondeo(monto),
                                            qrEntradaPacienteSINPRFILTER.Value);
                         End;

                      InterfaseAS400.qrPagosAs400.Edit;
                      InterfaseAS400.qrPagosAs400IN14AC.AsString := 'R';
                      InterfaseAS400.qrPagosAs400.Post;
                     End;

                    InterfaseAS400.qrPagosAs400.Next;

                  End;

                 FreeAndNil(qfind);
                 FreeAndNil(qinsert);
                 FreeAndNil(qupdate);
                 FreeAndNil(qentrada);
                 FreeAndNil(qsucursal);
                 FreeAndNil(qpagoEfec);
                 FreeAndNil(qpagoCard);
                 FreeAndNil(qfindcobro);

                 InterfaseAS400.ASConnection.Close;

                 Dm.Info('El Proceso de Transferencia de Los Cobros del AS-400 Concluyo Exitosamente.!!!');
                End;
             Except
               Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                         ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                         ' � Intentelo Nuevamente.!!!', []);
             End;
         end;
     end;
   end;
end;


function TfrmPuntoVenta.GetReciboAS400(tipodoc : string; _sucursal : String; _sucAS400: Integer) : String;
var
 qsecdoc : TADOQuery;
begin
 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+tipodoc+#39+',');
   Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400,@r_result3 as UsarIdentificador');
   Open;
   if not IsEmpty then
   begin
       If (FieldByName('UsarIdentificador').AsBoolean) then
        result := tipodoc + FormatFloat('00', _sucAS400) +
                  FormatFloat('0000000', FieldByName('Secuencia').AsFloat)
       Else
        result := FormatFloat('00', _sucAS400) +
                  FormatFloat('0000000', FieldByName('Secuencia').AsFloat);
   end;
 end;
 FreeAndNil(qsecdoc);
end;


function TfrmPuntoVenta.GetSecuenciaAS400(_sucursal : String; _sucAS400: Integer) : Integer;
Var
 _valor   : String;
 numero   : Int64;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';
 numero  := 0;

 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'SEDOC'+#39+',');
   Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT ');
   Add(' @r_result2 = @r_result2 OUTPUT ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia ');
   Open;
   if not IsEmpty then
   begin
     if FieldByName('Secuencia').AsString <> '' then
      numero := FieldByName('Secuencia').AsInteger
     else
      numero := 1;
     _valor := FormatFloat('00', _sucAS400) + FormatFloat('0000000000000', numero);
   end;
 end;
 Result := StrToInt64(_valor);
 FreeAndNil(qsecdoc);
end;


procedure TfrmPuntoVenta.RecibosdelAS4001Click(Sender: TObject);
begin
  Dm.Info('Esta Opcion NO Esta En Uso Todavia.!!!');
  //  Insertar_Pago_AS400_PuntodeVenta;
{
    Try
      conDest.BeginTrans;

      // - Fin del Proceos
      If conDest.InTransaction then
        conDest.CommitTrans;
    Except
      Raise;
      If conDest.InTransaction then
        conDest.RollbackTrans;
    End;
}
end;
Procedure TfrmPuntoVenta.Buscar_Campos_Extras(ClienteId :String;Tipo : String);
var
 qfind2 : TADOQuery;
 Sql    : String;
begin
 qfind2 := DM.NewQuery;

 With qfind2, sql do
 begin
  Close;
  Clear;
  Add('SELECT top 1 Nombre,c.Identificacion,Convert(Varchar(10),'+#39+FormatDateTime('dd/mm/yyyy',qrEntradapacienteFechaNacimiento.Value)+#39+',103) as FechaNacimiento,');
  Add('Case c.Sexo When '+#39+'0'+#39+'  Then '+#39+'F'+#39+' When '+#39+'1'+#39+'  Then '+#39+'M'+#39+' else '+#39+#39+' End As Sexo, ');
  Add(' Case When dbo.RestaFechaAno('+#39+FormatDateTime('yyyymmdd',qrEntradapacienteFechaNacimiento.Value)+#39+','+#39+FormatDateTime('yyyymmdd',DM.SystemDate)+#39+') > 0 Then Cast(dbo.RestaFechaAno('+#39+FormatDateTime('yyyymmdd',qrEntradapacienteFechaNacimiento.Value)+#39+','+#39+FormatDateTime('yyyymmdd',DM.SystemDate)+#39+') as varchar(10))+'+#39+' A�o(s)'+#39);
  Add('      When dbo.RestaFechaMes('+#39+FormatDateTime('yyyymmdd',qrEntradapacienteFechaNacimiento.Value)+#39+','+#39+FormatDateTime('yyyymmdd',DM.SystemDate)+#39+') > 0 Then Cast(dbo.RestaFechaMes('+#39+FormatDateTime('yyyymmdd',qrEntradapacienteFechaNacimiento.Value)+#39+','+#39+FormatDateTime('yyyymmdd',DM.SystemDate)+#39+') as varchar(10))+'+#39+' Mes(es)'+#39);
  Add('      When dbo.RestaFechaDia('+#39+FormatDateTime('yyyymmdd',qrEntradapacienteFechaNacimiento.Value)+#39+','+#39+FormatDateTime('yyyymmdd',DM.SystemDate)+#39+') > 0 Then Cast(dbo.RestaFechaDia('+#39+FormatDateTime('yyyymmdd',qrEntradapacienteFechaNacimiento.Value)+#39+','+#39+FormatDateTime('yyyymmdd',DM.SystemDate)+#39+') as varchar(10))+'+#39+' Dia(s)'+#39);
  Add(' else '#39+#39+' End as Edad,(Select Top 1 Telefono from PTSucursal Where SucursalId='+#39+qrEntradapacienteSucursalID.Value+#39+') as Tel_Sucursal, ');
  Add('(Select Top 1 Nombre from PTSucursal Where SucursalId='+#39+qrEntradapacienteSucursalID.Value+#39+') as Nombre_Sucursal, ');
  Add('(Select CarnetNumero from ptcliente (nolock) Where ClienteID='+#39+qrEntradaPacienteClienteID.value+#39+' And DataAreaId = '+#39+DM.CurEmpresa+#39+') As CarnetNumero, ');
  Add('IsNull(( SELECT WsArsid from ptars a (nolock) ,ptcliente c (nolock)  where a.CodProveedor=c.CarnetNumero  and c.Clienteid='+#39+qrEntradaPacienteClienteID.value+#39+'),'+#39+'0'+#39+') As WsArsID, ');
  Add('IsNull(( SELECT Descripcion from PTDiagnostico (nolock) Where cod_diag='+#39+Trim(qrEntradaPacienteCOD_DIAG.value)+#39+' and Cod_Ars in ( SELECT WsArsid from ptars a (nolock) ,ptcliente c (nolock)  where a.CodProveedor=c.CarnetNumero  and c.Clienteid='+#39+qrEntradaPacienteClienteID.value+#39+')'+'),'+#39+''+#39+') As Desc_Diag ');
  Add('FROM PTCliente c (nolock) ');
  Add('WHERE ClienteId = '+#39+ClienteId+#39);
  Add('AND DataAreaId = '+#39+DM.CurEmpresa+#39);
  Open;
  if Not IsEmpty then
  begin
         if Tipo='FS' then
         Begin
           dm.CodArs := fieldbyname('WsArsID').Value;
           ppLabel226.Caption := fieldbyname('Desc_Diag').Value;
           ppLabel140.caption := fieldbyname('Identificacion').value;
           ppLabel133.caption := Copy(cxDBImageComboBox2.Text,1,1);
           ppLabel171.caption := fieldbyname('Tel_Sucursal').value;
           ppLabel220.caption := fieldbyname('CarnetNumero').value;
           ppLabel45.Caption  := fieldbyname('Nombre_Sucursal').value;
           ppBarCode2.Data    := Copy(qrEntradaPacienteMuestrano.Value,3,9);
           if  Copy(fieldbyname('Nombre').value,1,8)<>'PACIENTE' then
           begin
               ppLabel170.caption := fieldbyname('Edad').value;
               ppLabel141.Caption := qrEntradaPacienteFECHANACIMIENTO.Text;
           end
           else
           begin
               if (Trim(qrEntradaPacienteFECHANACIMIENTO.Text) = '') or (qrEntradaPacienteFECHANACIMIENTO.Text = '01/01/1900') then
               begin
                  ppLabel170.caption := qrEntradaPacienteEDADPACIENTE.Text;
                  ppLabel141.Caption := '';
               end
               else
               begin
                  ppLabel141.Caption := qrEntradaPacienteFECHANACIMIENTO.Text;
                  ppLabel170.caption := fieldbyname('Edad').value;
               end;
           end;
         end
         else if Tipo='FPS' then
         Begin
           ppLabel148.caption := fieldbyname('Identificacion').value;
           ppLabel145.caption := Copy(cxDBImageComboBox2.Text,1,1);
           ppLabel173.caption := fieldbyname('Tel_Sucursal').value;
           ppLabel242.Caption := fieldbyname('Nombre_Sucursal').value;
           ppBarCode3.Data    := Copy(qrEntradaPacienteMuestrano.Value,3,9);
           if  Copy(fieldbyname('Nombre').value,1,8)<>'PACIENTE' then
           begin
               ppLabel172.caption := fieldbyname('Edad').value;
               ppLabel143.Caption := qrEntradaPacienteFECHANACIMIENTO.Text;
           end
           else
           begin
               if (Trim(qrEntradaPacienteFECHANACIMIENTO.Text) = '') or (qrEntradaPacienteFECHANACIMIENTO.Text = '01/01/1900') then
               begin
                  ppLabel172.caption :=qrEntradaPacienteEDADPACIENTE.Text;
                  ppLabel143.Caption :=  ''
               end
               else
               begin
                  ppLabel172.caption := fieldbyname('Edad').value;
                  ppLabel143.Caption := qrEntradaPacienteFECHANACIMIENTO.Text;
               end;
           end;
         end
         else if Tipo='FSS' then
         Begin
           ppLabel159.caption := fieldbyname('Identificacion').value;
           ppLabel155.caption := Copy(cxDBImageComboBox2.Text,1,1);
           ppLabel175.caption := fieldbyname('Tel_Sucursal').value;
           ppLabel237.Caption := fieldbyname('Nombre_Sucursal').value;
//           pp2DBarCode1.Text  := qrEntradaPacienteMuestrano.Value;
           ppBarCode1.Data    := Copy(qrEntradaPacienteMuestrano.Value,3,9);
           if  Copy(fieldbyname('Nombre').value,1,8)<>'PACIENTE' then
           begin
               ppLabel174.caption := fieldbyname('Edad').value;
               ppLabel153.Caption := qrEntradaPacienteFECHANACIMIENTO.Text;
           end
           else
           begin
               if (Trim(qrEntradaPacienteFECHANACIMIENTO.Text) = '') or (qrEntradaPacienteFECHANACIMIENTO.Text = '01/01/1900') then
               begin
                  ppLabel174.caption :=qrEntradaPacienteEDADPACIENTE.Text;
                  ppLabel153.Caption := ''
               end
               else
               begin
                  ppLabel174.caption := fieldbyname('Edad').value;
                  ppLabel153.Caption := qrEntradaPacienteFECHANACIMIENTO.Text
               end;
           end;
         end
         else if Tipo='FE' then
         Begin
           ppLabel169.caption := fieldbyname('Identificacion').value;
           ppLabel165.caption := Copy(cxDBImageComboBox2.Text,1,1);
           ppLabel177.caption := fieldbyname('Tel_Sucursal').value;
           ppLabel241.Caption := fieldbyname('Nombre_Sucursal').value;
           ppBarCode4.Data    := Copy(qrEntradaPacienteMuestrano.Value,3,9);
           if  Copy(fieldbyname('Nombre').value,1,8)<>'PACIENTE' then
           begin
               ppLabel176.caption := fieldbyname('Edad').value;
               ppLabel163.Caption := qrEntradaPacienteFECHANACIMIENTO.Text;
           end
           else
           begin
               if (Trim(qrEntradaPacienteFECHANACIMIENTO.Text) = '') or (qrEntradaPacienteFECHANACIMIENTO.Text = '01/01/1900') then
               begin
                  ppLabel176.caption :=qrEntradaPacienteEDADPACIENTE.Text;
                  ppLabel163.Caption := ''
               end
               else
               begin
                  ppLabel176.caption := fieldbyname('Edad').value;
                  ppLabel163.Caption := qrEntradaPacienteFECHANACIMIENTO.Text
               end;
           end;
         end
         else if Tipo='FNCF' then
         Begin
           ppLabel193.caption := fieldbyname('Identificacion').value;
           ppLabel191.caption := Copy(cxDBImageComboBox2.Text,1,1);
           ppLabel197.caption := fieldbyname('Tel_Sucursal').value;
           ppLabel239.Caption := fieldbyname('Nombre_Sucursal').value;
           ppBarCode5.Data    := Copy(qrEntradaPacienteMuestrano.Value,3,9);
           if  Copy(fieldbyname('Nombre').value,1,8)<>'PACIENTE' then
           begin
               ppLabel200.caption := fieldbyname('Edad').value;
               ppLabel199.Caption := qrEntradaPacienteFECHANACIMIENTO.Text;
           end
           else
           begin
               if (Trim(qrEntradaPacienteFECHANACIMIENTO.Text) = '') or (qrEntradaPacienteFECHANACIMIENTO.Text = '01/01/1900') then
               begin
                  ppLabel200.caption :=qrEntradaPacienteEDADPACIENTE.Text;
                  ppLabel199.Caption := ''
               end
               else
               begin
                  ppLabel200.caption := fieldbyname('Edad').value;
                  ppLabel199.Caption := qrEntradaPacienteFECHANACIMIENTO.Text
               end;
           end;
         end
         else if Tipo='FC' then
         Begin
           ppLabel266.caption := fieldbyname('Identificacion').value;
           ppLabel274.caption := Copy(cxDBImageComboBox2.Text,1,1);
           ppLabel293.caption := fieldbyname('Tel_Sucursal').value;
           ppLabel272.Caption := fieldbyname('Nombre_Sucursal').value;
//           pp2DBarCode1.Text  := qrEntradaPacienteMuestrano.Value;
           ppBarCode1.Data    := Copy(qrEntradaPacienteMuestrano.Value,3,9);
           if  Copy(fieldbyname('Nombre').value,1,8)<>'PACIENTE' then
           begin
               ppLabel275.caption := fieldbyname('Edad').value;
               ppLabel268.Caption := qrEntradaPacienteFECHANACIMIENTO.Text;
           end
           else
           begin
               if (Trim(qrEntradaPacienteFECHANACIMIENTO.Text) = '') or (qrEntradaPacienteFECHANACIMIENTO.Text = '01/01/1900') then
               begin
                  ppLabel275.caption :=qrEntradaPacienteEDADPACIENTE.Text;
                  ppLabel268.Caption := ''
               end
               else
               begin
                  ppLabel275.caption := fieldbyname('Edad').value;
                  ppLabel268.Caption := qrEntradaPacienteFECHANACIMIENTO.Text
               end;
           end;
         end;
   end;
 End;
 FreeAndNil(qfind2);
end;
procedure TfrmPuntoVenta.No_Procesar_AS400;
Var
  qact : TADOQuery;
begin
 If (qrEntradaPacienteDetalle.State In [dsEdit, dsInsert,dsBrowse]) And
    (qrEntradaPacienteEntradaID.Value <> '') And
    (qrEntradaPacienteDetalle.RecordCount > 0) Then
   Begin
     qact := DM.NewQuery;
     qact.Close;
     qact.SQL.Clear;
     qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle with (rowlock) SET '+
                      ' Estatus = '+ #39 + 'N' + #39 +
                      ' ,precio = '+ '0'+',adicional = '+'0'+
                      ' WHERE RefRecid = :rec '+
                      ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                      ' AND Secuencia = :sec '+
                      ' AND pruebaId = :pru ';
     qact.Parameters[0].Value := qrEntradaPacienteDetalleRefRecid.Value;
     qact.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.Value;
     qact.Parameters[2].Value := qrEntradaPacienteDetallePruebaId.Value;
     qact.ExecSQL;
     FreeAndNil(qact);
     qrEntradaPaciente.Post;
     If dm.qrParametroServidor_AS400.value <> EmptyStr then
     begin
          if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
          begin
             Try
               InterfaseAS400.ASConnection.Close;
               InterfaseAS400.ASConnection.Open;

               //Insertando las Pruebas en el AS-400.
               InterfaseAS400.MandarPruebaAS400(qrEntradaPacienteMuestraNo.Value, ifThen(Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value) <> EmptyStr,Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value),qrEntradaPacientePacienteID.Value));
               InterfaseAS400.ASConnection.Close;
             except
               Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                         ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                         ' � Intentelo Nuevamente.!!!', []);
             end;
          end;
     end;
   end;
end;
procedure TfrmPuntoVenta.No_Procesar_AS400_Orden;
Var
  qact : TADOQuery;
begin
   if DM.Mensaje('Desea Cancelar Esta Orden En AS-400.?',mb_yesno) = id_yes then
   begin
     If (qrEntradaPaciente.State In [dsEdit, dsInsert,dsBrowse]) And
        (qrEntradaPacienteEntradaID.Value <> '') And
        (qrEntradaPaciente.RecordCount > 0) Then
       Begin
         qact := DM.NewQuery;
         qact.Close;
         qact.SQL.Clear;
         qact.SQL.Text := ' UPDATE PTEntradaPaciente with (rowlock) SET '+
                          ' Estatus = '+ '1' +
                          ' WHERE DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                          ' AND Recid = :recid ';
         qact.Parameters[0].Value := qrEntradaPacienteRecid.Value;
         qact.ExecSQL;
         FreeAndNil(qact);
         If dm.qrParametroServidor_AS400.value <> EmptyStr then
         begin
              if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
              begin
                 Try
                   InterfaseAS400.ASConnection.Close;
                   InterfaseAS400.ASConnection.Open;

                   //Insertando las Pruebas en el AS-400.
                   InterfaseAS400.MandarPruebaAS400(qrEntradaPacienteMuestraNo.Value, ifThen(Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value) <> EmptyStr,Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value),qrEntradaPacientePacienteID.Value));
                   InterfaseAS400.ASConnection.Close;
                 Except
                   Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                             ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                             ' � Intentelo Nuevamente.!!!', []);
                 End;
              end;
         end;
     end;
   end;
end;


procedure TfrmPuntoVenta.ImpresionRwPrint;
var
 PP, LabelPOs : Integer;
 Entrega, LabelFecha: String;
begin
  PP := 40;
//  Buscar_Recibos(Numero_Recibo);
  with RAWPrinter1, qrEntradaPaciente  do
  begin
      PrinterName := Ruta_Factura;
      BeginDoc;
  //             1234567890123456789012345678901234567890
        WriteLn(#10);
        WriteLn(#10);
        WriteLn(#10);
        WriteLn(#10);
        WriteLn(#10);
        WriteLn(Justifica(#27+#33+#0+'ISO-9001:2000',PP,' ',tjLeft));
        WriteLn(Justifica(#27+#33+#1+'Sucursal : '+dm.qrSucursal.FieldByName('Nombre').value,PP,' ',tjLeft));
        WriteLn(Estremos(#27+#33+#1+'RNC : 1-01-12854-2','Tel.:'+dm.qrSucursal.FieldByName('Telefono').value,PP));
        WriteLn(Justifica(#27+#33+#1+'Paciente    :  '+FieldByName('NombrePaciente').value+#20,PP,' ',tjLeft));
        WriteLn('') ;
{
        WriteLn(#14+Justifica('RECIBO DE INGRESOS',20,' ',tjCenter)+#20);
        WriteLn(Justifica('No.:'+ #14+FormatFloat('##000000', fieldbyname('Numero_Recibo').AsInteger)+#20,36,' ',tjRight));
        WriteLn(Estremos('Serie '+#14+UpperCase(pubNombreCaja)+#20,
                        FormatDatetime('dd/mm/yyyy hh:mm AM/PM',fieldbyname('Fecha').AsDatetime),PP));
//        WriteLn(Justifica(FormatDateTime('hh:mm AM/PM',fieldbyname('Fecha').AsDateTime),PP,' ',tjRight));
        WriteLn(Justifica('Solicitante: '+Copy(Trim(fieldbyname('Nombre').AsString),1,25),PP,' ',tjLeft));
        WriteLn(RellenaLinea(PP,'-'));
        WriteLn(' Cant.   Tipo de Actas             Valor');
        WriteLn(RellenaLinea(PP,'-'));
        rxDetRecibos.First;
        while not rxDetRecibos.eof do
        begin
        WriteLn(Justifica(FormatFloat('###0', strtoint(rxDetRecibosCantidad.AsString)),4,' ',tjRight)+RellenaLinea(4,' ')+
                Justifica(Trim(rxDetRecibosValorDesc.AsString),22,' ',tjLeft)+
                Justifica(FormatFloat('##,##0.00', rxDetRecibosValor.AsFloat),10,' ',tjRight));

           rxDetRecibos.Next;
        end;
        WriteLn(RellenaLinea(PP,'-'));
        WriteLn(RellenaLinea(13,' ')+Justifica('TOTAL        RD$ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('Total').Asfloat),10,' ',tjRight));
        WriteLn(RellenaLinea(13,' ')+Justifica('Monto Pagado RD$ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('Monto_Pagado').AsFloat),10,' ',tjRight));
        WriteLn(RellenaLinea(13,' ')+Justifica('Devuelta     RD$ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('Monto_Pagado').AsFloat-fieldbyname('Total').Asfloat),10,' ',tjRight));
        WriteLn('') ;
        WriteLn(Justifica(''+Copy(Trim(pubNombreUsuario),1,25),PP,' ',tjCenter));
        WriteLn(Justifica(RellenaLinea(30,'_'),PP,' ',tjCenter));
        WriteLn(Justifica('Cajero',PP,' ',tjCenter));
        WriteLn('') ;
        WriteLn( Justifica('Nota: Para retirar los documentos favor ',PP,' ',tjLeft));
        WriteLn( Justifica('      presentar este recibo.            ',PP,' ',tjLeft));
        WriteLn(#10);
        WriteLn(#10);
        WriteLn(#10);
}
      EndDoc;

  end;
end;


Function TfrmPuntoVenta.Estremos(TextE1,TextE2 : String ; LengE :SmallInt):String ;
var  I,LenNum : Integer;
begin
  I:= 0;
  LenNum  :=  TRUNC(LengE - Length(TextE1+TextE2))-1;
  While Length(Result) < LengE  do
  Begin
    INC(I);
    Result :=  TextE1 + RellenaLinea(LenNum + I,' ') + TextE2;
  end;
end;
Function TfrmPuntoVenta.Verifica_Comentario_Coberturas : integer;
Var
 qfind : TADOQuery;
 strsql : String;
begin
 qfind := DM.NewQuery;
 dm.qrPruebas.Open;
 dm.qrPruebas.First;
 qrEntradaPacienteDetalle.First;
 While Not qrEntradaPacienteDetalle.Eof Do
 Begin
    qfind := DM.NewQuery;
    qfind.Close;
    dm.qrPruebas.Locate('PruebaId', qrEntradaPacienteDetallePruebaId.Value, []);
    strsql := 'Select PruebaID From ptprueba (nolock) '+
                      ' Where Pruebaid='+#39+qrEntradaPacienteDetallePruebaId.Value+#39;
    if dm.qrPruebasCOMENTARIO_REQ.Value = 1 then
    begin
        strsql := strsql + ' And Comentario_req='+'1';
    end;
    qfind.SQL.Text := strsql;
    if (dm.qrPruebasCOMENTARIO_REQ.Value > 0) then
    begin
        qfind.Open;
        If (qfind.RecordCount > 0) then
        begin
            if Trim(qrEntradaPacienteDetalleComentario.Value) = EmptyStr then
            begin
               Result := 1;
               exit;
            end;
        end;
    end;
    qrEntradaPacienteDetalle.Next;
  end;
  Result := 0;
  qrEntradaPacienteDetalle.First;
  FreeAndNil(qfind);
end;
Function TfrmPuntoVenta.Verifica_Orden_Pruebas_Paternidad : integer;
Var
 qfind : TADOQuery;
 strsql,strPruebaAnt : String;
 SecAnt : Integer;
 SecIni : Integer;
begin
 qfind := DM.NewQuery;
 strPruebaAnt := '';
 qfind.Close;
 strsql := 'Select Top 1 Cod_Sec_Prueba From ptprueba (nolock) '+
                  ' Where Cod_Sec_Prueba > '+'1 And Pruebaid='+#39+qrEntradaPacienteDetallePruebaId.Value+#39;
 strsql := strsql + ' Order by Cod_Sec_Prueba ';
 qfind.SQL.Text := strsql;
 qfind.Open;
 If qfind.Recordcount > 0 then
 begin
    SecIni := qfind.FieldByName('Cod_Sec_Prueba').Value;
 end;
   qrEntradaPacienteDetalle.First;
   While Not qrEntradaPacienteDetalle.Eof Do
   Begin
        dm.qrPruebas.Locate('PruebaId', qrEntradaPacienteDetallePruebaId.Value, []);
        if dm.qrPruebas.FieldByName('Cod_Sec_Prueba').Value > 0 then
        begin
          if (((dm.qrPruebas.FieldByName('Cod_Sec_Prueba').Value - SecAnt)<>1) and (SecAnt <> 0))
              or ((SecAnt = 0 ) and (dm.qrPruebas.FieldByName('Cod_Sec_Prueba').Value <> SecIni))   then
          begin
             Result := 1;
             exit;
          end;
          SecAnt := dm.qrPruebas.FieldByName('Cod_Sec_Prueba').Value;
        end;
        qrEntradaPacienteDetalle.Next;
  end;
  Result := 0;
  qrEntradaPacienteDetalle.First;
  FreeAndNil(qfind);
end;
Function TfrmPuntoVenta.Verifica_Autorizacion : Boolean;
Var
 qAuto  : TAdoQuery;
begin
  qAuto := DM.NewQuery;

  qAuto.Close;
  qAuto.SQL.Text := ' SELECT ClienteID FROM PTCliente (nolock) '+
                     ' Where Grupocliente = '+#39+qrEntradaPacienteOrigen.Value+#39+
                     ' And ClienteId='+#39+qrEntradaPacienteClienteID.Value+#39+
                     ' AND CarnetNumero <> ' + #39 + '' + #39+
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qAuto.Open;

  if (qAuto.RecordCount > 0) Then
    result := True
  else
    result := False;

  FreeAndNil(qAuto);
end;
Function TfrmPuntoVenta.Retorna_Paciente_Clave_Internet(ClienteID : String) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' Select top 1 i.clienteid from ptusuariosinternet i (nolock) inner join ptcliente c (nolock) on i.clienteid=c.clienteid '+
                     ' Where i.clienteid='+#39+ClienteID+#39+
                     ' AND i.Tipo = ' + #39 + 'P' + #39 +
                     ' AND i.DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('ClienteId').Value
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;
Function TfrmPuntoVenta.BuscaNumeroOrden(CobroID : String) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' Select isnull(Max(Orden)+1,0) as Orden from ptCobroDetalle (nolock) '+
                     ' Where Cobroid ='+#39+CobroID+#39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('Orden').Value
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;
Function TfrmPuntoVenta.Inserta_Detalle_Int : Boolean;
Var
 qDetalle   : TAdoQuery;
 CPagoTotal : Currency;
begin
  Result  := False;
  CPagoTotal :=0;
  mdPago.First;
  while not mdPago.Eof do
  begin
      if mdPagoPagado.Value > 0 then
        CPagoTotal := CPagoTotal + mdPagoPagado.Value
      else
        mdPago.Delete;
      mdPago.Next;
  end;
  qDetalle := DM.NewQuery;
  mdPago.First;
  With qDetalle,sql do
  begin
       Close;
       Clear;
       Add('  Delete from PTCobroDetalleInt Where CobroID='+#39+cobroid+#39);
       ExecSQL;
  end;
  While not mdPago.Eof do
  begin
       if mdPagoPagado.Value > 0 then
       begin
           With qDetalle,sql do
           begin
               Close;
               Clear;
               Add('  INSERT INTO PTCobroDetalleInt (CobroID, FormaDePagoID, Monto, Orden, '+
                           ' RefRecid,MonedaID,MontoMST,ValorTotalMST,SinPrFilter,RecId,BancoID,Numero_Referencia,Fecha_Vencimiento,Numero_Aprobacion) '+
                           ' VALUES ('+#39+cobroid+#39+','+#39+mdPagoFormaPagoID.Value+#39+','+
                              FloatToStr(mdPagoPagado.Value)+','+#39+IntToStr(mdPagoOrden.Value)+#39+','+
                              IntToStr(mdPagorefrecid.Value)+','+#39+mdPagoMoneda.Value+#39+','+
                              FloatToStr(DM.ValorMoneda(mdPagoPagado.Value,qrEntradaPacienteMonedaID.Value,DM.qrParametroMonedaID.Value, DM.SystemDate))+','+
                              FloatToStr(DM.ValorMoneda(CPagoTotal,qrEntradaPacienteMonedaID.Value,DM.qrParametroMonedaID.Value, DM.SystemDate))+','+
                              IntToStr(qrEntradaPacienteSINPRFILTER.Value)+','+IntToStr(GetSecuenciaId)+','+#39+mdPagoBancoID.Value+#39+','+#39+mdPagoNumero_Referencia.Value+#39+','+#39+FormatDateTime('yyyymmdd', mdPagoFecha_Vencimiento.AsDateTime)+#39+','+#39+mdPagoNumero_Aprobacion.Value+#39+')');
               ExecSQL;
           end;
       end;
       mdPago.Next;
  end;
  mdPago.First;
  FreeAndNil(qDetalle);
  Result := True;
end;
procedure TfrmPuntoVenta.HTTPRIO1AfterExecute(const MethodName: String;
  SOAPResponse: TStream);
var
  XMLDoc: IXMLDocument;
begin
  SOAPResponse.Position := 0;
  Memo1.Lines.LoadFromStream(SOAPResponse);

  ClientDataset1.Active := FALSE;
  SOAPResponse.Position := 0;
  XMLDoc := NewXMLDocument;
  XMLDoc.Encoding := SUTF8;
  SOAPResponse.Position := 0;
  XMLDoc.LoadFromStream(SOAPResponse);

  XMLTransformProvider1.TransformRead.SourceXmlDocument := XMLDoc.GetDOMDocument;
  ClientDataset1.Active := TRUE;
end;
{
procedure TfrmPuntoVenta.VerificaPacienteWS;
Var
     CAfiliado                    : cRefAfiliado;
     CAfiliadoSen                 : crefsAfiliado;
     CAfiliadoYun                 : Afiliado;
     email                        : WideString;
     Usuario                      : WideString;
     Password                     : WideString;
     Monto_Limite                 : Double;
     Identificacion               : WideString;
     codArs                       : Integer;
     codAfiliado                  : Int64;
     codProveedor                 : Int64;
     Test                         : WideString;
     qAutoriza                    : TAdoQuery;
     WS                           : TReferenciaWebServiceSoap;
     WSSen                        : TSenasaRefWSSoap;
     WSYun                        : WsServicioAutorizacionSoap;
     strContrato                  : String;
     dFamilia                     : Double;
     pContrato                    : integer;
     vURLWSDL                     : String;
     vDocNumCon                   : WideString;
     vStrBenVal                   : WideString;
     iPos,iCount,I,vIdx           : Integer;
     strNumAfiliado               : WideString;
     strNombres,strApellidos      : WideString;
     strParent,strFechaNac        : WideString;
     iEdad                        : integer;
     NumCancelacion               : Smallint;
     CodProvUniv                  : String;
     ds                           : TDataset;

begin
  inherited;
  if (Trim(qrEntradapacienteNombrePaciente.Value) = EmptyStr) Then
  begin
     Raise exception.CreateFmt('Nombre del Paciente No puede estar en blanco.  Verifique.', []);
     if cxdbPaciente.enabled then  cxdbPaciente.SetFocus;
  end
  else if (Trim(qrEntradapacienteFechaNacimiento.Text) = EmptyStr) Then
  begin
     Raise exception.CreateFmt('Fecha de Nacimiento No puede estar en blanco.  Verifique.', []);
     if cxdbDateEdit5.enabled then  cxdbDateEdit5.SetFocus;
  end
  else if (Trim(qrEntradaPacientePOLIZAID.Value) = EmptyStr) Then
  begin
     Raise exception.CreateFmt('N�mero de Afiliado No puede estar en blanco.  Verifique.', []);
     if cxDBTextEdit16.enabled then  cxDBTextEdit16.SetFocus;
  end
  else if (Trim(qrEntradaPacienteCOD_DIAG.Value) = EmptyStr) Then
  begin
     Raise exception.CreateFmt('C�digo de diagn�stico No puede estar en blanco.  Verifique.', []);
     if EDDIAGN.enabled then  EDDIAGN.SetFocus;
  end
  else If Trim(qrEntradaPacienteNOMBREDOCTOR.Text) = EmptyStr Then
  begin
     Raise exception.CreateFmt('Debe Seleccionar el Doctor.  Verifique.', []);
     if EdNombreDoctor.enabled then  EdNombreDoctor.SetFocus;
  end
  else
  If (qrEntradaPacienteCoberturaConfirmada.Value = 0) And
          (qrEntradaPacienteOrigen.Value <> DM.qrParametroGrupoSeg.Value) then
  Begin
     Raise exception.CreateFmt('Tipo de Cliente NO permite Autorizacion.  Verifique', []);
  end
  else

  If (qrEntradaPacienteCoberturaConfirmada.Value = 0) And
       (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
  Begin
      qrEntradaPaciente.Edit;
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteHold.Value := 0;
//      qrEntradaPacienteUserId.Value := DM.CurUser;
      qrEntradaPacienteFLEBOTOMISTAID.Value := DM.CurUser;
      qrEntradaPacienteFechaRegistro.Value := DM.SystemDate;
      qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;
      ActTotales;
//      vURLWSDL     := 'http://10.0.0.30/wsreferencia/referenciawebservice.asmx';
  Try
      qAutoriza := DM.NewQuery;
      qAutoriza.Close;
      qAutoriza.SQL.Text := ' SELECT distinct CodProveedor,dbo.rellena(Right(a.CodProveedor,5),5) as CodProvUniv,a.WsArsid,p.Url,p.Password,p.Usuario,a.SucEx,a.proveedor,a.Monto_Limite '+
                            ' from ptars a (nolock) inner join ptcliente c (nolock) on c.CarnetNumero = a.CodProveedor inner join ptProveedor p (nolock) on a.proveedor=p.proveedorid '+
                            ' where clienteid='+#39+qrEntradaPacienteClienteID.Asstring+#39;
      qAutoriza.Open;
      if (qAutoriza.RecordCount > 0) then
      begin
        Dm.vURLWSDL       := qAutoriza.FieldByName('Url').Value;
        Dm.CodProveedor   := qAutoriza.FieldByName('CodProveedor').Value;
        Dm.CodArs         := qAutoriza.FieldByName('Proveedor').Value;
        Usuario           := qAutoriza.FieldByName('Usuario').Value;
        Password          := qAutoriza.FieldByName('Password').Value;
        CodProvUniv       := qAutoriza.FieldByName('CodProvUniv').Value;
        Monto_Limite      := qAutoriza.FieldByName('Monto_Limite').Value;
      end
      else
      begin
          Raise exception.CreateFmt('Tipo de Cliente NO permite Autorizacion.  Verifique', []);
          EtMensajeDlg('Ars No est� configurada para autorizaci�n web.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          exit;
      end;
      If (qAutoriza.FieldByName('WsArsid').AsString = GrupoArsUniversal) And
         (qrEntradaPacienteBruto.Value > Monto_Limite)Then
      Begin
          EtMensajeDlg('Monto Facturado sobrepasa l�mite (RD$'+CurrToStr(Monto_Limite)+') via Web-Services para Ars. Universal.  Consulte un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          exit;
      end;
      If (qAutoriza.FieldByName('WsArsid').AsString = GrupoArsUniversal) And
         (CodProvUniv = '04214') And
         (DM.CurSucursal <> qAutoriza.FieldByName('SucEx').Value)  then
      Begin
          Dm.CodProveedor :=  249;
          CodProvUniv     := '00249';
      end;
      spMensaje.Visible := True;
      Screen.Cursor := crHourGlass;
      Application.ProcessMessages;
      dm.GrupoArs := qAutoriza.FieldByName('WsArsid').AsString;
      if qAutoriza.FieldByName('WsArsid').AsString = GrupoArsSDS then
      Begin
          CAfiliado     := cRefAfiliado.Create;
          codAfiliado   := StrToInt64Def(cxDBTextEdit16.Text, StrToInt64(qrEntradaPacientePolizaID.Value));
          CAfiliado     := GetTReferenciaWebServiceSoap(false,Dm.vURLWSDL).ValidaAfiliado(Dm.codArs,codAfiliado,Dm.codProveedor);
          if CAfiliado.Mensaje <> EmptyStr then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(CAfiliado.Mensaje, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (CAfiliado.Nombre = 'Afiliado no existe') or (CAfiliado.Nombre ='Afiliado excluido') or
             (CAfiliado.Nombre = 'P�liza suspendida')  then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(CAfiliado.Nombre+'.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          case Dm.codArs of
             1  :Begin
                    if Copy(CAfiliado.Nombre,1,3) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                    if ((CAfiliado.TipoPlan='B') and (Trim(qrEntradapacienteClienteID.Value)<>'C00393')) Or
                       ((CAfiliado.TipoPlan='C') and (Trim(qrEntradapacienteClienteID.Value)<>'C00054')) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                 End;
             2  :Begin
                    if Copy(CAfiliado.PrimerNombre,1,3) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                    if ((CAfiliado.TipoPlan='B') and (Trim(qrEntradapacienteClienteID.Value)<>'C00392')) Or
                       ((CAfiliado.TipoPlan='C') and Not((Trim(qrEntradapacienteClienteID.Value)='C00075') Or (Trim(qrEntradapacienteClienteID.Value)='C01673'))) then
                    Begin
                        Screen.Cursor     := crDefault;
                        spMensaje.Visible := False;
                        EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        exit;
                    end;
                 End;
          end;

      end
      else
      If (qAutoriza.FieldByName('WsArsid').AsString = GrupoArsUniversal) And
         (dm.CurUserUniv <> EmptyStr) then
      Begin
          WSUniv          := GetTWebService1Soap(False,Dm.vURLWSDL);
          pContrato       := Pos('-',qrEntradaPacientePolizaID.Value);
          if pContrato > 0 then
          begin
            StrContrato := Copy(qrEntradaPacientePolizaID.Value,1,pContrato-1);
            dFamilia    := strtofloat(Copy(qrEntradaPacientePolizaID.Value,pContrato+1,5));
            vArrayOfRecdatben2ObjUser := WSUniv.Validacion_de_Contrato(Dm.CurUserUniv, ifThen(qrEntradaPacienteClienteId.Value='C00389','01','03'),StrContrato ,dfamilia,'1980-01-01T00:00:00', CodProvUniv, 1,qrEntradaPacienteDetalle.RecordCount);
          end
          else
          begin
            dfamilia := 0;
            vArrayOfRecdatben2ObjUser := WSUniv.Validacion_de_Contrato(Dm.CurUserUniv, ifThen(qrEntradaPacienteClienteId.Value='C00389','01','03'),qrEntradaPacientePolizaID.Value ,dfamilia,'1980-01-01T00:00:00', CodProvUniv, 1,qrEntradaPacienteDetalle.RecordCount);
          end;

          SetLength(vArrayOfRecdatben2ObjUser, Length(vArrayOfRecdatben2ObjUser));
          DsBeneficiarioC.Enabled := False;
          if not mdBeneficiarioC.Active then
            mdBeneficiarioC.Active := true;
          mdBeneficiarioC.EmptyTable;
          for vIdx := 0 to Length(vArrayOfRecdatben2ObjUser)-1 do
          begin
            If Trim(vArrayOfRecdatben2ObjUser[vIdx].outErr) <> EmptyStr then
            begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(vArrayOfRecdatben2ObjUser[vIdx].outErr, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
            end;
            dm.dWebID := strtofloat(inttostr(vArrayOfRecdatben2ObjUser[vIdx].outWebid));
            mdBeneficiarioC.Append;
            mdBeneficiarioCSeleccion.AsBoolean    := False;
            mdBeneficiarioCNumAfiliado.AsString   := IntToStr(vArrayOfRecdatben2ObjUser[vIdx].outNatide);
            mdBeneficiarioCNombres.AsString       := vArrayOfRecdatben2ObjUser[vIdx].outNatprinom+' '+vArrayOfRecdatben2ObjUser[vIdx].outNatsegnom;
            mdBeneficiarioCApellidos.AsString     := vArrayOfRecdatben2ObjUser[vIdx].outNatpriape+' '+vArrayOfRecdatben2ObjUser[vIdx].outNatsegape;
            mdBeneficiarioCParentesco.AsString    := vArrayOfRecdatben2ObjUser[vIdx].outPlaparnom;
            mdBeneficiarioCFechaNac.AsString      := vArrayOfRecdatben2ObjUser[vIdx].outNatfecnac.NativeToXS;
            mdBeneficiarioCEdad.Asinteger         := vArrayOfRecdatben2ObjUser[vIdx].outHijeda;
            Next;
          End;
          mdBeneficiarioC.First;
          dsBeneficiarioC.Enabled := True;
          spMensaje.Visible := False;
          spBeneficiario.Visible  := True;
      end
      else
      if qAutoriza.FieldByName('WsArsid').AsString = GrupoArsPalic then
      Begin
          XMLTransformProvider1.TransformRead.TransformationFile :='C:\Punto de Venta\Palic\Palic_pwd.xtr';
          WSPalic          := GetTWebServicePalicSoap(False,Dm.vURLWSDL);
//          WSPalic.fValidaPassword('REFERENCIA','REF5545');
          (HTTPRIO1 as TWebServicePalicSoap).fValidaPassword('REFERENCIA','REF5545');
          While not ClientDataSet1.Eof Do
          begin
            strVal_Prestador  :=ClientDataSet1.FieldByName('_x003A_B5').AsString;
            strCod_Prestador  :=IntToStr(Dm.CodProveedor);
            strTipo_Proveedor :=ClientDataSet1.FieldByName('_x003A_B3').AsString;
            strTipo_Prestador :=ClientDataSet1.FieldByName('_x003A_B2').AsString;
            strTipo_Plan      :=ClientDataSet1.FieldByName('_x003A_B1').AsString;
            ClientDataSet1.Next
          end;
          if (strVal_Prestador <> 'Ok') then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(strVal_Prestador, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (strTipo_Prestador = '01') then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Prestador Inv�lido', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (strVal_Prestador = 'Ok') And (strTipo_Prestador = '00') then
          begin
            XMLTransformProvider1.TransformRead.TransformationFile :='C:\Punto de Venta\Palic\Palic_afil.xtr';
            (HTTPRIO1 as TWebServicePalicSoap).fValidaAfiliado(qrEntradaPacientePolizaID.Value, strCod_Prestador,strTipo_Proveedor,DM.CurUser,'S');
            While not ClientDataSet1.Eof Do
            begin
              strVal_Afiliado   :=ClientDataSet1.FieldByName('_x003A_B10').AsString;
              strTipo_PlanAf    :=ClientDataSet1.FieldByName('_x003A_B9').AsString;
              strNum_Session    :=ClientDataSet1.FieldByName('_x003A_B8').AsString;
              strNombreAfil     :=ClientDataSet1.FieldByName('_x003A_B7').AsString;
              strCedulaAfil     :=ClientDataSet1.FieldByName('_x003A_B6').AsString;
              strParentezco     :=ClientDataSet1.FieldByName('_x003A_B5').AsString;
              if ClientDataSet1.FieldByName('_x003A_B4').AsString <> EmptyStr then
                 intEdad           :=ClientDataSet1.FieldByName('_x003A_B4').AsInteger
              else
                 intEdad        :=0;
              strSexo           :=ClientDataSet1.FieldByName('_x003A_B3').AsString;
              ClientDataSet1.Next
            end;
          end;
          if (strVal_Afiliado <> '00') then
          begin
              if strVal_Afiliado='01' then
                 Mensaje:='Afiliado no existe.  Verifique.'
              else if strVal_Afiliado='02' then
                 Mensaje:='P�liza Suspendida.  Verifique.'
              else if strVal_Afiliado='03' then
                 Mensaje:='Afiliado Excluido.  Verifique.'
              else if strVal_Afiliado='' then
                 Mensaje:='Error validando Afiliado.  Verifique.';
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(Mensaje, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;

          if Copy(Trim(strNombreAfil),1,3) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if intEdad <> qrEntradapacienteEdadPaciente.Value then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Edad del paciente en la entrada es '+Trim(qrEntradaPacienteEdadPaciente.Asstring)+' difere a la Edad del Paciente en ARS ('+inttostr(intEdad)+').', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
              exit;
          end;
          if ifThen(strSexo='F','0','1') <> IntToStr(qrEntradapacienteSexo.Value) then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Sexo del paciente no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if ((strTipo_PlanAf='A') and (Trim(qrEntradapacienteClienteID.Value)='C00390')) Then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Afiliado tiene ambos planes Basico y Complementario.  Debe seleccionar el Plan Complementario.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if Not(((strTipo_PlanAf='B') and (Trim(qrEntradapacienteClienteID.Value)='C00390')) Or
             ((strTipo_PlanAf='C') and (Trim(qrEntradapacienteClienteID.Value)='C00052')) Or
             ((strTipo_PlanAf='A') and ((Trim(qrEntradapacienteClienteID.Value)='C00052') Or (Trim(qrEntradapacienteClienteID.Value)='C00390'))) Or
             (Trim(qrEntradapacienteClienteID.Value)='C01674')) Then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (strVal_Afiliado = '00') then
          begin
            XMLTransformProvider1.TransformRead.TransformationFile :='C:\Punto de Venta\Palic\Palic_Diag.xtr';
            (HTTPRIO1 as TWebServicePalicSoap).fValidadiagnostico(strNum_Session, Trim(qrEntradaPacienteCOD_DIAG.Value));
            While not ClientDataSet1.Eof Do
            begin
              strVal_Diag       :=ClientDataSet1.FieldByName('_x003A_B2').AsString;
              strNombre_Diag    :=ClientDataSet1.FieldByName('_x003A_B1').AsString;
              ClientDataSet1.Next;
            end;
            if ClientDataSet1.FieldByName('_x003A_B2').AsString <> '00' then
            begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(ClientDataSet1.FieldByName('_x003A_B1').AsString+' para esta ARS.  Seleccione Z017 EXAMEN MEDICO GENERAL.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
            end;
          end;

      end
      else
      if qAutoriza.FieldByName('WsArsid').AsString = GrupoArsSenasa then
      Begin
          If Trim(cboExtTipoDoc.Text) = EmptyStr Then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Debe seleccionar Tipo de Documento.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              if cboExtTipoDoc.Enabled = True  then  cboExtTipoDoc.SetFocus;
              exit;
          end;
          CodTipoID       := StrToInt(Copy(cboExtTipoDoc.EditText,1,1));
          CAfiliadoSen    := crefsAfiliado.Create;
          CAfiliadoSen    := GetTSenasaRefWSSoap(false,Dm.vURLWSDL).ConsultarAfiliado(CodTipoID,qrEntradaPacientePolizaID.Value);
          if CAfiliadoSen.Estatus = '' then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              if Trim(CAfiliadoSen.CodMsgDesc) <> EmptyStr then
                 EtMensajeDlg(CAfiliadoSen.CodMsgDesc, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
              else
                 EtMensajeDlg('Error validando No. Afiliado � c�dula.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if CAfiliadoSen.Estatus <> '3' then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(CAfiliadoSen.CodMsgDesc, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (CAfiliadoSen.EstatusDesc <> 'OK (CORRECTO)') Then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(CAfiliadoSen.CodMsgDesc+'.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if Copy(CAfiliadoSen.Nombre,1,3) <> Copy(Trim(qrEntradapacienteNombrePaciente.Value),1,3) then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Paciente de la entrada no es el mismo que la ARS.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          if (Trim(qrEntradapacienteClienteID.Value)<>'C00431') then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg('Afiliado NO pertenece a este tipo de Plan de Seguro.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;

 end;
 Screen.Cursor := crDefault;
 spMensaje.Visible := False;
 FreeAndNil(qAutoriza);
end;
}
END.


