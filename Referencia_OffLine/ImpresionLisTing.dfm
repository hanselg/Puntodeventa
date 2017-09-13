object frmImpresionListing: TfrmImpresionListing
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impresion de Listados'
  ClientHeight = 357
  ClientWidth = 469
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 373
    Top = 233
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Color = 16311249
    ParentColor = False
  end
  object dxLayoutControl3: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 469
    Height = 357
    Align = alClient
    TabOrder = 0
    LookAndFeel = dmAppActions.lnfWeb
    object btaceptarcuadre: TcxButton
      Left = 23
      Top = 306
      Width = 200
      Height = 22
      Caption = 'Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 6
    end
    object btcancelarcuadre: TcxButton
      Left = 240
      Top = 306
      Width = 200
      Height = 22
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 7
    end
    object FechaIni: TcxDateEdit
      Left = 88
      Top = 154
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 121
    end
    object FechaFin: TcxDateEdit
      Left = 319
      Top = 154
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 121
    end
    object RgImpresion: TcxRadioGroup
      Left = 11
      Top = 247
      HelpType = htKeyword
      Caption = 'Impresi'#243'n'
      ItemIndex = 0
      Properties.Columns = 2
      Properties.DefaultValue = 'V'
      Properties.Items = <
        item
          Caption = 'Vista Preliminar'
          Value = 'V'
        end
        item
          Caption = 'Printer'
          Value = 'P'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Shadow = False
      Style.TextColor = clWindowText
      TabOrder = 5
      Transparent = True
      Height = 40
      Width = 441
    end
    object CbOrdenar: TcxComboBox
      Left = 88
      Top = 213
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'NUM. FACTURA'
        'NUM. LABORATORIO'
        'MONTO FACTURADO'
        'MONTO PAGADO')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 4
      Text = 'NUM. LABORATORIO'
      Width = 127
    end
    object cboReporte: TcxComboBox
      Left = 88
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'CONTROL DE PACIENTES (USA)'
        'CONTROL DE FILIACION FAMILIAR US$'
        'CONTROL DE FILIACION FAMILIAR RD$')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 299
    end
    object cbExtSucursal: TcxExtLookupComboBox
      Left = 88
      Top = 95
      RepositoryItem = DM.elcSucursal
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 299
    end
    object dxLayoutGroup2: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl3Group14: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object GrupoParametros: TdxLayoutGroup
          Caption = 'Parametros Cuadre'
          ShowCaption = False
          ShowBorder = False
          object GrupoLaboratorio: TdxLayoutGroup
            Caption = 'Filtrar Tipo de Reporte'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item3: TdxLayoutItem
              Caption = 'Reporte'
              Control = cboReporte
              ControlOptions.ShowBorder = False
            end
          end
          object GrupoSucursales: TdxLayoutGroup
            Caption = 'Filtrar Sucursales'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item42: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Sucursal '
              Control = cbExtSucursal
              ControlOptions.ShowBorder = False
            end
          end
          object GrupoToma: TdxLayoutGroup
            Caption = 'Filtrar por Rango de Fecha '
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Fecha Inicial'
              Control = FechaIni
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item33: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Fecha Final'
              Control = FechaFin
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl3Group2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object GrupoOrdenar: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Ordernar El Listado por :'
              object dxLayoutControl3Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ordenar por'
                Control = CbOrdenar
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutItem2: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              Caption = 'cxRadioGroup1'
              ShowCaption = False
              Control = RgImpresion
              ControlOptions.ShowBorder = False
            end
          end
        end
        object GroupSaldo: TdxLayoutGroup
          Caption = 'Saldo Final en Caja'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
        end
      end
      object botonescuadre: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'botonescuadre'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        object dxLayoutControl3Item31: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btaceptarcuadre
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl3Item10: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = btcancelarcuadre
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object ppListadoControlPacientesUSA: TppReport
    AutoStop = False
    DataPipeline = ppReporteUSA
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1
    Top = 2
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppReporteUSA'
    object ppHeaderBand16: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39423
      mmPrintPosition = 0
      object ppDBText215: TppDBText
        UserName = 'DBText159'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 5821
        mmLeft = 2116
        mmTop = 2117
        mmWidth = 86254
        BandType = 0
      end
      object ppLabel237: TppLabel
        UserName = 'Label152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sucursal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2116
        mmTop = 8730
        mmWidth = 20574
        BandType = 0
      end
      object ppLabel238: TppLabel
        UserName = 'Label153'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 204259
        mmTop = 7938
        mmWidth = 13293
        BandType = 0
      end
      object ppSystemVariable23: TppSystemVariable
        UserName = 'SystemVariable8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 219340
        mmTop = 7938
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable24: TppSystemVariable
        UserName = 'SystemVariable9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 219340
        mmTop = 3175
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel239: TppLabel
        UserName = 'Label154'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 203994
        mmTop = 3175
        mmWidth = 13674
        BandType = 0
      end
      object ppLabel241: TppLabel
        UserName = 'Label161'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 204259
        mmTop = 12435
        mmWidth = 13081
        BandType = 0
      end
      object ppSystemVariable25: TppSystemVariable
        UserName = 'SystemVariable10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        DisplayFormat = 'HH:MM:SS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 219340
        mmTop = 12435
        mmWidth = 14055
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = cl3DDkShadow
        mmHeight = 11906
        mmLeft = 265
        mmTop = 26723
        mmWidth = 264055
        BandType = 0
      end
      object ppLabel242: TppLabel
        UserName = 'Label173'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 34396
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel246: TppLabel
        UserName = 'Label185'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Laboratorio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 16933
        mmTop = 34660
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel250: TppLabel
        UserName = 'Label192'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nombre del Paciente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 40217
        mmTop = 34660
        mmWidth = 57415
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Facturado US$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 100542
        mmTop = 34661
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagado US$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 125413
        mmTop = 34660
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Envio RD$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 146050
        mmTop = 34660
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tasa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 165365
        mmTop = 34660
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Analisis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 175419
        mmTop = 34661
        mmWidth = 89959
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 14023
        mmWidth = 85990
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1852
        mmTop = 19315
        mmWidth = 85990
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 23283
        mmTop = 8731
        mmWidth = 65088
        BandType = 0
      end
    end
    object ppDetailBand21: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText219: TppDBText
        UserName = 'DBText164'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = ppReporteUSA
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3440
        mmLeft = 529
        mmTop = 794
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText218: TppDBText
        UserName = 'DBText163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Muestrano'
        DataPipeline = ppReporteUSA
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3440
        mmLeft = 17198
        mmTop = 794
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText223: TppDBText
        UserName = 'DBText168'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NombrePaciente'
        DataPipeline = ppReporteUSA
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3440
        mmLeft = 39423
        mmTop = 794
        mmWidth = 59531
        BandType = 4
      end
      object ppDBText226: TppDBText
        UserName = 'LbNeto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Subtotal'
        DataPipeline = ppReporteUSA
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3440
        mmLeft = 105834
        mmTop = 794
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText220: TppDBText
        UserName = 'LbPagado1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalEnvio'
        DataPipeline = ppReporteUSA
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3175
        mmLeft = 147638
        mmTop = 1058
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText221: TppDBText
        UserName = 'DBText221'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tasa'
        DataPipeline = ppReporteUSA
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 794
        mmWidth = 8731
        BandType = 4
      end
      object ppDBRichText1: TppDBRichText
        UserName = 'DBRichText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Analisis'
        DataPipeline = ppReporteUSA
        Stretch = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3440
        mmLeft = 174890
        mmTop = 794
        mmWidth = 89959
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppDBText228: TppDBText
        UserName = 'LbPagado'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalPagado'
        DataPipeline = ppReporteUSA
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3440
        mmLeft = 127794
        mmTop = 794
        mmWidth = 14817
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel257: TppLabel
        UserName = 'Label175'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total General :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35719
        mmTop = 2910
        mmWidth = 40746
        BandType = 7
      end
      object ppDBCalc37: TppDBCalc
        UserName = 'DBCalc28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EntradaID'
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 3175
        mmWidth = 14552
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Subtotal'
        DataPipeline = ppReporteUSA
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3440
        mmLeft = 106627
        mmTop = 2910
        mmWidth = 16933
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalPagado'
        DataPipeline = ppReporteUSA
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3440
        mmLeft = 127529
        mmTop = 2910
        mmWidth = 15081
        BandType = 7
      end
      object ppDBCalc39: TppDBCalc
        UserName = 'DBCalc39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalEnvio'
        DataPipeline = ppReporteUSA
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteUSA'
        mmHeight = 3440
        mmLeft = 148696
        mmTop = 2911
        mmWidth = 15346
        BandType = 7
      end
    end
  end
  object qrReporte: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        '  select Distinct e.Fecha,e.EntradaId ,e.Muestrano as Muestrano,' +
        ' e.Pacienteid,e.NombrePaciente ,e.userid as UsuarioID, '
      '    (Select Empresa from PtParametro) as TituloEmpresa,'
      '    s.Nombre,isnull(d.Descripcion,'#39#39') as Descripcion,'
      
        '   e.Neto,e.Tasa,e.Subtotal,e.GastosVarios as TotalEnvio,e.Total' +
        'Pagado,'
      '    isnull(d.Comentario ,'#39#39') as Analisis'
      
        '  from ptentradapaciente e Left outer join ptentradapacientedeta' +
        'lle d '
      '  on d.refrecid = e.recid '
      '  Inner Join ptsucursal s  '
      '  on e.SucursalID=s.SucursalID '
      '  Where e.factexterior='#39'1'#39'  '
      '  and e.fecha between '#39'20091001'#39' and '#39'20091031'#39
      '  and e.Dataareaid='#39'ldr'#39
      'and isnull(d.Comentario ,'#39#39')<> '#39#39)
    Left = 40
  end
  object dsReporte: TDataSource
    DataSet = qrReporte
    Left = 75
  end
  object JvReporte: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Fecha'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'EntradaID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Muestrano'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NombrePaciente'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Subtotal'
        DataType = ftCurrency
      end
      item
        Name = 'TotalPagado'
        DataType = ftCurrency
      end
      item
        Name = 'TotalEnvio'
        DataType = ftCurrency
      end
      item
        Name = 'Tasa'
        DataType = ftCurrency
      end
      item
        Name = 'Analisis'
        DataType = ftMemo
        Size = 200
      end>
    Left = 160
    object JvReporteFecha: TStringField
      FieldName = 'Fecha'
      Size = 10
    end
    object JvReporteEntradaID: TStringField
      FieldName = 'EntradaID'
    end
    object JvReporteMuestrano: TStringField
      FieldName = 'Muestrano'
    end
    object JvReporteNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object JvReporteSubtotal: TCurrencyField
      FieldName = 'Subtotal'
    end
    object JvReporteTotalPagado: TCurrencyField
      FieldName = 'TotalPagado'
    end
    object JvReporteTotalEnvio: TCurrencyField
      FieldName = 'TotalEnvio'
    end
    object JvReporteTasa: TCurrencyField
      FieldName = 'Tasa'
    end
    object JvReporteAnalisis: TMemoField
      FieldName = 'Analisis'
      BlobType = ftMemo
      Size = 200
    end
  end
  object dsReporteJ: TDataSource
    DataSet = JvReporte
    Left = 208
  end
  object ppReporteUSA: TppDBPipeline
    DataSource = dsReporteJ
    UserName = 'ppReporteUSA'
    Left = 115
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'EntradaID'
      FieldName = 'EntradaID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Muestrano'
      FieldName = 'Muestrano'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'NombrePaciente'
      FieldName = 'NombrePaciente'
      FieldLength = 80
      DisplayWidth = 80
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Subtotal'
      FieldName = 'Subtotal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'TotalPagado'
      FieldName = 'TotalPagado'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'TotalEnvio'
      FieldName = 'TotalEnvio'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Tasa'
      FieldName = 'Tasa'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Analisis'
      FieldName = 'Analisis'
      FieldLength = 200
      DataType = dtMemo
      DisplayWidth = 10
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
end
