inherited frmDialogConsultaRelacionados: TfrmDialogConsultaRelacionados
  Caption = 'Consulta de Pacientes'
  ClientHeight = 539
  ClientWidth = 931
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 947
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 931
    Height = 539
    ExplicitWidth = 931
    ExplicitHeight = 539
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Cedula'
        'Telefono'
        'Nombre'
        'N'#250'mero Tarjeta'
        'Paciente')
      OnExit = edtipoclienteExit
      ExplicitWidth = 95
      Width = 95
    end
    inherited edbuscar: TcxTextEdit
      Left = 213
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
      OnExit = edtipoclienteExit
      ExplicitLeft = 213
      ExplicitWidth = 354
      Width = 354
    end
    inherited cgDatos: TcxGrid
      Width = 877
      Height = 342
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 877
      ExplicitHeight = 342
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'ClienteID'
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Paciente'
          DataBinding.FieldName = 'CLIENTEID'
          Options.Editing = False
          Width = 64
        end
        object dbDatosNombre: TcxGridDBColumn
          Caption = 'Nombre Paciente'
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 379
        end
        object dbDatosTipo: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'GRUPOCLIENTE'
          HeaderAlignmentHorz = taCenter
          Width = 181
        end
        object dbDatosCedula: TcxGridDBColumn
          Caption = 'C'#233'dula'
          DataBinding.FieldName = 'IDENTIFICACION'
          HeaderAlignmentHorz = taCenter
          Width = 124
        end
        object dbDatosTelefono: TcxGridDBColumn
          Caption = 'Tel'#233'fono'
          DataBinding.FieldName = 'TELEFONO'
          HeaderAlignmentHorz = taCenter
          Width = 115
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 845
      Top = 503
      ExplicitLeft = 845
      ExplicitTop = 503
    end
    inherited btaceptar: TcxButton
      Left = 764
      Top = 503
      ExplicitLeft = 764
      ExplicitTop = 503
    end
  end
  object cxLabel1: TcxLabel [1]
    Left = 564
    Top = 31
    AutoSize = False
    Caption = 'Enter = Buscar Paciente'
    ParentColor = False
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.LabelEffect = cxleCool
    Properties.LabelStyle = cxlsRaised
    Properties.ShadowedColor = clGray
    Style.Color = 16311249
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.HotTrack = False
    Style.TextColor = clBlack
    Style.IsFontAssigned = True
    Height = 28
    Width = 260
  end
  inherited dsDatos: TDataSource
    Left = 412
    Top = 407
  end
  inherited cxIntl1: TcxIntl
    Left = 584
    Top = 0
  end
end
