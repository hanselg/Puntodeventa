unit TransferenciaPOS_SAP;

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
  cxMemo, DateUtils, cxBlobEdit, cxintl, cxGroupBox, cxRadioGroup,
  cxCurrencyEdit, JvMemoryDataset;

type
  TfrmTransferenciaPOS_SAP = class(TfrmCustomModule)
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
    dxLayoutControl2Group3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl2Item4: TdxLayoutItem;
    BtTransferir: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    qrEntradaPaciente: TADOQuery;
    qrEntradaPacienteTotalPendiente: TFloatField;
    dsEntradaPaciente: TDataSource;
    qrEntradaPacienteDetalle: TADOQuery;
    dsEntradaPacienteDetalle: TDataSource;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    qrEntradaPacienteDetalleCondPac: TStringField;
    qrEntradaPacienteDetalleCondMuestra: TStringField;
    qrEntradaPacienteDetalleDiasProcesamiento: TStringField;
    qrEntradaPacienteDetalleDiasResultado: TIntegerField;
    dxLayoutControl2Group4: TdxLayoutGroup;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl2Item9: TdxLayoutItem;
    qrEntradaPacienteENTRADAID: TStringField;
    qrEntradaPacienteFECHA: TDateTimeField;
    qrEntradaPacienteHORAENTRADA: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacienteENCLINICA: TIntegerField;
    qrEntradaPacienteRECORDCLINICA: TStringField;
    qrEntradaPacienteNUMEROHABITACION: TStringField;
    qrEntradaPacienteFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteFECHADEALTA: TDateTimeField;
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteHORAPROMETIDA: TStringField;
    qrEntradaPacienteFLEBOTOMISTAID: TStringField;
    qrEntradaPacientePROYECTOID: TStringField;
    qrEntradaPacienteRECORDID: TIntegerField;
    qrEntradaPacienteBRUTO: TBCDField;
    qrEntradaPacienteDESCUENTO: TBCDField;
    qrEntradaPacienteSUBTOTAL: TBCDField;
    qrEntradaPacienteNETO: TBCDField;
    qrEntradaPacienteNOMBREPACIENTE: TStringField;
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
    qrEntradaPacienteTIPODOCUMENTO: TIntegerField;
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
    qrEntradaPacienteDATAAREAID: TStringField;
    qrEntradaPacienteRECID: TIntegerField;
    qrEntradaPacienteDetallePRUEBAID: TStringField;
    qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField;
    qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField;
    qrEntradaPacienteDetalleDESCRIPCION: TStringField;
    qrEntradaPacienteDetalleCODIGOCUPID: TStringField;
    qrEntradaPacienteDetalleMUESTRAANT: TStringField;
    qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField;
    qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField;
    qrEntradaPacienteDetalleREFRECID: TIntegerField;
    qrEntradaPacienteDetalleSECUENCIA: TIntegerField;
    qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField;
    qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField;
    qrEntradaPacienteDetallePRECIO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField;
    qrEntradaPacienteDetalleTOTALLINEA: TBCDField;
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
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    qrEntradaPacienteDetalleRECID: TIntegerField;
    qrEntradaPacienteDetalleESTATUS: TStringField;
    qrEntradaPacienteNOTA: TStringField;
    qrEntradaPacienteDIRECCION: TStringField;
    qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaPacienteDetalleCOMENTARIO: TStringField;
    qrEntradaPacienteNCFTYPEID: TStringField;
    qrEntradaPacienteNCFID: TStringField;
    qrEntradaPacienteNCFNAME: TStringField;
    qrEntradaPacienteCUADRADO: TIntegerField;
    qrEntradaPacienteTRANSFERIDO: TIntegerField;
    qrEntradaPacienteSUCURSAL: TIntegerField;
    qrEntradaPacienteNUMEROINTERNET: TIntegerField;
    qrEntradaPacienteRESULTADOCLIENTE: TIntegerField;
    qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaPacienteDetalleCUADRADO: TIntegerField;
    qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField;
    qrEntradaPacienteDetallePASARAXAPTA: TIntegerField;
    qrEntradaPacienteDetalleCOMBO: TIntegerField;
    qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaPacienteDetalleADICIONAL: TBCDField;
    qrEntradaPacientePOLIZAID: TStringField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacienteTRANSFERENCIA: TStringField;
    qrEntradaPacienteGRUPOPRECIO: TStringField;
    qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField;
    qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaPacienteDetalleREPREALIZADA: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRANO: TStringField;
    qrEntradaPacienteDetalleTIENEACUERDOPRECIO: TIntegerField;
    qrEntradaPacienteDetalleTIENEACUERDODESCUENTO: TIntegerField;
    qrEntradaPacienteDetalleCUADREGLOBAL: TStringField;
    qrEntradaPacienteDetalleCUADREUSUARIO: TStringField;
    qrEntradaPacienteDetalleEXTERIOR: TIntegerField;
    qrEntradaPacienteDetalleLDRDEPARTAMENTOID: TStringField;
    qrEntradaPacienteFROM_CLINICA: TIntegerField;
    qrEntradaPacienteREFRECID_POS: TIntegerField;
    qrEntradaPacienteENTRADAID_POS: TStringField;
    qrEntradaPacienteMUESTRANO_POS: TStringField;
    qrEntradaPacienteESTATUS_CLINICA: TStringField;
    qrEntradaPacienteDetallePRECIOCOMBO: TBCDField;
    qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetalleREFRECID_POS: TIntegerField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
    qrEntradaPacienteDetalleESTATUS_CLINICA: TStringField;
    dxLayoutControl2Item12: TdxLayoutItem;
    qrClientes: TADOQuery;
    qrClientesCLIENTEID: TStringField;
    qrClientesNOMBRE: TStringField;
    qrClientesCONTACTO: TStringField;
    qrClientesTELEFONO: TStringField;
    qrClientesFAX: TStringField;
    qrClientesGRUPOCLIENTE: TStringField;
    qrClientesINCLUIRPRECIOTICKET: TIntegerField;
    qrClientesAUTOCONFIRMAR: TIntegerField;
    qrClientesEMPLEADOID: TStringField;
    qrClientesCODIGOAXAPTA: TStringField;
    qrClientesEMAIL: TStringField;
    qrClientesDIRECCIONWEB: TStringField;
    qrClientesTELEFONO2: TStringField;
    qrClientesMONEDAID: TStringField;
    qrClientesIDENTIFICACION: TStringField;
    qrClientesORIGEN: TIntegerField;
    qrClientesDIRECCION: TStringField;
    qrClientesCIUDADID: TStringField;
    qrClientesPRUEBASPORDIA: TIntegerField;
    qrClientesCOBERTURAPORC: TBCDField;
    qrClientesPRINCIPAL: TStringField;
    qrClientesENVIORESULTADO: TIntegerField;
    qrClientesPUBLICARINTERNET: TIntegerField;
    qrClientesFECHANACIMIENTO: TDateTimeField;
    qrClientesSEGURO: TStringField;
    qrClientesCARNETNUMERO: TStringField;
    qrClientesPOLIZA: TStringField;
    qrClientesCOBRARDIFERENCIA: TIntegerField;
    qrClientesENVIARFAX: TIntegerField;
    qrClientesACTIVARDESCUENTOS: TIntegerField;
    qrClientesUSARALIASNOMBRE: TIntegerField;
    qrClientesUSARALIASPRUEBAS: TIntegerField;
    qrClientesSIEMPREINTERNET: TIntegerField;
    qrClientesIMPRIMIRALIASNOMBRE: TIntegerField;
    qrClientesIMPRIMIRALIASPRUEBA: TIntegerField;
    qrClientesIMPRIMIRSOLOTOTALES: TIntegerField;
    qrClientesIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrClientesUSARACUERDOPROPIO: TIntegerField;
    qrClientesALIAS: TStringField;
    qrClientesQUIENPAGA: TStringField;
    qrClientesTIPOCLIENTE: TStringField;
    qrClientesENTREGARRESULTADOS: TStringField;
    qrClientesTEXTOREFERENCIA: TStringField;
    qrClientesSIEMPREIMPRIMIR: TIntegerField;
    qrClientesTIPOSANGRE: TStringField;
    qrClientesPACIENTECIAID: TStringField;
    qrClientesSECTOR: TStringField;
    qrClientesUSUARIOINTERNET: TStringField;
    qrClientesCLAVEINTERNET: TStringField;
    qrClientesTIPOINTERNET: TStringField;
    qrClientesCLASECREDITO: TStringField;
    qrClientesDOCTORID: TStringField;
    qrClientesSEXO: TIntegerField;
    qrClientesESTATUS: TIntegerField;
    qrClientesTIPOCLIENTEAS400: TIntegerField;
    qrClientesCODIGOIDAS400: TStringField;
    qrClientesGRUPOPRECIO: TStringField;
    qrClientesFORMAPAGO: TStringField;
    qrClientesDATAAREAID: TStringField;
    qrClientesRECID: TIntegerField;
    qrClientesGRUPODESCUENTOLINEA: TStringField;
    qrClientesGRUPODESCUENTOTOTAL: TStringField;
    dsClientes: TDataSource;
    dsPacientes: TDataSource;
    qrPacientes: TADOQuery;
    qrPacientesCLIENTEID: TStringField;
    qrPacientesNOMBRE: TStringField;
    qrPacientesCONTACTO: TStringField;
    qrPacientesTELEFONO: TStringField;
    qrPacientesFAX: TStringField;
    qrPacientesGRUPOCLIENTE: TStringField;
    qrPacientesINCLUIRPRECIOTICKET: TIntegerField;
    qrPacientesAUTOCONFIRMAR: TIntegerField;
    qrPacientesEMPLEADOID: TStringField;
    qrPacientesCODIGOAXAPTA: TStringField;
    qrPacientesEMAIL: TStringField;
    qrPacientesDIRECCIONWEB: TStringField;
    qrPacientesTELEFONO2: TStringField;
    qrPacientesMONEDAID: TStringField;
    qrPacientesIDENTIFICACION: TStringField;
    qrPacientesORIGEN: TIntegerField;
    qrPacientesDIRECCION: TStringField;
    qrPacientesCIUDADID: TStringField;
    qrPacientesPRUEBASPORDIA: TIntegerField;
    qrPacientesCOBERTURAPORC: TBCDField;
    qrPacientesPRINCIPAL: TStringField;
    qrPacientesENVIORESULTADO: TIntegerField;
    qrPacientesPUBLICARINTERNET: TIntegerField;
    qrPacientesFECHANACIMIENTO: TDateTimeField;
    qrPacientesSEGURO: TStringField;
    qrPacientesCARNETNUMERO: TStringField;
    qrPacientesPOLIZA: TStringField;
    qrPacientesCOBRARDIFERENCIA: TIntegerField;
    qrPacientesENVIARFAX: TIntegerField;
    qrPacientesACTIVARDESCUENTOS: TIntegerField;
    qrPacientesUSARALIASNOMBRE: TIntegerField;
    qrPacientesUSARALIASPRUEBAS: TIntegerField;
    qrPacientesSIEMPREINTERNET: TIntegerField;
    qrPacientesIMPRIMIRALIASNOMBRE: TIntegerField;
    qrPacientesIMPRIMIRALIASPRUEBA: TIntegerField;
    qrPacientesIMPRIMIRSOLOTOTALES: TIntegerField;
    qrPacientesIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrPacientesUSARACUERDOPROPIO: TIntegerField;
    qrPacientesALIAS: TStringField;
    qrPacientesQUIENPAGA: TStringField;
    qrPacientesTIPOCLIENTE: TStringField;
    qrPacientesENTREGARRESULTADOS: TStringField;
    qrPacientesTEXTOREFERENCIA: TStringField;
    qrPacientesSIEMPREIMPRIMIR: TIntegerField;
    qrPacientesTIPOSANGRE: TStringField;
    qrPacientesPACIENTECIAID: TStringField;
    qrPacientesSECTOR: TStringField;
    qrPacientesUSUARIOINTERNET: TStringField;
    qrPacientesCLAVEINTERNET: TStringField;
    qrPacientesTIPOINTERNET: TStringField;
    qrPacientesCLASECREDITO: TStringField;
    qrPacientesDOCTORID: TStringField;
    qrPacientesSEXO: TIntegerField;
    qrPacientesESTATUS: TIntegerField;
    qrPacientesTIPOCLIENTEAS400: TIntegerField;
    qrPacientesCODIGOIDAS400: TStringField;
    qrPacientesGRUPOPRECIO: TStringField;
    qrPacientesFORMAPAGO: TStringField;
    qrPacientesDATAAREAID: TStringField;
    qrPacientesRECID: TIntegerField;
    qrPacientesGRUPODESCUENTOLINEA: TStringField;
    qrPacientesGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaPacienteSINPRFILTER: TIntegerField;
    qrEntradaPacienteFECHANACIMIENTO: TDateTimeField;
    qrEntradaPacienteCOD_CASO: TStringField;
    qrEntradaPacienteDetalleSINPRFILTER: TIntegerField;
    qrClientesSINPRFILTER: TIntegerField;
    qrPacientesSINPRFILTER: TIntegerField;
    cboEstado: TcxComboBox;
    dsDatos: TDataSource;
    JvMemoryData1: TJvMemoryData;
    JvMemoryData1Seleccionar: TBooleanField;
    JvMemoryData1Pedido_Venta: TStringField;
    JvMemoryData1Cuenta_Cliente: TStringField;
    JvMemoryData1Nombre: TStringField;
    JvMemoryData1Tipo_Pedido: TStringField;
    JvMemoryData1Estado: TStringField;
    JvMemoryData1MonedaID: TStringField;
    cxGrid1DBTableView1Seleccionar: TcxGridDBColumn;
    cxGrid1DBTableView1Pedido_Venta: TcxGridDBColumn;
    cxGrid1DBTableView1Cuenta_Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo_Pedido: TcxGridDBColumn;
    cxGrid1DBTableView1Estado: TcxGridDBColumn;
    cxGrid1DBTableView1MonedaID: TcxGridDBColumn;
    JvMemoryData2: TJvMemoryData;
    dsArticulos: TDataSource;
    JvMemoryData2PruebaID: TStringField;
    JvMemoryData2SucursalID: TStringField;
    JvMemoryData2Cantidad: TIntegerField;
    JvMemoryData2Unidad: TStringField;
    JvMemoryData2Precio_Unitario: TCurrencyField;
    JvMemoryData2Descuento: TCurrencyField;
    JvMemoryData2Neto: TCurrencyField;
    JvMemoryData2Descripcion: TStringField;
    JvMemoryData2Muestrano: TStringField;
    JvMemoryData2Nota_Debito: TBooleanField;
    JvMemoryData2Porcentaje_Desc: TCurrencyField;
    cxGrid2DBTableView2PruebaID: TcxGridDBColumn;
    cxGrid2DBTableView2SucursalID: TcxGridDBColumn;
    cxGrid2DBTableView2Cantidad: TcxGridDBColumn;
    cxGrid2DBTableView2Unidad: TcxGridDBColumn;
    cxGrid2DBTableView2Precio_Unitario: TcxGridDBColumn;
    cxGrid2DBTableView2Descuento: TcxGridDBColumn;
    cxGrid2DBTableView2Porcentaje_Desc: TcxGridDBColumn;
    cxGrid2DBTableView2Neto: TcxGridDBColumn;
    cxGrid2DBTableView2Descripcion: TcxGridDBColumn;
    cxGrid2DBTableView2Muestrano: TcxGridDBColumn;
    cxGrid2DBTableView2Nota_Debito: TcxGridDBColumn;
    dxLayoutControl1Item2: TdxLayoutItem;
    btEliminar: TcxButton;
    qrPedido: TADOQuery;
    qrPedidoRecID: TLargeintField;
    qrPedidoMuestrano: TStringField;
    qrPedidoGrupoID: TStringField;
    qrPedidoClienteID: TStringField;
    qrPedidoEntradaID: TStringField;
    qrPedidoFecha: TDateTimeField;
    qrPedidoPolizaID: TStringField;
    qrPedidoNombrePaciente: TStringField;
    qrPedidoIdentificacion: TStringField;
    qrPedidoSucursalD: TStringField;
    qrPedidoMontoFacturado: TBCDField;
    qrPedidoDescuentoProc: TBCDField;
    qrPedidoDescuentoValor: TBCDField;
    qrPedidoMonedaID: TStringField;
    qrPedidoTasa: TBCDField;
    qrPedidoAprobacionNo: TStringField;
    qrPedidoEstado: TStringField;
    qrPedidoU_Numero: TStringField;
    qrPedidoRnc: TStringField;
    qrPedidoComentario: TStringField;
    qrPedidoDetalle: TADOQuery;
    LargeintField1: TLargeintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    StringField9: TStringField;
    BCDField4: TBCDField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    procedure FormShow(Sender: TObject);
    procedure qrEntradaPacienteAfterScroll(DataSet: TDataSet);
    procedure EdPacienteDblClick(Sender: TObject);
    procedure EdClienteDblClick(Sender: TObject);
    procedure qrEntradaPacienteCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure BtTransferirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
    Cancelada         : TcxStyle;
    Facturada         : TcxStyle;
    Normal            : TcxStyle;
  public
    { Public declarations }
    _doctor       : String;
    _poliza       : String;
    _muestra      : String;
    _entrada      : String;
    _recordId     : Integer;

    function ExistenPruebasProcesar : Boolean;

    procedure Buscar_Clientes;
    procedure Buscar_Pacientes;
    procedure Buscar_Pedidos_Abiertos;
    procedure Tranferir_Pedidos_Abiertos;
    procedure Tranferir_Detalle(_registro: Integer);
    procedure Actu_Cabecera;
    procedure Actu_Detalle(_registro: Integer);
  end;

var
  frmTransferenciaPOS_SAP       : TfrmTransferenciaPOS_SAP;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}


procedure TfrmTransferenciaPOS_SAP.FormCreate(Sender: TObject);
begin
  inherited;
  frmMain.Tran_fer := True;
  Buscar_Pedidos_Abiertos;
  With qrPedido,sql do
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
        JvMemoryData1Seleccionar.AsBoolean    := True;
        JvMemoryData1Pedido_Venta.AsString    := fieldbyname('Pedido_Venta').AsString;
        JvMemoryData1Cuenta_Cliente.AsString  := fieldbyname('Cuenta_Cliente').AsString;
        JvMemoryData1Nombre.AsString          := fieldbyname('Nombre').AsString;
        JvMemoryData1Tipo_Pedido.AsString     := fieldbyname('Tipo_Pedido').AsString;
        JvMemoryData1Estado.AsString          := fieldbyname('Estado').AsString;
        JvMemoryData1MonedaID.AsString        := FieldByName('MonedaID').AsString;
        Next;
    end;
    JvMemoryData1.First;
    DsDatos.Enabled := True;
  End;
  cboEstado.ItemIndex := 1;
end;


procedure TfrmTransferenciaPOS_SAP.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Tran_fer := False;
end;


procedure TfrmTransferenciaPOS_SAP.FormShow(Sender: TObject);
begin
  inherited;
  If (dm.DBSAP.Connected = False) Then
  begin
    dm.DBSAP.Close;
    dm.DBSAP.Open;
  end;  
  cboEstado.ItemIndex := 0;
  Cancelada             := TcxStyle.Create(Self);
  Facturada             := TcxStyle.Create(Self);
  Normal                := TcxStyle.Create(Self);
  Cancelada.Font.Color  := clWhite;
  Cancelada.TextColor   := clRed;
  Facturada.Font.Color  := clWhite;
  Facturada.TextColor   := clBlue;
  Normal.Font.Color     := clWhite;
  Normal.TextColor      := clBlack;
  cboEstado.SetFocus;
end;

procedure TfrmTransferenciaPOS_SAP.EdClienteDblClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7996);
end;


procedure TfrmTransferenciaPOS_SAP.EdPacienteDblClick(Sender: TObject);
begin
  inherited;
{  frmMain.LanzaVentana(-7999);
  if (cboEstado.Text <> '') then
    Buscar_Ordenes_Abiertas;
}
end;


procedure TfrmTransferenciaPOS_SAP.qrEntradaPacienteAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := qrEntradaPacienteRECID.Value;
  qrEntradaPacienteDetalle.Open;
end;

procedure TfrmTransferenciaPOS_SAP.qrEntradaPacienteCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  qrEntradaPacienteTotalPendiente.Value := qrEntradaPacienteNeto.Value - qrEntradaPacienteTotalPagado.Value;
end;

procedure TfrmTransferenciaPOS_SAP.SetColorTo(iColor: TColor);
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


procedure TfrmTransferenciaPOS_SAP.Buscar_Pedidos_Abiertos;
begin
  qrPedido.Close;
  qrPedido.SQL.Text := ' Select * From PedidoVenta '+
                       ' WHERE Estado = '+ #39 + 'P' + #39 +
                       ' ORDER BY  Fecha Asc, SucursalId Asc ';
  qrPedido.Open;

  qrPedido.First;
end;


procedure TfrmTransferenciaPOS_SAP.Buscar_Clientes;
begin
//  qrClientes := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli', EdCliente.Text);
end;


procedure TfrmTransferenciaPOS_SAP.Buscar_Pacientes;
begin
  qrPacientes := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli', cboEstado.Text);
end;


function TfrmTransferenciaPOS_SAP.ExistenPruebasProcesar : Boolean;
Var
  Valor : Boolean;
begin
 Valor := False;

{ If (qrEntradaPaciente.RecordCount > 0) And (cboEstado.Text <> '') And (EdCliente.Text <> '') Then
   Valor := True;

 If (RgPaciente.ItemIndex = 0) Then
   Begin
    If (EdRecord.Text <> '') And (EdHabitacion.Text <> '') Then
      Valor := True
    Else
      Valor := False;

    If (EdFechaEntrada.Date > IncYear(DM.SystemDate - 1)) Then
      Valor := True
    Else
      Valor := False;

    If (EdFechaSalida.Date >= EdFechaEntrada.Date) And (EdFechaSalida.Date > IncDay(DM.SystemDate - 90)) Then
      Valor := True
    Else
      Valor := False;
   End;

 Result := Valor;
 }
end;


procedure TfrmTransferenciaPOS_SAP.BtTransferirClick(Sender: TObject);
Var
 qbusqueda    : TADOQuery;
 qfindciudad  : TADOquery;
begin
{ Try
  if (ExistenPruebasProcesar) then
   Begin
    If ( DM.Mensaje('Desea Facturar Esta(s) Ordenes en el Punto de Venta?', mb_yesno) = id_yes ) Then
     Begin
      frmMain.LanzaVentana(-8032);

      DM.qrParametro.Close;
      DM.qrParametro.Open;

      Buscar_Clientes;
      Buscar_Pacientes;

      frmMain.LanzaVentana(1001);
//      frmMain.frmTmp.NuevaVenta;
      _recordId := frmMain.frmTmp._recorId;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
      qbusqueda := DM.NewQuery;
      qbusqueda.Close;
      qbusqueda.SQL.Text := 'SELECT * FROM PTProyecto WHERE ClienteID = ' + #39 + qrClientes.FieldByName('ClienteID').Value + #39;
      qbusqueda.Open;

      frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value         := qrClientes.FieldByName('Nombre').Value;
      frmMain.frmTmp.qrEntradaPacienteProyectoID.Value            := qbusqueda.FieldByName('ProyectoID').AsString;
      frmMain.frmTmp.qrEntradaPacienteOrigen.Value                := qrClientes.FieldByName('GrupoCliente').Value;
      frmMain.frmTmp.qrEntradaPacienteClienteID.Value             := qrClientes.FieldByName('ClienteID').Value;
      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
      frmMain.frmTmp.qrEntradaPacienteGrupoDescuentoTotal.Value   := qrClientes.FieldByName('GrupoDescuentoTotal').Value ;
      frmMain.frmTmp.qrEntradaPacienteGrupoDescuentoLinea.Value   := qrClientes.FieldByName('GrupoDescuentoLinea').Value ;
      frmMain.frmTmp.qrEntradaPacienteGrupoPrecio.Value           := qrClientes.FieldByName('GrupoPrecio').Value ;
      frmMain.frmTmp.qrEntradaPacienteFormadePago.Value           := qrClientes.FieldByName('FormaPago').Value ;
      frmMain.frmTmp.Val_Forma_Pago(frmMain.frmTmp.qrEntradaPacienteFormadePago.Value);

      if qrClientes.FieldByName('CoberturaPorc').Value > 1 then
        begin
          frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.value := 0;
          frmMain.frmTmp.qrEntradaPacienteCoberturaPreConfirmada.value := 1;
          frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := qrClientes.FieldByName('CoberturaPorc').Value;
        end
      else
        begin
          frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := 0;
          frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 0;
          frmMain.frmTmp.qrEntradaPacienteCoberturaPreConfirmada.value := 0;
        end;

      If (qrClientes.FieldByName('MonedaID').Value <> '') Then
        Begin
          If (frmMain.frmTmp.qrEntradaPacienteTipoDocumento.Value = 3) Or
             (frmMain.frmTmp.QrEntradaPacienteFactExterior.Value = 1) Then
            Begin
              frmMain.frmTmp.qrEntradaPacienteNoAS400.Value := 1;
              frmMain.frmTmp.qrEntradaPacienteNoAxapta.Value := 1;
              frmMain.frmTmp.qrEntradaPacienteNoFactura.Value := 1;
              frmMain.frmTmp.qrEntradaPacienteFactExterior.Value := 1;
              frmMain.frmTmp.qrEntradaPacienteTipoDocumento.Value := 3;
              frmMain.frmTmp.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
            End
          Else
            Begin
              frmMain.frmTmp.qrEntradaPacienteMonedaID.Value := qrClientes.FieldByName('MonedaID').Value;
            End;
        End;

      frmMain.frmTmp.VerificarPagoDiferencia;
      frmMain.frmTmp.ActTotales;
      frmMain.frmTmp.RefrescarInterface;
      frmMain.frmTmp.Agregar_Pacientes(qrClientes.FieldByName('ClienteID').Value);
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
      qfindciudad := DM.Find_Ldr('SELECT * FROM PTCIUDAD WHERE CiudadID = :ciu', qrPacientes.FieldByName('CiudadID').Value);

      frmMain.frmTmp.qrEntradaPacientePacienteID.Value        := qrPacientes.FieldByName('ClienteID').Value;
      frmMain.frmTmp.qrEntradaPacienteNombrePaciente.Value    := qrPacientes.FieldByName('Nombre').Value;
      frmMain.frmTmp.qrEntradaPacienteDireccion.Value         := qrPacientes.FieldByName('Direccion').Value;
      frmMain.frmTmp.qrEntradaPacienteTelefonos.Value         := qrPacientes.FieldByName('Telefono').Value;
      frmMain.frmTmp.qrEntradaPacienteTelefono2.Value         := qrPacientes.FieldByName('Telefono2').Value;
      frmMain.frmTmp.qrEntradaPacienteFax.Value               := qrPacientes.FieldByName('Fax').Value;
      frmMain.frmTmp.qrEntradaPacienteSexo.Value              := qrPacientes.FieldByName('Sexo').Value;
      frmMain.frmTmp.qrEntradaPacienteFECHANACIMIENTO.Value   := qrPacientes.FieldByName('FechaNacimiento').Value;
      frmMain.frmTmp.qrEntradaPacienteEdadPaciente.Value      := Trunc((StrtoInt(FormatDateTime('yyyymmdd', DM.SystemDate))-StrtoInt(FormatDateTime('yyyymmdd', qrPacientes.FieldByName('FechaNacimiento').Value)))/10000);
      frmMain.frmTmp.qrEntradaPacientePUBLICARINTERNET.Value  := 0;

      If qfindciudad.RecordCount > 0 then
        frmMain.frmTmp.qrEntradaPacienteDireccion.Value       := frmMain.frmTmp.qrEntradaPacienteDireccion.Value + #13 +
                                                                 qfindciudad.FieldByName('Descripcion').AsString;
      //Validando Los Parametros de Descuentos.
      frmMain.frmTmp.Val_Descuento;

      //Llenar Los Parametros de los Pacientes. ////////////////////////////////
      frmMain.frmTmp.qrEntradaPacienteResultadoPaciente.Value := qrPacientes.FieldByName('EnvioResultado').Value;
      frmMain.frmTmp.qrentradaPacientePublicarInternet.value  := qrPacientes.FieldByName('PublicarInternet').Value;

      if frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
       begin
        if (qrPacientes.FieldByName('CobrarDiferencia').Value = 1) then
         begin
           frmMain.frmTmp.EliminarDescuentoAplicado1Click(Nil);
//           frmMain.frmTmp.qrEntradaPacienteDescuentoValor.Value := 0;
//           frmMain.frmTmp.ActTotales;
         end;
       end;

      frmMain.frmTmp.VerificarPagoDiferencia;
      frmMain.frmTmp.Agregar_Clientes(qrPacientes.FieldByName('ClienteID').Value);
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
      qfindciudad := DM.Find_Ldr('SELECT * FROM PTDoctor WHERE DoctorId = :doc', _doctor);

      if (qbusqueda.RecordCount > 0) then
        Begin
          frmMain.frmTmp.qrEntradaPacienteDoctorID.Value := qbusqueda.FieldByName('DoctorId').AsString;
          frmMain.frmTmp.qrEntradaPacienteNombreDoctor.Value := qbusqueda.FieldByName('Nombre').AsString;
          frmMain.frmTmp.qrEntradaPacienteResultadoDoctor.Value := qbusqueda.FieldByName('ResultadoDoctor').AsInteger;
          frmMain.frmTmp.qrEntradaPacientePublicarInternetDoctor.Value := qbusqueda.FieldByName('PublicarInternet').AsInteger;

         if (qbusqueda.FieldByName('DoctorId').AsInteger = 1) then
           Begin
             frmMain.frmTmp.qrEntradaPacienteNombreDoctor.Value := '';
             frmMain.frmTmp.EdNombreDoctor.Properties.ReadOnly := False;
           end
         else
           frmMain.frmTmp.EdNombreDoctor.Properties.ReadOnly := True;
        End;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
      frmMain.frmTmp.qrEntradaPacientePolizaID.Value := _poliza;

      If (frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
        Begin
          If (frmMain.frmTmp.qrEntradaPacienteDoctorID.Value = '') Or
             (frmMain.frmTmp.qrEntradaPacienteDoctorID.IsNull) Or
             (frmMain.frmTmp.qrEntradaPacientePolizaID.Value = '') Or
             (frmMain.frmTmp.qrEntradaPacientePolizaID.IsNull) Then
           Begin
             frmMain.frmTmp.Cancelar_Entrada;
             Raise exception.CreateFmt(' EL PROCESO DE TRANSFERENCIA SERA CANCELADO. '+ #13 +
                                       ' NO Puede Registrar Pruebas Para las Aseguradoras: '+ #13 +
                                       ' La Informacion del Doctor y el Num. de Afiliado Es Obligatoria. '+ #13 +
                                       ' Por Favor Verifique.!!!', []);
           End;
        End;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
      If (RgPaciente.ItemIndex = 0) then
        frmMain.frmTmp.qrEntradaPacienteENCLINICA.Value := 1
      Else
        frmMain.frmTmp.qrEntradaPacienteENCLINICA.Value := 0;
      frmMain.frmTmp.qrEntradaPacienteFROM_CLINICA.Value := 1;
      frmMain.frmTmp.qrEntradaPacienteRECORDCLINICA.Value := EdRecord.Text;
      frmMain.frmTmp.qrEntradaPacienteNUMEROHABITACION.Value := EdHabitacion.Text;
      frmMain.frmTmp.qrEntradaPacienteFECHAENTRADA.Value := EdFechaEntrada.Date;
      frmMain.frmTmp.qrEntradaPacienteFECHADEALTA.Value := EdFechaSalida.Date;
      frmMain.frmTmp.qrEntradaPacientePolizaID.Value := _poliza;

      Tranferir_Ordenes_Abiertas;
      frmMain.frmTmp.Guardar_Entrada;

      frmMain.frmTmp._recorId := _recordId;
      frmMain.frmTmp.check_balance := False;
      frmMain.frmTmp.BuscarDatos;

      _muestra  := frmMain.frmTmp.qrEntradaPacienteEntradaID.Value;
      _entrada  := frmMain.frmTmp.qrEntradaPacienteEntradaID.Value;

      frmMain.frmTmp.RefrescarInterface;

      FreeAndNil(qbusqueda);
      FreeAndNil(qfindciudad);

//      frmMain.LanzaVentana(1001);
     end;
   end
  Else
    Raise exception.CreateFmt(' EL PROCESO DE TRANSFERENCIA SERA CANCELADO. '+ #13 +
                              ' NO Existen Ordenes Seleccionadas Para Transferir. '+ #13 +
                              ' La Informacion del PACIENTE y el CLIENTE Es Obligatoria. '+ #13 +
                              ' Si el Paciente Estaba Interno Debe Suministrar: '+ #13 +
                              ' El Numero de Record. Numero de Habitacion, Fecha de Entrada y Fecha de Alta. '+ #13 +
                              ' Por Favor Verifique.!!!', []);
 Except
   Raise exception.CreateFmt(' EL PROCESO DE TRANSFERENCIA SERA CANCELADO. '+ #13 +
                             ' NO Existen Ordenes Seleccionadas Para Transferir. '+ #13 +
                             ' La Informacion del PACIENTE y el CLIENTE Es Obligatoria. '+ #13 +
                             ' Si el Paciente Estaba Interno Debe Suministrar: '+ #13 +
                             ' El Numero de Record. Numero de Habitacion, Fecha de Entrada y Fecha de Alta. '+ #13 +
                             ' Por Favor Verifique.!!!', []);
 end;
 }
end;


procedure TfrmTransferenciaPOS_SAP.Tranferir_Pedidos_Abiertos;
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.SQL.Text := ' SELECT * FROM PTEntradaPacienteClinica '+
                                ' WHERE Estatus_Clinica = '+ #39 + 'P' + #39 +
                                ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                ' AND PacienteID = '+ #39 + cboEstado.Text + #39 +
//                              ' ORDER BY  Fecha Desc, SucursalId Desc, EntradaID Desc, MuestraNo Desc ';
                                ' ORDER BY  Fecha Asc, SucursalId Asc, EntradaID Asc, MuestraNo Asc ';
  qrEntradaPaciente.Open;

  qrEntradaPaciente.First;
  While Not qrEntradaPaciente.Eof Do
   Begin
     Tranferir_Detalle(qrEntradaPacienteRECID.Value);
     qrEntradaPaciente.Next;
   End;
end;


procedure TfrmTransferenciaPOS_SAP.Tranferir_Detalle(_registro: Integer);
begin
  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _registro;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPacienteDetalle.First;
  While Not qrEntradaPacienteDetalle.Eof Do
   Begin
     frmMain.frmTmp.qrEntradaPacienteDetalle.Insert;
     frmMain.frmTmp.qrEntradaPacienteDetalleRefRecid.Value := frmMain.frmTmp.qrEntradaPacienteRECID.Value;
     frmMain.frmTmp.qrEntradaPacienteDetalleSecuencia.Value := frmMain.frmTmp.MaxSecuenciaLinea;
     frmMain.frmTmp.qrEntradaPacienteDetalleRECID.Value := frmMain.frmTmp.GetSecuenciaId;
     frmMain.frmTmp.qrEntradaPacienteDetalleMuestraNo.Value := frmMain.frmTmp.qrEntradaPacienteMuestraNo.Value;
     frmMain.frmTmp.qrEntradaPacienteDetalleDATAAREAID.Value := frmMain.frmTmp.qrEntradaPacienteDATAAREAID.Value;
     frmMain.frmTmp.qrEntradaPacienteDetallePruebaID.Value := qrEntradaPacienteDetallePruebaID.Value;

     frmMain.frmTmp.qrEntradaPacienteDetalleFROM_CLINICA.Value := 1;
     frmMain.frmTmp.qrEntradaPacienteDetalleENTRADAID_POS.Value := qrEntradaPacienteEntradaID.Value;
     frmMain.frmTmp.qrEntradaPacienteDetalleREFRECID_POS.Value := qrEntradaPacienteDetalleRECID.Value;
     frmMain.frmTmp.qrEntradaPacienteDetalleMUESTRANO_POS.Value := qrEntradaPacienteDetalleMuestraNo.Value;
     frmMain.frmTmp.qrEntradaPacienteDetalle.Post;

     qrEntradaPacienteDetalle.Next;
   End;
end;


procedure TfrmTransferenciaPOS_SAP.Actu_Cabecera;
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.SQL.Text := ' SELECT * FROM PTEntradaPacienteClinica '+
                                ' WHERE Estatus_Clinica = '+ #39 + 'P' + #39 +
                                ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                ' AND PacienteID = '+ #39 + cboEstado.Text + #39 +
                                ' ORDER BY  Fecha Asc, SucursalId Asc, EntradaID Asc, MuestraNo Asc ';
  qrEntradaPaciente.Open;

  qrEntradaPaciente.First;
  While Not qrEntradaPaciente.Eof Do
   Begin
     qrEntradaPaciente.Edit;
     qrEntradaPacienteESTATUS_CLINICA.Value := 'F';
     qrEntradaPacienteREFRECID_POS.Value    := _recordId;
     qrEntradaPacienteENTRADAID_POS.Value   := _entrada;
     qrEntradaPacienteMUESTRANO_POS.Value   := _muestra;

     Actu_Detalle(qrEntradaPacienteRECID.Value);

     qrEntradaPaciente.Post;
     qrEntradaPaciente.Next;
   End;
end;


procedure TfrmTransferenciaPOS_SAP.Actu_Detalle(_registro: Integer);
begin
  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _registro;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPacienteDetalle.First;

  While Not qrEntradaPacienteDetalle.Eof Do
   Begin
     qrEntradaPacienteDetalle.Edit;

     qrEntradaPacienteDetalleESTATUS_CLINICA.Value := 'F';
     qrEntradaPacienteDetalleREFRECID_POS.Value    := _recordId;
     qrEntradaPacienteDetalleENTRADAID_POS.Value   := _entrada;
     qrEntradaPacienteDetalleMUESTRANO_POS.Value   := _muestra;

     qrEntradaPacienteDetalle.Post;
     qrEntradaPacienteDetalle.Next;
   End;
end;



END.

