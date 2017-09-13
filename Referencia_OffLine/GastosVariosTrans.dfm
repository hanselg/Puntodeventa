inherited frmGastosVariosTrans: TfrmGastosVariosTrans
  Left = -37
  Caption = 'Registro de Gastos Varios'
  ClientHeight = 546
  ClientWidth = 819
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poDefault
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 835
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 819
    Height = 546
    ExplicitWidth = 819
    ExplicitHeight = 546
    inherited edbuscarpor: TcxComboBox
      Left = 23
      ParentFont = False
      Properties.Items.Strings = (
        'Prueba'
        'Descripcion')
      Style.IsFontAssigned = True
      ExplicitLeft = 23
      ExplicitWidth = 1
      Width = 1
    end
    inherited edbuscar: TcxTextEdit
      Left = 30
      Properties.CharCase = ecUpperCase
      ExplicitLeft = 30
      ExplicitWidth = 1
      Width = 1
    end
    inherited cgDatos: TcxGrid
      Width = 794
      Height = 150
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 794
      ExplicitHeight = 150
      inherited dbDatos: TcxGridDBTableView
        OnEditValueChanged = dbDatosEditValueChanged
        DataController.KeyFieldNames = 'GastoVarioId'
        OptionsData.Editing = True
        OptionsSelection.CellMultiSelect = True
        object dbDatosSeleccion: TcxGridDBColumn
          DataBinding.FieldName = 'Seleccion'
          Width = 40
        end
        object dbDatosGastoVarioId: TcxGridDBColumn
          DataBinding.FieldName = 'GastoVarioId'
          Options.Editing = False
          Width = 70
        end
        object dbDatosDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 150
        end
        object dbDatosValor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
          Options.Editing = False
          Width = 90
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 733
      Top = 495
      TabOrder = 7
      ExplicitLeft = 733
      ExplicitTop = 495
    end
    inherited btaceptar: TcxButton
      Left = 652
      Top = 495
      TabOrder = 6
      ExplicitLeft = 652
      ExplicitTop = 495
    end
    object cgSeleccion: TcxGrid [5]
      Left = 23
      Top = 244
      Width = 773
      Height = 100
      PopupMenu = MenuGrid
      TabOrder = 3
      object dbSeleccion: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsSeleccion
        DataController.Filter.PercentWildcard = '*'
        DataController.KeyFieldNames = 'GastoVarioId'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = dbSeleccionSeleccion
          end
          item
            Kind = skCount
            Column = dbSeleccionSeleccion
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Preview.Visible = True
        Styles.Selection = cxStyleVerde
        object dbSeleccionSeleccion: TcxGridDBColumn
          DataBinding.FieldName = 'Seleccion'
          Width = 40
        end
        object dbSeleccionGastoVarioId: TcxGridDBColumn
          DataBinding.FieldName = 'GastoVarioId'
          Options.Editing = False
          Width = 70
        end
        object dbSeleccionDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 150
        end
        object dbSeleccionValor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 90
        end
      end
      object lvSeleccion: TcxGridLevel
        GridView = dbSeleccion
      end
    end
    object LbCondicion: TcxLabel [6]
      Left = 96
      Top = 495
      AutoSize = False
      Caption = 'F5 = <ENTER> Cargar los Gastos Seleccionados'
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
      Height = 40
      Width = 550
    end
    object CgGastos: TcxGrid [7]
      Left = 23
      Top = 382
      Width = 773
      Height = 100
      TabOrder = 4
      object DbGastos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Enabled = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Enabled = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Enabled = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Enabled = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Enabled = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Enabled = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Enabled = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Enabled = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Enabled = False
        NavigatorButtons.Post.Visible = False
        NavigatorButtons.Cancel.Enabled = False
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.Refresh.Enabled = False
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Enabled = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Enabled = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Enabled = False
        NavigatorButtons.Filter.Visible = False
        OnEditValueChanged = dbDatosEditValueChanged
        DataController.DataSource = dsGastosVariosTrans
        DataController.Filter.PercentWildcard = '*'
        DataController.KeyFieldNames = 'GastoVarioID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.NewItemRowInfoText = 'Click here to add a new row'
        Preview.Visible = True
        object DbGastosGastoVarioID: TcxGridDBColumn
          DataBinding.FieldName = 'GastoVarioID'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
        end
        object DbGastosValor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
        end
        object DbGastosRefrecid: TcxGridDBColumn
          DataBinding.FieldName = 'Refrecid'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
        end
      end
      object LvGastos: TcxGridLevel
        GridView = DbGastos
      end
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        Caption = ''
        Visible = False
        inherited dxLayoutControl1Item1: TdxLayoutItem
          Caption = ''
        end
        inherited dxLayoutControl1Item2: TdxLayoutItem
          Caption = ''
          Visible = False
        end
      end
      inherited dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = []
      end
      object dxLayoutControl1Group3: TdxLayoutGroup [2]
        Caption = 'Gastos Seleccionados'
        object dxLayoutControl1Item3: TdxLayoutItem
          Control = cgSeleccion
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group6: TdxLayoutGroup [3]
        Caption = 'Gastos Cargados en la Factura'
        object dxLayoutControl1Item8: TdxLayoutItem
          Control = CgGastos
          ControlOptions.ShowBorder = False
        end
      end
      inherited dxLayoutControl1Group2: TdxLayoutGroup
        object dxLayoutControl1Item7: TdxLayoutItem [0]
          AutoAligns = []
          ShowCaption = False
          Control = LbCondicion
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    AutoEdit = True
    DataSet = JvMemoryData1
    Left = 230
    Top = 149
  end
  inherited cxIntl1: TcxIntl
    Left = 540
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTPrueba'
      'WHERE DataAreaId = '#39'ldr'#39
      'ORDER BY PruebaId')
    Left = 112
    Top = 178
  end
  object JvMemoryData1: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Seleccion'
        DataType = ftBoolean
      end
      item
        Name = 'PruebaID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Precio'
        DataType = ftCurrency
      end
      item
        Name = 'PrecioDolares'
        DataType = ftCurrency
      end>
    Left = 230
    Top = 104
    object JvMemoryData1Seleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object JvMemoryData1GastoVarioId: TStringField
      FieldName = 'GastoVarioId'
      Size = 10
    end
    object JvMemoryData1Descripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object JvMemoryData1Valor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object dsSeleccion: TDataSource
    DataSet = JvMemoryData2
    Left = 292
    Top = 149
  end
  object JvMemoryData2: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Seleccion'
        DataType = ftBoolean
      end
      item
        Name = 'PruebaID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Precio'
        DataType = ftCurrency
      end
      item
        Name = 'PrecioDolares'
        DataType = ftCurrency
      end>
    Left = 292
    Top = 104
    object JvMemoryData2Seleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object JvMemoryData2GastoVarioId: TStringField
      FieldName = 'GastoVarioId'
      Size = 10
    end
    object JvMemoryData2Descripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object JvMemoryData2Valor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object GridStyles: TcxStyleRepository
    Left = 288
    Top = 56
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16578029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor]
      Color = 14286847
    end
    object cxStyle18: TcxStyle
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle40: TcxStyle
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle42: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle43: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle44: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle45: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clNavy
    end
    object cxStyle46: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle47: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle48: TcxStyle
      AssignedValues = [svColor]
      Color = 12937777
    end
    object cxStyle49: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle50: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle51: TcxStyle
    end
    object cxStyle52: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle53: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle54: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle55: TcxStyle
    end
    object cxStyleVerde: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 387801
      TextColor = clNavy
    end
    object GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle4
      Styles.ContentEven = cxStyle5
      Styles.ContentOdd = cxStyle6
      Styles.FilterBox = cxStyle7
      Styles.Inactive = cxStyle12
      Styles.IncSearch = cxStyle13
      Styles.Selection = cxStyle16
      Styles.Footer = cxStyle8
      Styles.Group = cxStyle9
      Styles.GroupByBox = cxStyle10
      Styles.Header = cxStyle11
      Styles.Indicator = cxStyle14
      Styles.Preview = cxStyle15
      Styles.BandBackground = cxStyle2
      Styles.BandHeader = cxStyle3
      BuiltIn = True
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle30
      Styles.Content = cxStyle33
      Styles.ContentEven = cxStyle34
      Styles.ContentOdd = cxStyle35
      Styles.Inactive = cxStyle36
      Styles.IncSearch = cxStyle37
      Styles.Selection = cxStyle39
      Styles.CaptionRow = cxStyle31
      Styles.CardBorder = cxStyle32
      Styles.RowCaption = cxStyle38
      BuiltIn = True
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle40
      Styles.Content = cxStyle41
      Styles.ContentEven = cxStyle42
      Styles.ContentOdd = cxStyle43
      Styles.FilterBox = cxStyle44
      Styles.Inactive = cxStyle49
      Styles.IncSearch = cxStyle50
      Styles.Selection = cxStyle53
      Styles.Footer = cxStyle45
      Styles.Group = cxStyle46
      Styles.GroupByBox = cxStyle47
      Styles.Header = cxStyle48
      Styles.Indicator = cxStyle51
      Styles.Preview = cxStyle52
      BuiltIn = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 288
    Top = 56
    object cxStyle56: TcxStyle
    end
    object cxStyle57: TcxStyle
    end
    object cxStyle58: TcxStyle
    end
    object cxStyle59: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle60: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16578029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle61: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle62: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle63: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle64: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle65: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle66: TcxStyle
    end
    object cxStyle67: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle68: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle69: TcxStyle
    end
    object cxStyle70: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle71: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle72: TcxStyle
      AssignedValues = [svColor]
      Color = 14286847
    end
    object cxStyle73: TcxStyle
    end
    object cxStyle74: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle75: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle76: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle77: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle78: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle80: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle81: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle82: TcxStyle
    end
    object cxStyle83: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle84: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle85: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle86: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle87: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle88: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle89: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle90: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle91: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle92: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle93: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle94: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle95: TcxStyle
    end
    object cxStyle96: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle97: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle98: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle99: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle100: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clNavy
    end
    object cxStyle101: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle102: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle103: TcxStyle
      AssignedValues = [svColor]
      Color = 12937777
    end
    object cxStyle104: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle105: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle106: TcxStyle
    end
    object cxStyle107: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle108: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle109: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle110: TcxStyle
    end
    object cxStyle111: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 387801
      TextColor = clNavy
    end
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle56
      Styles.Content = cxStyle59
      Styles.ContentEven = cxStyle60
      Styles.ContentOdd = cxStyle61
      Styles.FilterBox = cxStyle62
      Styles.Inactive = cxStyle67
      Styles.IncSearch = cxStyle68
      Styles.Selection = cxStyle71
      Styles.Footer = cxStyle63
      Styles.Group = cxStyle64
      Styles.GroupByBox = cxStyle65
      Styles.Header = cxStyle66
      Styles.Indicator = cxStyle69
      Styles.Preview = cxStyle70
      Styles.BandBackground = cxStyle57
      Styles.BandHeader = cxStyle58
      BuiltIn = True
    end
    object cxGridCardViewStyleSheet1: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle85
      Styles.Content = cxStyle88
      Styles.ContentEven = cxStyle89
      Styles.ContentOdd = cxStyle90
      Styles.Inactive = cxStyle91
      Styles.IncSearch = cxStyle92
      Styles.Selection = cxStyle94
      Styles.CaptionRow = cxStyle86
      Styles.CardBorder = cxStyle87
      Styles.RowCaption = cxStyle93
      BuiltIn = True
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle95
      Styles.Content = cxStyle96
      Styles.ContentEven = cxStyle97
      Styles.ContentOdd = cxStyle98
      Styles.FilterBox = cxStyle99
      Styles.Inactive = cxStyle104
      Styles.IncSearch = cxStyle105
      Styles.Selection = cxStyle108
      Styles.Footer = cxStyle100
      Styles.Group = cxStyle101
      Styles.GroupByBox = cxStyle102
      Styles.Header = cxStyle103
      Styles.Indicator = cxStyle106
      Styles.Preview = cxStyle107
      BuiltIn = True
    end
  end
  object MenuGrid: TPopupMenu
    Left = 527
    Top = 152
    object MenuItem1: TMenuItem
      Caption = 'Eliminar Prueba'
      OnClick = MenuItem1Click
    end
  end
  object qrGastosVarios: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTGastosVario'
      'ORDER BY GastoVarioId')
    Left = 350
    Top = 107
    object qrGastosVariosGastoVarioId: TStringField
      FieldName = 'GastoVarioId'
      Size = 10
    end
    object qrGastosVariosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object qrGastosVariosValor: TBCDField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 19
    end
  end
  object dsGastosVarios: TDataSource
    AutoEdit = False
    DataSet = qrGastosVarios
    Left = 412
    Top = 107
  end
  object qrGastosVariosTrans: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTGastosVarioTrans')
    Left = 350
    Top = 147
    object qrGastosVariosTransGastoVarioID: TStringField
      FieldName = 'GastoVarioID'
      Size = 10
    end
    object qrGastosVariosTransValor: TBCDField
      FieldName = 'Valor'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrGastosVariosTransGenerada: TBooleanField
      FieldName = 'Generada'
    end
    object qrGastosVariosTransRefrecid: TLargeintField
      FieldName = 'Refrecid'
    end
  end
  object dsGastosVariosTrans: TDataSource
    AutoEdit = False
    DataSet = qrGastosVariosTrans
    Left = 412
    Top = 147
  end
end
