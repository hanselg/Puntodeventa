unit DatosUsuario;

interface         

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxDBLookupComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxGridLnk,
  JvComponent, JvFormPlacement, dxLayoutControl, {dxCore,} 
  cxMRUEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxPC, cxLookupEdit, cxDBLookupEdit, cxDBEdit, ADODB,
  dxPScxCommon, cxLookAndFeelPainters, cxImageComboBox, JvStringHolder,
  Menus, StdActns, ActnList, StdCtrls, cxButtons, JvExControls, JvEnterTab,
  cxCheckBox, JvSpeedButton, RzLabel, RzBckgnd, ExtCtrls, cxSpinEdit, ABSMain,
  JvComponentBase, cxDBExtLookupComboBox, cxintl;

type
  TfrmDatosUsuario = class(TfrmDatosModule)
    qrUsuarios: TADOQuery;
    qrUsuariosUserId: TStringField;
    qrUsuariosClave: TStringField;
    qrUsuariosNombre: TStringField;
    qrUsuariosRolID: TSmallintField;
    tvDatosUserId: TcxGridDBColumn;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosRolID: TcxGridDBColumn;
    qrRoles: TADOQuery;
    dsRoles: TDataSource;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    edClave: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosItem6: TdxLayoutItem;
    cbMenuFont: TcxDBComboBox;
    lcDatosItem7: TdxLayoutItem;
    cbFormFont: TcxDBComboBox;
    qrUsuariosInterface: TIntegerField;
    qrUsuariosMenuFont: TStringField;
    qrUsuariosFormsFont: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem8: TdxLayoutItem;
    qrUsuariosMultipleVentanas: TBooleanField;
    qrUsuariosDescuentoTope: TFloatField;
    qrUsuariosCambiarPrecio: TBooleanField;
    lcDatosGroup3: TdxLayoutGroup;
    qrUsuariosCambiarMuestraNo: TBooleanField;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem5: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    lcDatosItem9: TdxLayoutItem;
    qrUsuariosPublicar: TBooleanField;
    qrUsuariosAsignarDescuentos: TBooleanField;
    qrUsuariosCodigoFlebotomista: TStringField;
    cxDBCheckBox4: TcxDBCheckBox;
    lcDatosItem11: TdxLayoutItem;
    qrUsuariosFuncionesEspeciales: TBooleanField;
    qrUsuariosRutaBarcode: TStringField;
    qrUsuariosRecId: TLargeintField;
    qrUsuariosEliminaPrueba: TBooleanField;
    qrUsuariosCambiosEntradaFull: TBooleanField;
    qrUsuariosCargoAdicionalUSA: TBooleanField;
    lcDatosItem12: TdxLayoutItem;
    lcDatosItem13: TdxLayoutItem;
    chkCambioEntrada: TcxDBCheckBox;
    chkAdicionalUSA: TcxDBCheckBox;
    lcDatosGroup7: TdxLayoutGroup;
    lcDatosGroup6: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDatosItem10: TdxLayoutItem;
    qrUsuariosEstatus: TStringField;
    lcDatosItem14: TdxLayoutItem;
    lcDatosGroup5: TdxLayoutGroup;
    cxDBExtEmpleado: TcxDBExtLookupComboBox;
    qrUsuariosCod_Empleado: TStringField;
    qrUsuariosClave_Unicode: TStringField;
    procedure qrUsuariosBeforeDelete(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure qrUsuariosAfterOpen(DataSet: TDataSet);
    procedure qrUsuariosBeforePost(DataSet: TDataSet);
    procedure qrUsuariosNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
  protected
    procedure DoPost; override;
  public
    { Public declarations }
  end;

var
  frmDatosUsuario: TfrmDatosUsuario;

implementation

uses DataModule,Main;

{$R *.dfm}

procedure TfrmDatosUsuario.qrUsuariosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrRoles.Close;
  qrRoles.Open;
end;

procedure TfrmDatosUsuario.qrUsuariosBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Raise exception.CreateFmt('No Puedes Eliminar El Usuario .', []);
end;

procedure TfrmDatosUsuario.qrUsuariosBeforePost(DataSet: TDataSet);
begin
  inherited;
//  qrUsuariosClave_Unicode.Value := cifrar(qrUsuariosClave.Value,qrUsuariosUserId.Value);
  if qrUsuariosClave.OldValue <> qrUsuariosClave.Value then
  begin
    qrUsuariosClave.Value := EncryptKey( qrUsuariosClave.Value );
  end;

end;

procedure TfrmDatosUsuario.qrUsuariosNewRecord(DataSet: TDataSet);
begin
  inherited;
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qrUsuariosRECID.Value               := DM.Get_Secuencia_Id();
  qrUsuariosDescuentoTope.Value       := 0;
  qrUsuariosCambiarPrecio.Value       := True;
  qrUsuariosFuncionesEspeciales.Value := False;
  qrUsuariosInterface.Value           := DM.qrParamInterface.Value;
  qrUsuariosFormsFont.AsString        := DM.qrParamFormsFont.AsString;
  qrUsuariosMenuFont.AsString         := DM.qrParamMenuFont.AsString;
  qrUsuariosMultipleVentanas.Value    := false;
  qrUsuariosCambiarMuestraNo.Value    := false;
end;

procedure TfrmDatosUsuario.cxButton1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7990,qrUsuariosUserId.value);
end;

procedure TfrmDatosUsuario.cxButton2Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7987, qrUsuariosUserId.value);
end;

procedure TfrmDatosUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  cbFormFont.Properties.Items.Assign(Screen.Fonts);
  cbMenuFont.Properties.Items.Assign(Screen.Fonts);

  DM.qrFlebotomistas.close;
  DM.qrFlebotomistas.open;

  DM.qrParam.Close;
  DM.qrParam.Open;

  DM.qrparametro.close;
  DM.qrParametro.Open;

   If (dm.qrParametroServidor_AS400.value <> EmptyStr) then
   begin
      With dm.qrEmpleado,sql do
      begin
          Close;
          Clear;
          Text :=' Select Convert(Varchar(10),Numero) As EMPLID,Nombre+'+#39+' '+#39+'+Isnull(Apellido1,'+#39+#39+')+'+#39+' '+#39+'+Isnull(Apellido2,'+#39+#39+')'+' as NAME '+
                 ' FROM [RHMercuryPrueba].dbo.Empleados ';
          Open;
      end;
   end;
end;
procedure TfrmDatosUsuario.DoPost;
begin
 if Trim(cxDBTextEdit1.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor especificar el UserID. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;
 if Trim(edClave.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor especificar la Clave del usuario. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;
 if Trim(cxDBTextEdit3.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor verifique el nombre del usuario. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;

 if Trim(cxDBLookupComboBox1.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor verifique el rol del usuario. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;

 if Trim(cxDBImageComboBox1.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor verifique el estatus del usuario. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;

{ if Trim(cxDBExtEmpleado.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor verifique el c�digo del empleado. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;
}
 inherited;
end;

end.
