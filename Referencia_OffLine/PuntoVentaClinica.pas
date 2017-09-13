unit PuntoVentaClinica;

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
  cxintl, ppModule, raCodMod, ppParameter,dlgmensajes,Ced2000EditLib, RAWPrinter,
  cxDBEditRepository, cxExtEditRepositoryItems, cxEditRepositoryItems, Ws_prueba;
type
  TfrmPuntoVentaClinica = class(TfrmCustomModule)
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
    GridPruebasEntradasPacienteDetComentario: TcxGridDBColumn;
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
    lgBotonesItem2: TdxLayoutItem;
    btpaciente: TcxButton;
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
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel28: TppLabel;
    ppDBText32: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel31: TppLabel;
    ppDBText35: TppDBText;
    ppLabel32: TppLabel;
    ppDBText36: TppDBText;
    ppLabel33: TppLabel;
    ppDBText37: TppDBText;
    ppShape2: TppShape;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel41: TppLabel;
    ppDBText44: TppDBText;
    ppLabel42: TppLabel;
    ppDBText45: TppDBText;
    ppLabel43: TppLabel;
    ppDBText46: TppDBText;
    ppLabel44: TppLabel;
    ppDBText47: TppDBText;
    ppLabel45: TppLabel;
    ppDBText48: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLine2: TppLine;
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
    lcGeneralGroup5: TdxLayoutGroup;
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
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBImageComboBox8: TcxDBImageComboBox;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
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
    lgBotonesItem11: TdxLayoutItem;
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
    ppShape6: TppShape;
    ppLabel86: TppLabel;
    ppDBText92: TppDBText;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppDBText93: TppDBText;
    ppLabel90: TppLabel;
    ppDBText94: TppDBText;
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
    EliminarOrdenesenHold1: TMenuItem;
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
    LbHora: TcxDBLabel;
    dxLayoutControl1Item15: TdxLayoutItem;
    LbHoraPrometida: TcxDBLabel;
    lcGeneralItem25: TdxLayoutItem;
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
    ppDBText66: TppDBText;
    ppDBText76: TppDBText;
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
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    ppDBText78: TppDBText;
    ppLabel132: TppLabel;
    ppParameterList1: TppParameterList;
    CabeFactSeguro: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppLabel107: TppLabel;
    ppDBText54: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppDBText57: TppDBText;
    ppLabel56: TppLabel;
    ppDBText61: TppDBText;
    ppLabel54: TppLabel;
    ppDBText56: TppDBText;
    ppLabel49: TppLabel;
    ppDBText60: TppDBText;
    ppLabel100: TppLabel;
    ppDBText59: TppDBText;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppDBText112: TppDBText;
    ppLabel80: TppLabel;
    ppDBText64: TppDBText;
    ppLabel85: TppLabel;
    ppDBText70: TppDBText;
    ppDBText65: TppDBText;
    ppLabel131: TppLabel;
    ppDetailBand3: TppDetailBand;
    LbCodigo: TppLabel;
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
    ppMemoFactSeg: TppMemo;
    ppLbCoberturaValor: TppLabel;
    ppDBText77: TppDBText;
    ppLabel130: TppLabel;
    ppReport2: TppReport;
    ppDBText49: TppDBText;
    ppDBText51: TppDBText;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel139: TppLabel;
    ppDBText50: TppDBText;
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
    ppDBText83: TppDBText;
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
    ppLabel138: TppLabel;
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
    ppLabel151: TppLabel;
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
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppDBText121: TppDBText;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppDBText122: TppDBText;
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
    CancelarOrdenInterfaseAS4001: TMenuItem;
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
    btAutoriza: TcxButton;
    lcGeneralItem27: TdxLayoutItem;
    lcGeneralGroup15: TdxLayoutGroup;
    cxDBCheckBox4: TcxDBCheckBox;
    Devoluciones1: TMenuItem;
    DistribucionCaja1: TMenuItem;
    notadedebito1: TMenuItem;
    AsignarDescuentoPermitidoalEmpleado1: TMenuItem;
    cxButton2: TcxButton;
    qrEntradaPacienteENTRADAID: TStringField;
    qrEntradaPacienteMUESTRANO: TStringField;
    qrEntradaPacienteFECHA: TDateTimeField;
    qrEntradaPacienteHORAENTRADA: TStringField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacientePOLIZAID: TStringField;
    qrEntradaPacienteENCLINICA: TIntegerField;
    qrEntradaPacienteRECORDCLINICA: TStringField;
    qrEntradaPacienteNUMEROHABITACION: TStringField;
    qrEntradaPacienteFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteFECHADEALTA: TDateTimeField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteHORAPROMETIDA: TStringField;
    qrEntradaPacienteFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteNOTA: TStringField;
    qrEntradaPacientePROYECTOID: TStringField;
    qrEntradaPacienteRECORDID: TIntegerField;
    qrEntradaPacienteBRUTO: TBCDField;
    qrEntradaPacienteDESCUENTO: TBCDField;
    qrEntradaPacienteSUBTOTAL: TBCDField;
    qrEntradaPacienteNETO: TBCDField;
    qrEntradaPacienteNOMBREPACIENTE: TStringField;
    qrEntradaPacienteDIRECCION: TStringField;
    qrEntradaPacienteTELEFONOS: TStringField;
    qrEntradaPacienteTELEFONO2: TStringField;
    qrEntradaPacienteEMAIL: TStringField;
    qrEntradaPacienteCLIENTENOMBRE: TStringField;
    qrEntradaPacienteSUCURSALID: TStringField;
    qrEntradaPacienteUSERID: TStringField;
    qrEntradaPacienteCOBROID: TStringField;
    qrEntradaPacienteTOTALPAGADO: TBCDField;
    qrEntradaPacientePRIORIDAD: TIntegerField;
    qrEntradaPacienteFAX: TStringField;
    qrEntradaPacienteCOBERTURAPORC: TBCDField;
    qrEntradaPacienteCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOPORC: TBCDField;
    qrEntradaPacienteDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOBONO: TBCDField;
    qrEntradaPacienteORIGEN: TStringField;
    qrEntradaPacienteAPROBACIONNO: TStringField;
    qrEntradaPacienteAPROBACIONPOR: TStringField;
    qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteMONEDAID: TStringField;
    qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteEDADPACIENTE: TIntegerField;
    qrEntradaPacienteNOMBREDOCTOR: TStringField;
    qrEntradaPacientePUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteCARNET: TStringField;
    qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteCUADREGLOBAL: TStringField;
    qrEntradaPacienteCUADREUSUARIO: TStringField;
    qrEntradaPacienteDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteGASTOSVARIOS: TBCDField;
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
    qrEntradaPacienteFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteHORAREGISTRO: TStringField;
    qrEntradaPacienteTASA: TBCDField;
    qrEntradaPacienteESTATUS: TIntegerField;
    qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteCLASECREDITO: TStringField;
    qrEntradaPacienteCARNETNUMERO: TStringField;
    qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacientePACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteNCFTYPEID: TStringField;
    qrEntradaPacienteNCFID: TStringField;
    qrEntradaPacienteNCFNAME: TStringField;
    qrEntradaPacienteSEXO: TIntegerField;
    qrEntradaPacienteCUADRADO: TIntegerField;
    qrEntradaPacienteTRANSFERIDO: TIntegerField;
    qrEntradaPacienteSUCURSAL: TIntegerField;
    qrEntradaPacienteNUMEROINTERNET: TIntegerField;
    qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaPacienteTRANSFERENCIA: TStringField;
    qrEntradaPacienteGRUPOPRECIO: TStringField;
    qrEntradaPacienteTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField;
    qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaPacienteRESULTADOCLIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteFROM_CLINICA: TIntegerField;
    qrEntradaPacienteESTATUS_CLINICA: TStringField;
    qrEntradaPacienteREFRECID_POS: TIntegerField;
    qrEntradaPacienteENTRADAID_POS: TStringField;
    qrEntradaPacienteMUESTRANO_POS: TStringField;
    qrEntradaPacienteSINPRFILTER: TIntegerField;
    qrEntradaPacienteFECHANACIMIENTO: TDateTimeField;
    qrEntradaPacienteCOD_CASO: TStringField;
    qrEntradaPacienteDATAAREAID: TStringField;
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
    qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField;
    qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField;
    qrEntradaPacienteDetallePRECIO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField;
    qrEntradaPacienteDetalleTOTALLINEA: TBCDField;
    qrEntradaPacienteDetalleCOMENTARIO: TStringField;
    qrEntradaPacienteDetalleTIPOPRUEBA: TStringField;
    qrEntradaPacienteDetalleTIPOAS400: TStringField;
    qrEntradaPacienteDetalleCODIGOAS400: TStringField;
    qrEntradaPacienteDetalleMEDIOAS400: TStringField;
    qrEntradaPacienteDetalleDESCPCT: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField;
    qrEntradaPacienteDetalleFACTURAR: TIntegerField;
    qrEntradaPacienteDetalleSELECCIONAR: TIntegerField;
    qrEntradaPacienteDetalleMUESTRANO: TStringField;
    qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteDetalleURGENTE: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRA: TIntegerField;
    qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField;
    qrEntradaPacienteDetalleHORAENTREGA: TStringField;
    qrEntradaPacienteDetalleESTATUS: TStringField;
    qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaPacienteDetalleCUADRADO: TIntegerField;
    qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField;
    qrEntradaPacienteDetallePASARAXAPTA: TIntegerField;
    qrEntradaPacienteDetalleCOMBO: TIntegerField;
    qrEntradaPacienteDetalleADICIONAL: TBCDField;
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
    qrEntradaPacienteDetalleESTATUS_CLINICA: TStringField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
    qrEntradaPacienteDetalleSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    qrEntradaPacienteTotalPendiente: TCurrencyField;
    qrEntradaPacienteRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID_POS: TLargeintField;
    qrEntradaPacienteDetalleRECID: TLargeintField;
    procedure cxDBCheckBox2PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure AsignarDescuentoPermitidoalEmpleado1Click(Sender: TObject);
    procedure notadedebito1Click(Sender: TObject);
    procedure DistribucionCaja1Click(Sender: TObject);
    procedure Devoluciones1Click(Sender: TObject);
    procedure cxDBCurrencyEdit4PropertiesChange(Sender: TObject);
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
    procedure qrEntradaPacientePACIENTEIDValidate(Sender: TField);
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
    procedure FormDestroy(Sender: TObject);
    procedure RegistrarFechaPrometida1Click(Sender: TObject);
    procedure CodigodeBarra1Click(Sender: TObject);
    procedure ppSummaryFactPacienteSinSeguroBeforePrint(Sender: TObject);
    procedure ppDetailBandSinSeguroBeforePrint(Sender: TObject);
    procedure EdDoctorPropertiesChange(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure qrEntradaPacienteTipoEntradaChange(Sender: TField);
    procedure qrEntradaPacienteDetalleBeforeInsert(DataSet: TDataSet);
    procedure qrEntradaPacienteDetalleBeforeEdit(DataSet: TDataSet);
    procedure RegistrarPruebadelExterior1Click(Sender: TObject);
    procedure qrEntradaPacienteNombrePacienteValidate(Sender: TField);
    procedure BtHoldClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure AsignarDescuentoAutorizadoporCobros1Click(Sender: TObject);
    procedure ppSummaryFacturaSeguroBeforePrint(Sender: TObject);
    procedure qrEntradaPacienteCoberturaValorValidate(Sender: TField);
    procedure qrEntradaPacienteCoberturaExpPorcValidate(Sender: TField);
    procedure EdCoberturaValorExit(Sender: TObject);
    procedure CambiarLaboratorioNoenlasLineas1Click(Sender: TObject);
    procedure NotadeCredito1Click(Sender: TObject);
    procedure btnotacreditoClick(Sender: TObject);
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

    procedure ActDetalle;
    procedure ImpresionRecibo;
    procedure ImpresionNC;
    procedure ActInterface;
    procedure Impresiones;

    procedure Act_Hold;
    procedure Del_Hold;
    procedure No_Procesar;
    procedure Buscar_Doctor;
    procedure No_Procesar_AS400;
    procedure No_Procesar_AS400_Orden;
    procedure Buscar_Muestra;
    procedure Val_2da_Muestra;
    procedure Act_Cliente;

    procedure Buscar_Cod_Cups(cliente: String; prueba: String);

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
    Function Verifica_Clave_Internet(Clave : String) : Boolean;
    Procedure Procesar_Usuario_New;
    Procedure Insertar_Usuario_New(usuario: string; clave: string; name: string;
                                   cedula: string; cliente: string; tipo: string;
                                   actual: string);
    procedure ImprimirLabels_sp(_Muestrano : String);
    procedure Printing_Label(_muestra: String; _label: String; _departamento: String;
                                          _nombre: String; _usuario: String; _descripcion: String;
                                          _secuencia: Integer);


  private
    { Private declarations }
  public
    { Public declarations }

    noseguro             : TcxStyle;
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
    valorNC              : Double;
    valorND              : Double;
    pendiente            : Double;
    efectivo             : Double;
    sumatotal            : Double;
    devuelta             : Double;
    precio_combo         : Double;
    comboprecio          : Boolean;
    comboborrar          : Boolean;
    check_balance        : Boolean;
    Act_2da              : Boolean;
    seg_late             : Boolean;
    preconfir            : Boolean;
    cambiarprecio        : Boolean;
    combodescto          : Integer;
    Record_Ant           : Integer;
    factor               : Integer;
    _recorId             : Integer;
    curCoberturaAplicada : Integer;

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
    LabelRecId           : Integer;
    LabelNumero          : Integer;
    LabelSecuencia       : Integer;

////////////////////////////////////////////////////////////////////////////////

    Procedure Mirar_Valor_CAB;
    Procedure Mirar_Valor_DET;
    Function  Cargar_Valor(campo: String; valor: Variant): String;
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

    procedure Confirmar_Precio_Prueba;
    procedure Confirmar_Cliente_Prueba;

    procedure NuevaVenta;
    procedure BuscarDatos;
    procedure RefrescarInterface;
    procedure CancelarCobro;
    procedure ActTotales;
    procedure Act_Cobertura;

    procedure Re_Grabar;

    procedure Boton_Cobrar;
    procedure Viejo_Cobrar;

    procedure Buscar_Combo;
    procedure Borrar_Combo;
    procedure Actu_Precio_Combo;
    procedure Insert_Card_Descuento;
    procedure Insertar_Combo_Precio;
    procedure Insertar_Combo_Blanco;

    procedure Act_RecIdDetalle;
    procedure VerificarPagoDiferencia;
    procedure RefrescarGrid(SoloLectura : Boolean);
    function GetSecuenciaId : Integer;
    Function GetNotaDebito  : String;

    function MaxSecuenciaLinea : Integer;
    function Buscar_Linea: Integer;
    function CalcularCoberturaAplicada : Double;
    function Valor_Cobertura(_registro: integer) : Double;
    function ImporteLinea : Double;
    function TotalDescuentoLinea : Double;
    function ImporteBrutoExclLineaActual(refrecid : integer; secuencia : integer) : Double;
    function ImporteBrutoExclLineaActualAplica(refrecid : integer ;secuencia : integer) : Double;
    function ImporteBrutoExclLineaActualAplicaAndCobertura(refrecid : integer ;secuencia : integer) : Double;
    Function Verifica_Comentario_Coberturas : integer;
    Function Verifica_Orden_Pruebas_Paternidad : integer;
    Function Retorna_Paciente_Clave_Internet(ClienteID : String) : String;
    Function Busca_Cliente_Internet(ClienteID : String) : String;
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

    function  Validar_Label_Temp(_paciente: String; _entrada: String;
                                _muestra: String; _prueba: String): Boolean;

    procedure Buscar_Label_Temp(_paciente: String; _sucursal: String; _entrada: String;
                                _muestra: String; TipoMuestra: String; _departamento: String;
                                _medio: String; _color: String; _total: Integer);

    procedure Update_Label_Temp(_paciente: String; _entrada: String; _muestra: String;
                                _prueba: String; _label: String; _labelglobal: String;
                                _labelunico: String; _desc: String; _recid: Integer;
                                _secuencia: Integer; _numero: Integer);

    procedure Update_Label_Descripcion(_label: String; _descripcion: String);

  end;

Type
  TDias = Record
  Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo : Integer;
  End;

Var
  frmPuntoVentaClinica   : TfrmPuntoVentaClinica;
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
  Grupoprecio     : String;

implementation

uses ActionsDM, DataModule, Main, Pymeconst, UInterfaseAs400;

{$R *.dfm}


function TfrmPuntoVentaClinica.ValidateCliente : Boolean;
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
    qfind := DM.Find_LDR('SELECT * FROM PTCliente WHERE ClienteId = :cli', qrEntradaPacienteClienteID.Value);
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

procedure TfrmPuntoVentaClinica.TransferirAxapta1Click(Sender: TObject);
Var
 qupdate : TADOquery;
begin
 Dm.Info('Esta Opcion Esta Desactivada. Utilice el Cuadre de Caja.');
 Re_Grabar;
end;

procedure TfrmPuntoVentaClinica.CuadredeCaja1Click(Sender: TObject);
begin
  inherited;
{
  frmMain.LanzaVentana(1402);
}
end;

procedure TfrmPuntoVentaClinica.CuadredeCaja2Click(Sender: TObject);
begin
{
  inherited;
  frmMain.LanzaVentana(-7987);
}
end;


procedure TfrmPuntoVentaClinica.cxButton2Click(Sender: TObject);
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

                                  If Not Verifica_Clave_Internet(Trim(InterfaseAS400.Clave_Internet_AS400)) then
                                  begin
                                     Insertar_Usuario_New(Trim(InterfaseAS400.User_Internet_AS400),
                                                          FormatFloat('000000', StrToInt(Trim(InterfaseAS400.Clave_Internet_AS400))),
                                                          qfindPacientes.FieldByName('Nombre').AsString,
                                                          qfindPacientes.FieldByName('Identificacion').AsString,
                                                          qrEntradaPacientePacienteId.Value, Tipo, 'N');
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
                     end;
                  end;
             end;
          end;
      end;
    end;
end;

procedure TfrmPuntoVentaClinica.cxDBCheckBox2PropertiesChange(Sender: TObject);
begin
  inherited;
  if qrEntradaPaciente.State in [dsinsert,dsEdit] then
  begin
    cxDBCheckBox2.Properties.NullStyle := nssUnchecked;
  end;
end;

procedure TfrmPuntoVentaClinica.cxDBCurrencyEdit4PropertiesChange(Sender: TObject);
begin
  inherited;
  if cxDBCurrencyEdit4.Value > 0 then
     cxDBCurrencyEdit4.Style.Font.Color:= clGreen
  else if cxDBCurrencyEdit4.Value < 0 then
     cxDBCurrencyEdit4.Style.Font.Color:= clRed
  else if cxDBCurrencyEdit4.Value = 0 then
     cxDBCurrencyEdit4.Style.Font.Color:= clBlack;
end;

procedure TfrmPuntoVentaClinica.cxDBDateEdit5Exit(Sender: TObject);
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

procedure TfrmPuntoVentaClinica.cxDBTextEdit16KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Trim(cxDBTextEdit16.Text) <> EmptyStr then
     qrentradapacientepolizaid.Value := cxDBTextEdit16.Text
end;

procedure TfrmPuntoVentaClinica.RegistrarPruebadelExterior1Click(Sender: TObject);
begin
  Val_Exterior;
end;


procedure TfrmPuntoVentaClinica.CbDocumentoPropertiesChange(Sender: TObject);
begin
  Val_Exterior;
end;


procedure TfrmPuntoVentaClinica.RefrescarGrid(SoloLectura: Boolean);
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
procedure TfrmPuntoVentaClinica.Impresiones;
begin
  DM.qrParametro.close;
  DM.qrParametro.open;

  CuadredeCaja1.Enabled := True;
  CuadredeCaja2.Enabled := False;
  RecibodeCobro1.Enabled := True;
  NotadeCredito1.Enabled := True;
  CodigodeBarra1.Enabled := True;
  FacturaExterior1.Enabled := False;
  VolantedePruebasARS1.Enabled := False;
  InstructivodeInternet1.Enabled := True;
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
{
  If (qrEntradaPacienteOrigen.Value <> DM.qrParametroGrupoSeg.Value) And
     (qrEntradaPacienteTipoDocumento.Value <> 3) And
     (qrEntradaPacienteFactExterior.Value <> 1) Then
    Begin
      CuadredeCaja1.Enabled := True;
      CuadredeCaja2.Enabled := True;
      RecibodeCobro1.Enabled := True;
      NotadeCredito1.Enabled := True;
      CodigodeBarra1.Enabled := True;
      FacturaExterior1.Enabled := False;
      VolantedePruebasARS1.Enabled := False;
      InstructivodeInternet1.Enabled := True;
      VolantedePruebasTomaMuestra1.Enabled := True;
    End;
}
end;


procedure TfrmPuntoVentaClinica.ImpresionRecibo;
Var qCobros  : TAdoQuery;
begin
  inherited;
{        qCobros := DM.NewQuery;
        DM.qrCobroDetalle.Close;
        DM.qrCobroDetalle.Parameters[0].Value := cobroid;
        DM.qrCobroDetalle.Open;
        With qCobros, sql do
        begin
           Close;
           Clear;
           Text := ' SELECT * FROM PTCobro C, PTEntradaPaciente E WHERE C.refrecid = E.RecId '+
                   ' AND C.CobroId = '+#39+cobroid+#39+
                   ' AND E.DataAreaId = '+#39+DM.CurEmpresa+#39;
           Open;
           if IsEmpty then
              DM.Error('Error Realizando Referencia Cobros.  CobroId = '+cobroid)
           else
           begin
           if (Fieldbyname('refrecid').AsInteger > 1) then
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
                           '  (Select Convert(Varchar(200),NotaNCreditoBalance) from PtParametro) as NotaNCredito, c.TurnoID as Autorizacion, '+
                           '  Convert(Varchar(10),Getdate()+180,120) as Fecha_Autoriza, c.Cobroid as CobroID '+
                           '  from ptcobro c Inner Join ptentradapaciente e '+
                           '   on c.refrecid=e.recid Left outer join ptentradapacientedetalle d '+
                           '   on d.refrecid = e.recid '+
                           '   Inner Join ptsucursal s  '+
                           '   on e.SucursalID=s.SucursalID '+
                           '   Where c.refrecid='+InttoStr(qCobros.Fieldbyname('refrecid').AsInteger)+
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
                                  DM.ppImpReciboExterior.ShowPrintDialog := False;
                                  DM.ppImpReciboExterior.DeviceType := dtPrinter;
                                  DM.ppImpReciboExterior.PrinterSetup.PaperHeight := 8.5;
                                  DM.ppImpReciboExterior.PrinterSetup.PaperName := 'Custom';
                                  DM.ppImpReciboExterior.PrinterSetup.PaperWidth := 4;
                                  DM.ppImpReciboExterior.PrinterSetup.Copies := 2;
                                  DM.ppImpReciboExterior.PrinterSetup.PrinterName := Ruta_Recibo;
                                  DM.ppImpReciboExterior.Print;
                              End
                              Else
                              begin
                                  DM.ppImpReciboTicket.ShowPrintDialog := False;
                                  DM.ppImpReciboTicket.DeviceType := dtPrinter;
                                  DM.ppImpReciboTicket.PrinterSetup.PaperHeight := 8.5;
                                  DM.ppImpReciboTicket.PrinterSetup.PaperName := 'Custom';
                                  DM.ppImpReciboTicket.PrinterSetup.PaperWidth := 4;
                                  DM.ppImpReciboTicket.PrinterSetup.PrinterName := Ruta_Recibo;
                                  DM.ppImpReciboTicket.Print;
                              end;
                          End
                          Else
                          Begin
                              If (frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
                                 (frmMain.frmTmp.qrEntradaPacienteTipoDocumento.Value = 3) Or
                                 (frmMain.frmTmp.qrEntradaPacienteFactExterior.Value = 1) Then
                              Begin
                                  DM.ppImpReciboExterior.DeviceType := dtScreen;
                                  DM.ppImpReciboExterior.Print;
                              End
                              Else
                              begin
                                  DM.ppImpReciboTicket.DeviceType := dtScreen;
                                  DM.ppImpReciboTicket.Print;
                              end;
                          end;
                      End;
                  End;
           end;
           end;
        end;
}
end;

procedure TfrmPuntoVentaClinica.ImpresionNC;
Var
 qfind : TADOQuery;
begin
  inherited;
{
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
                   '  (Select Convert(Varchar(200),NotaNCreditoBalance) from PtParametro) as NotaNCredito, c.TurnoID as Autorizacion, '+
                   '  Convert(Varchar(10),Getdate()+180,120) as Fecha_Autoriza, c.Cobroid as CobroID '+
                   '  from ptcobro c Inner Join ptentradapaciente e '+
                   '   on c.refrecid=e.recid Left outer join ptentradapacientedetalle d '+
                   '   on d.refrecid = e.recid '+
                   '   Inner Join ptsucursal s  '+
                   '   on e.SucursalID=s.SucursalID '+
                   '   Where c.refrecid='+InttoStr(DM.qrCobrorefRecid.Value)+
                   '   and c.cobroid='+#39+dm.qrCobroCobroID.Value+#39+
                   '   and c.TipoDoc='+#39+TipoCobro+#39+
                   '   and e.Dataareaid='+#39+'ldr'+#39);
              Open;
              If Not IsEmpty then
              begin
                If Ruta_Recibo <> EmptyStr then
                Begin
                      if (TipoCobro = 'NC') or (TipoCobro = 'DV') then
                      Begin
                          With DM.ppImpNCDEV do
                          begin
                              ShowPrintDialog := False;
                              DeviceType := dtPrinter;
                              PrinterSetup.PrinterName := Ruta_Recibo;
                              Print;
                          end;
                      end
                      else
                      if (TipoCobro = 'ND') then
                      Begin
                          if Trim(DM.qryCobroTicket.FieldByName('Autorizacion').AsString) <> EmptyStr then
                          begin
                               frmMain.LanzaVentana(-7981);
                               if (Tiene_Balance = 0) Then
                               Begin
                                   Raise exception.CreateFmt('Contrase�a no V�lida.  Por Favor Verifique.', []);
                               end;
                          end;
                          If Trim(DM.qryCobroTicket.FieldByName('Concepto').AsString)<>'ND CTE. OTORGAN CHEQUE' Then
                          begin
                              With DM.ppImpND do
                              begin
                                DeviceType := dtScreen;
                                Print;
                              end;
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
                End
                Else
                Begin
                      if (TipoCobro = 'NC') or (TipoCobro = 'DV') then
                      Begin
                          With DM.ppImpNCDEV do
                          begin
                              DeviceType := dtScreen;
                              Print;
                          end;
                      end
                      else
                      if (TipoCobro = 'ND') then
                      Begin
                          if Trim(DM.qryCobroTicket.FieldByName('Autorizacion').AsString) <> EmptyStr then
                          begin
                               frmMain.LanzaVentana(-7981);
                               if (Tiene_Balance = 0) Then
                               Begin
                                   Raise exception.CreateFmt('Contrase�a no V�lida.  Por Favor Verifique.', []);
                               end;
                          end;
                          If Trim(DM.qryCobroTicket.FieldByName('Concepto').AsString)<>'ND CTE. OTORGAN CHEQUE' Then
                          begin
                              With DM.ppImpND do
                              begin
                                DeviceType := dtScreen;
                                Print;
                              end;
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
                End;
              end;
          end;
  End;
  FreeAndNil(qfind);
}
end;


procedure TfrmPuntoVentaClinica.CambiarLaboratorioNoenlasLineas1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteDetalle.RecordCount > 0 then
     frmMain.LanzaVentana(-7991)
  else
     beep;
end;


procedure TfrmPuntoVentaClinica.CancelarCobro;
begin

  if (Cobroid<>EmptyStr) and
     (qrEntradaPacienteRECID.AsString <> EmptyStr) and
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


procedure TfrmPuntoVentaClinica.CancelarOrdenInterfaseAS4001Click(Sender: TObject);
begin
  inherited;
  No_Procesar_AS400_Orden;
end;

function TfrmPuntoVentaClinica.GetSecuenciaId : Integer;
Var
 _valor   : String;
 numero   : Integer;
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
       numero := FieldByName('Secuencia').AsInteger
     else
       numero := 1;
     _valor := FormatFloat('00', FieldByName('SucursalAS400').AsInteger) +
               FormatFloat('0000000', numero);
   end;
   Result := StrToInt(_valor);
 end;

 FreeAndNil(qsecdoc);
end;


function TfrmPuntoVentaClinica.GetMuestraNo : String;
Var
 _valor  : String;
 qsecdoc : TADOQuery;
 anio, mes, dia : Word;
begin
// result := GetNextSecDoc('MT');

// secuencialabel := DM.Get_Secuencia('SecuenciaAct');
 secuencialabel := StrToInt(DM.Get_Secuencia_Big('LABEL', DM.CurSucursal));

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


function TfrmPuntoVentaClinica.GetReciboNo : String;
begin
  result := GetNextSecDoc('RI');
end;


function TfrmPuntoVentaClinica.GetNotaCredito : String;
begin
  result := GetNextSecDoc('NC');
end;
function TfrmPuntoVentaClinica.GetNotaDebito : String;
begin
  result := GetNextSecDoc('ND');
end;
function TfrmPuntoVentaClinica.GetDevolucion : String;
begin
  result := GetNextSecDoc('DV');
end;

procedure TfrmPuntoVentaClinica.ActDetalle;
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
    qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalleClinica SET '+
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


procedure TfrmPuntoVentaClinica.Val_Exterior_Detalle;
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


function TfrmPuntoVentaClinica.ImporteBrutoExclLineaActual(refrecid : integer ; secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) '+
                   ' FROM PTEntradaPacienteDetalleClinica '+
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


function TfrmPuntoVentaClinica.ImporteBrutoExclLineaActualAplica(refrecid : integer ;secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) '+
                   ' FROM PTEntradaPacienteDetalleClinica '+
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


function TfrmPuntoVentaClinica.ImporteBrutoExclLineaActualAplicaAndCobertura(refrecid : integer ;secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio), SUM(CoberturaAplicada) '+
                   ' FROM PTEntradaPacienteDetalleClinica '+
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


function TfrmPuntoVentaClinica.TotalDescuentoLinea : Double;
Var
 DescuentoPorc, DescuentoPesosCab, DescuentoPesos : Double;
begin
  qrEntradaPaciente.Edit;
  qrEntradaPacienteDetalle.Edit;

  DescuentoPorc := 0;
  DescuentoPesos := 0;
  DescuentoPesosCab := 0;

  //Calculando el Descuento a las PRUEBAS y los COMBOS.
  qpruebadesc := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaID.value);

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
end;


function TfrmPuntoVentaClinica.ImporteLinea : Double;
Var
 Valor, DescPorc : Double;
begin
 DescPorc := 0;

 Valor := qrEntradaPacienteDetallePrecio.Value - qrEntradaPacienteDetalleDescuento.Value;

 if (qrEntradaPacienteDetalleDescPct.Value >= 1) then
     DescPorc := Valor * qrEntradaPacienteDetalleDescPct.Value / 100;

 result := DM.Redondeo(Valor - DescPorc);
end;


function TfrmPuntoVentaClinica.CalcularCoberturaAplicada : Double;
var
 coberturaporc, CoberturaPesosCab : Double;
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
                CoberturaPesosCab := qrEntradaPacienteDetallePrecio.Value * qrEntradaPacienteCoberturaValor.Value /
                                     (ImporteBrutoExclLineaActualAplica(qrEntradaPacienteDetalleRefRecid.Value,
                                      qrEntradaPacienteDetalleSecuencia.Value) +
                                      qrEntradaPacienteDetallePrecio.Value)
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
{
 if qrEntradaPacienteDetalleCoberturaAplica.Value then
 begin
  if (qrEntradaPacienteDetalleCoberturaEspecialPorc.Value > 0) or
     (qrEntradaPacienteDetalleCoberturaEspecial.Value > 0) then
  begin

   if not qrEntradaPacienteDetalleCoberturaExpPorc.Value then
      result := qrEntradaPacienteDetalleCoberturaEspecial.Value
   else
   begin
      coberturaporc := (qrEntradaPacienteDetallePrecio.Value - TotalDescuentoLinea) *
                       (qrEntradaPacienteDetalleCoberturaEspecial.Value / 100);
      result := coberturaporc;
   end;
  end
  else
  begin
   coberturaporc := 0;
   CoberturaPesosCab := 0;

   if qrEntradaPacienteCoberturaConfirmada.value then
   begin
    if (qrEntradaPacienteCoberturaValor.Value > 0) then
        CoberturaPesosCab := qrEntradaPacienteDetallePrecio.Value * qrEntradaPacienteCoberturaValor.Value /
                             (ImporteBrutoExclLineaActualAplica(qrEntradaPacienteDetalleRefRecid.Value,qrEntradaPacienteDetalleSecuencia.Value) + qrEntradaPacienteDetallePrecio.Value)
    else
     if (qrEntradaPacienteCoberturaPorc.Value  > 0) then
        coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value - CoberturaPesosCab) * qrEntradaPacienteCoberturaPorc.Value /100;
   end
   else
   begin
    if (qrEntradaPacienteCoberturaPorc.Value  > 0) then
        coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value - CoberturaPesosCab) * qrEntradaPacienteCoberturaPorc.Value /100;
   end;
   result := coberturaporc + CoberturaPesosCab;
  end;
 end
 else
  result := 0;
}
end;


function TfrmPuntoVentaClinica.Valor_Cobertura(_registro : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) FROM PTEntradaPacienteDetalleClinica '+
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


procedure TfrmPuntoVentaClinica.CodigodeBarra1Click(Sender: TObject);
Var
  Tipo : String;
begin
  inherited;
  if qrEntradaPacienteEntradaId.Value <> Emptystr then
  begin
     ImprimirLabels_sp(qrEntradaPacienteMuestrano.value);
  end;

end;
procedure TfrmPuntoVentaClinica.ImprimirLabels_sp(_Muestrano : String);
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
                                qprint.FieldByName('Secuencia').AsInteger);
                 qprint.Next;
             End;
          End;
  end;
  FreeAndNil(qprint);
end;


procedure TfrmPuntoVentaClinica.Printing_Label(_muestra: String; _label: String; _departamento: String;
                                          _nombre: String; _usuario: String; _descripcion: String;
                                          _secuencia: Integer);
Const
 LetraSec : Array[1..26] Of String = ('A','B','C','D','E','F','G','H','I','J','K','L','M',
                                      'N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
  with RAWPrinter1  do
  begin
   PrinterName := dm.CurRuta;
   BeginDoc;
     writeLn('FK"FORMA"');
     writeLn('FS"FORMA"');
     writeLn('');
     writeLn('q1200');
     writeLn('Q200,30+0');
     writeLn('S2');
     writeLn('D8');
     writeLn('ZT');

     writeLn('B255,30,0,1,2,6,98,N,"'  + _muestra + '"');
     writeLn('A230,140,0,3,1,1,N,"'    + _label + '"');
     writeLn('A590,20,1,1,1,1,N,"'    + _departamento + '"');
     writeLn('A230,160,0,2,1,1,N,"'    + _nombre + '"');
     writeLn('B500,130,0,3,2,3,50,N,"' + LetraSec[_secuencia] + '"');
     writeLn('A570,20,1,1,1,1,N,"' + _usuario + '"');
     writeLn('A230,180,0,1,1,1,N,"' + _descripcion + '"');

     writeLn('FE');
     writeLn('');
     writeLn('FR"FORMA"');
     writeLn('?');
     writeLn('P1');
     writeLn('');
   EndDoc;
  end;
end;

procedure TfrmPuntoVentaClinica.BtInterfaseAS400Click(Sender: TObject);
begin
  If not ((Trim(qrEntradaPacienteEntradaid.value) ='') OR (Copy(qrEntradaPacienteEntradaid.value,1,3)='HOL')) And
          (Copy(Trim(qrEntradaPacienteMuestrano.value),3,3) <>'000') then
  begin
    if DM.Mensaje('Desea Transferir Esta Orden al AS-400.?',mb_yesno) = id_yes then
     begin
       qrEntradaPaciente.Edit;
       qrEntradaPaciente.Post;

       qrEntradaPacienteDetalle.Edit;
       qrEntradaPacienteDetalle.Post;
       If dm.qrParametroServidor_AS400.value <> EmptyStr then
       begin
            if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
            begin
               Try
                 InterfaseAS400.ASConnection.Close;
                 InterfaseAS400.ASConnection.Open;

                 //Insertando las Pruebas en el AS-400.
                 InterfaseAS400.MandarPruebaAS400_Clinica(qrEntradaPacienteMuestraNo.Value, ifThen(Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value) <> EmptyStr,Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value),qrEntradaPacientePacienteID.Value));
                 InterfaseAS400.ASConnection.Close;
               Except
                 Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                           ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                           ' � Intentelo Nuevamente.!!!', []);
               end;
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
  end
  else
  if Copy(Trim(qrEntradaPacienteMuestrano.value),3,3) ='000' then
  begin
      EtMensajeDlg('Las Entradas Generadas por AS-400 NO pueden ser transferidas al AS-400.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
  end;
end;


procedure TfrmPuntoVentaClinica.RegistrarCobrosTemporales1Click(Sender: TObject);
begin
  inherited;
{
  frmMain.LanzaVentana(-8024);
}
end;


procedure TfrmPuntoVentaClinica.RegistrarFechaPrometida1Click(Sender: TObject);
begin
  inherited;
  Showmessage('Pendiente de Toma de Muestra.!!!');
end;


procedure TfrmPuntoVentaClinica.RegistrarNuevoPaciente1Click(Sender: TObject);
Var
 sqlString   : String;
 qfindciudad : TADOQuery;
begin
  inherited;
  If qrEntradaPaciente.State in [dsInsert] Then
    Begin
     frmMain.CustPtoVta := '';
     frmMain.LanzaVentana(1100);
    end;
end;

procedure TfrmPuntoVentaClinica.btcancelarClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPaciente.State = dsinsert then
   begin
    if DM.Mensaje('Existe una entrada en proceso. Desea cancelar la entrada?',mb_yesno) = id_yes then
     begin
      if qrEntradaPacienteEntradaID.Value = '' then
       begin
          if Trim(qrEntradaPacienteRECID.AsString)<> EmptyStr then
          begin
              DM.DataBase.Execute('DELETE FROM PTEntradaPacienteDetalleClinica WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);
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

      NuevaVenta;
     end;
   end;

   If (qrEntradaPacienteEntradaID.Value <> '') then
   begin
      if qrEntradaPaciente.State = dsEdit then  qrEntradaPaciente.Cancel;
      NuevaVenta;
   end;
end;


procedure TfrmPuntoVentaClinica.btclienteClick(Sender: TObject);
begin
  inherited;
  if (qrEntradaPacienteCoberturaConfirmada.Value = 1) Or
     (qrEntradaPacienteCoberturaRechazada.Value = 1) Then
     EtMensajeDlg('La Cobertura Ha Sido Confirmada � Rechazada.  El Cliente NO Puede Ser Cambiado.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
  else
  begin
   frmMain.LanzaVentana(-7996);
//   if Verifica_Autorizacion then btAutoriza.Enabled := True;
   EdCliente.SetFocus;
  end;
end;


procedure TfrmPuntoVentaClinica.bteliminarClick(Sender: TObject);
begin
  inherited;
  If (Trim(qrEntradaPacienteDetallePruebaId.Value) = EmptyStr) Or
     (qrEntradaPacienteDetallePruebaId.IsNull) Then
    If qrEntradaPacienteDetalle.RecordCount > 0 then qrEntradaPacienteDetalle.Delete;

  If (Trim(qrEntradaPacienteDetallePruebaID.Text) <> EmptyStr) and (qrEntradaPacienteTotalPagado.Value = 0) then
  begin
     If (qrEntradaPacienteDetalleCOMBO.Value = 1) Then
     begin
         comboborrar := True;
         Borrar_Combo;
     end
     Else
        If qrEntradaPacienteDetalle.RecordCount > 0 then qrEntradaPacienteDetalle.Delete;
     end
  else
    If qrEntradaPacienteDetalle.RecordCount > 0 then qrEntradaPacienteDetalle.Delete;
end;


procedure TfrmPuntoVentaClinica.btentradaClick(Sender: TObject);
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
          DM.DataBase.Execute('Delete from PTEntradaPacienteDetalleClinica WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);
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
    frmMain.LanzaVentana(-8031);
  End;
end;


procedure TfrmPuntoVentaClinica.btgrabarClick(Sender: TObject);
Var
 Tipo,stHold,Muestrano,sqlString,TipoDoc,EntradaId  : String;
 intEdad_Pac                                        : integer;
 from_hold                                          : Boolean;
 imprimirFactPaciente                               : Boolean;
 imprimirFactExterior                               : Boolean;
 imprimirRecibo, imprimirNC                         : Boolean;
begin
 inherited;
 Tipo := '';
 Muestrano :='';
 sqlString :='';
 TipoDoc   :='';
 EntradaId :='';

 If (DM.Buscar_Fecha_Actual <> DM.SystemDate) then
 begin
    EtMensajeDlg('Fecha de la Aplicaci�n y Fecha del Servidor No coinciden.  Favor salir de la aplicaci�n y vuelva a entrar.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
    exit;
 end;
 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
    (qrEntradaPacienteTipoDocumento.Value = 3) Or
    (qrEntradaPacienteFactExterior.Value = 1) Then
   begin
     Val_Exterior_Detalle;
     if (qrEntradaPacienteGastosVarios.AsFloat < 1) Then
       Begin
         if MessageDlg('Los Gastos Varios de Esta Orden del Exterior NO Han Sido Registrado. Desea Continuar?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
           begin
              DM.Warning('Continuara la Operacion Sin Registar Los Gastos Varios de Esta Orden.!!!');
           end
         Else
          Raise exception.CreateFmt(' Por Favor. Registre Los Gastos Varios de Esta Orden.!!!', []);
       end;
   end;
   if qrEntradaPaciente.State in [dsEdit, dsInsert] then
   Begin
       if Not((qrEntradaPacienteFechaNacimiento.Text ='01/01/1900') or
              (qrEntradaPacienteFechaNacimiento.Text = EmptyStr)) then
       begin
              intEdad_Pac := Trunc((StrtoInt(FormatDateTime('yyyymmdd', DM.SystemDate))-StrtoInt(FormatDateTime('yyyymmdd', qrEntradaPacienteFechaNacimiento.Value)))/10000);
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
   if qrEntradapacientedetalle.RecordCount > 0 then
   begin
       if Verifica_Comentario_Coberturas = 1 then
       begin
          if dm.qrPruebasCOMENTARIO_REQ.Value > 0 then
            EtMensajeDlg('Prueba ('+qrEntradaPacienteDetalleDescripcion.Value+') le falta el comentario.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
          else if dm.qrPruebasCOD_SEC_PRUEBA.Value > 0 then
            EtMensajeDlg('Prueba ('+qrEntradaPacienteDetalleDescripcion.Value+') le falta el Hijo(a).  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          if (dm.qrPruebasCOMENTARIO_REQ.Value > 0) or (dm.qrPruebasCOD_SEC_PRUEBA.Value > 0) then Exit;
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
//      ConfirmarCobertura1Click(Sender);
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
 Val_Paciente;
// Val_Descuento;

 VerificarPagoDiferencia;
 //Agregado Para Actualizar el Valor del Combo para la Transferencia a Axapta.
// Actu_Precio_Combo;

 //Validando Los Datos de la 2da. Muestra.
 If (Act_2da = True) then Val_2da_Muestra;

 DM.qrParametro.close;
 DM.qrParametro.open;

 If ValidateRecord(dsEntradaPaciente.DataSet) And ValidateCliente Then
  begin
   if DM.Mensaje('Desea Grabar Este Registro?', mb_yesno) = id_yes then
    begin
     If (qrEntradaPacienteHold.Value = 1) Then
       from_hold := True
     Else
       from_hold := False;

     ActTotales;
     qrEntradaPacienteNombreDoctor.Required := True;
     if (qrEntradaPacienteENCLINICA.Value = 1) then
       begin
         qrEntradaPaciente.Edit;
         qrEntradaPacienteFECHAENTRADA.Required := True;
         qrEntradaPacienteRECORDCLINICA.Required := True;
         qrEntradaPacienteNUMEROHABITACION.Required := True;
       end;
     qrEntradaPaciente.Edit;
     qrEntradaPacienteHold.Value := 0;
//     qrEntradaPacienteUserId.Value := DM.CurUser;
     Muestrano :=qrEntradaPacienteMuestrano.Value;
     TipoDoc   :=inttostr(qrEntradaPacienteTIPODOCUMENTO.Value);
     qrEntradaPacienteFLEBOTOMISTAID.Value  := DM.CurUser;
     qrEntradaPacienteFechaRegistro.Value   := DM.SystemDate; //DM.Buscar_Fecha_Actual;
     qrEntradaPacienteHoraRegistro.Value    := DM.Buscar_Hora_Actual;  //TimeToStr(Time);

     imprimirFactPaciente                   := False;
     imprimirFactExterior                   := False;
     imprimirRecibo                         := DM.qrParametroImprimirAlGrabarRecibo.Value;
     imprimirNC                             := DM.qrParametroImprimirAlGrabarNC.Value;
//   Sie es Nuevo o est� en Hold entonces entra
     if (Trim(qrEntradaPacienteEntradaID.Value) = EmptyStr) Or (from_hold = True) Or (copy(qrEntradaPacienteEntradaID.value, 1 ,3) = 'HOL') then
     begin
        qrEntradaPacienteEntradaID.Value := GetEntradaID;
        Tipo := 'N';
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
     If qrEntradaPaciente.State in [dsInsert] Then
     Begin
        If (qrEntradaPacienteTipoDocumento.Value = 0) or
           (qrEntradaPacienteTipoDocumento.Value = 3) then
        begin
            If (not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
                       (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
                       (qrEntradaPacientePacienteId.Value ='00006242'))) Then Act_Cliente;

            //Insertando Los Datos de la Tarjeta de Descuento.
             If (qrEntradaPacienteDescuentoTexto.Value <> 'DESCUENTO SUCURSAL') And
                (qrEntradaPacienteDescuentoPlanId.Value <> 'SUCURSAL') And
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

     //Generando las Acciones del Boton COBRAR Original.
{
     If Not ExisteCobro And (Act_2da = False) Then Boton_Cobrar;
////////////////////////////////////////////////////////////////////////////////
//   Try
     //Iniciando la Transaccion.
//     DM.DataBase.BeginTrans;

////////////////////////////////////////////////////////////////////////////////

     If ExisteCobro then
     begin
       if TipoCobro = 'RI' then
           ActCobro
       else if TipoCobro = 'NC' then
           ActNotaCredito
       else if TipoCobro = 'ND' then
           ActNotaDebito
       else if TipoCobro = 'DV' then
           ActDevolucion;
     end;
}
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

    If imprimirFactExterior Or
       (Copy(EntradaId,1,3)='EXT') Or
       (qrEntradaPacienteTipoDocumento.Value = 3) then
    begin
       sqlString := 'SELECT * FROM PTEntradaPacienteClinica WHERE ';
       sqlString := sqlString + ' DataAreaId = ' + #39 + DM.CurEmpresa + #39;
       sqlString := sqlString + ' AND MuestraNo='+#39+Muestrano+#39;
       With qrEntradaPaciente, sql do
       begin
           qrEntradaPaciente.Close;
           qrEntradaPaciente.SQL.Text := sqlString;
           qrEntradaPaciente.open;
           if not isEmpty then
           begin
             sqlString := 'SELECT * FROM PTEntradaPacienteDetalleClinica WHERE ';
             sqlString := sqlString + ' DataAreaId = ' + #39+DM.CurEmpresa+#39;
             sqlString := sqlString + ' AND MuestraNo ='+#39+Muestrano+#39;
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
       sqlString := 'SELECT * FROM PTEntradaPacienteClinica WHERE ';
       sqlString := sqlString + ' DataAreaId = ' + #39+DM.CurEmpresa+#39;
       sqlString := sqlString + ' AND MuestraNo ='+#39+Muestrano+#39;
       With qrEntradaPaciente, sql do
       begin
           qrEntradaPaciente.Close;
           qrEntradaPaciente.sql.Clear;
           qrEntradaPaciente.SQL.Text := sqlString;
           qrEntradaPaciente.open;
           if not isEmpty then
           begin
             sqlString := 'SELECT * FROM PTEntradaPacienteDetalleClinica WHERE ';
             sqlString := sqlString + ' DataAreaId = ' + #39+DM.CurEmpresa+#39;
             sqlString := sqlString + ' AND MuestraNo ='+#39+Muestrano+#39;
             qrEntradaPacienteDetalle.Close;
             qrEntradaPacienteDetalle.sql.Clear;
             qrEntradaPacienteDetalle.SQL.Text := sqlString;
             qrEntradaPacienteDetalle.open;
             if not qrEntradaPacienteDetalle.IsEmpty         then
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
    If (cobroid <> '') and (TipoCobro = 'RI') then
       ImpresionRecibo;

    If (imprimirNC) and (cobroid <> '') and ((TipoCobro = 'NC') or (TipoCobro = 'DV') or (TipoCobro = 'ND')) then
       ImpresionNC;

    If (Act_2da = True) then
    begin
        //Generando la Nota de Credito de la 2da. Muestra.
        Act_2da         := False;
        valorNC         := qrEntradaPacienteTotalPendiente.Value;
        ConceptoNC      := 'Nota Por Segunda Muestra.';
//        CrearNotaCredito;
//        ActNotaCredito;
        ImpresionNC;
    end;

    If (qrEntradaPacienteTipoDocumento.Value = 0) or
       (qrEntradaPacienteTipoDocumento.Value = 3) And (Copy(Trim(qrEntradaPacienteMuestrano.value),3,3) <> '000') then
    Begin
         If ( Operacion <> '' ) Then
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
                           If (InterfaseAS400.User_Internet_AS400 <> '') And (InterfaseAS400.Clave_Internet_AS400 <> '') Then
                           Begin
                                If (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoAcc.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoEmp.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoVip.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoPriv.Value) Then
                                  Tipo := 'P'
                                Else
                                  Tipo := 'C';

                                 If Not Verifica_Clave_Internet(Trim(InterfaseAS400.Clave_Internet_AS400)) then
                                 begin
                                     Insertar_Usuario_New(Trim(InterfaseAS400.User_Internet_AS400),
                                                          FormatFloat('000000', StrToInt(Trim(InterfaseAS400.Clave_Internet_AS400))),
                                                          qfindPacientes.FieldByName('Nombre').AsString,
                                                          qfindPacientes.FieldByName('Identificacion').AsString,
                                                          qrEntradaPacientePacienteId.Value, Tipo, 'N');
                                 end;
                           end
                           Else
                             Procesar_Usuario_New;
                        end;
                     end;
                   end;
             end;

               //Imprimiendo el Instructivo de Internet Generado.
               if qrEntradaPacientePublicarInternet.Value = 1 then InstructivodeInternet1Click(nil);
             end;
//             Else
//              DM.Info('El Paciente '+ qrEntradaPacienteNombrePaciente.Value +' Ya Tiene Un Usuario de Internet Creado');

        if (qrEntradaPacienteFROM_CLINICA.Value <> 1) then
        Begin
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
           begin
                If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                begin
                   Try
                     InterfaseAS400.ASConnection.Close;
                     InterfaseAS400.ASConnection.Open;

                     //Insertando las Pruebas en el AS-400.
                     InterfaseAS400.MandarPruebaAS400_Clinica(qrEntradaPacienteMuestraNo.Value, ifThen(Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value) <> EmptyStr,Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value),qrEntradaPacientePacienteID.Value));
                     InterfaseAS400.ASConnection.Close;
                   Except
                     Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                               ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                               ' � Intentelo Nuevamente.!!!', []);
                   end;
                end;
           end;
        end;
//       end;
    NuevaVenta;
    end
   else
    if ExisteCobro then CancelarCobro;
  end
 else
  if ExisteCobro then CancelarCobro;
end;

procedure TfrmPuntoVentaClinica.BtHoldClick(Sender: TObject);
begin
 inherited;
  if ValidateRecord(dsEntradaPaciente.DataSet) and
     ValidateCliente and
     (qrEntradaPacienteEntradaID.Value = '') then
   begin
    if DM.Mensaje('Desea Poner en Hold?',mb_yesno) = id_yes then
     begin
       qrEntradaPacienteEntradaID.Value := GetEntradaID_HOLD;
       qrEntradaPacienteHold.Value := 1;
//       qrEntradaPacienteUserId.Value := DM.CurUser;
       qrEntradaPacienteFLEBOTOMISTAID.Value := DM.CurUser;
       qrEntradaPacienteFechaRegistro.Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
       qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;  //TimeToStr(Time);

       if qrEntradaPacienteDetalle.State in [dsEdit,dsInsert] then
          qrEntradaPacienteDetalle.Post;

       if qrEntradaPaciente.State in [dsEdit,dsInsert] then
          qrEntradaPaciente.Post;

       DM.Info('El Registro Esta en Hold.!!!');
       NuevaVenta;
     end;
   end
  else
   if ExisteCobro then CancelarCobro;
end;


procedure TfrmPuntoVentaClinica.btimpcotClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntradaID.Value <> '' then
  begin
   ppImpCotizacion.DeviceType := dtScreen;
   ppImpCotizacion.Print;
  end;
end;

procedure TfrmPuntoVentaClinica.btnotacreditoClick(Sender: TObject);
begin
  inherited;
//  if ((qrEntradaPacienteTotalPendiente.Value < 0) and (qrEntradaPaciente.State <> dsinsert)) or
//     ((qrEntradaPacienteNeto.Value > 0) and (qrEntradaPaciente.State <> dsinsert)) then
  if ((qrEntradaPacienteTotalPagado.Value > 0) or (qrEntradaPacienteNeto.Value > 0)) and (qrEntradaPaciente.State <> dsinsert) then
  begin
//   CrearNotaCredito;
   frmMain.LanzaVentana(-7992);
  end
  else
   beep;
end;

procedure TfrmPuntoVentaClinica.btpacienteClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7999);
  EdPaciente.SetFocus;
//  actinterface;
end;

procedure TfrmPuntoVentaClinica.btpruebaClick(Sender: TObject);
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
       If (qrEntradaPacienteDoctorID.Value = '') Or
          (qrEntradaPacienteDoctorID.IsNull) Or
          (qrEntradaPacientePolizaID.Value = '') Or
          (qrEntradaPacientePolizaID.IsNull) Then
         Begin
           Raise exception.CreateFmt(' NO Puede Registrar Pruebas Para las Aseguradoras: '+ #13 +
                                     ' La Informacion del Doctor y el Num. de Afiliado Es Obligatoria. '+ #13 +
                                     ' Por Favor Verifique.!!!', []);
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
             frmMain.LanzaVentana(-7998);
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
          frmMain.LanzaVentana(-7998);
        ActTotales;
        BtGrabar.SetFocus;
      End;
end;


procedure TfrmPuntoVentaClinica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmMain.Exis_Vta := False;

  If (qrEntradaPacienteEntradaID.AsString = '') then
    begin
      DM.DataBase.Execute('Delete from PTGastosVarioTrans WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString);
      DM.DataBase.Execute('Delete from PTMaterialesFactura WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString); //TOMA DE MUESTRA
    end;
end;


procedure TfrmPuntoVentaClinica.FormCreate(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Vta := True;

  dxLayoutControl1.LookAndFeel := dmAppActions.lnfWeb;
  lcGeneral.LookAndFeel := dmAppActions.lnfWeb;
  lgBotones.LookAndFeel := dmAppActions.lnfWeb;//dmAppActions.lnfButtonGroup;

  DM.qrProyecto.Close;
  DM.qrProyecto.Open;

  DM.qrDoctor.Close;
  DM.qrDoctor.Open;

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
    Add('SELECT * FROM PTGrupoCliente WHERE DataAreaId = '+#39+'ldr'+#39);
    if dm.qrSucursal.FieldByName('stPlanSocial').AsString = 'N' then    Add(' And GrupoCliente <> '+#39+'02'+#39);
    Open;
  end;

  //Buscando los Datos de la Sucursal Actual.
  qfindSucursal := DM.Find_Ldr('SELECT * FROM PTSucursal WHERE SucursalId = :suc', DM.CurSucursal);

  SetMandatoryItems;

//  if (frmMain.Tran_fer <> True) then
    NuevaVenta;
end;

procedure TfrmPuntoVentaClinica.FormDestroy(Sender: TObject);
begin
  if (qrEntradaPacienteEntradaID.asstring = '') then
    begin
      DM.DataBase.Execute('DELETE FROM PTGastosVarioTrans WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString);
      DM.DataBase.Execute('DELETE FROM PTMaterialesFactura WHERE Refrecid = '+ qrEntradaPacienteRECID.AsString); //TOMA DE MUESTRA
    end;

  inherited;
  frmMain.Exis_Vta := False;
end;


procedure TfrmPuntoVentaClinica.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_f1) then key := 0;
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


procedure TfrmPuntoVentaClinica.SetColorTo(iColor: TColor);
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


procedure TfrmPuntoVentaClinica.SetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], True );
  end;
end;


procedure TfrmPuntoVentaClinica.SetComponentReadOnly(thisComponent: TComponent; bFlag : Boolean);
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


procedure TfrmPuntoVentaClinica.UnSetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], False );
  end;
end;


procedure TfrmPuntoVentaClinica.NotadeCredito1Click(Sender: TObject);
begin
  inherited;
{
  frmMain.LanzaConsulta(-7991, qrEntradaPacienteRECID.asstring,'NC');
}
end;


procedure TfrmPuntoVentaClinica.notadedebito1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7991, qrEntradaPacienteRECID.asstring,'ND');
end;

procedure TfrmPuntoVentaClinica.NuevaVenta;
Var qact : TADOQuery;
begin
  qact := DM.NewQuery;
  With  qact, sql do
  begin
    Close;
    Clear;
    Text := ' Select Top 1 Muestrano from PTEntradaPacienteClinica '+
            ' Where  DataAreaId = '+#39+DM.CurEmpresa+#39+' And UserId = '+#39+Dm.CurUser+#39+
            ' And Fecha= ' + #39+FormatDateTime('yyyymmdd', DM.SystemDate)+#39+
            ' Order by Muestrano desc';
    Open;
    if not isEmpty  then
    begin
        lbUltimaMuestra.caption := 'ULT. ENTRADA = '+fieldbyname('Muestrano').AsString;
    end
    else
        lbUltimaMuestra.caption := EmptyStr;
  end;

  With qrEntradaPaciente, sql do
  begin
    Close;
    Clear;
    Text :='SELECT * FROM PTEntradaPacienteClinica WHERE RecId = :rec AND DataAreaId = '+#39+DM.CurEmpresa+#39
  end;
  With qrEntradaPacienteDetalle, sql do
  begin
    Close;
    Clear;
    Text :='SELECT * FROM PTEntradaPacienteDetalleClinica WHERE refrecid = :rec AND DataAreaId = '+#39+DM.CurEmpresa+#39+' ORDER BY secuencia '
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
//  noseguro.Color := DM.ColorBorra;
  noseguro.Color := DM.ColorUrgente;
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
  qrEntradaPacienteRECID.Value := _recorId;
  qrEntradaPacienteRECORDID.Value := _recorId;
  qrEntradaPacienteESTATUS_CLINICA.Value := 'P';

  qrEntradaPacienteSINPRFILTER.Value := 0;
  qrEntradaPacienteCoberturaConfirmada.Value := 0;
  qrEntradaPacienteCoberturaRechazada.Value := 0;
  qrEntradaPacienteCoberturaPreConfirmada.Value := 0;
  qrEntradaPacienteSucursalId.Value := DM.CurSucursal;
  qrEntradaPacienteSucursal.Value := qfindSucursal.FieldByName('SUCURSAL').AsInteger;

  If (qfindSucursal.FieldByName('GrupoId').AsString <> '') Then
    qrEntradaPacienteOrigen.Value := qfindSucursal.FieldByName('GrupoId').AsString
  Else
    qrEntradaPacienteOrigen.Value := '';

  If (qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
    qrEntradaPacienteClienteID.Value := qfindSucursal.FieldByName('Cliente_Uno').AsString
  Else
    qrEntradaPacienteClienteID.Value := '';

  qrEntradaPacienteOrigen.Value := DM.qrParametroGrupoCli.Value;
  qrEntradaPacienteDIRECCION.Value := 'CLINICA ABREU';

  qrEntradaPacienteBruto.Value := 0;
  qrEntradaPacienteDescuento.Value := 0;
  qrEntradaPacienteDescuentoBono.Value := 0;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteSubTotal.Value := 0;
  qrEntradaPacienteCoberturaSeguro.Value := 0;
  qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
  qrEntradaPacienteNeto.Value := 0;
  qrEntradaPacienteTotalPagado.Value := 0;
  qrEntradaPacienteTotalPendiente.Value := 0;
  qrEntradaPacientePrioridad.Value := 0;
  qrEntradaPacienteRESULTADOPACIENTE.Value := 0;
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

  qrEntradaPacienteFROM_CLINICA.Value := 0;
  qrEntradaPacienteEntradaIdAnt.Value := '0';
  qrEntradaPacienteClientePadre.Value := '';
  qrEntradaPacienteTipoEntrada.Value := 'N';
//  qrEntradaPacienteFormadePago.Value := 'CE';
  qrEntradaPacienteFormadePago.Value := 'EFE';
  cxDbPaciente.Properties.ReadOnly := False;
  cxDbPaciente.Style.Color := ClWindow;
  Val_Forma_Pago(qrEntradaPacienteFormadePago.Value);
  qrEntradaPacienteTasa.Value := DM.Tasa(DM.SystemDate, DM.qrParametroMonedaDolares.Value)/100;

 // edcoberturaporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
  edcobexpporc.Properties.ReadOnly := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
  edcoberturavalor.Properties.ReadOnly := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
  ConfirmarCobertura1.Enabled := not (qrEntradaPacienteCoberturaConfirmada.Value = 1);
  RegistrarPruebadelExterior1.Enabled := True;
  Asignar2daMuestra1.Enabled := True;

  EliminarDescuentoAplicado1.Enabled := False;
  AsignarDescuentoPermitidoalUsuario1.Enabled := false;
  AsignarDescuentoPermitidoalEmpleado1.Enabled := false;
  AsignarDescuentoAutorizadoporCobros1.Enabled := false;

  combodescto   := 1;
  ClienteFirst  := '';
  ClienteSecond := '';
  check_balance := True;
  cambiarprecio := False;

  ValorNC       := 0;
  ValorND       := 0;
  precio_combo  := 0;
  ConceptoNC    := '';
  seg_late      := False;

  //Valores de la 2da. Muestra.
  Record_Ant  := 0;
  Docto_Ant   := '';
  Muestra_Ant := '';
  Act_2da     := False;
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


procedure TfrmPuntoVentaClinica.qrEntradaPacienteAfterPost(DataSet: TDataSet);
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
         qdelete.SQL.Text := ' DELETE FROM PTClienteTransacciones WHERE IsNull(RecID,'+#39+#39+')<>'+#39+#39+
                             ' AND Clienteid = '#39 + qrEntradaPacienteClienteID.Value + #39 +
                             ' AND PacienteId = '#39 + qrEntradaPacientePACIENTEID.Value + #39 +
                             ' AND Documento = '+ #39 + qrEntradaPacienteEntradaID.Value + #39;
         qdelete.ExecSQL;
       end;
  end;
end;

procedure TfrmPuntoVentaClinica.qrEntradaPacienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  qrEntradaPacienteTotalPendiente.Value := qrEntradaPacienteNeto.Value - qrEntradaPacienteTotalPagado.Value;
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteClienteIDChange(Sender: TField);
begin
  inherited;
  If qrEntradaPaciente.State in [dsEdit, dsInsert] then
    Begin
      Confirmar_Cliente_Prueba;
      Val_Descuento;
//      ActTotales;
    end;
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteOrigenChange(Sender: TField);
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
            qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaID.Value;
            if qrentradapacienteorigen.value = dm.qrParametroGrupoPriv.Value then
            begin
              qrentradapacienteClienteid.value      := qrentradapacientePacienteId.value ;
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
            Confirmar_Precio_Prueba;
          End
        Else
          Val_Exterior;
      end;
    End;
//  actinterface;
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacientePACIENTEIDValidate(Sender: TField);
begin
  inherited;
  Val_Paciente;
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteCoberturaExpPorcValidate(
  Sender: TField);
begin
  inherited;
  If (qrEntradaPacienteCoberturaValor.Value >= 100) And (qrEntradaPacienteCoberturaExpPorc.Value = 1) Then
    Raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteCoberturaPorcValidate(Sender: TField);
begin
  inherited;
  If (qrEntradaPacienteCoberturaPorc.Value > 100) Then
    Raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteCoberturaValorValidate(
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

procedure TfrmPuntoVentaClinica.qrEntradaPacienteDetalleAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Val_Descuento;
//  VerificarPagoDiferencia;
//  ActTotales;
end;

procedure TfrmPuntoVentaClinica.qrEntradaPacienteDetalleAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qrEntradaPaciente.State in [dsEdit, dsInsert] then
    Begin
//      Val_Descuento;
//      VerificarPagoDiferencia;
//      ActTotales;
    End;
end;


procedure TfrmPuntoVentaClinica.BalanceActual1Click(Sender: TObject);
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


procedure TfrmPuntoVentaClinica.VerTransacciones1Click(Sender: TObject);
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


procedure TfrmPuntoVentaClinica.Val_Exterior;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  If (qrEntradaPaciente.Active = True) Then
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
          qrEntradaPacienteTipoDocumento.Value := 3;
          qrEntradaPacientePUBLICARINTERNET.Value := 0;
          qrEntradaPacientePUBLICARINTERNETDOCTOR.Value := 0;
          qrEntradaPacientePUBLICARINTERNETCLIENTE.Value := 0;
          qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
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
        End;
    End;
end;


procedure TfrmPuntoVentaClinica.Val_Paciente;
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


procedure TfrmPuntoVentaClinica.Val_Forma_Pago(Forma_Pago: string);
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


procedure TfrmPuntoVentaClinica.Leer_Forma_Pago;
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


procedure TfrmPuntoVentaClinica.Val_Balance;
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

              if (qrBalanceCliente.RecordCount > 5) then
              Begin
                  qrBalanceCliente.First;
                  while not qrBalanceCliente.Eof do
                  Begin
                       if (qrBalanceClienteValor.Value > 1) Or
                        (qrBalanceClienteValorRD.Value > 1) Then
                       begin
                         //Consulta de Transacciones del Paciente.
                         frmMain.LanzaVentana(-7981);
                         if (Tiene_Balance = 0) Then
                         Begin
                             frmMain.LanzaConsulta(-7989, qrEntradaPacientePacienteId.Value);
                             Raise exception.CreateFmt('El Paciente: ('+ qfindPacientes.FieldByName('Nombre').AsString +
                                                       ') Tiene Un Balance Pendiente.'+ #13 +
                                                       ' Por Favor Verifique.!!!', []);
                         end;
                       end;
                       qrBalanceCliente.Next;
                  end
              end;
            end;
          end;
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteDetalleBeforeDelete(DataSet: TDataSet);
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
            If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
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
            end;
      end
      else
              No_Procesar_AS400;
  end;
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteDetalleBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  comboprecio := True;
  comboborrar := False;
end;

procedure TfrmPuntoVentaClinica.qrEntradaPacienteDetalleBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  comboprecio := True;
  comboborrar := False;
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteDetalleBeforePost(DataSet: TDataSet);
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
  End;
End;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteDetalleDescuentoChange(Sender: TField);
begin
  inherited;
  if qrEntradaPacienteDetalle.State in [dsInsert,dsEdit] then
    qrEntradaPacienteDetalleTotalLinea.Value := ImporteLinea;
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteDetallePruebaIDChange(Sender: TField);
Var
 valor_precio : Double;
 permitido,CupID    : integer;
 qfind        : TADOQuery;
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
   qrEntradaPacienteDetalleSecuencia.Value := MaxSecuenciaLinea;
   qrEntradaPacienteDetalleRefRecid.Value := qrEntradaPacienteRECID.Value;
   qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
   qrEntradaPacienteDetalleDATAAREAID.Value := qrEntradaPacienteDATAAREAID.Value;
   qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
   qrEntradaPacienteDetalleCUADRADO.Value := qrEntradaPacienteCUADRADO.Value;
   qrEntradaPacienteDetalleTRANSFERIDO.Value := qrEntradaPacienteTRANSFERIDO.Value;
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
               if GrupoPrecio = EmptyStr then
                  ClienteFact := ClienteFactura
               Else
                  ClienteFact := GrupoPrecio;

               qrEntradaPacienteDetallePrecio.Value := DM.Precio_Prueba_Configurado(qrEntradaPacienteDetallePruebaID.Value,
                                                                                    ClienteFact,
                                                                                    qrEntradaPacienteMonedaID.Value,
                                                                                    qrEntradaPacienteOrigen.value,dm.GroupPrivado,GrupoPrecio,qrEntradaPacienteClaseCredito.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value)) * factor;
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
               if GrupoPrecio = EmptyStr then
                  ClienteFact := ClienteFactura
               Else
                  ClienteFact := GrupoPrecio;

               qrEntradaPacienteDetallePrecio.Value := DM.Precio_Prueba_Configurado(qrEntradaPacienteDetallePruebaID.Value,
                                                                                    ClienteFact,
                                                                                    qrEntradaPacienteMonedaID.Value,
                                                                                    qrEntradaPacienteOrigen.value,
                                                                                    dm.GroupPrivado,GrupoPrecio,qrEntradaPacienteClaseCredito.Value,
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


procedure TfrmPuntoVentaClinica.qrEntradaPacienteDetallePruebaIDValidate(Sender: TField);
begin
  inherited;
  Begin
    qrEntradaPacienteDetalle.Edit;
    qfindprueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru',qrEntradaPacienteDetallePruebaID.value);

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
        qfindRepetir.SQL.Text := ' SELECT * FROM PTPrueba '+
                                 ' WHERE Exterior = 1 '+
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
            qfindRepetir.SQL.Text := ' SELECT * FROM PTEntradaPacienteDetalleClinica '+
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


procedure TfrmPuntoVentaClinica.qrEntradaPacienteDoctorIDChange(Sender: TField);
begin
  inherited;
//  Buscar_Doctor;
end;

procedure TfrmPuntoVentaClinica.EdDoctorDblClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7984);
end;

procedure TfrmPuntoVentaClinica.EdDoctorPropertiesChange(Sender: TObject);
begin
  inherited;
  Buscar_Doctor;
end;

procedure TfrmPuntoVentaClinica.EdNombreDoctorDblClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7984);
end;

procedure TfrmPuntoVentaClinica.Buscar_Doctor;
var
 qfind : TADOQuery;
begin
  inherited;
  if (qrEntradaPaciente.State in [dsInsert,dsEdit]) And (EdDoctor.Text <> '') then
  begin
//   qfind := DM.Find('Select * from PTDoctor Where DoctorId = :doc', qrEntradaPacienteDoctorID.Value);
   qfind := DM.Find_Ldr('SELECT * FROM PTDoctor WHERE DoctorId = :doc', EdDoctor.Text);

   qrEntradaPacienteDoctorID.Value := qfind.FieldByName('DoctorId').AsString;
   qrEntradaPacienteNombreDoctor.Value := qfind.FieldByName('Nombre').AsString;
   qrEntradaPacienteResultadoDoctor.Value := qfind.FieldByName('ResultadoDoctor').AsInteger;
   qrEntradaPacientePublicarInternetDoctor.Value := qfind.FieldByName('PublicarInternet').AsInteger;

   if (qfind.FieldByName('DoctorId').AsInteger = 1) then
     Begin
       qrEntradaPacienteNombreDoctor.Value := '';
//       qrEntradaPacienteNombreDoctor.Value := Null;
       EdNombreDoctor.Properties.ReadOnly := False;
     end
   else
     EdNombreDoctor.Properties.ReadOnly := True;

   FreeAndNil(qfind);
  end;
end;

      
procedure TfrmPuntoVentaClinica.qrEntradaPacienteNombrePacienteValidate(Sender: TField);
begin
  inherited;
  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value) Or
     (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSoc.Value) Or
     (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoProy.Value) Then
    begin
      If (qrEntradaPacientePolizaID.Value = '') Then
        Begin
          qrEntradaPacientePolizaID.Value := qrEntradaPacienteNombrePaciente.Value;
        end;
    end;
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteTipoDocumentoChange(Sender: TField);
begin
 inherited;
 if qrEntradaPacienteTipoDocumento.Value = 2 then
    factor := -1
 else
    factor := 1;

 if qrEntradaPaciente.State in [dsedit, dsinsert] then RecalcularLineas;
end;


procedure TfrmPuntoVentaClinica.qrEntradaPacienteTipoEntradaChange(Sender: TField);
begin
  inherited;
  If (qrEntradaPacienteTipoEntrada.Value = 'D') then
    qrEntradaPacienteFormadePago.Value := 'CE'
  Else
    qrEntradaPacienteFormadePago.Value := 'EFE';

  Val_Forma_Pago(qrEntradaPacienteFormadePago.Value);
end;

function TfrmPuntoVentaClinica.MaxSecuenciaLinea : Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT MAX(Secuencia) FROM PTEntradaPacienteDetalleClinica WHERE refRecid = '+ IntToStr(qrEntradaPacienteRECID.Value);
 qfind.Open;
 result := qfind.Fields[0].AsInteger + 1;
 FreeAndNil(qfind);
end;


function TfrmPuntoVentaClinica.Buscar_Linea: Integer;
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


procedure TfrmPuntoVentaClinica.MenuItem1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7988);
end;


procedure TfrmPuntoVentaClinica.ActTotales;
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
                       ' FROM PTEntradaPacienteDetalleClinica '+
                       ' WHERE refRecid = '+ inttostr(qrEntradaPacienteRECID.Value) +
                       ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
     inttostr(qrEntradaPacienteRECID.Value);
     qfind.Open;

     qrEntradaPaciente.Edit;
     //Redondeo de los Valores del Punto de Venta.
//     qrEntradaPacienteBruto.Value := Dm.Redondeo(qfind.Fields[0].AsFloat);
     qrEntradaPacienteBruto.Value := Dm.Redondeo(qfind.Fields[0].AsFloat + qfind.Fields[3].AsFloat);
     qrEntradaPacienteDescuento.Value := Dm.Redondeo(qfind.Fields[1].AsFloat + qrEntradaPacienteDescuentoBono.Value);
     qrEntradaPacienteSubTotal.Value := Dm.Redondeo(qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value);
//     qrEntradaPacienteCoberturaSeguro.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);

     If (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
       Begin
         qrEntradaPacienteCoberturaSeguro.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);
         qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);
       end
     Else
       Begin
         qrEntradaPacienteCoberturaSeguro.Value := 0;
         qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);
       end;

     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
        (qrEntradaPacienteTipoDocumento.Value = 3) Or
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
     qrEntradaPacienteSubTotal.Value := 0;
     qrEntradaPacienteNeto.Value := 0;
     qrEntradaPacienteTotalPagado.Value := 0;
     qrEntradaPacienteTotalPendiente.Value := 0;
     qrEntradaPacienteCoberturaSeguro.Value := 0;
     qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
   End;
end;


procedure TfrmPuntoVentaClinica.AsignarDescuentoAutorizadoporCobros1Click(
  Sender: TObject);
begin
 Dm.Info('Esta Opcion Esta Desactivada. Utilice el Descuento Permitido al Usuario.');
 Beep;
end;


procedure TfrmPuntoVentaClinica.AsignarDescuentoPermitidoalEmpleado1Click(
  Sender: TObject);
begin
  inherited;
  If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) And
     (qrEntradaPacienteCoberturaSeguro.Value > 1) Then
  begin
      if Trim(qrEntradaPacientePacienteID.Value) <> EmptyStr then
      Begin
          if Not DM.Empleado_Existe(qrEntradaPacientePacienteID.Value) then
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

procedure TfrmPuntoVentaClinica.RecalcularLineas;
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

procedure TfrmPuntoVentaClinica.EliminarDescuentoAplicado1Click(Sender: TObject);
begin
  inherited;
  qrEntradaPaciente.Edit;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteDescAutorizadoPor.value := '';
  ActTotales;
end;


procedure TfrmPuntoVentaClinica.EliminarOrdenesenHold1Click(Sender: TObject);
begin
  inherited;
  //Eliminando Los Documentos en Hold.
  Del_Hold;
//  Showmessage(DateToStr(FechaPrometida(qrEntradaPacienteDetallePruebaId.Value)));
end;


procedure TfrmPuntoVentaClinica.MarcarPruebaNOProcesar1Click(Sender: TObject);
begin
  inherited;
  No_Procesar;
end;


function TfrmPuntoVentaClinica.ExisteCobro : Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTCobro WHERE CobroID = '+ #39 + cobroid + #39 +
                   ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39 +
                   ' AND EntradaId = '+ #39 + qrEntradaPacienteEntradaId.AsString + #39;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := True
 else
   result := false;

 FreeAndNil(qfind);
end;


function TfrmPuntoVentaClinica.TipoCobro : String;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTCobro WHERE CobroID = '+ #39 + cobroid + #39 +
                   ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39 +
                   ' AND EntradaId = '+ #39 + qrEntradaPacienteEntradaId.AsString + #39;
 qfind.Open;

 result := qfind.fieldbyname('TipoDoc').asstring;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVentaClinica.DesabilitarBotones(_SiNo : Boolean);
begin
 btcliente.Enabled := not _SiNo;
 btpaciente.Enabled := not _SiNo;
 btprueba.Enabled := not _SiNo;
 btentrada.Enabled := not _SiNo;
 btcancelar.Enabled := not _SiNo;
 bteliminar.Enabled := not _SiNo;
 btgrabar.Enabled := not _SiNo;

// If (qfindSucursal.FieldByName('Impresiones').AsBoolean <> True) Then
 If (qfindSucursal.FieldByName('Impresiones').AsInteger <> 1) Then
    btimprimir.Enabled := False
 Else
   btimprimir.Enabled := not _SiNo;

 BtHold.Enabled := not _SiNo;

 EliminarDescuentoAplicado1.Enabled := not _SiNo;
 CambiarLaboratorioNoenlasLineas1.Enabled := not _SiNo;

 RecibodeCobro1.Enabled := False;
 NotadeCredito1.Enabled := False;
 CuadredeCaja2.Enabled := False;
 GastosVarios1.Enabled := False;
 Materiales1.Enabled := False;
 CuadredeCaja1.Enabled := False;
 ConfirmarCobertura1.Enabled := False;
 edcobexpporc.Properties.ReadOnly := False;
 edcoberturavalor.Properties.ReadOnly := False;
 RegistrarPruebadelExterior1.Enabled := False;
 Asignar2daMuestra1.Enabled := False;
 RegistrarPruebadelExterior1.Enabled := False;
 AsignarDescuentoPermitidoalUsuario1.Enabled := False;
 AsignarDescuentoAutorizadoporCobros1.Enabled := False;
 RegistrarCobrosTemporales1.Enabled := False;
end;


procedure TfrmPuntoVentaClinica.Devoluciones1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7991, qrEntradaPacienteRECID.asstring,'DV');
end;

procedure TfrmPuntoVentaClinica.DistribucionCaja1Click(Sender: TObject);
begin
  inherited;
      frmMain.LanzaConsulta(-7992, dm.CurUser,formatdatetime('yyyymmdd',DM.Buscar_Fecha_Actual));
end;

procedure TfrmPuntoVentaClinica.dsEntradaPacienteStateChange(Sender: TObject);
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

procedure TfrmPuntoVentaClinica.EdCoberturaValorExit(Sender: TObject);
begin
  inherited;
  Act_Cobertura
end;


procedure TfrmPuntoVentaClinica.Act_Cobertura;
begin
 if qrEntradaPaciente.State in [dsedit, dsinsert] then
  begin
    qrEntradaPacienteDescuentoValor.Value := 0;
    Val_Descuento;
//    VerificarPagoDiferencia;
//    ActTotales;
  end;
end;


function TfrmPuntoVentaClinica.GetNextSecDoc(tipodoc : string) : String;
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

function TfrmPuntoVentaClinica.GetEntradaID : String;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

  Case qrEntradaPacienteTipoDocumento.Value of
   0 : begin
        result := GetNextSecDoc('CLI');
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


function TfrmPuntoVentaClinica.GetEntradaID_Hold : String;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;
 result := GetNextSecDoc('HOL');
end;

procedure TfrmPuntoVentaClinica.Boton_Cobrar;
begin
 If ( qrEntradaPacienteNeto.Value > 0.00 ) And
    ( qrentradaPacienteBruto.Value > 0.00 ) And
    ( qrEntradaPacienteTotalPendiente.Value > 0.00 ) And
    ( (qrEntradaPacienteTipoDocumento.Value = 0) Or
      (qrEntradaPacienteTipoDocumento.Value = 3) ) Then
  Begin
//    CrearCobro;
//    RefrescarCobro;
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


procedure TfrmPuntoVentaClinica.Viejo_Cobrar;
begin
  inherited;
  if qrEntradaPacienteNeto.Value <> 0 then
   begin
//     CrearCobro;
//     RefrescarCobro;
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

procedure TfrmPuntoVentaClinica.VolantedePruebasARS1Click(Sender: TObject);
begin
  inherited;
//  Application.ProcessMessages;
    if Trim(qrEntradaPacienteEntradaID.Value) <> EmptyStr then
    begin
//      ShowMessage('Ruta Recibo Printer='+Ruta_Factura);
      if Ruta_Factura <> Emptystr then
      begin
           Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FS');
           ppImpFacturaSeguro.ShowPrintDialog := False;
           ppImpFacturaSeguro.ShowAutoSearchDialog := True;
           ppImpFacturaSeguro.DeviceType := dtPrinter;
           ppImpFacturaSeguro.PrinterSetup.PaperHeight := 8.5;
           ppImpFacturaSeguro.PrinterSetup.PaperName := 'Custom';
           ppImpFacturaSeguro.PrinterSetup.PaperWidth := 4;
           ppImpFacturaSeguro.PrinterSetup.PrinterName := Ruta_Factura;
           ppImpFacturaSeguro.Print;
      end
      else
      Begin
            Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FS');
            ppImpFacturaSeguro.DeviceType := dtScreen;
            ppImpFacturaSeguro.Print;
      end;
    end;
//    ImpresionRwPrint;
end;


procedure TfrmPuntoVentaClinica.VolantedePruebasTomaMuestra1Click(Sender: TObject);
begin
  inherited;
//  Application.ProcessMessages;
  if Trim(qrEntradaPacienteEntradaID.Value) <> EmptyStr then
    begin
//      ShowMessage('Ruta Recibo Printer='+Ruta_Factura);
      DM.qrParametro.close;
      DM.qrParametro.open;
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

procedure TfrmPuntoVentaClinica.vwDoctoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    Key := 0;
    SendMessage(edDoctor.InnerControl.Handle, WM_KEYDOWN, VK_RETURN, 0);
  end;
end;

procedure TfrmPuntoVentaClinica.FacturaExterior1Click(Sender: TObject);
begin

  if (qrEntradaPacienteEntradaID.Value <> '') and
     ( (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
       (qrEntradaPacienteTipoDocumento.Value = 3) Or
       (qrEntradaPacienteFactExterior.Value = 1) ) Then
  begin
      if Ruta_Factura <> EmptyStr then
      Begin
          Buscar_Campos_Extras(qrEntradaPacientePACIENTEID.Value,'FE');
          ppImpFacturaExterior.ShowPrintDialog := False;
          ppImpFacturaExterior.DeviceType := dtPrinter;
          ppImpFacturaExterior.PrinterSetup.PaperHeight := 8.5;
          ppImpFacturaExterior.PrinterSetup.PaperName := 'Custom';
          ppImpFacturaExterior.PrinterSetup.PaperWidth := 4;
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


procedure TfrmPuntoVentaClinica.BuscarDatos;
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


procedure TfrmPuntoVentaClinica.ActInterface;
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

        lcGeneralItem15.Caption := 'Afiliado No.:';
        qrEntradaPacientePolizaID.DisplayLabel := 'Afiliado No.:';

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

        If (qrEntradaPacienteCoberturaPreConfirmada.Value = 1) Then
          begin
//           EdCoberturaValor.Enabled := False;
           EdCoberturaValor.Style.Color := ClAqua;
           EdCoberturaValor.Properties.ReadOnly := True;
          end
        else
          begin
//           EdCoberturaValor.Enabled := True;
           EdCoberturaValor.Style.Color := ClWindow;
           EdCoberturaValor.Properties.ReadOnly := False;
          end
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
          lcGeneralItem15.Caption := 'Referencia';
          qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
         end
       else
        if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value then
          begin
           lcGeneralItem15.Caption := 'Referencia';
           qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
          end
        else
//         if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value then
         if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value) Or
            (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSoc.Value) then
           begin
             CxDbPaciente.Enabled := True;
             lcGeneralGroup9.Enabled := True;
             lcGeneralItem6.Enabled := True;
             qrEntradaPacientePolizaID.Required := True;
             qrEntradaPacienteNombrePaciente.Required := True;
             lcGeneralItem15.Caption := 'Referencia';
             qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
             qrEntradaPacienteSexo.Required := False;
             qrEntradaPacienteEdadPaciente.Required := False;
           end
         else
           if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoProy.Value then
             begin
               CxDbPaciente.Enabled := True;
               lcGeneralGroup9.Enabled := True;
               lcGeneralItem6.Enabled := True;
               qrEntradaPacientePolizaID.Required := True;
               qrEntradaPacienteNombrePaciente.Required := True;
               lcGeneralItem15.Caption := 'Referencia';
               qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
               qrEntradaPacienteSexo.Required := False;
               qrEntradaPacienteEdadPaciente.Required := False;
             end
           Else
             begin
               lcGeneralItem15.Caption := 'Referencia';
               qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
             end;
  //Activar las Impresiones del Punto de Venta.
 Impresiones;
 RecibodeCobro1.Enabled := False;
 NotadeCredito1.Enabled := False;
 CuadredeCaja2.Enabled := False;
 GastosVarios1.Enabled := False;
 Materiales1.Enabled := False;
 CuadredeCaja1.Enabled := False;
 ConfirmarCobertura1.Enabled := False;
 edcobexpporc.Properties.ReadOnly := False;
 edcoberturavalor.Properties.ReadOnly := False;
 RegistrarPruebadelExterior1.Enabled := False;
 Asignar2daMuestra1.Enabled := False;
 RegistrarPruebadelExterior1.Enabled := False;
 AsignarDescuentoPermitidoalUsuario1.Enabled := False;
 AsignarDescuentoAutorizadoporCobros1.Enabled := False;
 RegistrarCobrosTemporales1.Enabled := False;
end;


procedure TfrmPuntoVentaClinica.RefrescarInterface;
begin
// actinterface;
 DM.qrParametro.Close;
 DM.qrParametro.Open;
 //Si Ya Se Registro EL CUADRE DE CAJA.
 if (qrEntradaPacienteCUADRADO.Value = 1) Then
 begin
   btpaciente.Enabled := false;
   btprueba.Enabled := false;
   bteliminar.Enabled := false;
   btcliente.Enabled := false;
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
   btgrabar.Enabled := false;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.   btcobrar.Enabled := false;
   if qrEntradaPacienteTotalPendiente.Value = 0 then
      btnotacredito.Enabled := false
   else if qrEntradaPacienteTotalPendiente.Value < 0 then
      btnotacredito.Enabled := true;

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
 end;

 //Si Esta Registrando el Documento Actualmente.
 If (qrEntradaPacienteTotalPagado.Value < 0.01) And
    (qrEntradaPaciente.State = dsInsert) Then
 begin
     btpaciente.Enabled := true;
     btprueba.Enabled := true;
     bteliminar.Enabled := true;
     btcliente.Enabled := true;
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

    lcGeneralItem13.Visible := True;
    lcGeneralItem22.Visible := True;
    lcGeneralItem31.Visible := True;
    lcGeneralGroup11.Visible := True;
   end;

 //Si la Cobertura Fue Confirmada.
 if (qrEntradaPacienteCoberturaConfirmada.Value = 1) Then
 begin
    btpaciente.Enabled := false;
    btprueba.Enabled := false;
    bteliminar.Enabled := false;
    btcliente.Enabled := false;

    Asignar2daMuestra1.Enabled := False;
    EliminarDescuentoAplicado1.Enabled := false;
    RegistrarPruebadelExterior1.Enabled := False;
    CambiarLaboratorioNoenlasLineas1.Enabled := false;
    AsignarDescuentoPermitidoalUsuario1.Enabled := false;
    AsignarDescuentoPermitidoalEmpleado1.Enabled := false;
    AsignarDescuentoAutorizadoporCobros1.Enabled := false;

    ConfirmarCobertura1.Enabled := False;
    edcobexpporc.Properties.ReadOnly := True;
    edcoberturavalor.Properties.ReadOnly := True;

    //Si Tiene Monto Pendiente.
    if (qrEntradaPacienteTotalPendiente.Value > 0) Then
      Begin
        btgrabar.Enabled := true;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.        btcobrar.Enabled := true;
//        btnotacredito.Enabled := true;

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
end;

//Validando Los Parametros de Descuentos.
procedure TfrmPuntoVentaClinica.Val_Descuento;
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
        AsignarDescuentoPermitidoalUsuario1.Enabled := true;
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
     AsignarDescuentoPermitidoalUsuario1.Enabled := false;
     AsignarDescuentoPermitidoalEmpleado1.Enabled := true;
     AsignarDescuentoAutorizadoporCobros1.Enabled := false;
   End;
// if qrEntradaPaciente.RecordCount > 0 then   qrEntradaPaciente.Post;
 If ((qrEntradaPaciente.State in [dsInsert])) OR
    ((qrEntradaPaciente.State in [dsEdit]) And ((qrEntradaPacienteOrigen.value = dm.qrParametroGrupoVip.Value ) or (qrEntradaPacienteOrigen.value = '12' )))  then
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
           qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(qfindPacientes.FieldByName('ClienteId').AsString,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value))
       end;

     VerificarPagoDiferencia;
//     ActTotales;
   end;
end;


procedure TfrmPuntoVentaClinica.VerificarPagoDiferencia;
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
   qfind := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteId = :cli', qrEntradaPacientePacienteId.Value);

   If (qfind.FieldByName('CobrarDiferencia').Value = 0) then
     begin
      qrEntradaPaciente.Edit;
      qrEntradaPacienteDescuentoPorc.Value := 0;
      qrEntradaPacienteDescuentoValor.Value := 0;

      If (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
        Begin
          qrEntradaPacienteDescuentoValor.Value := DM.Redondeo(qrEntradaPacienteSubTotal.Value -
                                                               qrEntradaPacienteCoberturaSeguro.Value);
        end;
     end
   Else
     begin
       if ( (qfindPacientes.FieldByName('GrupoCliente').AsString <> DM.qrParametroGrupoVip.Value) And
            (qfindPacientes.FieldByName('GrupoCliente').AsString <> DM.qrParametroGrupoAcc.Value) And
            (qfindPacientes.FieldByName('GrupoCliente').AsString <> DM.qrParametroGrupoEmp.Value) ) Then
         Begin
           qrEntradaPaciente.Edit;
           qrEntradaPacienteDescuentoPorc.Value := 0;
           qrEntradaPacienteDescuentoValor.Value := 0;
         end;
     end;

   FreeAndNil(qfind);
  end;

 qrEntradaPaciente.Edit;
 ActTotales;
end;


function TfrmPuntoVentaClinica.CanCambiarLaboratorio;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('SELECT * FROM SysUsuarios WHERE UserID = :user',DM.CurUser);
 result := qfind.FieldByName('CambiarMuestraNo').AsBoolean;
 FreeAndNil(qfind);
end;


function TfrmPuntoVentaClinica.CanMenuEspecial;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('SELECT * FROM SysUsuarios WHERE UserID = :user',DM.CurUser);
 result := qfind.FieldByName('FuncionesEspeciales').AsBoolean;
 FreeAndNil(qfind);
end;


function TfrmPuntoVentaClinica.Asignar_Descuento;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('SELECT * FROM SysUsuarios WHERE UserID = :user', DM.CurUser);
 result := qfind.FieldByName('AsignarDescuentos').AsBoolean;
 FreeAndNil(qfind);
end;


//Poniendo el Documento en Hold.
procedure TfrmPuntoVentaClinica.Act_Hold;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT COUNT(RecId) FROM PTEntradaPacienteClinica '+
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
end;


//Eliminando Los Documentos en Hold.
procedure TfrmPuntoVentaClinica.Del_Hold;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTEntradaPacienteClinica '+
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
        DM.DataBase.Execute('DELETE FROM PTEntradaPacienteClinica WHERE RecId = '+ qfind.FieldByName('RecId').AsString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);
        DM.DataBase.Execute('DELETE FROM PTEntradaPacienteDetalleClinica WHERE Refrecid = '+ qfind.FieldByName('RecId').AsString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);

        qfind.Next;
      End;
   End;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVentaClinica.DepositosSucursales1Click(Sender: TObject);
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

procedure TfrmPuntoVentaClinica.No_Procesar;
Var
 qact : TADOQuery;
begin
 If ( DM.Mensaje('Esta Seguro de que Esta Prueba NO Se Procesara?' ,mb_yesno) = id_yes ) Then
   Begin
     qact := DM.NewQuery;

     qact.Close;
     qact.SQL.Clear;
     qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalleClinica SET '+
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

     DM.Info('La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') NO Ser� Procesada.!!!');
     If dm.qrParametroServidor_AS400.value <> EmptyStr then
     begin
          if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
          begin
             BtInterfaseAS400Click(Nil);
          end;
     end;
   end;
end;

procedure TfrmPuntoVentaClinica.Buscar_Muestra;
Var
 Dias   : Extended;
 qfind  : TADOQuery;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTEntradaPacienteClinica '+
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
         btpaciente.Enabled := false;
         btcliente.Enabled := false;
         bteliminar.Enabled := false;
         btnotacredito.Enabled := False;

         if (qfind.FieldByName('DoctorId').AsString <> '') then
          begin
            qrEntradaPacienteDoctorID.Value := qfind.FieldByName('DoctorId').AsString;
            qrEntradaPacienteNombreDoctor.Value := qfind.FieldByName('NombreDoctor').AsString;
            qrEntradaPacienteResultadoDoctor.Value := qfind.FieldByName('ResultadoDoctor').AsInteger;
            qrEntradaPacientePublicarInternetDoctor.Value := qfind.FieldByName('PublicarInternetDoctor').AsInteger;

            if (qfind.FieldByName('DoctorId').AsInteger = 1) then
              EdNombreDoctor.Properties.ReadOnly := False
            else
              EdNombreDoctor.Properties.ReadOnly := True;
          end;

         Act_2da     := True;
         Record_Ant  := qfind.FieldByName('RecId').AsInteger;
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
procedure TfrmPuntoVentaClinica.Val_2da_Muestra;
Var
 qfind  : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTEntradaPacienteClinica '+
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


procedure TfrmPuntoVentaClinica.Buscar_Combo;
begin
  qfindcombo := DM.NewQuery;

  qfindcombo.Close;
  qfindcombo.SQL.Text := ' SELECT * FROM PTCombosPruebas '+
                         ' WHERE ComboId = '+ #39 + qrEntradaPacienteDetallePruebaID.Value + #39 +
                         ' ORDER BY linea ';
  qfindcombo.Open;

  If (qfindcombo.RecordCount > 0) then
    qfindcombo.First
  Else
    Raise exception.CreateFmt('El COMBO ('+ qrEntradaPacienteDetallePruebaID.Value +') NO Tiene Pruebas Registrada.', []);
end;


procedure TfrmPuntoVentaClinica.Borrar_Combo;
begin
  If ( DM.Mensaje('Esta Seguro de Eliminar el Combo Registrado?' ,mb_yesno) = id_yes ) And
     ( comboborrar = True )Then
   Begin
     DM.DataBase.Execute('DELETE FROM PTEntradaPacienteDetalleClinica WHERE Combo = 1 '+
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


procedure TfrmPuntoVentaClinica.Actu_Precio_Combo;
Var
  valor : Double;
  qfind : TAdoQuery;
Begin
  qfind := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT COUNT(PruebaId) FROM PTEntradaPacienteDetalleClinica '+
                    ' WHERE Combo = 1 AND Precio < 1 '+
                    ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                    ' AND Refrecid = '+ #39 + qrEntradaPacienteRECID.AsString + #39;
  qfind.Open;

  If (qfind.RecordCount > 0) And (qfind.Fields[0].AsInteger > 0) And (precio_combo > 1) then
    Begin
      valor := DM.Redondeo(precio_combo / qfind.Fields[0].AsInteger);

      qrEntradaPacienteDetalle.Close;
      qrEntradaPacienteDetalle.parameters[0].Value := StrToInt64(qrEntradaPacienteRecid.AsString);
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


procedure TfrmPuntoVentaClinica.Insertar_Combo_Precio;
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


procedure TfrmPuntoVentaClinica.Insertar_Combo_Blanco;
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


//Actualizando los Datos del Cliente (Numeros de Telefono - Fax - Internet).
procedure TfrmPuntoVentaClinica.Act_Cliente;
Var
  texto       : String;
  qActualiza  : TAdoQuery;
begin
 if (qrEntradaPacientePublicarInternet.Value = 1) then
   texto := ' UPDATE PTCliente SET '+
            ' Telefono = :tel1, '+
            ' Telefono2 = :tel2, '+
            ' Fax = :fax1, '+
            ' PublicarInternet = :publ '+
            ' WHERE ClienteID = :pac '+
            ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39
 else
   texto := ' UPDATE PTCliente SET '+
            ' Telefono = :tel1, '+
            ' Telefono2 = :tel2, '+
            ' Fax = :fax1 '+
            ' WHERE ClienteID = :pac '+
            ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;

 qActualiza := DM.NewQuery;
 qActualiza.Close;
 qActualiza.SQL.Text := texto;
 qActualiza.Parameters.ParamByName('tel1').Value := qrEntradaPacienteTelefonos.Value;
 qActualiza.Parameters.ParamByName('tel2').Value := qrEntradaPacienteTelefono2.Value;
 qActualiza.Parameters.ParamByName('fax1').Value := qrEntradaPacienteFax.Value;

 if (qrEntradaPacientePublicarInternet.Value = 1) then
   qActualiza.Parameters.ParamByName('publ').Value := qrEntradaPacientePublicarInternet.Value;

 qActualiza.Parameters.ParamByName('pac').Value  := qrEntradaPacientePacienteID.Value;
 qActualiza.ExecSQL;

 if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
   begin
     //Actualizando los Datos del Cliente (Poliza - Aseguradora).
     qActualiza := DM.NewQuery;
     qActualiza.Close;
     qActualiza.SQL.Text := ' UPDATE PTCliente SET '+
                            ' Poliza = :pol, '+
                            ' Seguro = :seg '+
                            ' WHERE ClienteID = :pac '+
                            ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
     qActualiza.Parameters.ParamByName('pol').Value := Copy(qrEntradaPacientePolizaID.Value, 1, 20);
     qActualiza.Parameters.ParamByName('seg').Value := qrEntradaPacienteClienteID.Value;
     qActualiza.Parameters.ParamByName('pac').Value := qrEntradaPacientePacienteID.Value;
     qActualiza.ExecSQL;
   end;
end;


//Buscando los Datos del Cliente a Facturar y Sus Parametros.
procedure TfrmPuntoVentaClinica.Buscar_Cliente;
begin
// If (qrEntradaPacienteClienteId.Value <> '') then
//  Begin
    //Buscando los Datos del Cliente Registrado en el Punto de Venta.
    qfindCltParams := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli', qrEntradaPacienteClienteId.Value);

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
    qfindCltParams := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli', ClienteFactura);

    //Buscando los Datos del Grupo del Cliente.
    Buscar_Grupo_Clt(qfindCltParams.FieldByName('GrupoCliente').AsString);

    //Buscando los Datos del PACIENTE Registrado y Sus Parametros.
    Buscar_Paciente;
//  End;
end;


//Buscando los Datos del PACIENTE Registrado y Sus Parametros.
procedure TfrmPuntoVentaClinica.Buscar_Paciente;
begin
  qfindPacientes := DM.Find_Ldr('Select * from PTCliente Where ClienteID = :pac', qrEntradaPacientePacienteId.Value);

  //Buscando los Datos del Grupo del Paciente.
  Buscar_Grupo_Pac(qfindPacientes.FieldByName('GrupoCliente').AsString);
end;


//Buscando los Datos del Grupo del Cliente.
Procedure TfrmPuntoVentaClinica.Buscar_Grupo_Clt(Grupo: string);
begin
 qfindGrupoClt := DM.Find_Ldr('SELECT * FROM PTGrupoCliente WHERE GrupoCliente = :grp', Grupo);
end;


//Buscando los Datos del Grupo del Paciente.
Procedure TfrmPuntoVentaClinica.Buscar_Grupo_Pac(Grupo: string);
begin
 qfindGrupoPac := DM.Find_Ldr('SELECT * FROM PTGrupoCliente WHERE GrupoCliente = :grp', Grupo);
end;


//Buscando los Datos del Codigo CUPS del Cliente.
procedure TfrmPuntoVentaClinica.Buscar_Cod_Cups(cliente: String; prueba: String);
begin
  qfindcodcup := DM.NewQuery;
  qfindcodcup.Close;
  qfindcodcup.SQL.Text := ' SELECT * FROM PTCodigoCup '+
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
procedure TfrmPuntoVentaClinica.Insert_Card_Descuento;
Var qfind, qactu, qinsert : TAdoQuery;
begin
 If (qrEntradaPacienteDescuentoTexto.Value <> 'DESCUENTO SUCURSAL') And
    (qrEntradaPacienteDescuentoPlanId.Value <> 'SUCURSAL') And
    (qrEntradaPacienteDescuentoCard.Value <> '') Then
   Begin
     //Actualizando el Estatus del BONO Utilizado.
     qactu := DM.NewQuery;
     qactu.Close;
     qactu.SQL.Text := ' UPDATE PTTarjetaBono SET '+
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
     qfind.SQL.Text := ' SELECT * FROM PTTarjetaCliente '+
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


procedure TfrmPuntoVentaClinica.InstructivodeInternet1Click(Sender: TObject);
begin
  inherited;
  if (not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
                       (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
                       (qrEntradaPacientePacienteId.Value ='00006242'))) Then
  begin
      if Trim(qrEntradaPacientePACIENTEID.Value) <> '' then
      begin
        DM.qrInternet.Close;
        DM.qrInternet.parameters[0].value := Busca_Cliente_Internet(qfindPacientes.FieldByName('ClienteID').AsString);
//        Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value);
        DM.qrInternet.parameters[1].value := 'P';
        DM.qrInternet.Open;

        DM.qrEntradaCabRep.Close;
        DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPacienteClinica '+
                                       ' WHERE RecId = :rec '+
                                       ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
        DM.qrEntradaCabRep.Parameters.ParamByName('rec').Value := qrEntradaPacienteRECID.Value;
        DM.qrEntradaCabRep.Open;

        If (DM.qrInternet.RecordCount > 0) Then
        Begin
            If Ruta_Factura <> Emptystr then
            Begin
               DM.ppImpInternet.ShowPrintDialog := False;
               DM.ppImpInternet.DeviceType := dtPrinter;
               DM.ppImpInternet.PrinterSetup.PaperHeight := 8.5;
               DM.ppImpInternet.PrinterSetup.PaperName := 'Custom';
               DM.ppImpInternet.PrinterSetup.PaperWidth := 4;
               DM.ppImpInternet.PrinterSetup.PrinterName := Ruta_Factura;
               DM.ppImpInternet.Print;
            End
            else
            Begin
                DM.ppImpInternet.DeviceType := dtScreen;
                DM.ppImpInternet.Print;
            End;
        End;
      end;
  end;
end;

procedure TfrmPuntoVentaClinica.ppHeaderBand4BeforePrint(Sender: TObject);
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


procedure TfrmPuntoVentaClinica.ppHeaderBand5BeforePrint(Sender: TObject);
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


procedure TfrmPuntoVentaClinica.ppHeaderBand6BeforePrint(Sender: TObject);
begin
//  ppLbTelefono04.Caption := 'Tel.: ' + DM.qrSucursalTELEFONO.Value;
//  if DM.qrSucursalFAX.Value <> '' then
//    ppLbTelefono04.Caption := 'Tel.: ' + DM.qrSucursalTELEFONO.Value + '. Fax : '+ DM.qrParamFax.Value + '.';
end;


procedure TfrmPuntoVentaClinica.ppSummaryFacturaSeguroBeforePrint(Sender: TObject);
begin
  ppLbCoberturaPorc.Caption := FormatFloat('##0.00', qrEntradaPacienteCOBERTURAPORC.Value);
  ppLbCoberturaValor.Caption := FormatFloat('###,###,##0.00', Valor_Cobertura(qrEntradaPacienteRECID.Value));
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
  ppMemoFactSeg.Clear;
  ppMemoFactSeg.Lines.Append(DM.qrParametroNotaFacturaSeguro.Value);

  If (qrEntradaPacienteNota.Value <> '') Then
    Begin
      ppMemoFactSeg.Lines.Append('');
      ppMemoFactSeg.Lines.Append(qrEntradaPacienteNota.Value);
    end;

  If (qfindGrupoClt.FieldByName('Comentario').AsString <> '') Then
    Begin
      ppMemoFactSeg.Lines.Append('');
      ppMemoFactSeg.Lines.Append(qfindGrupoClt.FieldByName('Comentario').AsString);
    end;
{
  If (qfindGrupoPac.FieldByName('Comentario').AsString <> '') Then
    Begin
      ppMemoFactSeg.Lines.Append('');
      ppMemoFactSeg.Lines.Append(qfindGrupoPac.FieldByName('Comentario').AsString);
    end;
}
end;


procedure TfrmPuntoVentaClinica.ppSummaryBand4BeforePrint(Sender: TObject);
begin
  inherited;
  ppMemoFactExterior.Lines.Clear;
  ppMemoFactExterior.Lines.Append(DM.qrParametroNotaFacturaExterior.Value);
end;


procedure TfrmPuntoVentaClinica.ppSummaryFactPacienteConSeguroBeforePrint(Sender: TObject);
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

      LbDescuentoCon.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDescuento.Value);
      LbBrutoCon.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteBruto.Value - qrEntradaPacienteCoberturaSeguro.Value);
      LbNetoCon.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteNeto.Value);
      LbPagadoCon.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPagado.Value);
      LbPendienteCon.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPendiente.Value);
    end
  Else
    Begin
      LbDescConTitulo.Caption := 'Descuento : ';
      LbDescuentoCon.Caption := '';
      LbBrutoCon.Caption := '';
      LbDescuentoCon.Caption := '';
      LbNetoCon.Caption := '';
      LbPagadoCon.Caption := '';
      LbPendienteCon.Caption := '';
    end;

  ppMemoFactConSeg.Lines.Clear;
  ppMemoFactConSeg.Lines.Append(DM.qrParametroNotaFacturaPaciente.Value);

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
end;


procedure TfrmPuntoVentaClinica.ppSummaryFactPacienteSinSeguroBeforePrint(Sender: TObject);
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

      LbDescuentoSin.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDescuento.Value);
      LbBrutoSin.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteBruto.Value);
      LbNetoSin.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteNeto.Value);
      LbPagadoSin.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPagado.Value);
      LbPendienteSin.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPendiente.Value);
    end
  Else
  Begin
      LbDescSinTitulo.Caption := 'Descuento : ';
      LbDescuentoSin.Caption := '';
      LbBrutoSin.Caption := '';
      LbDescuentoSin.Caption := '';
      LbNetoSin.Caption := '';
      LbPagadoSin.Caption := '';
      LbPendienteSin.Caption := '';
  end;

  ppMemoFactSinSeg.Lines.Clear;
  ppMemoFactSinSeg.Lines.Append(DM.qrParametroNotaFacturaNoSeguro.Value);

  If (Trim(qrEntradaPacienteNota.Value) <> EmptyStr) Then
  Begin
      ppMemoFactSinSeg.Lines.Append('');
      ppMemoFactSinSeg.Lines.Append(qrEntradaPacienteNota.Value);
  end;
{
  If (qfindGrupoClt.FieldByName('Comentario').AsString <> '') Then
    Begin
      ppMemoFactSinSeg.Lines.Append('');
      ppMemoFactSinSeg.Lines.Append(qfindGrupoClt.FieldByName('Comentario').AsString);
    end;
}
  If (Trim(qfindGrupoPac.FieldByName('Comentario').AsString) <> EmptyStr) Then
  Begin
      ppMemoFactSinSeg.Lines.Append('');
      ppMemoFactSinSeg.Lines.Append(qfindGrupoPac.FieldByName('Comentario').AsString);
  end;
end;


//Impresion de los Codigos CUPS - Factura de Seguros.
procedure TfrmPuntoVentaClinica.ppDetailBand3BeforePrint(Sender: TObject);
begin
//  qfindprint := DM.find('Select * from PTPrueba where PruebaID = :pru', qrEntradaPacienteDetalleCodigoCupID.Value);
  qfindprint := DM.Find_Ldr('SELECT * FROM PTPrueba where PruebaID = :pru', qrEntradaPacienteDetallePruebaId.Value);

  If (qfindprint.FieldByName('Tipo').Value = 'C') And (qrEntradaPacienteDetalleCoberturaAplica.Value = 0) then
  Begin
     LbPrecio.Caption := '';
     LbCodigo.Caption := '';
     LbDescripcion.Caption := '';
     LbPrecio.Visible := False;
     LbCodigo.Visible := False;
     LbDescripcion.Visible := False;
  end
  Else
  Begin
  If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
  Begin
        LbCodigo.Caption := qrEntradaPacienteDetalleCodigoCupID.Value;
        LbDescripcion.Caption := qrEntradaPacienteDetalleCodigoCupID.Value+'-'+qrEntradaPacienteDetalleDescripcionCup.Value+' '+Trim(qrEntradaPacienteDetalleComentario.Value);
        LbPrecio.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
        LbPrecio.Visible := True;
        LbCodigo.Visible := True;
        LbDescripcion.Visible := True;
  end
  Else
  Begin
        LbPrecio.Caption := '';
        LbCodigo.Caption := '';
        LbDescripcion.Caption := '';
        LbPrecio.Visible := False;
        LbCodigo.Visible := False;
        LbDescripcion.Visible := False;
  end;
  end;
end;

//Imprimiendo el Comentario Como Descripcion en la Factura del Exterior.
procedure TfrmPuntoVentaClinica.ppDetailBand4BeforePrint(Sender: TObject);
begin
 ppDBComentario.Visible := True;
 ppDBDescripcion.Visible := False;
end;


procedure TfrmPuntoVentaClinica.ppDetailBandSinSeguroBeforePrint(Sender: TObject);
Var qComboPrueba  : TAdoQuery;
begin
  Buscar_Cliente;
  If (qfindCltParams.FieldByName('ImprimirAliasPrueba').AsInteger = 1) Then
  Begin
    qComboPrueba := DM.NewQuery;
    qComboPrueba.Close;
    qComboPrueba.SQL.Text := ' SELECT Alias FROM PTCOMBOSPRUEBAS (nolock) WHERE COMBOID = '+#39+DM.PruebaCombo(qrEntradaPacienteRecID.Value)+#39+
                       ' AND PRUEBAID = '+#39+qrEntradaPacienteDetallePruebaId.Value+#39;
    qComboPrueba.Open;
    if qComboPrueba.FieldByName('Alias').AsString <> EmptyStr then
        LbDescripcion1.Caption := qComboPrueba.FieldByName('Alias').AsString
    else
        LbDescripcion1.Caption := qrEntradaPacienteDetalleDescripcion.Value;
    FreeAndNil(qComboPrueba);
  end
  else
  begin
      LbDescripcion1.Caption := qrEntradaPacienteDetalleDescripcion.Value;
  end;
  //Imprimiendo el Precio de la Prueba.
  If (qfindCltParams.FieldByName('IncluirPrecioTicket').AsInteger = 1) And
     (qfindCltParams.FieldByName('ImprimirAliasPrueba').AsInteger = 0) Then
  Begin
      LbDescSinTitulo.Visible := True;
      LbBrutoTit.Visible := True;
      LbDescSinTitulo.Visible := True;
      LbNetoTit.Visible := True;
      LbPagadoTit.Visible := True;
      LbPendienteTit.Visible := True;
      LbPrecio1.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
    end
  Else
    Begin
      LbDescSinTitulo.Visible := True;
      LbBrutoTit.Visible := True;
      LbNetoTit.Visible := True;
      LbPagadoTit.Visible := True;
      LbPendienteTit.Visible := True;
      LbPrecio1.Caption := '';
    end;
end;

procedure TfrmPuntoVentaClinica.Insertar_Materiales_Prueba;
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
    qfind.SQL.Text := 'SELECT * FROM PTMaterialesPrueba WHERE PruebaId = '+ #39 + qrEntradaPacienteDetallePruebaId.Value + #39;
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


procedure TfrmPuntoVentaClinica.Insertar_Materiales_Envase;
Var
 qfind, qinsert : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTMaterialesPrueba '+
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


procedure TfrmPuntoVentaClinica.Insertar_Materiales_Sangre;
Var
 qfind, qinsert : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTMaterialesPrueba '+
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


function TfrmPuntoVentaClinica.BuscarDia(dia: Integer) : Integer;
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


function TfrmPuntoVentaClinica.FechaPrometida(Prueba: string) : TDate;
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

 qtest := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);

 semana := DayOfTheWeek(DM.SystemDate);

 If (qtest.RecordCount > 0) Then
  Begin
    qfrec := DM.Find_Ldr('SELECT * FROM PTDiasProcesamiento WHERE CodDiasProc = :cod',
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
procedure TfrmPuntoVentaClinica.Insertar_LabelTemp;
Var
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
       qfindprulab := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaID.Value);

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
function TfrmPuntoVentaClinica.Validar_Label_Temp(_paciente: String; _entrada: String;
                                           _muestra: String; _prueba: String): Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTLabelTemp '+
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


procedure TfrmPuntoVentaClinica.Crear_Labels_Temp(_secuenciaact: integer);
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
                     '          DeptId, Medio, Color, COUNT(MuestraNo) As Total FROM PTLabelTemp '+
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


procedure TfrmPuntoVentaClinica.Buscar_Label_Temp(_paciente: String; _sucursal: String; _entrada: String;
                                           _muestra: String; TipoMuestra: String; _departamento: String;
                                           _medio: String; _color: String; _total: Integer);
Var
 qdata  : TADOQuery;
 _valor, _desclabel  : string;
 _actual, _numero : integer;
begin
 _actual    := 0;
 _numero    := 0;

 qdata := DM.NewQuery;
 qdata.Close;
 qdata.SQL.Text := ' SELECT * FROM PTLabelTemp '+
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
procedure TfrmPuntoVentaClinica.Update_Label_Temp(_paciente: String; _entrada: String; _muestra: String;
                                           _prueba: String; _label: String; _labelglobal: String;
                                           _labelunico: String; _desc: String; _recid: Integer;
                                           _secuencia: Integer; _numero: Integer);
Var
 qactu    : TADOQuery;
begin
  qactu := DM.NewQuery;

  qactu.Close;
  qactu.SQL.Text := ' UPDATE PTLabelTemp SET Label = :lab, LabelGlobal = :glo, '+
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


procedure TfrmPuntoVentaClinica.Update_Label_Descripcion(_label: String; _descripcion: String);
Var
 qactu    : TADOQuery;
begin
  qactu := DM.NewQuery;

  qactu.Close;
  qactu.SQL.Text := ' UPDATE PTLabelTemp '+
                    ' SET DescripcionLabel = :des '+
                    ' WHERE Label = :lab ';
  qactu.Parameters.ParamByName('lab').Value := _label;
  qactu.Parameters.ParamByName('des').Value := _descripcion;
  qactu.ExecSQL;

  FreeAndNil(qactu);
end;


//Generando los Labels de la Toma de Muestra.
procedure TfrmPuntoVentaClinica.Generar_Labels;
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
procedure TfrmPuntoVentaClinica.Confirmar_Cliente_Prueba;
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
      qfind1 := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteId = :cli', ClienteFirst);
      qfind2 := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteId = :cli', ClienteSecond);

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
procedure TfrmPuntoVentaClinica.Confirmar_Precio_Prueba;
Var
 valor_precio : Double;
 qprueba      : TADOQuery;
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
     qprueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaID.value);

     qrEntradaPacienteDetalleRefRecid.Value := qrEntradaPacienteRECID.Value;
     qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
     qrEntradaPacienteDetalleDATAAREAID.Value := qrEntradaPacienteDATAAREAID.Value;
     qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
     qrEntradaPacienteDetalleCUADRADO.Value := qrEntradaPacienteCUADRADO.Value;
     qrEntradaPacienteDetalleTRANSFERIDO.Value := qrEntradaPacienteTRANSFERIDO.Value;
     qrEntradaPacienteDetalleSINPRFILTER.Value := qrEntradaPacienteSINPRFILTER.Value;

     //Registrando las Pruebas en Dollares del Exterior.
     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
        (qrEntradaPacienteTipoDocumento.Value = 3) Or
        (qrEntradaPacienteFactExterior.Value = 1) Then
       Begin
         qrEntradaPacienteDESCUENTOPORC.Value  := 0;
         qrEntradaPacienteDetalleDescPct.Value := 0;
{
         If (qfindRepetir.RecordCount > 0) then
           Begin
             If (qfindprueba.FieldByName('PrecioDolares').Value > 1) Then
               qrEntradaPacienteDetallePrecio.Value := qfindprueba.FieldByName('PrecioDolares').Value
             Else
               frmMain.LanzaVentana(-8001)
           End
         Else
           frmMain.LanzaVentana(-8002);
}
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
                 if GrupoPrecio = EmptyStr then
                    ClienteFact := ClienteFactura
                 Else
                    ClienteFact := GrupoPrecio;

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
                 if (qrEntradaPacienteSucursalId.Value <> dm.Cursucursal ) then
                     dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(qrEntradaPacienteSucursalId.Value);
                 if GrupoPrecio = EmptyStr then
                    ClienteFact := ClienteFactura
                 Else
                    ClienteFact := GrupoPrecio;

                 qrEntradaPacienteDetallePrecio.Value := DM.Precio_Prueba_Configurado(qrEntradaPacienteDetallePruebaID.Value,
                                                                                      ClienteFact,
                                                                                      qrEntradaPacienteMonedaID.Value,
                                                                                      qrEntradaPacienteOrigen.value,
                                                                                      dm.GroupPrivado,GrupoPrecio,qrEntradaPacienteClaseCredito.Value,
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

  Val_Descuento;
//  VerificarPagoDiferencia;
//  ActTotales;
end;


procedure TfrmPuntoVentaClinica.Agregar_Pacientes(PacienteId : String);
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

   sqlString := ' SELECT * FROM PTCliente WHERE GrupoCliente IN (' + #39 +
                DM.qrParametroGrupoVip.Value + #39 + ',' + #39 +
                DM.qrParametroGrupoAcc.Value + #39 + ',' + #39 +
                DM.qrParametroGrupoEmp.Value + #39 + ',' + #39 +
                DM.qrParametroGrupoPriv.Value + #39 + ') '+
                ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                ' AND ClienteID LIKE '+ #39 + '%' + PacienteId + '%'+ #39;

   DM.qrPacientes.Close;
   DM.qrPacientes.SQL.Text := sqlString;
   DM.qrPacientes.Open;

   If (DM.qrPacientes.RecordCount > 0) Then
    Begin
      qfindciudad := DM.Find_Ldr('SELECT * FROM PTCIUDAD Where CiudadID = :ciu', DM.qrPacientesCiudadID.AsString);

      qrEntradaPacientePacienteID.Value := DM.qrPacientesClienteID.Value;
      if DM.Empleado_Existe(qrEntradaPacientePacienteID.Value) then
      begin
           cxDbPaciente.Properties.ReadOnly := True;
           cxDbPaciente.Style.Color := ClAqua;
      end
      else
      begin
           cxDbPaciente.Properties.ReadOnly := False;
           cxDbPaciente.Style.Color := ClWindow;
      end;
      qrEntradaPacienteNombrePaciente.Value := DM.qrPacientesNombre.Value;
      qrEntradaPacienteDireccion.Value := DM.qrPacientesDireccion.Value;
      qrEntradaPacienteTelefonos.Value := DM.qrPacientesTelefono.Value;
      qrEntradaPacienteTelefono2.Value := DM.qrPacientesTelefono2.Value;
      qrEntradaPacienteFax.Value := DM.qrPacientesFax.Value;
      qrEntradaPacienteEmail.Value := DM.qrPacientesEMail.Value;
      qrEntradaPacienteSexo.Value := DM.qrPacientesSexo.Value;
      qrEntradaPacienteFECHANACIMIENTO.Value := DM.qrPacientesFECHANACIMIENTO.Value;
      qrEntradaPacienteEdadPaciente.Value := Trunc((StrtoInt(FormatDateTime('yyyymmdd', DM.SystemDate))-StrtoInt(FormatDateTime('yyyymmdd', DM.qrPacientesFechaNacimiento.Value)))/10000);
      qrEntradaPacientePUBLICARINTERNET.Value := 0;

      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
      qrEntradaPacienteGrupoDescuentoTotal.Value   := DM.qrPacientesGrupoDescuentoTotal.Value;
      qrEntradaPacienteGrupoDescuentoLinea.Value   := DM.qrPacientesGrupoDescuentoLinea.Value;
      qrEntradaPacienteGrupoPrecio.Value           := DM.qrPacientesGrupoPrecio.Value;
      qrEntradaPacienteFormadePago.Value           := DM.qrPacientesFormaPago.Value;
      Val_Forma_Pago(qrEntradaPacienteFormadePago.Value);
      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.

      If (qfindciudad.RecordCount > 0) then
        qrEntradaPacienteDireccion.Value := qrEntradaPacienteDireccion.Value + #13 +
                                            qfindciudad.FieldByName('Descripcion').AsString;

      //Llenar Los Parametros de los Pacientes. ////////////////////////////////////////////////////////////
      qrEntradaPacienteResultadoPaciente.Value := DM.qrPacientesEnvioResultado.Value;
//WILLIAMS
//      qrentradaPacientePublicarInternet.value := DM.qrPacientesPublicarInternet.Value;

      If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
        begin
          If (DM.qrPacientesCobrarDiferencia.Value = 1) then
            EliminarDescuentoAplicado1Click(Nil);
        end;

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


procedure TfrmPuntoVentaClinica.Agregar_Clientes(ClienteId : String);
Var
 sqlString : String;
 qfind, qfindciudad : TADOQuery;
begin
// If ( qrEntradaPaciente.State in [dsinsert,dsedit] ) Then
 If ( (qrEntradaPaciente.State in [dsinsert, dsedit]) ) And
    ( (qrEntradaPacienteClienteID.Value = '') Or
      (qrEntradaPacienteClienteID.IsNull) ) Then
  Begin
   DM.qrParametro.Close;
   DM.qrParametro.Open;

   sqlString := ' SELECT * FROM PTCliente WHERE GrupoCliente IN ('  + #39 +
                                      DM.qrParametroGrupoVip.Value  + #39 + ',' + #39 +
                                      DM.qrParametroGrupoAcc.Value  + #39 + ',' + #39 +
                                      DM.qrParametroGrupoEmp.Value  + #39 + ',' + #39 +
                                      DM.qrParametroGrupoPriv.Value + #39 + ') '+
                ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                ' AND ClienteID LIKE '+ #39 + '%' + ClienteId + '%' + #39;

   DM.qrPacientes.Close;
   DM.qrPacientes.SQL.Text := sqlString;
   DM.qrPacientes.Open;

   If (DM.qrPacientes.RecordCount > 0) Then
    Begin
      qfind       := DM.Find('SELECT * FROM PTProyecto Where ClienteID = :clt', ClienteId);
      qfindciudad := DM.Find_Ldr('SELECT * FROM PTCIUDAD Where CiudadID = :ciu', DM.qrPacientesCiudadID.AsString);

       if DM.Empleado_Existe(DM.qrPacientesClienteID.AsString) then
       begin
           cxDbPaciente.Properties.ReadOnly := True;
           cxDbPaciente.Style.Color := ClAqua;
       end
       else
       begin
           cxDbPaciente.Properties.ReadOnly := False;
           cxDbPaciente.Style.Color := ClWindow;
       end;
      qrEntradaPacienteClienteNombre.Value := DM.qrPacientesNombre.AsString;
      qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
      qrEntradaPacienteOrigen.Value        := DM.qrPacientesGrupoCliente.Value;
      qrEntradaPacienteClienteID.Value     := DM.qrPacientesClienteID.Value;
      qrEntradaPacienteSINPRFILTER.Value   := DM.qrPacientesSINPRFILTER.Value;

      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
      qrEntradaPacienteGrupoDescuentoTotal.Value   := DM.qrPacientesGrupoDescuentoTotal.Value;
      qrEntradaPacienteGrupoDescuentoLinea.Value   := DM.qrPacientesGrupoDescuentoLinea.Value;
      qrEntradaPacienteGrupoPrecio.Value           := DM.qrPacientesGrupoPrecio.Value;
      qrEntradaPacienteFormadePago.Value           := DM.qrPacientesFormaPago.Value;
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
      FreeAndNil(qfindCiudad);

      RefrescarInterface;
    End;
  End;
end;


Function TfrmPuntoVentaClinica.Cargar_Valor(campo: String; valor: Variant): String;
begin
 Result := campo + ' - ( ' + VarToStr(valor) + ' ).';
end;


procedure TfrmPuntoVentaClinica.Mirar_Valor_CAB;
Var idx : Integer;
begin
  For idx := 0 To qrEntradaPaciente.FieldCount - 1 Do
   begin
     Showmessage('CAB - ' + Cargar_Valor(qrEntradaPaciente.Fields[idx].DisplayLabel,
                                         qrEntradaPaciente.Fields[idx].Value));
   end;
end;


procedure TfrmPuntoVentaClinica.Mirar_Valor_DET;
Var idx : Integer;
begin
  For idx := 0 To qrEntradaPacienteDetalle.FieldCount - 1 Do
   begin
     Showmessage('DET - ' + Cargar_Valor(qrEntradaPacienteDetalle.Fields[idx].DisplayLabel,
                                         qrEntradaPacienteDetalle.Fields[idx].Value));
   end;
end;


procedure TfrmPuntoVentaClinica.Act_RecIdDetalle;
begin
 If MessageDlg('Este Proceso ACTUALIZARA Todas Las Pruebas Registradas.!!!' + #13 +
               'Esta Seguro de Querer Ejecutarlo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   qrEntradaPacienteDetalle.Close;
   qrEntradaPacienteDetalle.SQL.Text := 'SELECT * FROM ptentradapacientedetalleClinica ORDER BY refrecid, secuencia ';
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


procedure TfrmPuntoVentaClinica.GridPruebasEntradasPacienteDetComentarioPropertiesInitPopup(
  Sender: TObject);
Var
 qfind : TADOQuery;
 strsql,strPruebaAnt : String;
begin
  inherited;
 qfind := DM.NewQuery;
 strPruebaAnt := '';
 qfind.Close;
 strsql := ' SELECT * FROM PTPRUEBA WHERE ';
 if Copy(qrEntradaPacienteDetalleDESCRIPCION.Value,1,2) = 'AL' then
    strsql := strsql + ' DESCRIPCION LIKE '+#39+'ALERGENO DE%'+#39+' AND '
 else  if Copy(qrEntradaPacienteDetalleDESCRIPCION.Value,1,2) = 'CU' then
 begin
    strsql := strsql + ' DESCRIPCION LIKE '+#39+'CULTIVO DE%'+#39;
    strsql := strsql + ' AND SUBSTRING(PRUEBAID,5,4) IN ( SELECT SUBSTRING(COD_COMEN,3,4) FROM '+
                       ' PTCOMENTARIOPRUEBAS WHERE ESTATUS='+#39+'A'+#39+' AND SUBSTRING(COD_COMEN,1,2)='+#39+'CU'+#39+') AND ';
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

      end;
  end;
  FreeAndNil(qfind);
end;

procedure TfrmPuntoVentaClinica.GridPruebasEntradasPacienteDetStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
   begin
    If (ARecord.Values[GridPruebasEntradasPacienteDetCoberturaAplica.Index] <> 1) Then
     AStyle := noseguro;
   end;
end;



procedure TfrmPuntoVentaClinica.Cancelar_Entrada;
begin
 If qrEntradaPaciente.State = dsinsert then
  begin
    If qrEntradaPacienteEntradaID.Value = '' then
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


procedure TfrmPuntoVentaClinica.Guardar_Entrada;
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


procedure TfrmPuntoVentaClinica.Re_Grabar;
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
procedure TfrmPuntoVentaClinica.Procesar_Usuario_New;
Var
  Pass2, Clave, i : Integer;
  Limpio, Usuario, Useralt, Tipo : String;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Eliminando los Guiones de la Cedula - RNC del Cliente.
  Limpio  := DM.Cortar_Char('-', qfindPacientes.FieldByName('Identificacion').AsString);

  //Creando la Clave de Internet.
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
  Insertar_Usuario_New(Usuario, FormatFloat('000000', Clave),
                       qfindPacientes.FieldByName('Nombre').AsString,
                       qfindPacientes.FieldByName('Identificacion').AsString,
                       qrEntradaPacientePacienteId.Value, Tipo, 'N');
end;


//Creando la Clave de Internet Segun el Algoritmo de Alejandro Espinosa Curiel.
Function TfrmPuntoVentaClinica.Crear_Clave(cedularnc : String) : Integer;
Var
  Numero  : Double;
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
Function TfrmPuntoVentaClinica.Crear_Usuario(nombre : String) : String;
Var
  Texto : String;
  Valor, Largo, Blanco : Integer;
begin
{
  Largo := Length(nombre);

  Blanco := AnsiPos(' ', nombre);
//  Blanco := AnsiPos(#32, nombre);

  If (Largo > 10) Then
    Begin
      If (Blanco > 1) Then
        Begin
         Valor := Blanco - 1;

         If (Valor > 9) Then
           Texto := Copy(nombre, 1, 10)
         Else
           Texto := Copy(nombre, 1, Valor);
        End
      Else
        Texto := Copy(nombre, 1, 10);
    End
  Else
    Texto := nombre;

  Result := Texto;
}
  Largo := Length(nombre);

  Blanco := AnsiPos(' ', nombre);
//  Blanco := AnsiPos(#32, nombre);

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
Function TfrmPuntoVentaClinica.Valida_Usuario(usuario : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.Find_Ldr('SELECT * FROM PTUsuariosInternet WHERE UsuarioInternet = :usr', usuario);

  If (qfind.RecordCount > 0) then
    Result := False
  Else
    Result := True;

  FreeAndNil(qfind);
end;


//Insertando el Usuario de Internet Creado.
procedure TfrmPuntoVentaClinica.Insertar_Usuario_New(usuario: string; clave: string; name: string; cedula: string;
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
Function TfrmPuntoVentaClinica.Buscar_User_Internet(_customer : String) : Boolean;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;

  qinter.Close;
  qinter.SQL.Text := ' SELECT * FROM PTUsuariosInternet '+
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

function TfrmPuntoVentaClinica.GetReciboAS400(tipodoc : string; _sucursal : String; _sucAS400: Integer) : String;
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


function TfrmPuntoVentaClinica.GetSecuenciaAS400(_sucursal : String; _sucAS400: Integer) : Integer;
Var
 _valor   : String;
 numero   : Integer;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';

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
     _valor := FormatFloat('00', _sucAS400) + FormatFloat('0000000', numero);
   end;
 end;
 Result := StrToInt(_valor);
 FreeAndNil(qsecdoc);
end;


procedure TfrmPuntoVentaClinica.RecibosdelAS4001Click(Sender: TObject);
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
Procedure TfrmPuntoVentaClinica.Buscar_Campos_Extras(ClienteId :String;Tipo : String);
var
 qfind2 : TADOQuery;
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
  Add('IsNull(( SELECT WsArsid from ptars a (nolock) ,ptcliente c (nolock)  where a.CodProveedor=c.CarnetNumero  and c.Clienteid='+#39+qrEntradaPacienteClienteID.value+#39+'),'+#39+'0'+#39+') As WsArsID ');
  Add('FROM PTCliente c (nolock) ');
  Add('WHERE ClienteId = '+#39+ClienteId+#39);
  Add('AND DataAreaId = '+#39+DM.CurEmpresa+#39);
  Open;
  if Not IsEmpty then
  begin
         if Tipo='FS' then
         Begin
           ppLabel140.caption := fieldbyname('Identificacion').value;
           ppLabel133.caption := Copy(cxDBImageComboBox2.Text,1,1);
           ppLabel171.caption := fieldbyname('Tel_Sucursal').value;
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
         end;
   end;
 End;
 FreeAndNil(qfind2);
end;
procedure TfrmPuntoVentaClinica.No_Procesar_AS400;
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
     qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalleClinica SET '+
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
  End;
end;
procedure TfrmPuntoVentaClinica.No_Procesar_AS400_Orden;
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
         qact.SQL.Text := ' UPDATE PTEntradaPacienteClinica SET '+
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

procedure TfrmPuntoVentaClinica.ImpresionRwPrint;
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


Function TfrmPuntoVentaClinica.Estremos(TextE1,TextE2 : String ; LengE :SmallInt):String ;
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
Function TfrmPuntoVentaClinica.Verifica_Comentario_Coberturas : integer;
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
    strsql := 'Select PruebaID From ptprueba '+
                      ' Where Pruebaid='+#39+qrEntradaPacienteDetallePruebaId.Value+#39;
    if dm.qrPruebasCOMENTARIO_REQ.Value = 1 then
    begin
        strsql := strsql + ' And Comentario_req='+'1';
    end
    else if dm.qrPruebasCOD_SEC_PRUEBA.Value > 0 then
    begin
        strsql := strsql + ' And Cod_Sec_Prueba > '+'1';
    end;
    qfind.SQL.Text := strsql;
    if (dm.qrPruebasCOMENTARIO_REQ.Value > 0) or (dm.qrPruebasCOD_SEC_PRUEBA.Value > 0 )then
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
Function TfrmPuntoVentaClinica.Verifica_Orden_Pruebas_Paternidad : integer;
Var
 qfind : TADOQuery;
 strsql,strPruebaAnt : String;
 SecAnt : Integer;
 SecIni : Integer;
begin
 qfind := DM.NewQuery;
 strPruebaAnt := '';
 qfind.Close;
 strsql := 'Select Top 1 Cod_Sec_Prueba From ptprueba '+
                  ' Where Cod_Sec_Prueba > '+'1';
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
Function TfrmPuntoVentaClinica.Verifica_Autorizacion : Boolean;
Var
 qAuto  : TAdoQuery;
begin
  qAuto := DM.NewQuery;

  qAuto.Close;
  qAuto.SQL.Text := ' SELECT * FROM PTCliente '+
                     ' Where Grupocliente = ' + #39 + DM.qrParametroGrupoSeg.Value + #39 +
                     ' AND Nombre like ' + #39 + '%UNIVERSAL%' + #39 +
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39+
                     ' AND ClienteID = '+#39+qrEntradaPacienteClienteID.Value+#39;
  qAuto.Open;

  if (qAuto.RecordCount > 0) then
    result := True
  else
    result := False;

  FreeAndNil(qAuto);
end;
Function TfrmPuntoVentaClinica.Verifica_Clave_Internet(Clave : String) : Boolean;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' SELECT * FROM PTUsuariosInternet '+
                     ' WHERE ClaveInternet = ' + #39 + Clave + #39 +
                     ' AND Tipo = ' + #39 + 'P' + #39 +
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qinter);
End;
Function TfrmPuntoVentaClinica.Retorna_Paciente_Clave_Internet(ClienteID : String) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' Select top 1 i.clienteid from ptusuariosinternet i inner join ptcliente c on i.clienteid=c.clienteid '+
                     ' Where i.clienteid='+#39+ClienteID+#39+')'+
                     ' AND i.Tipo = ' + #39 + 'P' + #39 +
                     ' AND i.DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('ClienteId').Value
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;
Function TfrmPuntoVentaClinica.Busca_Cliente_Internet(ClienteId : String) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' Select top 1 Clienteid from ptusuariosinternet '+
                     ' Where ClienteId='+#39+ClienteId+#39+
                     ' AND Tipo = ' + #39 + 'P' + #39 +
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('ClienteId').Value
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;

Function TfrmPuntoVentaClinica.BuscaNumeroOrden(CobroID : String) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' Select isnull(Max(Orden)+1,0) as Orden from ptCobroDetalle '+
                     ' Where Cobroid ='+#39+CobroID+#39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('Orden').Value
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;
END.


