inherited frmDialogImprimirLabel: TfrmDialogImprimirLabel
  Caption = 'Imprimir Codigo de Barra (LABEL).'
  ClientHeight = 219
  ClientWidth = 299
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 305
  ExplicitHeight = 251
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 299
    Height = 219
    ExplicitWidth = 299
    ExplicitHeight = 219
    inherited btCancelar: TcxButton
      Left = 152
      Top = 183
      Width = 135
      TabOrder = 5
      ExplicitLeft = 152
      ExplicitTop = 183
      ExplicitWidth = 135
    end
    inherited btAceptar: TcxButton
      Top = 183
      Width = 135
      Caption = 'F9 = Aceptar'
      Default = False
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 4
      ExplicitTop = 183
      ExplicitWidth = 135
    end
    object edfecha: TcxDateEdit [2]
      Left = 98
      Top = 122
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clWindow
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 145
    end
    object edhora: TcxTimeEdit [3]
      Left = 98
      Top = 149
      EditValue = 0.000000000000000000
      Properties.ReadOnly = False
      Properties.TimeFormat = tfHourMin
      Properties.Use24HourFormat = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clWindow
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      Width = 145
    end
    object EdUsuario: TcxTextEdit [4]
      Left = 98
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object EdClave: TcxTextEdit [5]
      Left = 98
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      object lcDialogGroup3: TdxLayoutGroup [0]
        Caption = 'Usuario'
        object lcDialogItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Usuario'
          Control = EdUsuario
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Clave'
          Control = EdClave
          ControlOptions.ShowBorder = False
        end
      end
      inherited lcDialogGroup1: TdxLayoutGroup
        object lcDialogItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Fecha Entrega'
          Control = edfecha
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Hora Entrega'
          Control = edhora
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
