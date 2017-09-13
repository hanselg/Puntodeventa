unit ConfirmarCoberturaTardiaMod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit;

type
  TfrmConfirmarCoberturaTardiaMod = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    EdAprobacionNo: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    EdAprobacionPor: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    BtAceptar: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    BtCancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    edcoberturavalor: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    EdConfirmar: TcxCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cePorcentajeCobertura: TcxCurrencyEdit;
    procedure edcoberturavalorExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

    ValorCobertura : Double;
    Confirmado, Rechazado, AutoConfirmar : Integer;
    Aprobacion, ConfirmadoPor, Seguroid, Nombre, Origen : String;

    procedure Run;
    Procedure Rechazar;
    Procedure Preconfirmar;
  end;

var
  frmConfirmarCoberturaTardiaMod: TfrmConfirmarCoberturaTardiaMod;

implementation

uses ActionsDM, DataModule, Main, PuntoVentaMod, UInterfaseAs400;

{$R *.dfm}

procedure TfrmConfirmarCoberturaTardiaMod.edcoberturavalorExit(Sender: TObject);
begin
  if (Trim(edCoberturavalor.EditingText) <> EmptyStr) and (edCoberturavalor.EditingValue > 0 ) then
  begin
    cePorcentajeCobertura.Value := DM.Redondeo((edCoberturavalor.Value * 100) / ValorCobertura);
  end;
end;

procedure TfrmConfirmarCoberturaTardiaMod.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key = Vk_Down) Then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  If (key = 13) Then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  If (key = Vk_Up) Then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  If (key = Vk_F12) Then Rechazar;

  If (key = Vk_F8) Then
    If (frmMain.frmTmpMod.qrEntradaPacienteCoberturaPreConfirmada.Value = 1) Then
      Begin
        AutoConfirmar := 1;
        btAceptar.Click;
      End
    Else
      Begin
        AutoConfirmar := 0;
        BtCancelar.Click;
        Raise exception.CreateFmt(' El Proceso de Confirmacion Fue Abortado: '+ #13 +
                                  ' Esta Aseguradora NO Maneja Cobertura Fijas. '+ #13 +
                                  ' Por Favor Verifique.!!!', []);
      End;

  If (key = Vk_F9) Then btAceptar.Click;

  if (key = 27) then
  begin
   Close;
  end;
end;


procedure TfrmConfirmarCoberturaTardiaMod.Run;
begin
 Rechazado := 0;
 Confirmado := 1;
 AutoConfirmar := 0;

 Origen  := frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value;
 Seguroid := frmMain.frmTmpMod.qrEntradaPacienteClienteId.Value;
 Nombre := frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value;
 Aprobacion := frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value;
 ConfirmadoPor := frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value;
 ValorCobertura := frmMain.frmTmpMod.Valor_Cobertura(frmMain.frmTmpMod.qrEntradaPacienteRECID.Value);
 EdConfirmar.Value := ValorCobertura;

 frmMain.frmTmpMod.qrEntradaPaciente.Edit;
 frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := Rechazado;
 frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := Confirmado;
// frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpMod.qrEntradaPacienteCoberturaSeguro.Value;
 frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpMod.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value;

{ if (frmMain.frmTmpMod.qrEntradaPacienteCoberturaPreConfirmada.Value = 1) Then
 begin
     Confirmado := 1;
     AutoConfirmar := 1;
//     EdCoberturaValor.Enabled := False;
     EdCoberturaValor.Style.Color := ClAqua;
     EdCoberturaValor.Properties.ReadOnly := True;
 end;
}
 showmodal;

 If ModalResult = mrOk then
 begin
    If (Rechazado = 1) then
     Begin
       //Cobertura Rechazada.
       frmMain.frmTmpMod.Operacion := 'E';
       frmMain.frmTmpMod.qrEntradaPaciente.Edit;
       frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := '';
       frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := '';
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorc.Value := 0;
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := 0;
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaSeguro.Value := 0;
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := 1;
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 0;
       frmMain.frmTmpMod.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
       frmMain.frmTmpMod.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate;  //DM.Buscar_Fecha_Actual;
//       frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
       frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

       frmMain.frmTmpMod.cambiarprecio := False;
       frmMain.frmTmpMod.qrEntradaPacienteClienteId.Value := frmMain.frmTmpMod.qrEntradaPacientePacienteId.Value;
       frmMain.frmTmpMod.Buscar_Cliente;
       frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value := frmMain.frmTmpMod.qfindCltParams.FieldByName('Nombre').AsString;
       frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value := frmMain.frmTmpMod.qfindCltParams.FieldByName('GrupoCliente').AsString;
       frmMain.frmTmpMod.cambiarprecio := False;
       frmMain.frmTmpMod.ActTotales;

       If ( frmMain.frmTmpMod.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
          (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
         frmMain.frmTmpMod.qrEntradaPaciente.Post;

       If (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
       Begin
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
           begin
                If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                begin
                       InterfaseAS400.ASConnection.Close;
                       InterfaseAS400.ASConnection.Open;

                       //Insertando las Pruebas en el AS-400.
                       InterfaseAS400.MandarPruebaAS400(frmMain.frmTmpMod.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmpMod.qrEntradaPacientePacienteId.Value);
                       InterfaseAS400.ASConnection.Close;
                end;
           End;
       end;
     End;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    if (Confirmado = 1) then
     Begin
       //Cobertura Confirmada.
        If ((frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value = 'C00075') Or
           (frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value = 'C00392') Or
           (frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value = 'C01673')) And (Copy(frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value,1,1)<>'P') Then
            frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value  := 'P'+EdAprobacionNo.EditingText;
        If ((frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value ='C03103') Or
           (frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value ='C03209'))  And (Copy(frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value,1,1)<>'H') Then
            frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value  := 'H'+EdAprobacionNo.EditingText;

       If (ValorCobertura < 1) Or
          (frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.IsNull) Or
          (frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value < 1) Or
          (frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value > ValorCobertura) Then
         Begin
           //Dejando Igual Por Cobertura en Cero.
           frmMain.frmTmpMod.qrEntradaPaciente.Edit;
           frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := '';
           frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := '';
           frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := 0;
           frmMain.frmTmpMod.qrEntradaPacienteCoberturaSeguro.Value := 0;
           frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := 0;
           frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 0;
           frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value := Origen;
           frmMain.frmTmpMod.qrEntradaPacienteClienteId.Value := Seguroid;
           frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value := Nombre;
           frmMain.frmTmpMod.ActTotales;

           If ( frmMain.frmTmpMod.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
              (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
             frmMain.frmTmpMod.qrEntradaPaciente.Post;

//           frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
//           frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
//           DM.Error('El Monto de Cobertura Esta en Cero. Por Favor Verifique.!!!');
           Raise exception.CreateFmt(' Operacion Abortada Por Una de Estas Razones: '+ #13 +
                                     ' � El Monto de Cobertura Esta en Cero '+ #13 +
                                     ' � NO Existen Pruebas Cubiertas por el Seguro '+ #13 +
                                     ' � El Monto Es Mayor que las Pruebas Cubiertas por el Seguro '+ #13 +
                                     ' Por Favor Verifique.!!!', []);
         End
       Else
        Begin
         if (frmMain.frmTmpMod.qrEntradaPacienteCoberturaPreConfirmada.Value = 1) And (AutoConfirmar = 1) Then
           Begin
             //Cobertura Pre-Confirmada por el Seguro.
             Confirmado := 1;
             ValorCobertura := frmMain.frmTmpMod.Valor_Cobertura(frmMain.frmTmpMod.qrEntradaPacienteRECID.Value);
             EdConfirmar.Value := ValorCobertura;

             //Actualizando la Cobertura Confirmada.
             frmMain.frmTmpMod.valorNC := 0;
             frmMain.frmTmpMod.Operacion := 'E';
             frmMain.frmTmpMod.qrEntradaPaciente.Edit;
             frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := 0;
             frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 1;
             frmMain.frmTmpMod.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate;
//             frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
             frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

             If (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.IsNull) Or
                (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value = '') Or
                (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value = ' ') Or
                (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value = ' ') Then
               frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := DM.CurUser;

             If (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.IsNull) Or
                (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value = '') Or
                (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Or
                (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Then
               frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := DM.CurUser;

//             frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpMod.qrEntradaPacienteCoberturaSeguro.Value;
             frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpMod.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value;

             frmMain.frmTmpMod.ActTotales;

//             If (frmMain.frmTmpMod.qrEntradaPacienteSubtotal.Value <> 0) Then
//               frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorc.Value := DM.Redondeo((frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value * 100) / ValorCobertura);

             DM.Info('Esta Aseguradora Maneja Cobertura Fijas.');

             If ( frmMain.frmTmpMod.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
                (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
               frmMain.frmTmpMod.qrEntradaPaciente.Post;

             If (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
             Begin
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                 begin
                      If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                      begin
                         InterfaseAS400.ASConnection.Close;
                         InterfaseAS400.ASConnection.Open;

                         //Insertando las Pruebas en el AS-400.
                         InterfaseAS400.MandarPruebaAS400(frmMain.frmTmpMod.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmpMod.qrEntradaPacientePacienteId.Value);
                         InterfaseAS400.ASConnection.Close;
                      end;
                 end;
             End;

//             frmMain.frmTmpMod.btgrabarClick(nil);
           End
         Else
           Begin
             //Actualizando la Cobertura Confirmada.
             frmMain.frmTmpMod.Operacion := 'E';
             frmMain.frmTmpMod.qrEntradaPaciente.Edit;
//             frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value := Origen;
             frmMain.frmTmpMod.qrEntradaPacienteClienteId.Value := Seguroid;
             frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value := Nombre;
             frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := 0;
             frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 1;
             frmMain.frmTmpMod.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
//             frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
             frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

//             frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
//             frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
//             frmMain.frmTmpMod.valorND := 0;
//             frmMain.frmTmpMod.valorND := (frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value +
//                                        frmMain.frmTmpMod.qrEntradaPacienteNeto.Value;
             frmMain.frmTmpMod.valorNC := 0;
             frmMain.frmTmpMod.valorNC := DM.Redondeo((frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value +
                                                    frmMain.frmTmpMod.qrEntradaPacienteTotalPagado.Value) -
                                                    frmMain.frmTmpMod.qrEntradaPacienteSubtotal.Value);

             If (frmMain.frmTmpMod.qrEntradaPacienteSubtotal.Value <> 0) Then
               frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorc.Value := DM.Redondeo((frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value * 100) / ValorCobertura);
//                                                                                   frmMain.frmTmpMod.qrEntradaPacienteSubtotal.Value);
//             frmMain.frmTmpMod.ActTotales;
//             frmMain.frmTmpMod.CrearNotaDebito;
//             frmMain.frmTmpMod.ActNotaDebito;
//             frmMain.frmTmpMod.RefrescarInterface;

             If (frmMain.frmTmpMod.valorNC > 1) then
               Begin
                 frmMain.frmTmpMod.seg_late := True;
                 frmMain.frmTmpMod.ConceptoNC := 'Confirmacion de Cobertura Tardia.';
                 frmMain.frmTmpMod.CrearNotaCredito;
                 frmMain.frmTmpMod.ActNotaCredito;
               End;

             frmMain.frmTmpMod.ActTotales;

             If ( frmMain.frmTmpMod.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
                (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
               frmMain.frmTmpMod.qrEntradaPaciente.Post;

             If (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
             Begin
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                 begin
                      if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                      begin
                         InterfaseAS400.ASConnection.Close;
                         InterfaseAS400.ASConnection.Open;

                         //Insertando las Pruebas en el AS-400.
                         InterfaseAS400.MandarPruebaAS400(frmMain.frmTmpMod.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmpMod.qrEntradaPacientePacienteId.Value);
                         InterfaseAS400.ASConnection.Close;
                     end;
                 end;
             end;
//             frmMain.frmTmp.btgrabarClick(nil);
           End
        End;
     End;
   End
 else
   begin
    //Dejando Igual Por Proceso Cancelado.
    frmMain.frmTmpMod.Operacion := 'E';
    frmMain.frmTmpMod.qrEntradaPaciente.Edit;
//    frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value := Origen;
    frmMain.frmTmpMod.qrEntradaPacienteClienteId.Value := Seguroid;
    frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value := Nombre;
//    frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := '';
//    frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := '';
    frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := 0;
    frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 0;
    frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := 0;
    frmMain.frmTmpMod.qrEntradaPacienteCoberturaSeguro.Value := 0;
//    frmMain.frmTmpMod.qrEntradaPacienteCOBERTURAPORC.Value := 0.00;
    frmMain.frmTmpMod.ActTotales;

    If ( frmMain.frmTmpMod.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
       (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
      frmMain.frmTmpMod.qrEntradaPaciente.Post;

//    frmMain.frmTmpMod.RefrescarInterface;
   end;
end;


//Cobertura Rechazada por el Seguro.
procedure TfrmConfirmarCoberturaTardiaMod.Rechazar;
begin
 If DM.Mensaje('Desea Marcar Como Rechazada la Cobertura de Este Registro?',mb_yesno) = id_yes then
   Begin
     Rechazado := 1;
     Confirmado := 0;
     frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := Rechazado;
     frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := Confirmado;
   End;
end;


//Cobertura Pre-Confirmada por el Seguro.
procedure TfrmConfirmarCoberturaTardiaMod.Preconfirmar;
begin
 ValorCobertura := frmMain.frmTmpMod.Valor_Cobertura(frmMain.frmTmpMod.qrEntradaPacienteRECID.Value);
 EdConfirmar.Value := ValorCobertura;

 //Actualizando la Cobertura Confirmada.
 frmMain.frmTmpMod.valorNC := 0;
 frmMain.frmTmpMod.Operacion := 'E';
 frmMain.frmTmpMod.qrEntradaPaciente.Edit;
 frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := 0;
 frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 1;
 frmMain.frmTmpMod.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
// frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
 frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

 If (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.IsNull) Or
    (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value = '') Or
    (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value = ' ') Or
    (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value = ' ') Then
   frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := DM.CurUser;

 If (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.IsNull) Or
    (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value = '') Or
    (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Or
    (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Then
   frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := DM.CurUser;

// frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpMod.qrEntradaPacienteCoberturaSeguro.Value;
 frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpMod.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value;

// If (frmMain.frmTmpMod.qrEntradaPacienteSubtotal.Value <> 0) Then
//     frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorc.Value := DM.Redondeo((frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value * 100) / ValorCobertura);

 DM.Info('Esta Aseguradora Maneja Cobertura Fijas.');

// frmMain.frmTmpMod.RefrescarInterface;
// frmMain.frmTmpMod.btgrabarClick(nil);
end;


END.


