inherited frmDialogConsultaEntradas: TfrmDialogConsultaEntradas
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Entradas'
  ClientHeight = 546
  ClientWidth = 968
  FormStyle = fsStayOnTop
  KeyPreview = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 984
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 968
    Height = 546
    ExplicitWidth = 968
    ExplicitHeight = 546
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Laboratorio No.'
        'Registro No.'
        'Paciente'
        'Nombre del Paciente'
        'Cliente'
        'Nombre del Cliente'
        'Telefono'
        'Usuario del D'#237'a'
        'Sucursal del D'#237'a'
        'Rango de Fecha')
      Properties.OnChange = edbuscarporPropertiesChange
      OnExit = edbuscarporExit
    end
    inherited edbuscar: TcxTextEdit
      Properties.CharCase = ecUpperCase
      OnExit = edbuscarExit
      ExplicitWidth = 293
      Width = 293
    end
    inherited cgDatos: TcxGrid
      Width = 936
      Height = 424
      TabOrder = 5
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 936
      ExplicitHeight = 424
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'ENTRADAID'
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = dbDatosMuestrano
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosNeto
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosTotalPagado
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosTotalPendiente
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosCoberturaSeg
          end>
        OptionsData.Editing = True
        OptionsView.Footer = True
        Styles.OnGetContentStyle = dbDatosStylesGetContentStyle
        object dbDatosMuestrano: TcxGridDBColumn
          Caption = 'Muestra No.'
          DataBinding.FieldName = 'MUESTRANO'
          HeaderAlignmentHorz = taRightJustify
          Width = 94
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object dbDatosPacienteID: TcxGridDBColumn
          Caption = 'PacienteID'
          DataBinding.FieldName = 'PacienteId'
          Width = 66
        end
        object dbDatosNombrePaciente: TcxGridDBColumn
          Caption = 'Nombre Paciente'
          DataBinding.FieldName = 'NombrePaciente'
          HeaderAlignmentHorz = taCenter
          Width = 171
        end
        object dbDatosTelefonos: TcxGridDBColumn
          Caption = 'Telefono'
          DataBinding.FieldName = 'Telefonos'
          Width = 77
        end
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Cliente Id'
          DataBinding.FieldName = 'ClienteID'
          Width = 76
        end
        object dbDatosClienteNombre: TcxGridDBColumn
          Caption = 'Nombre de Cliente'
          DataBinding.FieldName = 'ClienteNombre'
          HeaderAlignmentHorz = taCenter
          Width = 153
        end
        object dbDatosMonedaID: TcxGridDBColumn
          Caption = 'Div'
          DataBinding.FieldName = 'MonedaID'
          Width = 40
        end
        object dbDatosNeto: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'Neto'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object dbDatosTotalPagado: TcxGridDBColumn
          Caption = 'Pagado'
          DataBinding.FieldName = 'TotalPagado'
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object dbDatosTotalPendiente: TcxGridDBColumn
          Caption = 'Pendiente'
          DataBinding.FieldName = 'TotalPendiente'
          Visible = False
          Width = 68
        end
        object dbDatosHold: TcxGridDBColumn
          DataBinding.FieldName = 'Hold'
          Visible = False
          Width = 40
        end
        object dbDatosEntradaID_Ref: TcxGridDBColumn
          Caption = 'EntradaID'
          DataBinding.FieldName = 'ENTRADAID_REF'
          Visible = False
        end
        object dbDatosEntradaID: TcxGridDBColumn
          DataBinding.FieldName = 'ENTRADAID'
          Visible = False
        end
        object dbDatosCoberturaSeg: TcxGridDBColumn
          Caption = 'Cob. Seg.'
          DataBinding.FieldName = 'COBERTURASEGURO'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 707
      Top = 500
      Width = 250
      Height = 35
      Caption = 'Esc = &Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      ExplicitLeft = 707
      ExplicitTop = 500
      ExplicitWidth = 250
      ExplicitHeight = 35
    end
    inherited btaceptar: TcxButton
      Left = 451
      Top = 500
      Width = 250
      Height = 35
      Caption = 'F9 = &Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      ExplicitLeft = 451
      ExplicitTop = 500
      ExplicitWidth = 250
      ExplicitHeight = 35
    end
    object CbCriterio: TcxCheckBox [5]
      Left = 666
      Top = 36
      ParentColor = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueGrayed = 0
      Properties.OnChange = CbCriterioPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = 16311249
      Style.HotTrack = False
      TabOrder = 2
      Width = 22
    end
    object dtFechaIni: TcxDateEdit [6]
      Left = 736
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 79
    end
    object dtFechaFin: TcxDateEdit [7]
      Left = 852
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 4
      Width = 79
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = []
          Caption = 'Ver Todas las Sucursales '
          Control = CbCriterio
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'F. Inicio'
          Control = dtFechaIni
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'F. Fin'
          Control = dtFechaFin
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object cxLabel1: TcxLabel [1]
    Left = 8
    Top = 500
    AutoSize = False
    Caption = 'Enter = Buscar Entrada'
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
    Width = 253
  end
  inherited dsDatos: TDataSource
    Left = 124
    Top = 159
  end
  inherited cxIntl1: TcxIntl
    Left = 56
    Top = 160
  end
end
