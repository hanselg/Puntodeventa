// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://10.0.0.249/WSReferenciaPalic/WebservicePalic.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (09/07/2013 09:25:39 p.m. - 1.33.2.5)
// ************************************************************************ //

unit WebservicePalic;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"

  fValidaPasswordResult = class;                { "http://tempuri.org/" }
  fValidaAfiliadoResult = class;                { "http://tempuri.org/" }
  fValidadiagnosticoResult = class;             { "http://tempuri.org/" }
  fConsulta_coberturaResult = class;            { "http://tempuri.org/" }
  fProcesa_reclamacionResult = class;           { "http://tempuri.org/" }
  fcancela_reclamacionResult = class;           { "http://tempuri.org/" }



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  fValidaPasswordResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  fValidaAfiliadoResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  fValidadiagnosticoResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  fConsulta_coberturaResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  fProcesa_reclamacionResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  fcancela_reclamacionResult = class(TRemotable)
  private
    Fschema: WideString;
  published
    property schema: WideString read Fschema write Fschema;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : TWebServicePalicSoap
  // service   : TWebServicePalic
  // port      : TWebServicePalicSoap
  // URL       : http://10.0.0.249/WSReferenciaPalic/WebservicePalic.asmx
  // ************************************************************************ //
  TWebServicePalicSoap = interface(IInvokable)
  ['{F1C71F80-1A47-8561-3909-D3AA30633824}']
    function  fValidaPassword(const User: WideString; const pwd: WideString): fValidaPasswordResult; stdcall;
    function  fValidaAfiliado(const afiliado: WideString; const codprod: WideString; const tipo: WideString; const usuario: WideString; const detalle: WideString): fValidaAfiliadoResult; stdcall;
    function  fValidadiagnostico(const numsession: WideString; const diagnostico: WideString): fValidadiagnosticoResult; stdcall;
    function  fConsulta_cobertura(const numsession: WideString; const tip_pla_afi: WideString; const Cobertura: WideString; const Tipo_Cobertura: WideString): fConsulta_coberturaResult; stdcall;
    function  fProcesa_reclamacion(const numsession: WideString; const tip_pla_afi: WideString; const Cobertura: WideString; const P_Frecuencia: WideString; const TipoRemitente: WideString; const PCod_Remitente: WideString; const Desc_Remitente: WideString; const p_Origen: WideString; const Tipo_Cobertura: WideString): fProcesa_reclamacionResult; stdcall;
    function  fcancela_reclamacion(const codprod: WideString; const afiliado: WideString; const Reclamacion: WideString; const numsession: WideString; const comentario: WideString): fcancela_reclamacionResult; stdcall;
  end;

function GetTWebServicePalicSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): TWebServicePalicSoap;


implementation

function GetTWebServicePalicSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): TWebServicePalicSoap;
const
  defWSDL = 'http://10.0.0.249/WSReferenciaPalic/WebservicePalic.asmx?WSDL';
  defURL  = 'http://10.0.0.249/WSReferenciaPalic/WebservicePalic.asmx';
  defSvc  = 'TWebServicePalic';
  defPrt  = 'TWebServicePalicSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as TWebServicePalicSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(TWebServicePalicSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(TWebServicePalicSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(TWebServicePalicSoap), ioDocument);
  RemClassRegistry.RegisterXSClass(fValidaPasswordResult, 'http://tempuri.org/', 'fValidaPasswordResult');
  RemClassRegistry.RegisterXSClass(fValidaAfiliadoResult, 'http://tempuri.org/', 'fValidaAfiliadoResult');
  RemClassRegistry.RegisterXSClass(fValidadiagnosticoResult, 'http://tempuri.org/', 'fValidadiagnosticoResult');
  RemClassRegistry.RegisterXSClass(fConsulta_coberturaResult, 'http://tempuri.org/', 'fConsulta_coberturaResult');
  RemClassRegistry.RegisterXSClass(fProcesa_reclamacionResult, 'http://tempuri.org/', 'fProcesa_reclamacionResult');
  RemClassRegistry.RegisterXSClass(fcancela_reclamacionResult, 'http://tempuri.org/', 'fcancela_reclamacionResult');

end.