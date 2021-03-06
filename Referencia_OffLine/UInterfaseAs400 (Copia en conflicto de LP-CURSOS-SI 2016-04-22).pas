unit UInterfaseAs400;

interface

uses
  SysUtils, Dialogs, Variants, Classes, DB, ADODB, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TInterfaseAS400 = class(TDataModule)
    ASConnection: TADOConnection;
    qrASDetalle: TADOQuery;
    qrASEncabezado: TADOQuery;
    qrSQLEncabezado: TADOQuery;
    qrSQLDetalle: TADOQuery;
    qrASInternet: TADOQuery;
    qrASResult: TADOQuery;
    qrNoReactivo: TADOQuery;
    qrASBuscaCedula: TADOQuery;
    qrASBuscaUsuario: TADOQuery;

    qrResult: TADOConnection;
    qrASResultL49MUE: TBCDField;
    qrASResultL49PRU: TIntegerField;
    qrASResultTANOCU: TStringField;
    qrASResultL49RES: TStringField;

    qrSQLEncabezadoMuestra: TStringField;
    qrSQLEncabezadoMuestraNo: TStringField;
    qrSQLEncabezadoHora: TStringField;
    qrSQLEncabezadoDireccion: TStringField;
    qrSQLEncabezadoDireccionFija: TStringField;
    qrSQLEncabezadoEdadPaciente: TIntegerField;
    qrSQLEncabezadoEdadCalculada: TIntegerField;
    qrSQLEncabezadoFechaNacimiento: TDateTimeField;
    qrSQLEncabezadoFechaNacimientoTexto: TStringField;
    qrSQLEncabezadoTelefono: TStringField;
    qrSQLEncabezadoCategoriaClienteNombre: TStringField;
    qrSQLEncabezadoFechaEntrada: TDateTimeField;
    qrSQLEncabezadoFechaEntradaTexto: TStringField;
    qrSQLEncabezadoUserId: TStringField;
    qrSQLEncabezadoSexo: TIntegerField;
    qrSQLEncabezadoCedula: TStringField;
    qrSQLEncabezadoSucursal: TIntegerField;
    qrSQLEncabezadoSucursalId: TStringField;
    qrSQLEncabezadoDoctorId: TStringField;
    qrSQLEncabezadoDoctorNombre: TStringField;
    qrSQLEncabezadoClienteId: TStringField;
    qrSQLEncabezadoFacturado: TBCDField;
    qrSQLEncabezadoPagado: TBCDField;
    qrSQLEncabezadoResto: TBCDField;
    qrSQLEncabezadoTipResPaciente: TIntegerField;
    qrSQLEncabezadoInternet: TIntegerField;
    qrSQLEncabezadoTipResDoctor: TIntegerField;
    qrSQLEncabezadoInternetDoctor: TIntegerField;
    qrSQLEncabezadoTipResCliente: TIntegerField;
    qrSQLEncabezadoInternetCliente: TIntegerField;
    qrSQLEncabezadoComentario: TStringField;
    qrSQLEncabezadoEnClinica: TIntegerField;
    qrSQLEncabezadoNumeroInternet: TIntegerField;
    qrSQLEncabezadoReferenciaExterna: TStringField;
    qrSQLEncabezadoNeto: TBCDField;
    qrSQLEncabezadoDescuentoPorc: TBCDField;
    qrSQLEncabezadoCoberturaPorc: TBCDField;
    qrSQLEncabezadoCoberturaSeguro: TBCDField;
    qrSQLEncabezadoRestoOld: TBCDField;
    qrSQLEncabezadoNombrePacienteFijo: TStringField;
    qrSQLEncabezadoCodigoAS400: TStringField;
    qrSQLEncabezadoNombrePaciente: TStringField;
    qrSQLEncabezadoGastoEnvio: TBCDField;
    qrSQLEncabezadoMoneda: TStringField;
    qrSQLEncabezadoTasa: TBCDField;

    qrSQLDetalleMuestra: TStringField;
    qrSQLDetalleMuestraNo: TStringField;
    qrSQLDetallePruebaId: TStringField;
    qrSQLDetalleCodigoAS400: TStringField;
    qrSQLDetalleStatusPrueba: TStringField;
    qrSQLDetalleDepartamento: TStringField;
    qrSQLDetalleDeptoId: TStringField;
    qrSQLDetalleFechaEntrada: TDateTimeField;
    qrSQLDetalleFechaEntradaTexto: TStringField;
    qrSQLDetalleHora: TStringField;
    qrSQLDetalleUserId: TStringField;
    qrSQLDetalleComentarioMuestra: TStringField;
    qrSQLDetallePeticion2RepMuestra: TIntegerField;
    qrSQLDetalleNumeroMuestraAnterior: TStringField;
    qrSQLDetalleTipoPrueba: TStringField;
    qrSQLDetalleTipoAS400: TStringField;
    qrSQLDetalleTipoMuestra: TStringField;
    qrSQLDetalleValor: TBCDField;
    qrSQLDetallePrecioBruto: TBCDField;
    qrSQLDetalleValSinCob: TBCDField;
    qrSQLDetalleComentario: TStringField;
    qrSQLDetallePruebaAsegurada: TIntegerField;

    qrASEncabezadoIN3MUE: TBCDField;
    qrASEncabezadoIN3NOM: TStringField;
    qrASEncabezadoIN3HOR: TIntegerField;
    qrASEncabezadoIN3DIR: TStringField;
    qrASEncabezadoIN3EDA: TIntegerField;
    qrASEncabezadoIN3NAC: TIntegerField;
    qrASEncabezadoIN3TEL: TStringField;
    qrASEncabezadoIN3CAT: TStringField;
    qrASEncabezadoIN3FEC: TIntegerField;
    qrASEncabezadoIN3USU: TStringField;
    qrASEncabezadoIN3SEX: TStringField;
    qrASEncabezadoIN3CED: TBCDField;
    qrASEncabezadoIN3SUC: TIntegerField;
    qrASEncabezadoIN3CDO: TIntegerField;
    qrASEncabezadoIN3DOC: TStringField;
    qrASEncabezadoIN3CLI: TBCDField;
    qrASEncabezadoIN3FAC: TBCDField;
    qrASEncabezadoIN3PAG: TBCDField;
    qrASEncabezadoIN3RES: TBCDField;
    qrASEncabezadoIN3EPA: TIntegerField;
    qrASEncabezadoIN3IPA: TIntegerField;
    qrASEncabezadoIN3EDO: TIntegerField;
    qrASEncabezadoIN3IDO: TIntegerField;
    qrASEncabezadoIN3RCL: TIntegerField;
    qrASEncabezadoIN3ICL: TIntegerField;
    qrASEncabezadoIN3COM: TStringField;
    qrASEncabezadoIN3ABR: TIntegerField;
    qrASEncabezadoIN3REL: TBCDField;
    qrASEncabezadoIN3REF: TStringField;
    qrASEncabezadoIN3ACT: TStringField;
    qrASEncabezadoIN3TAS: TBCDField;
    qrASEncabezadoIN3FPA: TBCDField;
    qrASEncabezadoIN3POL: TStringField;
    qrASEncabezadoIN3TAR: TBCDField;
    qrASEncabezadoIN3MON: TIntegerField;
    qrASEncabezadoIN3CAM: TBCDField;
    qrASEncabezadoIN3ENV: TBCDField;

    qrASDetalleIN4MUE: TBCDField;
    qrASDetalleIN4COD: TIntegerField;
    qrASDetalleIN4NOM: TStringField;
    qrASDetalleIN4STS: TStringField;
    qrASDetalleIN4DEP: TIntegerField;
    qrASDetalleIN4FEC: TIntegerField;
    qrASDetalleIN4HOR: TIntegerField;
    qrASDetalleIN4USU: TStringField;
    qrASDetalleIN4COM: TStringField;
    qrASDetalleIN4PET: TIntegerField;
    qrASDetalleIN4ANT: TBCDField;
    qrASDetalleIN4VAL: TBCDField;
    qrASDetalleIN4TIP: TStringField;
    qrASDetalleIN4ACT: TStringField;

    qrNoReactivoIN5COD: TIntegerField;
    qrNoReactivoIN5MG1: TStringField;
    qrNoReactivoIN5NOM: TStringField;

    qrASBuscaCedulaL16USU: TStringField;
    qrASBuscaCedulaL16KEY: TStringField;
    qrASBuscaCedulaL16NOM: TStringField;
    qrASBuscaCedulaL16TIP: TStringField;
    qrASBuscaCedulaL16COD: TStringField;
    qrASBuscaCedulaL16ACT: TStringField;

    qrASBuscaUsuarioL16USU: TStringField;
    qrASBuscaUsuarioL16KEY: TStringField;
    qrASBuscaUsuarioL16NOM: TStringField;
    qrASBuscaUsuarioL16TIP: TStringField;
    qrASBuscaUsuarioL16COD: TStringField;
    qrASBuscaUsuarioL16ACT: TStringField;

    qrCobros: TADOQuery;
    qrCobrosCobroID: TStringField;
    qrCobrosTurnoID: TStringField;
    qrCobrosEntradaID: TStringField;
    qrCobrosSucursalID: TStringField;
    mon: TDateTimeField;
    qrCobrosHora: TStringField;
    qrCobrosPacienteID: TStringField;
    qrCobrosPacientePrincipalID: TStringField;
    qrCobrosUsuarioID: TStringField;
    qrCobrosTotalCobrado: TBCDField;
    qrCobrosTotalFactura: TBCDField;
    qrCobrosTotalPagado: TBCDField;
    qrCobrosPendienteFactura: TBCDField;
    qrCobrosPendienteCobro: TBCDField;
    qrCobrosReciboNo: TStringField;
    qrCobrosClienteID: TStringField;
    qrCobrosAplicado: TBooleanField;
    qrCobrosMonedaID: TStringField;
    qrCobrosTipoDoc: TStringField;
    qrCobrosConcepto: TStringField;
    qrCobrosCUADREGLOBAL: TStringField;
    qrCobrosCUADREUSUARIO: TStringField;
    dsDatos: TDataSource;
    qrFormaCobros: TADOQuery;
    dsFormaCobros: TDataSource;

    qrSQLEncabezadoClinica: TADOQuery;
    qrSQLEncabezadoClinicaMuestra: TStringField;
    qrSQLEncabezadoClinicaMuestraNo: TStringField;
    qrSQLEncabezadoClinicaHora: TStringField;
    qrSQLEncabezadoClinicaDireccion: TStringField;
    qrSQLEncabezadoClinicaDireccionFija: TStringField;
    qrSQLEncabezadoClinicaEdadPaciente: TIntegerField;
    qrSQLEncabezadoClinicaEdadCalculada: TIntegerField;
    qrSQLEncabezadoClinicaFechaNacimiento: TDateTimeField;
    qrSQLEncabezadoClinicaFechaNacimientoTexto: TStringField;
    qrSQLEncabezadoClinicaTelefono: TStringField;
    qrSQLEncabezadoClinicaCategoriaClienteNombre: TStringField;
    qrSQLEncabezadoClinicaFechaEntrada: TDateTimeField;
    qrSQLEncabezadoClinicaFechaEntradaTexto: TStringField;
    qrSQLEncabezadoClinicaUserId: TStringField;
    qrSQLEncabezadoClinicaSexo: TIntegerField;
    qrSQLEncabezadoClinicaCedula: TStringField;
    qrSQLEncabezadoClinicaSucursal: TIntegerField;
    qrSQLEncabezadoClinicaSucursalId: TStringField;
    qrSQLEncabezadoClinicaRecId: TIntegerField;
    qrSQLEncabezadoClinicaDoctorId: TStringField;
    qrSQLEncabezadoClinicaDoctorNombre: TStringField;
    qrSQLEncabezadoClinicaClienteId: TStringField;
    qrSQLEncabezadoClinicaNeto: TBCDField;
    qrSQLEncabezadoClinicaFacturado: TBCDField;
    qrSQLEncabezadoClinicaPagado: TBCDField;
    qrSQLEncabezadoClinicaDescuentoPorc: TBCDField;
    qrSQLEncabezadoClinicaCoberturaPorc: TBCDField;
    qrSQLEncabezadoClinicaCoberturaSeguro: TBCDField;
    qrSQLEncabezadoClinicaResto: TBCDField;
    qrSQLEncabezadoClinicaRestoOld: TBCDField;
    qrSQLEncabezadoClinicaTipResPaciente: TIntegerField;
    qrSQLEncabezadoClinicaInternet: TIntegerField;
    qrSQLEncabezadoClinicaTipResDoctor: TIntegerField;
    qrSQLEncabezadoClinicaInternetDoctor: TIntegerField;
    qrSQLEncabezadoClinicaTipResCliente: TIntegerField;
    qrSQLEncabezadoClinicaInternetCliente: TIntegerField;
    qrSQLEncabezadoClinicaComentario: TStringField;
    qrSQLEncabezadoClinicaEnClinica: TIntegerField;
    qrSQLEncabezadoClinicaNumeroInternet: TIntegerField;
    qrSQLEncabezadoClinicaReferenciaExterna: TStringField;
    qrSQLEncabezadoClinicaNombrePacienteFijo: TStringField;
    qrSQLEncabezadoClinicaCodigoAS400: TStringField;
    qrSQLEncabezadoClinicaNombrePaciente: TStringField;
    qrSQLEncabezadoClinicaGastoEnvio: TBCDField;
    qrSQLEncabezadoClinicaMoneda: TStringField;
    qrSQLEncabezadoClinicaTasa: TBCDField;

    qrSQLDetalleClinica: TADOQuery;
    qrSQLDetalleClinicaMuestra: TStringField;
    qrSQLDetalleClinicaMuestraNo: TStringField;
    qrSQLDetalleClinicaPruebaId: TStringField;
    qrSQLDetalleClinicaCodigoAS400: TStringField;
    qrSQLDetalleClinicaNombrePrueba: TStringField;
    qrSQLDetalleClinicaStatusPrueba: TStringField;
    qrSQLDetalleClinicaDepartamento: TStringField;
    qrSQLDetalleClinicaDeptoId: TStringField;
    qrSQLDetalleClinicaFechaEntrada: TDateTimeField;
    qrSQLDetalleClinicaFechaEntradaTexto: TStringField;
    qrSQLDetalleClinicaHora: TStringField;
    qrSQLDetalleClinicaValor: TBCDField;
    qrSQLDetalleClinicaValSinCob: TBCDField;
    qrSQLDetalleClinicaUserId: TStringField;
    qrSQLDetalleClinicaComentario: TStringField;
    qrSQLDetalleClinicaComentarioMuestra: TStringField;
    qrSQLDetalleClinicaPeticion2RepMuestra: TIntegerField;
    qrSQLDetalleClinicaNumeroMuestraAnterior: TStringField;
    qrSQLDetalleClinicaTipoPrueba: TStringField;
    qrSQLDetalleClinicaTipoAS400: TStringField;
    qrSQLDetalleClinicaTipoMuestra: TStringField;
    qrSQLDetalleClinicaPrecioBruto: TBCDField;
    qrSQLDetalleClinicaPruebaAsegurada: TIntegerField;

    qrPagosAs400: TADOQuery;
    qrPagosAs400IN14MU: TBCDField;
    qrPagosAs400IN14NU: TBCDField;
    qrPagosAs400IN14FE: TIntegerField;
    qrPagosAs400IN14HO: TIntegerField;
    qrPagosAs400IN14ID: TStringField;
    qrPagosAs400IN14EF: TBCDField;
    qrPagosAs400IN14TA: TBCDField;
    qrPagosAs400IN14SU: TIntegerField;
    qrPagosAs400IN14AC: TStringField;
    qrCobrosSecuencia: TAutoIncField;
    qrCobrosSINPRFILTER: TIntegerField;
    qrSQLEncabezadoEstatus: TIntegerField;
    qrSQLEncabezadoClinicaEstatus: TIntegerField;
    qrASEncabezadoIN3SEG: TBCDField;
    qrASDetalleIN4GRU: TStringField;
    qrSQLDetalleGrupoPruebaID: TStringField;
    qrSQLDetalleClinicaGrupoPruebaID: TStringField;
    qrSQLEncabezadoCod_Caso: TIntegerField;
    qrSQLEncabezadoPrioridad: TIntegerField;
    qrSQLEncabezadoClinicaCod_Caso: TIntegerField;
    qrSQLEncabezadoClinicaPrioridad: TIntegerField;
    qrASEncabezadoIN3NRE: TIntegerField;
    qrASEncabezadoIN3URG: TIntegerField;
    qrAS400Pruebas: TADOQuery;
    qrAS400Entradas: TADOQuery;
    qrAS400Pagos: TADOQuery;
    qrAS400EntradasIN5MUE: TBCDField;
    qrAS400EntradasIN5NOM: TStringField;
    qrAS400EntradasIN5HOR: TIntegerField;
    qrAS400EntradasIN5DIR: TStringField;
    qrAS400EntradasIN5EDA: TIntegerField;
    qrAS400EntradasIN5NAC: TIntegerField;
    qrAS400EntradasIN5TEL: TStringField;
    qrAS400EntradasIN5CAT: TStringField;
    qrAS400EntradasIN5FEC: TIntegerField;
    qrAS400EntradasIN5USU: TStringField;
    qrAS400EntradasIN5SEX: TStringField;
    qrAS400EntradasIN5CED: TBCDField;
    qrAS400EntradasIN5SUC: TIntegerField;
    qrAS400EntradasIN5CDO: TIntegerField;
    qrAS400EntradasIN5DOC: TStringField;
    qrAS400EntradasIN5CLI: TBCDField;
    qrAS400EntradasIN5FAC: TBCDField;
    qrAS400EntradasIN5PAG: TBCDField;
    qrAS400EntradasIN5RES: TBCDField;
    qrAS400EntradasIN5EPA: TIntegerField;
    qrAS400EntradasIN5IPA: TIntegerField;
    qrAS400EntradasIN5EDO: TIntegerField;
    qrAS400EntradasIN5IDO: TIntegerField;
    qrAS400EntradasIN5RCL: TIntegerField;
    qrAS400EntradasIN5ICL: TIntegerField;
    qrAS400EntradasIN5COM: TStringField;
    qrAS400EntradasIN5ABR: TIntegerField;
    qrAS400EntradasIN5REL: TBCDField;
    qrAS400EntradasIN5REF: TStringField;
    qrAS400EntradasIN5ACT: TStringField;
    qrAS400EntradasIN5TAS: TBCDField;
    qrAS400EntradasIN5FPA: TBCDField;
    qrAS400EntradasIN5POL: TStringField;
    qrAS400EntradasIN5TAR: TBCDField;
    qrAS400EntradasIN5MON: TIntegerField;
    qrAS400EntradasIN5CAM: TBCDField;
    qrAS400EntradasIN5ENV: TBCDField;
    qrAS400EntradasIN5SEG: TBCDField;
    qrAS400EntradasIN5NRE: TIntegerField;
    qrAS400EntradasIN5URG: TIntegerField;
    qrAS400EntradasIN5FAT: TStringField;
    qrAS400EntradasIN5LAB: TBCDField;
    qrAS400EntradasIN5APR: TBCDField;
    qrAS400EntradasIN5PER: TStringField;
    qrAS400PruebasIN6MUE: TBCDField;
    qrAS400PruebasIN6COD: TIntegerField;
    qrAS400PruebasIN6NOM: TStringField;
    qrAS400PruebasIN6STS: TStringField;
    qrAS400PruebasIN6DEP: TIntegerField;
    qrAS400PruebasIN6FEC: TIntegerField;
    qrAS400PruebasIN6HOR: TIntegerField;
    qrAS400PruebasIN6USU: TStringField;
    qrAS400PruebasIN6COM: TStringField;
    qrAS400PruebasIN6PET: TIntegerField;
    qrAS400PruebasIN6ANT: TBCDField;
    qrAS400PruebasIN6VAL: TBCDField;
    qrAS400PruebasIN6TIP: TStringField;
    qrAS400PruebasIN6ACT: TStringField;
    qrAS400PruebasIN6GRU: TStringField;
    qrAS400PruebasIN6FAT: TStringField;
    DsqrAS400Pruebas: TDataSource;
    DsqrAS400Entradas: TDataSource;
    DsqrAS400Pagos: TDataSource;
    qrAS400PagosIN17MU: TBCDField;
    qrAS400PagosIN17NU: TBCDField;
    qrAS400PagosIN17FE: TIntegerField;
    qrAS400PagosIN17HO: TIntegerField;
    qrAS400PagosIN17ID: TStringField;
    qrAS400PagosIN17EF: TBCDField;
    qrAS400PagosIN17TA: TBCDField;
    qrAS400PagosIN17SU: TIntegerField;
    qrAS400PagosIN17AC: TStringField;
    qrAS400PagosIN17FA: TStringField;
    qrAS400PagosIN17RE: TStringField;
    qrAS400PruebasIN6SEG: TBCDField;
    dsBadPhone: TDataSource;
    qrASBadPhone: TADOQuery;
    qrASBadPhoneIN6NUM: TBCDField;
    qrASBadPhoneIN6ACT: TStringField;
    qrASBadPhoneIN6TEL: TBCDField;
    qrAS400EntradasIN5FEA: TIntegerField;
    qrAsToma: TADOQuery;
    dsToma: TDataSource;
    qrAsTomaLA10NU: TBCDField;
    qrAsTomaLA10U1: TStringField;
    qrAsResultado: TADOQuery;
    dsResultado: TDataSource;
    qrAsResultadoANO: TIntegerField;
    qrAsResultadoNUMLAB: TIntegerField;
    qrAsResultadoDEPTO: TIntegerField;
    qrAsResultadoPRUEBA: TStringField;
    qrAsResultadoSECDEP: TIntegerField;
    qrAsResultadoFILLE1: TStringField;
    qrAsResultadoHORA: TIntegerField;
    qrAsResultadoFILLE2: TStringField;
    qrAsResultadoRESULT: TStringField;
    qrAsResultadoNOTA: TStringField;
    qrAsResultadoCODLIB: TIntegerField;
    qrAsResultadoTERMI: TIntegerField;
    qrAsResultadoFECENT: TIntegerField;
    qrAsResultadoUSUARI: TStringField;
    qrAsResultadoNOTA2: TStringField;
    qrAsResultadoRANGO: TStringField;
    qrAsResultadoCODDEP: TIntegerField;
    qrAsResultadoMARCA: TStringField;
    qrAsResultadoRANO: TIntegerField;
    qrAsResultadoRVALNO: TStringField;
    qrAsResultadoRMETOD: TStringField;
    qrAsResultadoRUNIDA: TStringField;
    qrAsResultadoRPC: TStringField;
    qrAsResultadoRCODPRU: TIntegerField;
    qrSQLEncabezadoCConfirmada: TStringField;
    qrSQLEncabezadoClinicaCConfirmada: TStringField;
    qrASEncabezadoIN3CCO: TStringField;
    qrNoReactivoIN5MG2: TStringField;
    qrSQLEncabezadoRecid: TLargeintField;
    qrCobrosrefRecid: TLargeintField;
    qrCobrosRecId: TLargeintField;
    qrSQLDetalleNombrePrueba: TStringField;
    qrASEncabezadoIN3ORI: TStringField;
    qrASEncabezadoIN3EMB: TStringField;
    qrASBuscaCedulaL16MAI: TStringField;
    qrSQLEncabezadoEmbarazada: TBooleanField;
    qrSQLEncabezadoEmail: TStringField;
    qrASEncabezadoIN3PNA: TStringField;
    qrSQLEncabezadoNacionalidad: TStringField;
    qrASBuscaUsuarioL16MAI: TStringField;
    qrASEncabezadoIN3NUP: TIntegerField;
    qrASEncabezadoIN3PAS: TStringField;
    qrAsPruebaResultado: TADOQuery;
    dsPruebaResultado: TDataSource;
    qrAsPruebaResultadoANO: TIntegerField;
    qrAsPruebaResultadoNUMLAB: TIntegerField;
    qrAsPruebaResultadoDEPTO: TIntegerField;
    qrAsPruebaResultadoPRUEBA: TStringField;
    qrAsPruebaResultadoRCODPRU: TIntegerField;
    qrASEncabezadoIN3DTO: TStringField;
    qrSQLEncabezadoTipo_Doc: TIntegerField;
    qrSQLEncabezadoCodigo_Tarjeta: TIntegerField;
    qrSQLEncabezadoArea: TStringField;
    qrAsPruebaResHPV: TADOQuery;
    qrAsPruebaResHPVANO: TIntegerField;
    qrAsPruebaResHPVNUMLAB: TIntegerField;
    qrASInternetL16USU: TStringField;
    qrASInternetL16KEY: TStringField;
    qrASInternetL16NOM: TStringField;
    qrASInternetL16TIP: TStringField;
    qrASInternetL16COD: TStringField;
    qrASInternetL16ACT: TStringField;
    qrASInternetL16MAI: TStringField;
    qrAS400EntradasIN5CCO: TStringField;
    qrAS400EntradasIN5CLC: TBCDField;
    qrAS400EntradasIN5CNA: TIntegerField;
    qrAS400EntradasIN5NAD: TStringField;
    qrAS400EntradasIN5EMB: TStringField;
    qrASEncabezadoIN3NAP: TStringField;
    qrASEncabezadoIN3PAP: TStringField;
    qrSQLEncabezadoAprobacionNo: TStringField;
    qrSQLEncabezadoAprobacionPor: TStringField;
    qrSQLEncabezadoNo_Indicacion: TBooleanField;
    ADOQuery1: TADOQuery;
    ADOQuery1INCLIE: TIntegerField;
    ADOQuery1INNOMB: TStringField;
    ADOQuery1INDIRE: TStringField;
    ADOQuery1INCIUD: TStringField;
    ADOQuery1INRNC: TBCDField;
    ADOQuery1INTEL1: TBCDField;
    ADOQuery1INTEL2: TBCDField;
    ADOQuery1INCONT: TStringField;
    ADOQuery1INSTAT: TIntegerField;
    ADOQuery1INTIPO: TIntegerField;
    ADOQuery1INCOBE: TStringField;
    ADOQuery1INCLAS: TStringField;
    ADOQuery1INMONE: TIntegerField;
    ADOQuery1ININTE: TIntegerField;
    ADOQuery1INCODE: TBCDField;
    ADOQuery1INFEUL: TIntegerField;
    ADOQuery1INFEAC: TIntegerField;
    ADOQuery1INBCEA: TBCDField;
    ADOQuery1INBCET: TBCDField;
    ADOQuery1INANUS: TBCDField;
    ADOQuery1INACUS: TBCDField;
    ADOQuery1INCATE: TIntegerField;
    ADOQuery1INACT: TStringField;
    qrASEncabezadoIN3DI2: TStringField;
    qrASEncabezadoIN3IND: TStringField;
    ADOQuery2: TADOQuery;

  private
    { Private declarations }
  public
    { Public declarations }
    User_Internet_AS400, Clave_Internet_AS400, Nombre_Internet_AS400, Tipo_Internet_AS400  : String;
    Codigo_Internet_AS400, Identificacion_Internet_AS400, Email_Internet_AS400 : String;

    Function Buscar_Tarjeta(_registro: string): Double;

    Function GetResult(Muestra: String; CodigoPrueba: string): String;

    Function Elimina_Entrada(Muestra: String): Boolean;

    Procedure MandarPruebaAS400(MuestraNo: string; Paciente: String);

    Procedure MandarPruebaAS400_Clinica(MuestraNo: string; Paciente: String);

    Procedure SetEncabezado(
                            Muestra: String;
                            Nombre: String;
                            Hora: Integer;
                            Direccion: String;
                            Edad: String; //Integer;
                            FechaNacimieto: Integer; //TDateTime;
                            Categoria: String;
                            Fecha: Integer; //TDateTime;
                            Usuario: String;
                            Sexo: String;
                            Sucursal: Integer;
                            Doctor: String;
                            Cliente: String;
                            CodigoIdAS400: String;
                            Facturado: Currency;
                            Pagado: Currency;
                            Resto: Currency;
                            TipoResultadoPaciente: Integer;
                            InternetPaciente: Integer;
                            TipoResultadoDoctor: Integer;
                            InternetDoctor: Integer;
                            TipoResultadoCliente: Integer;
                            PacienteClinica: Integer;
                            InternetCliente: Integer;
                            CoberturaPorc: Currency;
                            DescuentoPorc: Currency;
                            CoberturaSeguro: Currency;
                            DiferenciaNeto: Currency;
                            RecId: String;
                            Moneda: String;
                            Tasa: Currency;
                            GastoEnvio: Currency;
                            Telefono: String = '0';
                            Cedula: String = '0'; //Integer = 0;
                            CodigoDoctor: String = '0'; //Integer = 0;
                            Comentario: String = '';
                            NumeroRelacionInternet: Integer = 0;
                            ReferenciaExterna: String = '';
                            Estatus: Integer = 0;
                            Cod_Caso: Integer = 0;
                            Prioridad: Integer = 0;
                            CConfirmada: String = 'N';
                            Area: String = '';
                            Embarazada: Boolean = False;
                            Nacionalidad: String = '';
                            Tipo_Doc : Integer = 0;
                            Codigo_Tarjeta : Integer = 0;
                            AprobacionNo: String ='';
                            AprobacionPor: String ='';
                            No_Indicacion: Boolean = False);

    Procedure SetDetalle(
                         Muestra: String;
                         CodigoPrueba: Integer;
                         Prueba: String;
                         Status: String;
                         FechaEntrada: Integer; //TDateTime;
                         Hora: Integer;
                         Usuario: String;
                         Comentario: String;
                         Peticion2Muestra: Integer;
                         Valor: Currency;
                         Depto: Integer = 0;
                         NumeroMuestraAnterior: Integer = 0;
                         TipoMuestra: String = '';
                         GrupoPruebaID: String = '';
                         No_Cubre_Seguro: Boolean = False);

Procedure Buscar_Cedula_Internet(_cedula,Muestrano,Tipo_Doc: String);
Procedure Usuario_Internet_AS400(_paciente : String);
Procedure Confirmar_No_Reactivo(CodigoAS400, Prueba, Descripcion : String);
procedure CambiarTelefonoAS400(MuestraNo: String);
Function  Verifica_Toma_Muestra(MuestraNo: String):Boolean;
Function  Verifica_Resultado(MuestraNo: String;PruebaID: Integer):Boolean;
procedure Mirar_Valor_CAB;
Function  Buscar_Usuario_Internet(_usuario: String): Boolean;
Function  Cargar_Valor(campo: String; valor: Variant): String;
Function  Buscar_Resultados_Prueba(Muestrano : String; PruebaID : Integer; Depto : Integer):String;
end;
var
  InterfaseAS400: TInterfaseAS400;

Const  _AreaId = 'ldr';

implementation

uses DataModule, Main, StrUtils, Windows;

{$R *.dfm}


Function TInterfaseAS400.GetResult(Muestra: String; CodigoPrueba: string): String;
begin
  qrASResult.Close;

  qrASResult.SQL.Text := 'SELECT * FROM RESULT WHERE ( L49MUE ='+#39+Muestra+#39+')'+
                         'AND ( L49PRU = '+#39+CodigoPrueba+#39+')';
//  qrASResult.Parameters.ParamByName('Muestra').Value:= Muestra;
//  qrASResult.Parameters.ParamByName('Codigo').Value:=  CodigoPrueba;
  qrASResult.Open;

  if not qrASResult.Eof then
    GetResult:= qrASResultL49RES.AsString
  else
    GetResult:= '';

  qrASResult.Close;
end;



Procedure TInterfaseAS400.Confirmar_No_Reactivo(CodigoAS400, Prueba, Descripcion : String);
Var
  _mensaje : String;
begin
  Try
    InterfaseAS400.ASConnection.Close;
    InterfaseAS400.ASConnection.Open;

    qrNoReactivo.Close;
    qrNoReactivo.SQL.Text := 'SELECT * FROM INP00501 '+
                         'WHERE (IN5COD = '+#39+CodigoAS400+#39+')';
//    qrNoReactivo.Parameters.ParamByName('Codigo').Value:= CodigoAS400;
    qrNoReactivo.Open;
    If (qrNoReactivo.RecordCount > 0) Then
    Begin
        if (Trim(qrNoReactivoIN5MG1.AsString) <> EmptyStr) Or
           (Trim(qrNoReactivoIN5MG2.AsString) <> EmptyStr) then
        begin
        DM.Error(' Falta Rectivo.  La Prueba: (' + Prueba + ') ' + Descripcion + #13 +
                 ' NO Puede Facturarse por la(s) Siguiente(s) Razon(es): '+ #13 +
                 qrNoReactivoIN5MG1.AsString + #13 + qrNoReactivoIN5MG2.AsString + #13 +
                 ' Por Favor, Comuniquese con el Departamento Tecnico Correspondiente.!!!');
//        Abort;
        end;
    End;
  Finally
  InterfaseAS400.ASConnection.Close;
{  Except

    Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                              ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                              ' � Intentelo Nuevamente.!!!', []);
}
 end;
end;


Function TInterfaseAS400.Buscar_Tarjeta(_registro: string): Double;
Var
  _cobro_tarjeta : Double;
begin
  _cobro_tarjeta := 0;

  qrCobros.Close;
  qrCobros.SQL.Text := ' SELECT * FROM PTCobro (nolock) '+
                       ' WHERE RefRecId ='+_registro+
                       ' AND TipoDoc = '+ #39 + 'RI' + #39;
  qrCobros.Open;
  If (qrCobros.RecordCount > 0) then
  Begin
      qrCobros.First;
      while Not qrCobros.Eof do
      Begin
        qrFormaCobros.Active := false;
        qrFormaCobros.sql.Text := ' SELECT D.CobroId, D.FormadePagoId, D.MonedaId, '+
                                  ' SUM(D.monto) FROM PTCobro C (nolock), PTCobroDetalle D (nolock) '+
                                  ' WHERE C.cobroid = D.CobroId '+
                                  ' AND C.CobroId = :rec '+
                                  ' AND C.Fecha = :fec '+
                                  ' AND C.SucursalId = :suc '+
                                  ' AND C.UsuarioId = :usr '+
                                  ' GROUP BY D.CobroId, D.FormadePagoId, D.MonedaId '+
                                  ' ORDER BY D.CobroId, D.FormadePagoId, D.MonedaId ';
        qrFormaCobros.Parameters.ParamByName('rec').Value := qrCobros.FieldByName('CobroId').AsString;
        qrFormaCobros.Parameters.ParamByName('suc').Value := qrCobros.FieldByName('SucursalId').AsString;
        qrFormaCobros.Parameters.ParamByName('fec').Value := qrCobros.FieldByName('Fecha').AsString;
        qrFormaCobros.Parameters.ParamByName('usr').Value := qrCobros.FieldByName('UsuarioId').AsString;
        qrFormaCobros.Active := True;

        if (qrFormaCobros.RecordCount > 0) then
          Begin
            qrFormaCobros.First;
            while Not qrFormaCobros.Eof do
            Begin
              if (qrFormaCobros.Fields[1].AsString = 'TC') then
                _cobro_tarjeta := DM.Redondeo(_cobro_tarjeta + qrFormaCobros.Fields[3].AsFloat);

              if (qrFormaCobros.Fields[1].AsString = 'TD') then
                _cobro_tarjeta := DM.Redondeo(_cobro_tarjeta + qrFormaCobros.Fields[3].AsFloat);

              qrFormaCobros.Next;
            End;
          End;
        qrCobros.Next;
      end;
    end;

  Result := _cobro_tarjeta;
end;


procedure TInterfaseAS400.Usuario_Internet_AS400(_paciente : String);
Var
 qfind  : TAdoQuery;
 Documento,Doc : String;
begin
  Try
  qfind := DM.Find('SELECT * FROM PTUsuariosInternet p inner join ptcliente c on c.clienteid=p.clienteid WHERE p.ClienteId = :clt', _paciente);
  If (qfind.RecordCount > 0) then
    Begin
      qrASInternet.Close;
      Doc  := DM.Cortar_Char('-', qfind.FieldByName('Identificacion').AsString);
      If qfind.FieldByName('Tipo_Documento').AsString='3' then
        Documento := Trim(Doc)
      else
        Documento := Copy(Doc, 1, 11);
      qrASInternet.SQL.Text := 'SELECT * FROM INP01201 WHERE (L16USU = :Usuario) '+
                               'AND (L16COD = :Codigo )';
      qrASInternet.Parameters.ParamByName('Usuario').Value  := qfind.FieldByName('UsuarioInternet').AsString;
      qrASInternet.Parameters.ParamByName('Codigo').Value   := Documento;
      qrASInternet.Open;
      If qrASInternet.RecordCount > 1 then
      begin
        qrASInternet.SQL.Text := 'DELETE FROM INP01201 WHERE (L16USU = :Usuario) '+
                                 'AND (L16COD = :Codigo )';
        qrASInternet.Parameters.ParamByName('Usuario').Value  := qfind.FieldByName('UsuarioInternet').AsString;
        qrASInternet.Parameters.ParamByName('Codigo').Value   := Documento;
        qrASInternet.ExecSQL;
        qrASInternet.SQL.Text := 'SELECT * FROM INP01201 WHERE (L16USU = :Usuario) '+
                                 'AND (L16COD = :Codigo )';
        qrASInternet.Parameters.ParamByName('Usuario').Value  := qfind.FieldByName('UsuarioInternet').AsString;
        qrASInternet.Parameters.ParamByName('Codigo').Value   := Documento;
        qrASInternet.Open;
      end;
      If qrASInternet.Eof then
      begin
        qrASInternet.SQL.Text := 'SELECT * FROM INP01201 WHERE (L16USU = :Usuario) '+
                                 'AND (L16KEY = :Codigo )';
        qrASInternet.Parameters.ParamByName('Usuario').Value  := qfind.FieldByName('UsuarioInternet').AsString;
        qrASInternet.Parameters.ParamByName('Codigo').Value   := qfind.FieldByName('ClaveInternet').AsString;
        qrASInternet.Open;
        If qrASInternet.RecordCount > 0 then
        begin
          qrASInternet.SQL.Text := 'DELETE FROM INP01201 WHERE (L16USU = :Usuario) '+
                                   'AND (L16KEY = :Codigo )';
          qrASInternet.Parameters.ParamByName('Usuario').Value  := qfind.FieldByName('UsuarioInternet').AsString;
          qrASInternet.Parameters.ParamByName('Codigo').Value   := qfind.FieldByName('ClaveInternet').AsString;
          qrASInternet.ExecSQL;
          qrASInternet.SQL.Text := 'SELECT * FROM INP01201 WHERE (L16USU = :Usuario) '+
                                   'AND (L16KEY = :Codigo )';
          qrASInternet.Parameters.ParamByName('Usuario').Value  := qfind.FieldByName('UsuarioInternet').AsString;
          qrASInternet.Parameters.ParamByName('Codigo').Value   := qfind.FieldByName('ClaveInternet').AsString;
          qrASInternet.Open;
        end;
        qrASInternet.Insert;
      end
      Else
        qrASInternet.Edit;

      qrASInternetL16USU.AsString := qfind.FieldByName('UsuarioInternet').AsString;
//      if qrASInternet.State in [dsEdit] then
//      begin
//        If (qrASInternetL16KEY.AsInteger) <> StrToInt(qfind.FieldByName('ClaveInternet').AsInteger) then
//            qrASInternetL16KEY.AsString := qfind.FieldByName('ClaveInternet').AsString;
//      end
      If qrASInternet.State in [dsInsert] then
      begin
        qrASInternetL16KEY.AsString := qfind.FieldByName('ClaveInternet').AsString;
      end;
      qrASInternetL16NOM.AsString := Trim(Copy(qfind.FieldByName('Nombre').AsString, 1, 50));
      qrASInternetL16TIP.AsString := qfind.FieldByName('Tipo').AsString;
      qrASInternetL16COD.AsString := Documento;
      qrASInternetL16ACT.AsString := '';
      qrASInternetL16MAI.Asstring := qfind.FieldByName('Email').AsString;
      qrASInternet.Post;
      qrASInternet.Close;
    end;
  FreeAndNil(qfind);
  except    on
  e:Exception do
  begin
        MessageDlg( 'Procedimiento : Usuario_Internet_AS400 '+e.Message, mtError, [mbOk],0);
  end
  end;
end;


procedure TInterfaseAS400.MandarPruebaAS400_Clinica(MuestraNo: String; Paciente: String);
Var
  _tipo       : String;
  _blanks     : String;
  _record     : Integer;
  no_insurance: Boolean;
  No_Seguro   : String;
  _depto, _nma: Integer;
  qfind       : TADOQuery;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Insertando la Orden de Trabajo.
  qrSqlEncabezadoClinica.Close;
  qrSqlEncabezadoClinica.Parameters.ParamByName('MuestraNo').Value := MuestraNo;
  qrSqlEncabezadoClinica.Open;

  no_insurance := False;
  No_Seguro :='N';
  qfind := DM.Find_Ldr('SELECT GrupoCliente FROM PTCliente (nolock) WHERE ClienteId = :cli', qrSqlEncabezadoClinicaClienteId.AsString);
  If (qfind.FieldByName('GrupoCliente').Value = DM.qrParametroGrupoSeg.Value) Then
  begin
    no_insurance := True;
    No_Seguro :='S';
  end;
  qrSqlEncabezadoClinica.First;
  _record := qrSqlEncabezadoClinica.RecordCount;

  If (qrSqlEncabezadoClinicaInternet.AsInteger > 0) then
    Usuario_Internet_AS400(Paciente);

//  SetEncabezado(qrSqlEncabezadoClinicaMuestraNo.AsInteger,               //  qrSqlEncabezadoClinicaMuestra
  SetEncabezado(qrSqlEncabezadoClinicaMuestraNo.AsString,                //  qrSqlEncabezadoClinicaMuestra
                qrSqlEncabezadoClinicaNombrePaciente.AsString,
                qrSqlEncabezadoClinicaHora.AsInteger,
                qrSqlEncabezadoClinicaDireccion.AsString,
                qrSqlEncabezadoClinicaEdadPaciente.AsString,             //  qrSqlEncabezadoClinicaEdadCalculada
                qrSqlEncabezadoClinicaFechaNacimientoTexto.AsInteger,    //  qrSqlEncabezadoClinicaFechaNacimiento
                qrSqlEncabezadoClinicaCategoriaClienteNombre.AsString,
                qrSqlEncabezadoClinicaFechaEntradaTexto.AsInteger,       //  qrSqlEncabezadoClinicaFechaEntrada
                qrSqlEncabezadoClinicaUserId.AsString,
                qrSqlEncabezadoClinicaSexo.AsString,
                qrSqlEncabezadoClinicaSucursal.AsInteger,                //  qrSqlEncabezadoClinicaSucursalId
                qrSqlEncabezadoClinicaDoctorNombre.AsString,
                qrSqlEncabezadoClinicaClienteId.AsString,
                qrSqlEncabezadoClinicaCodigoAS400.AsString,
                qrSqlEncabezadoClinicaFacturado.AsCurrency,
                qrSqlEncabezadoClinicaPagado.AsCurrency,
                qrSqlEncabezadoClinicaResto.AsCurrency,
                qrSqlEncabezadoClinicaTipResPaciente.AsInteger,
                qrSqlEncabezadoClinicaInternet.AsInteger,
                qrSqlEncabezadoClinicaTipResDoctor.AsInteger,
                qrSqlEncabezadoClinicaInternetDoctor.AsInteger,
                qrSqlEncabezadoClinicaTipResCliente.AsInteger,
                qrSqlEncabezadoClinicaEnClinica.AsInteger,
                qrSqlEncabezadoClinicaInternetCliente.AsInteger,
                qrSqlEncabezadoClinicaCoberturaPorc.AsCurrency,
                qrSqlEncabezadoClinicaDescuentoPorc.AsCurrency,
                qrSqlEncabezadoClinicaCoberturaSeguro.AsCurrency,
                qrSqlEncabezadoClinicaNeto.AsCurrency,
                qrSqlEncabezadoClinicaRecId.AsString,
                qrSqlEncabezadoClinicaMoneda.AsString,
                qrSqlEncabezadoClinicaTasa.AsCurrency,
                qrSqlEncabezadoClinicaGastoEnvio.AsCurrency,
                qrSqlEncabezadoClinicaTelefono.AsString,
                qrSqlEncabezadoClinicaCedula.AsString,
                qrSqlEncabezadoClinicaDoctorId.AsString,
                qrSqlEncabezadoClinicaComentario.AsString,
                qrSqlEncabezadoClinicaNumeroInternet.AsInteger,
                qrSqlEncabezadoClinicaReferenciaExterna.AsString,
                qrSqlEncabezadoClinicaEstatus.AsInteger,
                qrSqlEncabezadoClinicaCod_Caso.AsInteger,
                qrSqlEncabezadoClinicaPrioridad.AsInteger,
                qrSqlEncabezadoClinicaCConfirmada.AsString);

  qrSqlEncabezadoClinica.Close;

////////////////////////////////////////////////////////////////////////////////

  //Insertando las Pruebas.
  qrSqlDetalleClinica.Close;
  qrSqlDetalleClinica.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrSqlDetalleClinica.Open;

  qrSqlDetalleClinica.First;
  While Not qrSqlDetalleClinica.Eof Do
  Begin
    If (no_insurance = True) or (No_Seguro ='S') Then
      If (qrSqlDetalleClinicaPruebaAsegurada.AsInteger = 1) Then
        no_insurance := False
      Else
        no_insurance := True;

//   SHOWMESSAGE(qrSqlDetalleClinicaNombrePrueba.AsString);
     InterfaseAS400.SetDetalle(qrSqlDetalleClinicaMuestraNo.AsString,           //  qrSqlDetalleClinicaMuestra
                               qrSqlDetalleClinicaCodigoAS400.AsInteger,         //  qrSqlDetalleClinicaPruebaId
                               qrSqlDetalleClinicaNombrePrueba.AsString,
                               qrSqlDetalleClinicaStatusPrueba.AsString,
                               qrSqlDetalleClinicaFechaEntradaTexto.AsInteger,   //  qrSqlDetalleClinicaFechaEntrada
                               qrSqlDetalleClinicaHora.AsInteger,
                               qrSqlDetalleClinicaUserId.AsString,
                               qrSqlDetalleClinicaComentario.AsString,           //  qrSqlDetalleClinicaComentarioMuestra.AsString,
                               qrSqlDetalleClinicaPeticion2RepMuestra.AsInteger,
                               qrSQLDetalleClinicaPrecioBruto.AsCurrency,        //  qrSqlDetalleClinicaValor.AsCurrency,
                               qrSqlDetalleClinicaDeptoId.AsInteger,             //  qrSqlDetalleClinicaDepartamento
                               qrSqlDetalleClinicaNumeroMuestraAnterior.AsInteger,
                               qrSqlDetalleClinicaTipoAS400.AsString,
                               qrSqlDetalleClinicaGrupoPruebaID.AsString,
                               no_insurance);           //  qrSqlDetalleClinicaTipoPrueba - qrSqlDetalleClinicaTipoMuestra

     qrSqlDetalleClinica.Next;
   End;

  qrSqlDetalleClinica.Close;
end;


procedure TInterfaseAS400.Mirar_Valor_CAB;
Var idx : Integer;
begin
  For idx := 0 To qrSQLDetalle.FieldCount - 1 Do
   begin
     Showmessage('CAB - ' + Cargar_Valor(qrSQLDetalle.Fields[idx].DisplayLabel,
                                         qrSQLDetalle.Fields[idx].Value));
   end;
end;


Function TInterfaseAS400.Cargar_Valor(campo: String; valor: Variant): String;
begin
 Result := campo + ' - ( ' + VarToStr(valor) + ' ).';
end;


procedure TInterfaseAS400.Buscar_Cedula_Internet(_cedula,Muestrano,Tipo_Doc: String);
Var
 _valor  : String;
 qfind  : TAdoQuery;
begin
  _valor := '';
  User_Internet_AS400 := '';
  Clave_Internet_AS400 := '';

  //Eliminando los Guiones de la Cedula - RNC del Cliente.
  _valor  := DM.Cortar_Char('-', _cedula);
  If Tipo_Doc='3' then
     _Cedula := Trim(_valor)
  else
     _cedula := Copy(_valor, 1, 11);

  Try
    InterfaseAS400.ASConnection.Close;
    InterfaseAS400.ASConnection.Open;

    qrASBuscaCedula.Close;
    qrASBuscaCedula.SQL.Text := 'SELECT * FROM INP01201 WHERE (L16COD = '+#39+_cedula+#39+')';
//    qrASBuscaCedula.Parameters.ParamByName('Cedula').Value:= _cedula;
    qrASBuscaCedula.Open;

    If (qrASBuscaCedula.RecordCount > 0) Then
    Begin
        User_Internet_AS400           := qrASBuscaCedulaL16USU.Value;
        Clave_Internet_AS400          := qrASBuscaCedulaL16KEY.Value;
        Nombre_Internet_AS400         := qrASBuscaCedulaL16NOM.Value;
        Tipo_Internet_AS400           := qrASBuscaCedulaL16TIP.Value;
        Identificacion_Internet_AS400 := qrASBuscaCedulaL16COD.Value;
        If Trim(qrASBuscaCedulaL16MAI.Value) = EmptyStr then
        begin
          qrSqlEncabezado.Close;
          qrSQLEncabezado.Parameters.ParamByName('MuestraNo').Value := MuestraNo;
          qrSQLEncabezado.Open;
          If (qrSQLEncabezado.RecordCount > 0) Then
          Begin
              qrASBuscaCedula.Edit;
              qrASBuscaCedulaL16MAI.AsString  := qrSQLEncabezadoEmail.AsString;
              qrASBuscaCedula.Post;
              qrASBuscaCedula.Close;
              qrASInternet.SQL.Text := 'SELECT * FROM INP01201 WHERE (L16COD = '+#39+_cedula+#39+')';
              qrASInternet.Open;
              If (qrASInternet.RecordCount > 0) Then
              Begin
                  qrASInternet.Edit;
                  qrASInternetL16MAI.AsString  := qrSQLEncabezadoEmail.AsString;
                  qrASInternet.Post;
                  qrASInternet.Close;
              end;
          end;
        end;
    End;
    InterfaseAS400.ASConnection.Close;
  Except
    Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                              ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                              ' � Intentelo Nuevamente.!!!', []);
  End;
end;


Function TInterfaseAS400.Buscar_Usuario_Internet(_usuario: String): Boolean;
Var
  _valor : Boolean;
  _Find, Blanco: String;
  _Size, Largo : Integer;
begin
  _Size  := 0;
  _Find  := '';
  Blanco := '';

  Largo := Length(_usuario);

  If (Largo < 10) Then
    _Size := 10 - Largo;

  If (_Size > 0) Then
    Blanco := StringOfChar(' ', _Size);

  _Find := _usuario + Blanco;

////////////////////////////////////////////////////////////////////////////////

  Try
    InterfaseAS400.ASConnection.Close;
    InterfaseAS400.ASConnection.Open;

    qrASBuscaUsuario.Close;
    qrASBuscaUsuario.SQL.Text := 'SELECT * FROM INP01201 WHERE (L16USU = '+#39+_Find+#39+')';
//    qrASBuscaUsuario.Parameters.ParamByName('Usuario').Value:= _Find;
    qrASBuscaUsuario.Open;

    If (qrASBuscaUsuario.RecordCount > 0) Then
      _valor := False
    Else
      _valor := True;

    Result := _valor;
    InterfaseAS400.ASConnection.Close;
  Except
    Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                              ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                              ' � Intentelo Nuevamente.!!!', []);
  End;
end;


procedure TInterfaseAS400.MandarPruebaAS400(MuestraNo: String; Paciente: String);
Var
  _tipo       : String;
  _blanks     : String;
  _record     : Integer;
  no_insurance: Boolean;
  No_Seguro   : String;
  _depto, _nma: Integer;
  qfind       : TADOQuery;
begin
 Try
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Insertando la Orden de Trabajo.
  qrSqlEncabezado.Close;
  qrSQLEncabezado.Parameters.ParamByName('MuestraNo').Value := MuestraNo;
  qrSQLEncabezado.Open;

  no_insurance := False;
  No_Seguro    :='N';
  qfind := DM.Find_Ldr('SELECT GrupoCliente FROM PTCliente (nolock) WHERE ClienteId = :cli', qrSQLEncabezadoClienteId.AsString);
  If (qfind.FieldByName('GrupoCliente').Value) = (DM.qrParametroGrupoSeg.Value) Then
  begin
    no_insurance := True;
    No_Seguro    :='S';
  end;
  qrSQLEncabezado.First;
  _record := qrSQLEncabezado.RecordCount;

  If (qrSQLEncabezadoInternet.AsInteger > 0) then
    Usuario_Internet_AS400(Paciente);

//  SetEncabezado(qrSQLEncabezadoMuestraNo.AsInteger,               //  qrSQLEncabezadoMuestra
  SetEncabezado(qrSQLEncabezadoMuestraNo.AsString,                //  qrSQLEncabezadoMuestra
                qrSQLEncabezadoNombrePaciente.AsString,
                qrSQLEncabezadoHora.AsInteger,
                qrSQLEncabezadoDireccion.AsString,
                qrSQLEncabezadoEdadPaciente.AsString,             //  qrSQLEncabezadoEdadCalculada
                qrSQLEncabezadoFechaNacimientoTexto.AsInteger,    //  qrSQLEncabezadoFechaNacimiento
                qrSQLEncabezadoCategoriaClienteNombre.AsString,
                qrSQLEncabezadoFechaEntradaTexto.AsInteger,       //  qrSQLEncabezadoFechaEntrada
                qrSQLEncabezadoUserId.AsString,
                qrSQLEncabezadoSexo.AsString,
                qrSQLEncabezadoSucursal.AsInteger,                //  qrSQLEncabezadoSucursalId
                qrSQLEncabezadoDoctorNombre.AsString,
                qrSQLEncabezadoClienteId.AsString,
                qrSQLEncabezadoCodigoAS400.AsString,
                qrSQLEncabezadoFacturado.AsCurrency,
                qrSQLEncabezadoPagado.AsCurrency,
                qrSQLEncabezadoResto.AsCurrency,
                qrSQLEncabezadoTipResPaciente.AsInteger,
                qrSQLEncabezadoInternet.AsInteger,
                qrSQLEncabezadoTipResDoctor.AsInteger,
                qrSQLEncabezadoInternetDoctor.AsInteger,
                qrSQLEncabezadoTipResCliente.AsInteger,
                qrSQLEncabezadoEnClinica.AsInteger,
                qrSQLEncabezadoInternetCliente.AsInteger,
                qrSQLEncabezadoCoberturaPorc.AsCurrency,
                qrSQLEncabezadoDescuentoPorc.AsCurrency,
                qrSQLEncabezadoCoberturaSeguro.AsCurrency,
                qrSQLEncabezadoNeto.AsCurrency,
                qrSQLEncabezadoRecId.AsString,
                qrSQLEncabezadoMoneda.AsString,
                qrSQLEncabezadoTasa.AsCurrency,
                qrSQLEncabezadoGastoEnvio.AsCurrency,
                qrSQLEncabezadoTelefono.AsString,
                qrSQLEncabezadoCedula.AsString,
                qrSQLEncabezadoDoctorId.AsString,
                qrSQLEncabezadoComentario.AsString,
                qrSQLEncabezadoNumeroInternet.AsInteger,
                qrSQLEncabezadoReferenciaExterna.AsString,
                qrSQLEncabezadoEstatus.AsInteger,
                qrSQLEncabezadoCod_Caso.AsInteger,
                qrSQLEncabezadoPrioridad.AsInteger,
                qrSQLEncabezadoCConfirmada.AsString,
                qrSQLEncabezadoArea.AsString,
                qrSQLEncabezadoEmbarazada.AsBoolean,
                qrSQLEncabezadoNacionalidad.AsString,
                qrSQLEncabezadoTipo_Doc.AsInteger,
                qrSQLEncabezadoCodigo_Tarjeta.AsInteger,
                qrSQLEncabezadoAprobacionNo.AsString,
                qrSQLEncabezadoAprobacionPor.AsString,
                qrSQLEncabezadoNo_Indicacion.AsBoolean);
  qrSQLEncabezado.Close;

////////////////////////////////////////////////////////////////////////////////

  //Insertando las Pruebas.
  qrSqlDetalle.Close;
  qrSQLDetalle.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrSQLDetalle.Open;
  _record := qrSQLDetalle.RecordCount;
  qrSQLDetalle.First;
//  qrASDetalle.Close;
//  qrASDetalle.SQL.Text := 'Delete FROM INP04401 WHERE IN4MUE='+#39+MuestraNo+#39;
//  qrASDetalle.ExecSQL;
  While Not qrSQLDetalle.Eof Do
   Begin
    If (no_insurance = True) or (No_Seguro ='S') Then
      If (qrSqlDetallePruebaAsegurada.AsInteger = 1) Then
        no_insurance := False
      Else
        no_insurance := True;

     InterfaseAS400.SetDetalle(qrSQLDetalleMuestraNo.AsString,           //  qrSQLDetalleMuestra
                               qrSQLDetalleCodigoAS400.AsInteger,         //  qrSQLDetallePruebaId
                               qrSQLDetalleNombrePrueba.AsString,
                               qrSQLDetalleStatusPrueba.AsString,
                               qrSQLDetalleFechaEntradaTexto.AsInteger,   //  qrSQLDetalleFechaEntrada
                               qrSQLDetalleHora.AsInteger,
                               qrSQLDetalleUserId.AsString,
                               qrSQLDetalleComentario.AsString,           //  qrSQLDetalleComentarioMuestra.AsString,
                               qrSQLDetallePeticion2RepMuestra.AsInteger,
                               qrSQLDetallePrecioBruto.AsCurrency,        //  qrSQLDetalleValor.AsCurrency,
                               qrSQLDetalleDeptoId.AsInteger,             //  qrSQLDetalleDepartamento
                               qrSQLDetalleNumeroMuestraAnterior.AsInteger,
                               qrSQLDetalleTipoAS400.AsString,
                               qrSQLDetalleGrupoPruebaID.Asstring,
                               no_insurance);           //  qrSQLDetalleTipoPrueba - qrSQLDetalleTipoMuestra

     qrSQLDetalle.Next;
   End;

  qrSQLDetalle.Close;
 except
     on E : Exception do
     begin
       ShowMessage('Error '+E.Message+'del Tipo ='+E.ClassName);
     end;
   end;
end;


Procedure TInterfaseAS400.SetDetalle(Muestra: String; CodigoPrueba: Integer; Prueba: String;
                                     Status: String; FechaEntrada: Integer; Hora: Integer; Usuario: String;
                                     Comentario: String; Peticion2Muestra: Integer; Valor: Currency;
                                     Depto: Integer = 0; NumeroMuestraAnterior: Integer = 0;
                                     TipoMuestra: String = '';GrupoPruebaID: String = '';
                                     No_Cubre_Seguro: Boolean = False);
Var
  _record: Integer;
begin
  if (CodigoPrueba > 0) then
    Begin
      qrASDetalle.Close;
      qrASDetalle.SQL.Text := 'SELECT * FROM INP04401 WHERE (IN4MUE='+#39+Muestra+#39+') AND (IN4COD = '+intToStr(CodigoPrueba)+')';
//      qrASDetalle.Parameters.ParamByName('Muestra').Value := Muestra;
//      qrASDetalle.Parameters.ParamByName('Codigo').Value  := CodigoPrueba;
      qrASDetalle.Open;

      _record := qrASDetalle.RecordCount;

      If qrASDetalle.Eof Then
        qrASDetalle.Insert
      Else
        qrASDetalle.Edit;

////////////////////////////////////////////////////////////////////////////////

      //Cargando Valores Por Defecto para Evitar Errores.
      If (Hora = Null) Then Hora := 0;
      If (Depto = Null) Then Depto := 0;
      If (Valor = Null) Then Valor := 0;
      If (FechaEntrada = Null) Then FechaEntrada := 0;
      If (Peticion2Muestra = Null) Then Peticion2Muestra := 0;
      If (NumeroMuestraAnterior = Null) Then NumeroMuestraAnterior := 0;
      If (No_Cubre_Seguro = True) Then Peticion2Muestra := 2;

////////////////////////////////////////////////////////////////////////////////

      qrASDetalleIN4MUE.AsString   := FormatFloat('00000000000', StrToFloat(Muestra));
      qrASDetalleIN4COD.AsString   := FormatFloat('0000', CodigoPrueba);
      qrASDetalleIN4NOM.AsString   := Trim(LeftStr(Prueba, 50));
      qrASDetalleIN4STS.AsString   := LeftStr(Status, 1);
      qrASDetalleIN4DEP.AsString   := FormatFloat('000', Depto);
      qrASDetalleIN4FEC.AsInteger  := FechaEntrada;
      qrASDetalleIN4HOR.AsString   := FormatFloat('0000000', Hora);
      qrASDetalleIN4USU.AsString   := LeftStr(Usuario, 10);
      qrASDetalleIN4COM.AsString   := Trim(LeftStr(Comentario, 100));
      qrASDetalleIN4PET.AsInteger  := Peticion2Muestra;
      qrASDetalleIN4ANT.AsString   := FormatFloat('00000000000', NumeroMuestraAnterior);
      qrASDetalleIN4TIP.AsString   := LeftStr(TipoMuestra, 1);
      qrASDetalleIN4VAL.AsCurrency := DM.Redondeo(Valor);
      qrASDetalleIN4GRU.AsString   := LeftStr(GrupoPruebaID, 3);
{
      qrASDetalleIN4MUE.AsString:= LeftStr(Muestra, 11);
      qrASDetalleIN4COD.AsString:= CodigoPrueba;
      qrASDetalleIN4NOM.AsString:= LeftStr(Prueba, 50);
      qrASDetalleIN4STS.AsString:= LeftStr(Status, 1);
      qrASDetalleIN4DEP.AsInteger:= Depto;

//      DecodeDate(StrToDate(FechaEntrada), Year, Mes, Dia);
      DecodeDate(FechaEntrada, Year, Mes, Dia);
      qrASDetalleIN4FEC.AsString:=    RightStr('00' + IntToStr(Dia), 2) +
                                      RightStr('00' + IntToStr(Mes), 2) +
                                      RightStr('0000' + IntToStr(Year), 2);

      qrASDetalleIN4HOR.AsString:= LeftStr(StringReplace(Hora, ':', '', [rfReplaceAll] ), 4);
      qrASDetalleIN4USU.AsString:= LeftStr(Usuario, 10);
      qrASDetalleIN4COM.AsString:= LeftStr(Comentario, 100);
      qrASDetalleIN4PET.AsInteger:= Peticion2Muestra;
      qrASDetalleIN4ANT.AsInteger:= NumeroMuestraAnterior;
      qrASDetalleIN4TIP.AsString:= LeftStr(TipoMuestra, 1);

      qrASDetalle.Post;
      qrASDetalle.Close;
}
      qrASDetalle.Post;
      qrASDetalle.Close;
    end;
end;


Procedure TInterfaseAS400.SetEncabezado(Muestra: String; Nombre: String; Hora: Integer; Direccion: String;
                                        Edad: String; FechaNacimieto: Integer; Categoria: String;
                                        Fecha: Integer; Usuario: String; Sexo: String; Sucursal: Integer;
                                        Doctor: String; Cliente: String; CodigoIdAS400: String; Facturado: Currency;
                                        Pagado: Currency; Resto: Currency; TipoResultadoPaciente: Integer; InternetPaciente: Integer;
                                        TipoResultadoDoctor: Integer; InternetDoctor: Integer; TipoResultadoCliente: Integer;
                                        PacienteClinica: Integer; InternetCliente: Integer; CoberturaPorc: Currency;
                                        DescuentoPorc: Currency; CoberturaSeguro: Currency; DiferenciaNeto: Currency;
                                        RecId: String; Moneda: String; Tasa: Currency; GastoEnvio: Currency; Telefono: String = '0';
                                        Cedula: String = '0'; CodigoDoctor: String = '0'; Comentario: String = '';
                                        NumeroRelacionInternet: Integer = 0; ReferenciaExterna: String = '';Estatus: Integer = 0;
                                        Cod_Caso: Integer = 0;Prioridad: Integer = 0;CConfirmada: String = 'N';Area : String = '';
                                        Embarazada : Boolean = False;Nacionalidad : String = '';Tipo_Doc : Integer = 0;
                                        Codigo_Tarjeta : Integer = 0; AprobacionNo : String = ''; AprobacionPor : String = ''; No_Indicacion : Boolean = False);
Var
  _record         : Integer;
  TarjPago        : Currency;
  qfind           : TADOQuery;
  IntDir,intDir2  : integer;
  strDir,sCli     : String;
begin
  TarjPago := Buscar_Tarjeta(RecId);

  qrASEncabezado.Close;
  qrASEncabezado.SQL.Text := 'SELECT * FROM INP03301 WHERE ( IN3MUE ='+#39+Muestra+#39+')';
  qrASEncabezado.Open;

  _record := qrASEncabezado.RecordCount;

  If qrASEncabezado.Eof then
    qrASEncabezado.Insert
  else
  begin
    qrASEncabezado.Delete;
    qrASEncabezado.Insert;
  end;

  DM.qrParametro.close;
  DM.qrParametro.open;

  qfind := DM.Find_Ldr('SELECT IsNull(CodigoIdAS400,'+#39+#39+') as CodigoIdAS400,GrupoCliente FROM PTCliente (nolock) WHERE ClienteId = :cli',Cliente);

  If (((Trim(qfind.FieldByName('CodigoIdAS400').Value) = EmptyStr) Or
         (qfind.FieldByName('CodigoIdAS400').Value = '00001000') ) And
       (qfind.FieldByName('GrupoCliente').Value = DM.qrParametroGrupoPriv.Value) ) Then
    CodigoIdAS400 := '1'
  Else
    CodigoIdAS400 := qfind.FieldByName('CodigoIdAS400').Value;

  If ( (qfind.FieldByName('CodigoIdAS400').Value = '00001000') And
       (qfind.FieldByName('GrupoCliente').Value <> DM.qrParametroGrupoPriv.Value) ) Then
    CodigoIdAS400 := qfind.FieldByName('CodigoIdAS400').Value;

////////////////////////////////////////////////////////////////////////////////

  //Cargando Valores Por Defecto para Evitar Errores.
  If (Hora = Null) Then Hora := 0;
  If (Fecha = Null) Then Fecha := 0;
  If (Cliente = Null) Then Cliente := '0';
  If (Sucursal = Null) Then Sucursal := 0;
  If (Fechanacimieto = Null) Then Fechanacimieto := 0;
  If (InternetDoctor = Null) Then InternetDoctor := 0;
  If (InternetCliente = Null) Then InternetCliente := 0;
  If (PacienteClinica = Null) Then PacienteClinica := 0;
  If (InternetPaciente = Null) Then InternetPaciente := 0;
  If (NumeroRelacionInternet = Null) Then NumeroRelacionInternet := 0;
  if (Cod_Caso = Null) then Cod_Caso := 0;
  if (Prioridad = Null) then Prioridad := 0;
  if (CConfirmada = Null) then CConfirmada := 'N';

  If (Edad = '') Or (Edad = Null) Then Edad := '0';
  If (Cedula = '') Or (Cedula = Null) Then Cedula := '0';
  If (Doctor = '') Or (Doctor = Null) Then Doctor := '0';

//  If (CodigoIdAS400 = '') Or (CodigoIdAS400 = Null) Then CodigoIdAS400 := '0';
  If (CodigoIdAS400 = '') Or
     (CodigoIdAS400 = ' ') Or
     (CodigoIdAS400 = '  ') Or
     (CodigoIdAS400 = Null) Then CodigoIdAS400 := '1';

  If (CodigoDoctor = '') Or (CodigoDoctor = Null) Then CodigoDoctor := '0';
  If (ReferenciaExterna = '') Or (ReferenciaExterna = Null) Then ReferenciaExterna := '0';
  If (Moneda = 'US') Or (Moneda = 'EU') Then Moneda := '1' Else Moneda := '0';

////////////////////////////////////////////////////////////////////////////////
///
  if (Estatus = 0) Or (Estatus = 2) then
     qrASEncabezadoIN3ACT.AsString     := ''
  else if Estatus = 1 then
     qrASEncabezadoIN3ACT.AsString     := 'C';

  If (No_Indicacion = True) Then
     qrASEncabezadoIN3IND.AsString     := '1'
  else
     qrASEncabezadoIN3IND.AsString     := '0';

  qrASEncabezadoIN3MUE.AsString     := FormatFloat('00000000000', StrToFloat(Muestra));
  qrASEncabezadoIN3NOM.AsString     := Trim(LeftStr(Nombre, 40));
  qrASEncabezadoIN3HOR.AsString     := FormatFloat('000000', Hora);
  if Length(Trim(Direccion)) < 41 then
  begin
     qrASEncabezadoIN3DIR.AsString     := Trim(LeftStr(Direccion, 40));
     qrASEncabezadoIN3DI2.AsString     := EmptyStr;
  end
  else If Length(Trim(Direccion)) > 40 then
  begin
     IntDir                         :=LastDelimiter(' ',Copy(Direccion,1,40));
     qrASEncabezadoIN3DIR.AsString  := Copy(Trim(Direccion),1,IntDir);
     qrASEncabezadoIN3DI2.AsString  := Copy(Trim(Direccion),IntDir+1,40);
  end;
  qrASEncabezadoIN3EDA.AsString     := FormatFloat('000', StrToInt(Edad));
  qrASEncabezadoIN3NAC.AsInteger    := Fechanacimieto;
  qrASEncabezadoIN3TEL.AsString     := Telefono;
  qrASEncabezadoIN3CAT.AsString     := Categoria;
  qrASEncabezadoIN3FEC.AsInteger    := Fecha;
  qrASEncabezadoIN3USU.AsString     := LeftStr(Usuario, 10);
  qrASEncabezadoIN3SEX.AsString     := LeftStr(Sexo, 1);
  qrAsEncabezadoIN3DTO.AsString     := IntToStr(Tipo_Doc);
  if Tipo_Doc = 0 then
     qrASEncabezadoIN3CED.AsString     := FormatFloat('00000000000', StrToFloat(Cedula))
  else
     qrASEncabezadoIN3PAS.AsString     := Trim(Cedula);
  qrASEncabezadoIN3NUP.AsInteger    := Codigo_Tarjeta;
  qrASEncabezadoIN3SUC.AsString     := FormatFloat('0000', Sucursal);
  qrASEncabezadoIN3CDO.AsString     := FormatFloat('000000', StrToInt(CodigoDoctor));
  qrASEncabezadoIN3ORI.Asstring     := Area;
  qrASEncabezadoIN3DOC.AsString     := Doctor;

  If ( StrToFloat(CodigoIdAS400) > 0 ) then
  begin
    qrASEncabezadoIN3CLI.AsString     := FormatFloat('0000000000', StrToFloat(CodigoIdAS400))
  end
  Else
  Begin
      if Copy(cliente,1,1)='C' then
         sCli:=Copy(cliente,2,5)
      else
         sCli:=cliente;
      qrASEncabezadoIN3CLI.AsString     := FormatFloat('0000000000',StrToFloat(sCli))
  end;
  qrASEncabezadoIN3FAC.AsCurrency   := DM.Redondeo(Facturado);
  qrASEncabezadoIN3PAG.AsCurrency   := DM.Redondeo(Pagado);
  qrASEncabezadoIN3RES.AsCurrency   := DM.Redondeo(Resto);
  qrASEncabezadoIN3EPA.AsInteger    := TiporesultadoPaciente;
  qrASEncabezadoIN3IPA.AsInteger    := InternetPaciente;
  qrASEncabezadoIN3EDO.AsInteger    := TipoResultadoDoctor;
  qrASEncabezadoIN3IDO.AsInteger    := InternetDoctor;
  qrASEncabezadoIN3RCL.AsInteger    := TipoResultadoCliente;
  qrASEncabezadoIN3ICL.AsInteger    := InternetCliente;
  qrASEncabezadoIN3COM.AsString     := Trim(LeftStr(Comentario, 50));
  qrASEncabezadoIN3ABR.AsInteger    := PacienteClinica;
  qrASEncabezadoIN3REL.AsString     := FormatFloat('00000000000', NumeroRelacionInternet);
  qrASEncabezadoIN3REF.AsString     := Trim(LeftStr(ReferenciaExterna, 20));

  If ( DescuentoPorc > -1 ) Then
    qrASEncabezadoIN3TAS.AsCurrency := DM.Redondeo(DescuentoPorc);

  If ( CoberturaSeguro > -1 ) Then
  begin
    qrASEncabezadoIN3TAS.AsCurrency := DM.Redondeo(CoberturaPorc);
    qrASEncabezadoIN3SEG.AsCurrency := DM.Redondeo(CoberturaSeguro);
  end;

  qrASEncabezadoIN3FPA.AsCurrency   := DM.Redondeo(DiferenciaNeto);
  qrASEncabezadoIN3TAR.AsCurrency   := DM.Redondeo(TarjPago);

  If ( CoberturaSeguro > 1 ) Then
    qrASEncabezadoIN3POL.AsString     := LeftStr(ReferenciaExterna, 25)
  Else
    qrASEncabezadoIN3POL.AsString     := '0';

  qrASEncabezadoIN3MON.AsInteger  := StrToInt(Moneda);
  qrASEncabezadoIN3CAM.AsCurrency := DM.Redondeo(Tasa);
  qrASEncabezadoIN3ENV.AsCurrency := DM.Redondeo(GastoEnvio);

  if Cod_Caso <> 0 then
    qrASEncabezadoIN3NRE.AsInteger  := Cod_Caso
  else
    qrASEncabezadoIN3NRE.AsInteger  :=0;

  if Prioridad <> 0 then
    qrASEncabezadoIN3URG.AsInteger  := Prioridad
  else
    qrASEncabezadoIN3URG.AsInteger  :=0;

  if CConfirmada <> 'N' then
    qrASEncabezadoIN3CCO.AsString := CConfirmada
  else
    qrASEncabezadoIN3CCO.AsString := 'N';
  If (Embarazada = True) Then
    qrASEncabezadoIN3EMB.Value := '1'
  else
    qrASEncabezadoIN3EMB.Value := '0';

  qrASEncabezadoIN3PNA.AsString := Nacionalidad;
  qrASEncabezadoIN3NAP.AsString := AprobacionNo;
  qrASEncabezadoIN3PAP.AsString := AprobacionPor;
  qrASEncabezado.Post;
  qrASEncabezado.Close;
end;

procedure TInterfaseAS400.CambiarTelefonoAS400(MuestraNo: String);
Var _record : integer;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;
  //Insertando la Orden de Trabajo.
  qrSqlEncabezado.Close;
  qrSQLEncabezado.Parameters.ParamByName('MuestraNo').Value := MuestraNo;
  qrSQLEncabezado.Open;
  If Not qrSqlEncabezado.Eof then
  Begin
      qrASEncabezado.Close;
      qrASEncabezado.SQL.Text := 'SELECT * FROM INP03301 WHERE ( IN3MUE ='+#39+MuestraNo+#39+')';
//      qrASEncabezado.Parameters.ParamByName('Muestra').Value  := Copy(MuestraNo,2,10);
      qrASEncabezado.Open;
      _record := qrASEncabezado.RecordCount;
      If Not qrASEncabezado.Eof then
      Begin
          qrASEncabezado.Edit;
          qrASEncabezadoIN3TEL.AsString   := qrSQLEncabezadoTelefono.AsString;
          qrASEncabezadoIN3ACT.AsString   := '';
          qrASEncabezado.Post;
      end;
  end;
  qrSqlEncabezado.Close;
  qrASEncabezado.Close;
End;
Function TInterfaseAS400.Verifica_Toma_Muestra(MuestraNo: String):Boolean;
Var Muestra : Int64;
begin
  //Insertando la Orden de Trabajo.
  Result := False;
  With qrAsToma, sql do
  begin
    Close;
    Text := ' SELECT LA10NU,LA10U1 FROM LALIB.LAP01001 WHERE (LA10NU='+MuestraNo+')';
//    Parameters.ParamByName('Muestra').Value := MuestraNo;
    Open;
    if Not isEmpty then
    Begin
      if Length(Trim(qrAsTomaLA10U1.AsString)) > 0 then
         Result := True
      else
         Result := False;
    end;
  end;
  qrAsToma.Close;
End;
Function TInterfaseAS400.Buscar_Resultados_Prueba(Muestrano: String; PruebaID : Integer; Depto : Integer):String;
begin
  //Insertando la Orden de Trabajo.
  Result := 'No Reportado';
  With qrAsPruebaResultado, sql do
  begin
     Close;
    If (Depto = 91) And (PruebaID = 996) then
    begin
      With qrAsPruebaResHPV, sql do
      begin
        Text := 'SELECT DISTINCT ANO,NUMLAB FROM LALIB.RESUL7 WHERE (ANO='+#39+Copy(MuestraNo,1,2)+#39+')'+' AND '+
              ' (NUMLAB='+#39+Copy(MuestraNo,3,9)+#39+') FETCH FIRST 1 ROWS ONLY ';
        Open;
      end;
      if qrAsPruebaResHPV.Recordcount = 0 then
      begin
        Text := 'SELECT DISTINCT ANO,NUMLAB,DEPTO,PRUEBA,RCODPRU  FROM LALIB.RESULLG WHERE (ANO='+#39+Copy(MuestraNo,1,2)+#39+')'+' AND '+
                ' (NUMLAB='+#39+Copy(MuestraNo,3,9)+#39+')'+' AND (RCODPRU='+IntToStr(PruebaID)+') FETCH FIRST 1 ROWS ONLY ';
        Open;
        If Not qrAsPruebaResultado.Eof then
        Begin
          if Length(Trim(qrAsPruebaResultadoPrueba.AsString)) > 0 then
             Result := 'Reportado'
          else
             Result := 'No Reportado';
        end
      end
      else if qrAsPruebaResHPV.Recordcount > 0 then
      Begin
          if Length(Trim(qrAsPruebaResHPVNumLab.AsString)) > 0 then
             Result := 'Reportado'
          else
             Result := 'No Reportado';
      end;
      exit;
    end;
    If (Depto = 91) And (PruebaID <> 996) then
    begin
      Text := 'SELECT DISTINCT ANO,NUMLAB,DEPTO,PRUEBA,RCODPRU  FROM LALIB.RESUL9 WHERE (ANO='+#39+Copy(MuestraNo,1,2)+#39+')'+' AND '+
            ' (NUMLAB='+#39+Copy(MuestraNo,3,9)+#39+')'+' AND (RCODPRU='+IntToStr(PruebaID)+') FETCH FIRST 1 ROWS ONLY ';
      Open;
      if qrAsPruebaResultado.Recordcount = 0 then
      begin
        Text := 'SELECT DISTINCT ANO,NUMLAB,DEPTO,PRUEBA,RCODPRU  FROM LALIB.RESULLG WHERE (ANO='+#39+Copy(MuestraNo,1,2)+#39+')'+' AND '+
                ' (NUMLAB='+#39+Copy(MuestraNo,3,9)+#39+')'+' AND (RCODPRU='+IntToStr(PruebaID)+') FETCH FIRST 1 ROWS ONLY ';
        Open;
      end;
    end;
    If Copy(IntToStr(Depto),1,1)='6' then
    begin
      Text := 'SELECT DISTINCT ANO,NUMLAB,DEPTO,PRUEBA,RCODPRU  FROM LALIB.RESCULT1 WHERE (ANO='+#39+Copy(MuestraNo,1,2)+#39+')'+' AND '+
            ' (NUMLAB='+#39+Copy(MuestraNo,3,9)+#39+')'+' AND (RCODPRU='+IntToStr(PruebaID)+') FETCH FIRST 1 ROWS ONLY ';
      Open;
      if qrAsPruebaResultado.Recordcount = 0 then
      begin
        Text := 'SELECT DISTINCT ANO,NUMLAB,DEPTO,PRUEBA,RCODPRU  FROM LALIB.RESULLG WHERE (ANO='+#39+Copy(MuestraNo,1,2)+#39+')'+' AND '+
                ' (NUMLAB='+#39+Copy(MuestraNo,3,9)+#39+')'+' AND (RCODPRU='+IntToStr(PruebaID)+') FETCH FIRST 1 ROWS ONLY ';
        Open;
      end;
    end;
    If (Copy(IntToStr(Depto),1,1)<>'6') And  (Copy(IntToStr(Depto),1,2)<>'91') then
    begin
        Text := 'SELECT DISTINCT ANO,NUMLAB,DEPTO,PRUEBA,RCODPRU  FROM LALIB.RESULLG WHERE (ANO='+#39+Copy(MuestraNo,1,2)+#39+')'+' AND '+
                ' (NUMLAB='+#39+Copy(MuestraNo,3,9)+#39+')'+' AND (RCODPRU='+IntToStr(PruebaID)+') FETCH FIRST 1 ROWS ONLY ';
        Open;
    end;
    If Not qrAsPruebaResultado.Eof then
    Begin
      if Length(Trim(qrAsPruebaResultadoPrueba.AsString)) > 0 then
         Result := 'Reportado'
      else
         Result := 'No Reportado';
    end;
  end;
  qrAsPruebaResultado.Close;
End;

Function TInterfaseAS400.Verifica_Resultado(MuestraNo: String;PruebaID: Integer):Boolean;
begin
  //Insertando la Orden de Trabajo.
  Result := False;
  With qrAsResultado, sql do
  begin
    Close;
    Text := 'SELECT *  FROM LALIB.RESUL WHERE (ANO='+#39+Copy(MuestraNo,1,2)+#39+')'+' AND '+
            ' (NUMLAB='+#39+Copy(MuestraNo,3,9)+#39+')'+' AND (RCODPRU='+IntToStr(PruebaID)+') FETCH FIRST 1 ROWS ONLY ';
//    Parameters.ParamByName('ANO').Value       := Copy(MuestraNo,1,2);
//    Parameters.ParamByName('NUMLAB').Value    := Copy(MuestraNo,3,9);
//    Parameters.ParamByName('PRUEBAID').Value  := PruebaID;
    Open;
    If Not qrAsResultado.Eof then
    Begin
      if Length(Trim(qrAsResultadoRcodpru.AsString)) > 0 then
         Result := True
      else
         Result := False;
    end;
  end;
  qrAsResultado.Close;
End;
Function TInterfaseAS400.Elimina_Entrada(Muestra: String): Boolean;
Var qElimina  : TAdoQuery;
begin
    qElimina := DM.NewQuery;
    qElimina.SQL.Text :=  '	EXEC ('+#39+'DELETE S10D7471.INTERFASE.INP04401 '+
								          ' Where IN4MUE=?'+#39+','+#39+Muestra+#39+') AT [DBFIN]'+
                          '	EXEC ('+#39+'DELETE S10D7471.INTERFASE.INP03301 '+
								          ' Where IN3MUE=?'+#39+','+#39+Muestra+#39+') AT [DBFIN]';
    Try
      qElimina.ExecSQL;
    Except
        Result:=False;
        FreeAndNil(qElimina);
        Raise exception.CreateFmt('Error Eliminado registro Base Intermedia INP03301 � INP04401. Verifique', []);
    End;
    Result:=True;
    FreeAndNil(qElimina);
end;

END.

