�
 TDMPRUEBAS 0�=  TPF0
TDMPruebas	DMPruebasOldCreateOrder	Height�Width� 
TdxMemData	MdPruebasIndexes Persistent.Data
V   Ver�������?        Tipo      Nombre     Centro de Costo     Departamento SortOptions LeftTop TSmallintFieldMdPruebasTipo	FieldNameTipo  TStringFieldMdPruebasNombre	FieldNameNombre   	TADOQueryqrCoGrupoDesc
CursorTypectStatic
Parameters SQL.StringsSELECT *  FROM CmGrupoPrecioDescWHERE Modulo = 3  AND Tipo = 0 Left,Top�  TDataSourcedsCoGrupoDescDataSetqrCoGrupoDescLeftTTop�  	TADOQueryqrCoGrupoPrecio
CursorTypectStatic
Parameters SQL.StringsSELECT *  FROM CmGrupoPrecioDescWHERE Modulo = 3  AND Tipo = 1 Left,Top�  TDataSourcedsCoGrupoPrecioDataSetqrCoGrupoPrecioLeftTTop�  	TADOQueryqrCoGrupoBono
CursorTypectStatic
Parameters SQL.StringsSELECT *  FROM CmGrupoPrecioDescWHERE Modulo = 3  AND Tipo = 2 Left,Top  TDataSourcedsCoGrupoBonoDataSetqrCoGrupoBonoLeftTTop  TDataSourcedsVeSeccionesLeftTop,  	TADOQueryqrZona
CursorTypectStatic
Parameters SQL.Stringsselect *   from VeZona LeftTop$  TDataSourcedsZonaDataSetqrZonaLeftHTop8  TDataSource	dsSubZonaDataSet	qrSubZonaLeftXTop�   	TADOQuery	qrSubZona
ParametersNamepZonaDataTypeftStringNumericScale� 	Precision� Size
Value   SQL.Stringsselect *  from VeSubZonawhere ZonaID = :pZona LeftTopp  	TADOQueryqrGrupoEquipo
CursorTypectStatic
Parameters SQL.StringsSelect *  from SvGrupoEquipos Left,Top�   TDataSourcedsGrupoEquipoAutoEditDataSetqrGrupoEquipoLeftdTop�   	TADOQuery
qrTecnicos
CursorTypectStatic
Parameters SQL.StringsSelect *  from SvTecnicos Left�Top�   TDataSource
dsTecnicosAutoEditDataSet
qrTecnicosLeft�Top�   	TADOQueryqrEquipo
CursorTypectStatic
Parameters SQL.StringsfSELECT     EquipoID, ProductoID, SerialId, GrupoEquipoID, Descripcion, Modelo, Fabricante, FinGarantiaFROM         SvEquipos Left�TopH  TDataSourcedsEquipoDataSetqrEquipoLeft�Top�   	TADOQueryqrConceptoMO
Parameters SQL.StringsSelect *  from SvConceptosWHERE Tipo = 1 LeftXTop  	TADOQueryqrConceptoCO
Parameters SQL.StringsSelect *  from SvConceptosWHERE Tipo = 2 LeftdTop8  	TADOQueryqrConceptoGA
Parameters SQL.StringsSelect *  from SvConceptosWHERE Tipo = 3 Left|Toph  	TADOQueryqrConceptoIG
Parameters SQL.StringsSelect *  from SvConceptosWHERE Tipo = 4 Left�Top�  TDataSourcedsConceptoMODataSetqrConceptoMOLeft�Top(  TDataSourcedsConceptoCODataSetqrConceptoCOLeft�Top\  TDataSourcedsConceptoGADataSetqrConceptoGALeft�Top�  TDataSourcedsConceptoIGDataSetqrConceptoIGLeft�Top�  	TADOQueryqrOrdenesEntrada
CursorTypectStatic
Parameters SQL.Strings�SELECT     SvOrdenes.OrdenID, SvOrdenes.Fecha, SvOrdenes.EquipoID, SvOrdenes.NombreEquipo, SvOrdenes.ClienteOrden, CcClientes.Nombre, SvOrdenes.MonedaID!FROM         SvOrdenes INNER JOINO                      CcClientes ON SvOrdenes.ClienteOrden = CcClientes.Cliente'WHERE     (SvOrdenes.Estatus IN (3, 4)) Left|Top  TDataSourcedsOrdenesEntradaDataSetqrOrdenesEntradaLeft�Top  TDataSource	DsPruebasAutoEditDataSet	MdPruebasLeft\Top  	TADOQueryqrAcuerdoCliente
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM PTSucursalWHERE DataAreaId = 'ldr' Left TopX TStringFieldqrAcuerdoClienteSUCURSALID	FieldName
SUCURSALIDSize
  TStringFieldqrAcuerdoClienteNOMBRE	FieldNameNOMBRESize2  
TMemoFieldqrAcuerdoClienteDIRECCION	FieldName	DIRECCIONBlobTypeftMemo  TStringFieldqrAcuerdoClienteTELEFONO	FieldNameTELEFONO  TStringFieldqrAcuerdoClienteFAX	FieldNameFAX  TStringFieldqrAcuerdoClienteCLIENTEID	FieldName	CLIENTEID  TStringFieldqrAcuerdoClienteGRUPOID	FieldNameGRUPOIDSize
  TStringFieldqrAcuerdoClienteCLIENTE_UNO	FieldNameCLIENTE_UNOSize
  TStringFieldqrAcuerdoClienteCLIENTE_DOS	FieldNameCLIENTE_DOSSize
  TIntegerFieldqrAcuerdoClienteSUCURSAL	FieldNameSUCURSAL  TIntegerFieldqrAcuerdoClienteIMPRESIONES	FieldNameIMPRESIONES  TIntegerFieldqrAcuerdoClienteSINPRFILTER	FieldNameSINPRFILTER  	TBCDFieldqrAcuerdoClienteMONTO_PORCDefaultExpression###,###,##0.00	FieldName
MONTO_PORC	Precision  	TBCDFieldqrAcuerdoClienteMONTO_CANTDefaultExpression###,###,##0.00	FieldName
MONTO_CANT	Precision  TIntegerFieldqrAcuerdoClienteRECID	FieldNameRECID  TStringFieldqrAcuerdoClienteDATAAREAID	FieldName
DATAAREAIDSize  TStringFieldqrAcuerdoClienteBanco_Cuenta_1	FieldNameBanco_Cuenta_1Size  TStringFieldqrAcuerdoClienteBanco_Nombre_1	FieldNameBanco_Nombre_1Sized  TStringFieldqrAcuerdoClienteBanco_Cuenta_2	FieldNameBanco_Cuenta_2Size  TStringFieldqrAcuerdoClienteBanco_Nombre_2	FieldNameBanco_Nombre_2Sized   TDataSourceDsAcuerdoClienteDataSetqrAcuerdoClienteLeft� TopX  	TADOQueryqrAcuerdoGrupoCust
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM PTDoctorWHERE DataAreaId = 'ldr' Left� TopX TStringFieldqrAcuerdoGrupoCustDOCTORID	FieldNameDOCTORIDSize
  TStringFieldqrAcuerdoGrupoCustNOMBRE	FieldNameNOMBRESizeP  TStringFieldqrAcuerdoGrupoCustCONTACTO	FieldNameCONTACTOSizeP  TStringFieldqrAcuerdoGrupoCustTELEFONO	FieldNameTELEFONO  TStringFieldqrAcuerdoGrupoCustFAX	FieldNameFAX  TStringFieldqrAcuerdoGrupoCustCODIGOAXAPTA	FieldNameCODIGOAXAPTASize
  TStringFieldqrAcuerdoGrupoCustEMAIL	FieldNameEMAILSizeP  TStringFieldqrAcuerdoGrupoCustCELULAR	FieldNameCELULAR  TStringFieldqrAcuerdoGrupoCustDIRECCION	FieldName	DIRECCIONSize�   TStringFieldqrAcuerdoGrupoCustCIUDADID	FieldNameCIUDADIDSize
  TIntegerField!qrAcuerdoGrupoCustRESULTADODOCTOR	FieldNameRESULTADODOCTOR  TStringField qrAcuerdoGrupoCustESPECIALIDADID	FieldNameESPECIALIDADIDSize
  TIntegerField"qrAcuerdoGrupoCustPUBLICARINTERNET	FieldNamePUBLICARINTERNET  TStringField!qrAcuerdoGrupoCustCODIGORESULTADO	FieldNameCODIGORESULTADOSize
  TStringField!qrAcuerdoGrupoCustUSUARIOINTERNET	FieldNameUSUARIOINTERNETSize
  TStringFieldqrAcuerdoGrupoCustCLAVEINTERNET	FieldNameCLAVEINTERNETSize
  	TBCDFieldqrAcuerdoGrupoCustCOMISION	FieldNameCOMISION	PrecisionSize  TStringField$qrAcuerdoGrupoCustDIRECCIONCONSULTA2	FieldNameDIRECCIONCONSULTA2Size�   TStringField$qrAcuerdoGrupoCustDIRECCIONCONSULTA1	FieldNameDIRECCIONCONSULTA1Size�   TStringFieldqrAcuerdoGrupoCustESPECIALIDAD	FieldNameESPECIALIDADSizeP  TStringFieldqrAcuerdoGrupoCustCODIGOWEB	FieldName	CODIGOWEBSize
  TStringFieldqrAcuerdoGrupoCustDATAAREAID	FieldName
DATAAREAIDSize  TIntegerFieldqrAcuerdoGrupoCustRECID	FieldNameRECID   TDataSourceDsAcuerdoGrupoCustDataSetqrAcuerdoGrupoCustLeftDTopX  	TADOQueryqrDatos
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM PTPruebaWHERE DataAreaId = 'ldr' Left� Top TStringFieldqrDatosPRUEBAID	FieldNamePRUEBAID  TStringFieldqrDatosALIAS	FieldNameALIASSizeP  TStringFieldqrDatosDESCRIPCION	FieldNameDESCRIPCIONSizeP  TIntegerFieldqrDatosESTATUS	FieldNameESTATUS  TStringFieldqrDatosGRUPOPRUEBAID	FieldNameGRUPOPRUEBAIDSize
  TStringFieldqrDatosDEPARTAMENTO	FieldNameDEPARTAMENTOSize
  	TBCDFieldqrDatosPRECIO	FieldNamePRECIO	PrecisionSize  TIntegerFieldqrDatosPERMITECAMBIOPRECIO	FieldNamePERMITECAMBIOPRECIO  TStringFieldqrDatosCODIGOAXAPTA	FieldNameCODIGOAXAPTA  	TBCDFieldqrDatosPRECIODOLARES	FieldNamePRECIODOLARES	PrecisionSize  	TBCDFieldqrDatosCOSTO	FieldNameCOSTO	PrecisionSize  TIntegerFieldqrDatosEXTERIOR	FieldNameEXTERIOR  TIntegerFieldqrDatosFACTURARCABECERA	FieldNameFACTURARCABECERA  TIntegerFieldqrDatosPRUEBAS	FieldNamePRUEBAS  TStringFieldqrDatosTIPO	FieldNameTIPOSize  TIntegerFieldqrDatosORINA	FieldNameORINA  TIntegerFieldqrDatosSANGRE	FieldNameSANGRE  TStringFieldqrDatosCONDPACIENTE	FieldNameCONDPACIENTESize�   TStringFieldqrDatosCONDMUESTRA	FieldNameCONDMUESTRASize�   TStringFieldqrDatosCODDIAPROC	FieldName
CODDIAPROCSize  TIntegerFieldqrDatosDIASRESULTADO	FieldNameDIASRESULTADO  TStringFieldqrDatosUNIDAD	FieldNameUNIDADSize
  TStringFieldqrDatosABREVIACION	FieldNameABREVIACION  TIntegerFieldqrDatosMEDIO	FieldNameMEDIO  TIntegerFieldqrDatosCOLOR	FieldNameCOLOR  TStringFieldqrDatosDEPID	FieldNameDEPIDSize
  TStringFieldqrDatosTIPOAS400	FieldName	TIPOAS400Size  TStringFieldqrDatosCODIGOIDAS400	FieldNameCODIGOIDAS400  TStringFieldqrDatosMEDIOAS400	FieldName
MEDIOAS400Size  TIntegerFieldqrDatosNOPROCESAR	FieldName
NOPROCESAR  TStringFieldqrDatosCOMENTARIONOPROCESAR	FieldNameCOMENTARIONOPROCESARSize�   TStringFieldqrDatosTIPOMUESTRA	FieldNameTIPOMUESTRASize
  TStringFieldqrDatosDATAAREAID	FieldName
DATAAREAIDSize  TIntegerFieldqrDatosRECID	FieldNameRECID   TDataSourcedsDatosDataSetqrDatosLeft� Top  	TADOQuery
qrClientes
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM PTClienteWHERE DataAreaId = 'ldr' Left�Top TStringFieldqrClientesCLIENTEID	FieldName	CLIENTEIDSize
  TStringFieldqrClientesNOMBRE	FieldNameNOMBRESizeP  TStringFieldqrClientesCONTACTO	FieldNameCONTACTOSizeP  TStringFieldqrClientesTELEFONO	FieldNameTELEFONO  TStringFieldqrClientesFAX	FieldNameFAX  TStringFieldqrClientesGRUPOCLIENTE	FieldNameGRUPOCLIENTESize
  TIntegerFieldqrClientesINCLUIRPRECIOTICKET	FieldNameINCLUIRPRECIOTICKET  TIntegerFieldqrClientesAUTOCONFIRMAR	FieldNameAUTOCONFIRMAR  TStringFieldqrClientesEMPLEADOID	FieldName
EMPLEADOIDSize
  TStringFieldqrClientesCODIGOAXAPTA	FieldNameCODIGOAXAPTASize
  TStringFieldqrClientesEMAIL	FieldNameEMAILSizeP  TStringFieldqrClientesDIRECCIONWEB	FieldNameDIRECCIONWEBSizeP  TStringFieldqrClientesTELEFONO2	FieldName	TELEFONO2  TStringFieldqrClientesMONEDAID	FieldNameMONEDAIDSize  TStringFieldqrClientesIDENTIFICACION	FieldNameIDENTIFICACION  TIntegerFieldqrClientesORIGEN	FieldNameORIGEN  TStringFieldqrClientesDIRECCION	FieldName	DIRECCIONSize�   TStringFieldqrClientesCIUDADID	FieldNameCIUDADIDSize
  TIntegerFieldqrClientesPRUEBASPORDIA	FieldNamePRUEBASPORDIA  	TBCDFieldqrClientesCOBERTURAPORC	FieldNameCOBERTURAPORC	PrecisionSize  TStringFieldqrClientesPRINCIPAL	FieldName	PRINCIPALSize
  TIntegerFieldqrClientesENVIORESULTADO	FieldNameENVIORESULTADO  TIntegerFieldqrClientesPUBLICARINTERNET	FieldNamePUBLICARINTERNET  TDateTimeFieldqrClientesFECHANACIMIENTO	FieldNameFECHANACIMIENTO  TStringFieldqrClientesSEGURO	FieldNameSEGUROSize
  TStringFieldqrClientesCARNETNUMERO	FieldNameCARNETNUMEROSize
  TStringFieldqrClientesPOLIZA	FieldNamePOLIZA  TIntegerFieldqrClientesCOBRARDIFERENCIA	FieldNameCOBRARDIFERENCIA  TIntegerFieldqrClientesENVIARFAX	FieldName	ENVIARFAX  TIntegerFieldqrClientesACTIVARDESCUENTOS	FieldNameACTIVARDESCUENTOS  TIntegerFieldqrClientesUSARALIASNOMBRE	FieldNameUSARALIASNOMBRE  TIntegerFieldqrClientesUSARALIASPRUEBAS	FieldNameUSARALIASPRUEBAS  TIntegerFieldqrClientesSIEMPREINTERNET	FieldNameSIEMPREINTERNET  TIntegerFieldqrClientesIMPRIMIRALIASNOMBRE	FieldNameIMPRIMIRALIASNOMBRE  TIntegerFieldqrClientesIMPRIMIRALIASPRUEBA	FieldNameIMPRIMIRALIASPRUEBA  TIntegerFieldqrClientesIMPRIMIRSOLOTOTALES	FieldNameIMPRIMIRSOLOTOTALES  TIntegerField!qrClientesIMPRIMIRALIASRESULTADOS	FieldNameIMPRIMIRALIASRESULTADOS  TIntegerFieldqrClientesUSARACUERDOPROPIO	FieldNameUSARACUERDOPROPIO  TStringFieldqrClientesALIAS	FieldNameALIASSized  TStringFieldqrClientesQUIENPAGA	FieldName	QUIENPAGASize  TStringFieldqrClientesTIPOCLIENTE	FieldNameTIPOCLIENTESize  TStringFieldqrClientesENTREGARRESULTADOS	FieldNameENTREGARRESULTADOSSize  TStringFieldqrClientesTEXTOREFERENCIA	FieldNameTEXTOREFERENCIA  TIntegerFieldqrClientesSIEMPREIMPRIMIR	FieldNameSIEMPREIMPRIMIR  TStringFieldqrClientesTIPOSANGRE	FieldName
TIPOSANGRESize  TStringFieldqrClientesPACIENTECIAID	FieldNamePACIENTECIAIDSize
  TStringFieldqrClientesSECTOR	FieldNameSECTORSized  TStringFieldqrClientesUSUARIOINTERNET	FieldNameUSUARIOINTERNETSize
  TStringFieldqrClientesCLAVEINTERNET	FieldNameCLAVEINTERNETSize
  TStringFieldqrClientesTIPOINTERNET	FieldNameTIPOINTERNETSize  TStringFieldqrClientesCLASECREDITO	FieldNameCLASECREDITOSize  TStringFieldqrClientesDOCTORID	FieldNameDOCTORIDSize
  TIntegerFieldqrClientesSEXO	FieldNameSEXO  TIntegerFieldqrClientesESTATUS	FieldNameESTATUS  TIntegerFieldqrClientesTIPOCLIENTEAS400	FieldNameTIPOCLIENTEAS400  TStringFieldqrClientesCODIGOIDAS400	FieldNameCODIGOIDAS400Size
  TStringFieldqrClientesGRUPOPRECIO	FieldNameGRUPOPRECIOSize
  TStringFieldqrClientesGRUPODESCUENTOLINEA	FieldNameGRUPODESCUENTOLINEASize
  TStringFieldqrClientesGRUPODESCUENTOTOTAL	FieldNameGRUPODESCUENTOTOTALSize
  TStringFieldqrClientesFORMAPAGO	FieldName	FORMAPAGOSize
  TStringFieldqrClientesDATAAREAID	FieldName
DATAAREAIDSize  TIntegerFieldqrClientesRECID	FieldNameRECID  TIntegerFieldqrClientesSINPRFILTER	FieldNameSINPRFILTER   TDataSource
dsClientesDataSet
qrClientesLeft�Top  	TADOQueryqrFlebotomistas
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM PTFlebotomistaWHERE DataAreaId = 'ldr' LeftTop TStringFieldqrFlebotomistasFLEBOTOMISTAIDDisplayLabelFlebotomista	FieldNameFLEBOTOMISTAIDSize
  TStringFieldqrFlebotomistasDESCRIPCIONDisplayLabelDescripcion	FieldNameDESCRIPCIONSizeP  TIntegerFieldqrFlebotomistasESTATUSDisplayLabelEstatus	FieldNameESTATUS  TStringFieldqrFlebotomistasCODIGOAXAPTADisplayLabelCodigoAxapta	FieldNameCODIGOAXAPTASize
  TStringFieldqrFlebotomistasDATAAREAID	FieldName
DATAAREAIDSize  TIntegerFieldqrFlebotomistasRECID	FieldNameRECID   TDataSourcedsFlebotomistasDataSetqrFlebotomistasLeftPTop  	TADOQueryqrAcuerdoSucursal
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM PTGrupoClienteWHERE DataAreaId = 'ldr' LefthTopX TStringFieldqrAcuerdoSucursalGRUPOCLIENTEDisplayLabelGrupo de Cliente	FieldNameGRUPOCLIENTESize
  TStringFieldqrAcuerdoSucursalDESCRIPCIONDisplayLabelDescripcion	FieldNameDESCRIPCIONSize2  TStringFieldqrAcuerdoSucursalCODIGOAXAPTADisplayLabelCodigoAxapta	FieldNameCODIGOAXAPTASize
  
TMemoFieldqrAcuerdoSucursalCOMENTARIODisplayLabel
Comentario	FieldName
COMENTARIOBlobTypeftMemo  TIntegerField!qrAcuerdoSucursalSINPRFILTERGROUP	FieldNameSINPRFILTERGROUP  TStringFieldqrAcuerdoSucursalDATAAREAID	FieldName
DATAAREAIDSize  TIntegerFieldqrAcuerdoSucursalRECID	FieldNameRECID   TDataSourcedsAcuerdoSucursalDataSetqrAcuerdoSucursalLeft�TopX  	TADOQueryqrAcuerdoGrupoPrice
CursorTypectStatic
Parameters SQL.StringsSELECT * FROM PTGrupoPruebaWHERE DataAreaId = 'ldr' Left�TopX TStringFieldqrAcuerdoGrupoPriceGRUPOPRUEBADisplayLabelGrupo de Prueba	FieldNameGRUPOPRUEBASize
  TStringFieldqrAcuerdoGrupoPriceDESCRIPCIONDisplayLabelDescripcion	FieldNameDESCRIPCIONSize2  TStringFieldqrAcuerdoGrupoPriceCODIGOAXAPTADisplayLabelCodigoAxapta	FieldNameCODIGOAXAPTASize
  
TMemoFieldqrAcuerdoGrupoPriceCOMENTARIODisplayLabel
Comentario	FieldName
COMENTARIOBlobTypeftMemo  TStringFieldqrAcuerdoGrupoPriceDATAAREAID	FieldName
DATAAREAIDSize  TIntegerFieldqrAcuerdoGrupoPriceRECID	FieldNameRECID   TDataSourceDsAcuerdoGrupoPriceDataSetqrAcuerdoGrupoPriceLeftTopX   