inherited frmDialogConsultaPerfilGeneticoNew: TfrmDialogConsultaPerfilGeneticoNew
  Left = -37
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Pruebas'
  ClientHeight = 716
  ClientWidth = 1012
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poDefault
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 1020
  ExplicitHeight = 750
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1012
    Height = 716
    ExplicitWidth = 1012
    ExplicitHeight = 716
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Prueba'
        'Descripcion')
    end
    inherited edbuscar: TcxTextEdit
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
      OnExit = edbuscarExit
    end
    inherited cgDatos: TcxGrid
      Top = 77
      Width = 990
      Height = 175
      TabOrder = 3
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitTop = 77
      ExplicitWidth = 990
      ExplicitHeight = 175
      inherited dbDatos: TcxGridDBTableView
        OnEditValueChanged = dbDatosEditValueChanged
        DataController.KeyFieldNames = 'PruebaID'
        OptionsData.Editing = True
        OptionsSelection.CellMultiSelect = True
        Styles.OnGetContentStyle = dbDatosStylesGetContentStyle
        object dbDatosSeleccion: TcxGridDBColumn
          DataBinding.FieldName = 'Seleccion'
          Width = 40
        end
        object dbDatosPruebaID: TcxGridDBColumn
          DataBinding.FieldName = 'PruebaID'
          Options.Editing = False
          Width = 90
        end
        object dbDatosDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 200
        end
        object dbDatosPrecio: TcxGridDBColumn
          DataBinding.FieldName = 'Precio'
          Options.Editing = False
          Width = 90
        end
        object dbDatosPrecioDolares: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioDolares'
          Options.Editing = False
          Width = 90
        end
        object dbDatosAyuna: TcxGridDBColumn
          DataBinding.FieldName = 'Ayuna'
          Options.Editing = False
        end
        object dbDatosGPrecio: TcxGridDBColumn
          DataBinding.FieldName = 'GPrecio'
          Visible = False
          Options.Editing = False
        end
        object dbDatosTipoPrueba: TcxGridDBColumn
          DataBinding.FieldName = 'TipoPrueba'
          Visible = False
          Options.Editing = False
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 926
      Top = 680
      TabOrder = 7
      ExplicitLeft = 926
      ExplicitTop = 680
    end
    inherited btaceptar: TcxButton
      Left = 845
      Top = 680
      TabOrder = 6
      ExplicitLeft = 845
      ExplicitTop = 680
    end
    object cgSeleccion: TcxGrid [5]
      Left = 23
      Top = 285
      Width = 966
      Height = 340
      PopupMenu = MenuGrid
      TabOrder = 4
      object dbSeleccion: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsSeleccion
        DataController.Filter.PercentWildcard = '*'
        DataController.KeyFieldNames = 'PruebaID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end
          item
            Kind = skCount
            Column = dbSeleccionSeleccion
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Preview.Visible = True
        Styles.Selection = cxStyleVerde
        object dbSeleccionSeleccion: TcxGridDBColumn
          DataBinding.FieldName = 'Seleccion'
          Width = 40
        end
        object dbSeleccionPruebaID: TcxGridDBColumn
          DataBinding.FieldName = 'PruebaID'
          Options.Editing = False
          Width = 90
        end
        object dbSeleccionDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 200
        end
        object dbSeleccionPrecio: TcxGridDBColumn
          DataBinding.FieldName = 'Precio'
          Options.Editing = False
          Width = 90
        end
        object dbSeleccionPrecioDolares: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioDolares'
          Options.Editing = False
          Width = 90
        end
      end
      object lvSeleccion: TcxGridLevel
        GridView = dbSeleccion
      end
    end
    object cxLabel1: TcxLabel [6]
      Left = 545
      Top = 36
      AutoSize = False
      Caption = 'F9 = Seleccionar Pruebas'
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
      Width = 308
    end
    object LbCondicion: TcxLabel [7]
      Left = 11
      Top = 638
      AutoSize = False
      Caption = 'F5 = <ENTER> Aceptar Facturas Seleccionadas'
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
      Height = 36
      Width = 570
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'SeleccionPrueba'
          ShowCaption = False
          Control = cxLabel1
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup [2]
        Caption = 'Pruebas Seleccionadas'
        object dxLayoutControl1Item3: TdxLayoutItem
          Control = cgSeleccion
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item8: TdxLayoutItem [3]
        AutoAligns = [aaVertical]
        Caption = 'AceptaSeleccion'
        ShowCaption = False
        Control = LbCondicion
        ControlOptions.ShowBorder = False
      end
      inherited dxLayoutControl1Group2: TdxLayoutGroup
        inherited dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
        end
        inherited dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
        end
      end
    end
    object TdxLayoutGroup
    end
    object TdxLayoutGroup
    end
    object TdxLayoutGroup
    end
    object TdxLayoutGroup
    end
    object TdxLayoutGroup
    end
    object TdxLayoutItem
    end
    object TdxLayoutItem
    end
    object TdxLayoutItem
    end
    object TdxLayoutItem
    end
  end
  object spPerfilGenetico: TLMDSimplePanel [1]
    Left = 149
    Top = 77
    Width = 432
    Height = 243
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = clMenuBar
    TabOrder = 1
    Visible = False
    object LMDLabel2: TLMDLabel
      Left = 13
      Top = 11
      Width = 405
      Height = 19
      Bevel.StyleInner = bvShadow
      Bevel.StyleOuter = bvShadow
      Bevel.WidthOuter = 2
      Bevel.LightColor = clBlack
      Bevel.Mode = bmCustom
      FontFX.LightColor = clSilver
      FontFX.ShadowColor = clBlack
      FontFX.Tracing = 1
      Alignment = agCenter
      AutoSize = False
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Caption = 'Mantenimiento Pacientes Perfil Gen'#233'tico Base'
    end
    object btCancelarNCF: TLMDButton
      Left = 335
      Top = 183
      Width = 80
      Height = 41
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btCancelarNCFClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object btAceptaPG: TLMDButton
      Left = 249
      Top = 183
      Width = 80
      Height = 41
      Caption = '&Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btAceptaPGClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object mskDocumento: TcxMaskEdit
      Left = 117
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.EditMask = '###-#######-#'
      Properties.MaxLength = 0
      TabOrder = 2
      Text = '   -     - - '
      Width = 81
    end
    object txtNombre: TcxTextEdit
      Left = 117
      Top = 88
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 299
    end
    object cxLabel4: TcxLabel
      Left = 41
      Top = 67
      Caption = 'C'#233'dula:'
    end
    object cxLabel5: TcxLabel
      Left = 41
      Top = 92
      Caption = 'Nombre :'
    end
    object cxLabel2: TcxLabel
      Left = 41
      Top = 42
      Caption = 'Documento:'
    end
    object cbExtDocumento: TcxExtLookupComboBox
      Left = 117
      Top = 38
      RepositoryItem = DM.elcDocumento
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 7
      Width = 191
    end
    object cxLabel9: TcxLabel
      Left = 41
      Top = 113
      Caption = 'Sexo:'
    end
    object CbSexo: TcxDBImageComboBox
      Left = 117
      Top = 112
      DataBinding.DataField = 'Sexo'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'FEMENINO'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'MASCULINO'
          Value = 1
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 9
      Width = 121
    end
    object cxLabel10: TcxLabel
      Left = 42
      Top = 136
      Caption = 'Fecha Nac.:'
    end
    object EdFechaBorn: TcxDBDateEdit
      Left = 117
      Top = 136
      DataBinding.DataField = 'Fecha_Nacimiento'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 11
      Width = 121
    end
    object cxLabel11: TcxLabel
      Left = 41
      Top = 163
      Caption = 'Tel'#233'fono:'
    end
    object mskTelResidencia: TcxDBMaskEdit
      Left = 117
      Top = 159
      DataBinding.DataField = 'Tel_Residencia'
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
  end
  inherited dsDatos: TDataSource
    AutoEdit = True
    DataSet = JvMemoryData1
    Left = 252
    Top = 311
  end
  inherited cxIntl1: TcxIntl
    Left = 940
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUP' +
        'OPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO, '
      
        '                      p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, ' +
        'EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE' +
        ', p.CONDPACIENTE, '
      
        '                      p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTA' +
        'DO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS' +
        '400, '
      
        '                      CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 ' +
        'WHEN NULL THEN 0 WHEN '#39#39' THEN 0 ELSE p.CODIGOIDAS400 END) AS COD' +
        'IGOIDAS400, '
      
        '                      p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONO' +
        'PROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.D' +
        'ATAAREAID, '
      '                      p.RECID, p.SEXO, p.AYUNA,'#39'1'#39' as GPrecio  '
      'FROM         dbo.PTACUERDOCOMERCIAL a, dbo.ptprueba p'
      
        'WHERE     a.pruebarelation = p.pruebaid AND GetDate() BETWEEN a.' +
        'desde AND a.hasta '
      'AND p.dataareaid = a.dataareaid '
      'AND a.clienterelation = '#39'2'#39
      ''
      'UNION ALL'
      ''
      
        'SELECT     PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID,' +
        ' DEPARTAMENTO, PRECIO, PERMITECAMBIOPRECIO, CODIGOAXAPTA, '
      
        '                      PRECIODOLARES, COSTO, EXTERIOR, FACTURARCA' +
        'BECERA, PRUEBAS, TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA,' +
        ' CODDIAPROC, '
      
        '                      DIASRESULTADO, UNIDAD, ABREVIACION, MEDIO,' +
        ' COLOR, DEPID, TIPOAS400, CONVERT(VARCHAR(10), CASE CODIGOIDAS40' +
        '0 WHEN NULL '
      
        '                      THEN 0 WHEN '#39#39' THEN 0 ELSE CODIGOIDAS400 E' +
        'ND) AS CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCES' +
        'AR, TIPOMUESTRA, '
      
        '                      COMENTARIO_REQ, COD_SEC_PRUEBA, DATAAREAID' +
        ', RECID, SEXO, AYUNA,'#39'0'#39' as GPrecio'
      'FROM         PTPrueba'
      
        'WHERE     DataAreaId = '#39'ldr'#39' And PruebaID Not In ( SELECT     p.' +
        'PRUEBAID FROM         dbo.PTACUERDOCOMERCIAL a, dbo.ptprueba p'
      
        'WHERE     a.pruebarelation = p.pruebaid AND GetDate() BETWEEN a.' +
        'desde AND a.hasta '
      'AND p.dataareaid = a.dataareaid'
      'AND a.clienterelation = '#39'2'#39')'
      'Order by Pruebaid')
    Left = 208
    Top = 313
    object qrPruebasPRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrPruebasALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 80
    end
    object qrPruebasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrPruebasESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrPruebasGRUPOPRUEBAID: TStringField
      FieldName = 'GRUPOPRUEBAID'
      Size = 10
    end
    object qrPruebasDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 10
    end
    object qrPruebasPRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
    object qrPruebasPERMITECAMBIOPRECIO: TIntegerField
      FieldName = 'PERMITECAMBIOPRECIO'
    end
    object qrPruebasCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
    end
    object qrPruebasPRECIODOLARES: TBCDField
      FieldName = 'PRECIODOLARES'
      Precision = 28
      Size = 12
    end
    object qrPruebasCOSTO: TBCDField
      FieldName = 'COSTO'
      Precision = 28
      Size = 12
    end
    object qrPruebasEXTERIOR: TIntegerField
      FieldName = 'EXTERIOR'
    end
    object qrPruebasFACTURARCABECERA: TIntegerField
      FieldName = 'FACTURARCABECERA'
    end
    object qrPruebasPRUEBAS: TIntegerField
      FieldName = 'PRUEBAS'
    end
    object qrPruebasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 5
    end
    object qrPruebasORINA: TIntegerField
      FieldName = 'ORINA'
    end
    object qrPruebasSANGRE: TIntegerField
      FieldName = 'SANGRE'
    end
    object qrPruebasCONDPACIENTE: TStringField
      FieldName = 'CONDPACIENTE'
      Size = 255
    end
    object qrPruebasCONDMUESTRA: TStringField
      FieldName = 'CONDMUESTRA'
      Size = 255
    end
    object qrPruebasCODDIAPROC: TStringField
      FieldName = 'CODDIAPROC'
      Size = 5
    end
    object qrPruebasDIASRESULTADO: TIntegerField
      FieldName = 'DIASRESULTADO'
    end
    object qrPruebasUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object qrPruebasABREVIACION: TStringField
      FieldName = 'ABREVIACION'
    end
    object qrPruebasMEDIO: TIntegerField
      FieldName = 'MEDIO'
    end
    object qrPruebasCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object qrPruebasDEPID: TStringField
      FieldName = 'DEPID'
      Size = 10
    end
    object qrPruebasTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrPruebasCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
    end
    object qrPruebasMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrPruebasNOPROCESAR: TIntegerField
      FieldName = 'NOPROCESAR'
    end
    object qrPruebasCOMENTARIONOPROCESAR: TStringField
      FieldName = 'COMENTARIONOPROCESAR'
      Size = 255
    end
    object qrPruebasDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrPruebasTIPOMUESTRA: TStringField
      FieldName = 'TIPOMUESTRA'
      Size = 10
    end
    object qrPruebasSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrPruebasAYUNA: TBooleanField
      FieldName = 'AYUNA'
    end
    object qrPruebasGPrecio: TStringField
      FieldName = 'GPrecio'
      ReadOnly = True
      Size = 1
    end
    object qrPruebasCOMENTARIO_REQ: TIntegerField
      FieldName = 'COMENTARIO_REQ'
      ReadOnly = True
    end
    object qrPruebasCOD_SEC_PRUEBA: TIntegerField
      FieldName = 'COD_SEC_PRUEBA'
      ReadOnly = True
    end
    object qrPruebasRECID: TLargeintField
      FieldName = 'RECID'
      ReadOnly = True
    end
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
    Left = 168
    Top = 312
    object JvMemoryData1Seleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object JvMemoryData1PruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object JvMemoryData1Descripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object JvMemoryData1Precio: TCurrencyField
      FieldName = 'Precio'
    end
    object JvMemoryData1PrecioDolares: TCurrencyField
      FieldName = 'PrecioDolares'
    end
    object JvMemoryData1CodigoIDAS400: TStringField
      FieldName = 'CodigoIDAS400'
      Size = 10
    end
    object JvMemoryData1Ayuna: TBooleanField
      FieldName = 'Ayuna'
    end
    object JvMemoryData1GPrecio: TStringField
      FieldName = 'GPrecio'
    end
    object JvMemoryData1TipoPrueba: TStringField
      FieldName = 'TipoPrueba'
      Size = 1
    end
  end
  object dsSeleccion: TDataSource
    DataSet = JvMemoryData2
    Left = 452
    Top = 311
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
    Left = 408
    Top = 312
    object JvMemoryData2Seleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object JvMemoryData2PruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object JvMemoryData2Descripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object JvMemoryData2Precio: TCurrencyField
      FieldName = 'Precio'
    end
    object JvMemoryData2PrecioDolares: TCurrencyField
      FieldName = 'PrecioDolares'
    end
    object JvMemoryData2CodigoIDAS400: TStringField
      FieldName = 'CodigoIDAS400'
      Size = 10
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
    Left = 446
    Top = 216
    object MenuItem1: TMenuItem
      Caption = 'Eliminar Prueba'
      OnClick = MenuItem1Click
    end
  end
  object QrParentesco: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from ptParentesco'
      'Where Estatus='#39'A'#39)
    Left = 272
    Top = 359
    object QrParentescoId: TIntegerField
      FieldName = 'Id'
    end
    object QrParentescoNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object QrParentescoClave: TStringField
      FieldName = 'Clave'
    end
    object QrParentescoEstatus: TStringField
      FieldName = 'Estatus'
      FixedChar = True
      Size = 1
    end
  end
  object DsParentesco: TDataSource
    AutoEdit = False
    DataSet = QrParentesco
    Left = 324
    Top = 359
  end
  object qrPacientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select top 1 p.*,r.Nombre as Tipo ,c.Direccion,c.Clienteid,'
      
        'c.Telefono2,c.Fax,c.Email,c.CiudadID,c.EnvioResultado,c.CobrarDi' +
        'ferencia,c.PublicarInternet,'
      'c.FechaNacimiento'
      'FROM ptPerfilGenetico p '
      
        'Inner Join ptParentesco  r On r.id = p.parentesco inner join ptc' +
        'liente c On'
      'substring(c.identificacion,1,14)=p.identificacion+'#39'0'#39
      'Where r.Estatus='#39'A'#39)
    Left = 272
    Top = 407
    object qrPacientesRecID: TIntegerField
      FieldName = 'RecID'
    end
    object qrPacientesIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrPacientesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrPacientesParentesco: TIntegerField
      FieldName = 'Parentesco'
    end
    object qrPacientesFecha_Nac: TDateTimeField
      FieldName = 'Fecha_Nac'
    end
    object qrPacientesTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrPacientesNum_Caso: TStringField
      FieldName = 'Num_Caso'
      Size = 8
    end
    object qrPacientesFecha_Rec: TDateTimeField
      FieldName = 'Fecha_Rec'
    end
    object qrPacientesTipo: TStringField
      FieldName = 'Tipo'
      Size = 50
    end
    object qrPacientesClienteid: TStringField
      FieldName = 'Clienteid'
      Size = 10
    end
    object qrPacientesTelefono2: TStringField
      FieldName = 'Telefono2'
    end
    object qrPacientesFax: TStringField
      FieldName = 'Fax'
    end
    object qrPacientesEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
    object qrPacientesCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrPacientesEnvioResultado: TIntegerField
      FieldName = 'EnvioResultado'
    end
    object qrPacientesCobrarDiferencia: TIntegerField
      FieldName = 'CobrarDiferencia'
    end
    object qrPacientesPublicarInternet: TIntegerField
      FieldName = 'PublicarInternet'
    end
    object qrPacientesSexo: TWordField
      FieldName = 'Sexo'
    end
    object qrPacientesFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrPacientesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = qrPacientes
    Left = 324
    Top = 407
  end
end
