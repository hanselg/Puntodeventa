object frmDialogCobroDolaresMod: TfrmDialogCobroDolaresMod
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Formulario de Cobro - US$'
  ClientHeight = 366
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 292
    Height = 366
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 11
      Top = 70
      Width = 270
      Height = 168
      TabOrder = 3
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      OnFocusedViewChanged = cgDatosFocusedViewChanged
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.KeyFieldNames = 'FormaDePagoID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object dbDatosDescripcion: TcxGridDBColumn
          Caption = 'Forma de Pago'
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Options.Focusing = False
          Styles.Content = dmAppActions.cxStyle44
          Width = 100
        end
        object dbDatosMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Options.Editing = False
          Options.Focusing = False
          Width = 35
        end
        object dbDatosPagado: TcxGridDBColumn
          DataBinding.FieldName = 'Pagado'
          HeaderAlignmentHorz = taRightJustify
          Width = 85
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object btcancelar: TcxButton
      Left = 206
      Top = 330
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 5
    end
    object btaceptar: TcxButton
      Left = 125
      Top = 330
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 4
    end
    object EdPendiente: TcxCurrencyEdit
      Left = 95
      Top = 36
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'US$,     0.00;(US$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 121
    end
    object EdCobrado: TcxCurrencyEdit
      Left = 95
      Top = 269
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'US$,     0.00;(US$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 121
    end
    object EdDevuelta: TcxCurrencyEdit
      Left = 95
      Top = 296
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'US$,     0.00;(US$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object LcDevuelta: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'Totales'
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'Cobrado'
          Control = EdCobrado
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Devuelta'
          Control = EdDevuelta
          ControlOptions.ShowBorder = False
        end
      end
      object LcPendiente: TdxLayoutGroup
        Caption = 'Monto Pendiente'
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'Valor a Cobrar'
          Control = EdPendiente
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'cxGrid1'
        ShowCaption = False
        Control = cgDatos
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = btaceptar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btcancelar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = frmPuntoVentaMod.mdPago
    Left = 44
    Top = 327
  end
end
