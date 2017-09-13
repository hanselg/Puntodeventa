inherited frmActCobros: TfrmActCobros
  Caption = 'Actulizaci'#243'n Cobros'
  ClientHeight = 588
  ClientWidth = 970
  KeyPreview = True
  OnClose = nil
  ExplicitWidth = 978
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 970
    Height = 41
    ExplicitWidth = 970
    ExplicitHeight = 41
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 41
    Width = 970
    Height = 547
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfNoBorder
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 289
      Height = 193
      ActivePage = cxTabSheet1
      HideTabs = True
      TabOrder = 0
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 0
      object cxTabSheet1: TcxTabSheet
        Caption = 'cxTabSheet1'
        ImageIndex = 0
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 193
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          object cxGrid1: TcxGrid
            Left = 11
            Top = 52
            Width = 824
            Height = 285
            TabOrder = 3
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsEntradaPaciente
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.OnGetContentStyle = cxGrid1DBTableView1StylesGetContentStyle
              object cxGrid1DBTableView1EntradaId: TcxGridDBColumn
                Caption = 'EntradaID'
                DataBinding.FieldName = 'ENTRADAID'
                HeaderAlignmentHorz = taCenter
                Width = 68
              end
              object cxGrid1DBTableView1Fecha: TcxGridDBColumn
                Caption = 'Fecha'
                DataBinding.FieldName = 'FECHA'
                PropertiesClassName = 'TcxDateEditProperties'
                HeaderAlignmentHorz = taCenter
                Width = 64
              end
              object cxGrid1DBTableView1PacienteID: TcxGridDBColumn
                Caption = 'PacienteID'
                DataBinding.FieldName = 'PACIENTEID'
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object cxGrid1DBTableView1NombrePaciente: TcxGridDBColumn
                Caption = 'Nombre Paciente'
                DataBinding.FieldName = 'NOMBREPACIENTE'
                HeaderAlignmentHorz = taCenter
                Width = 200
              end
              object cxGrid1DBTableView1ClienteID: TcxGridDBColumn
                Caption = 'ClienteID'
                DataBinding.FieldName = 'CLIENTEID'
                HeaderAlignmentHorz = taCenter
                Width = 62
              end
              object cxGrid1DBTableView1ClienteNombre: TcxGridDBColumn
                Caption = 'Cliente Nombre'
                DataBinding.FieldName = 'CLIENTENOMBRE'
                HeaderAlignmentHorz = taCenter
                Width = 172
              end
              object cxGrid1DBTableView1NonedaID: TcxGridDBColumn
                Caption = 'Mon.'
                DataBinding.FieldName = 'MONEDAID'
                Width = 33
              end
              object cxGrid1DBTableView1Neto: TcxGridDBColumn
                Caption = 'Neto'
                DataBinding.FieldName = 'NETO'
                HeaderAlignmentHorz = taCenter
                Width = 71
              end
              object cxGrid1DBTableView1TotalPagado: TcxGridDBColumn
                Caption = 'Total Pagado'
                DataBinding.FieldName = 'TOTALPAGADO'
                HeaderAlignmentHorz = taCenter
                Width = 67
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object EdMuestra: TcxDBTextEdit
            Left = 535
            Top = 18
            Hint = 'Haga Doble Click para Activar la Consulta'
            DataBinding.DataField = 'MUESTRANO'
            DataBinding.DataSource = dsEntradaPaciente
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            OnDblClick = EdMuestraDblClick
            Width = 121
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 697
            Top = 18
            DataBinding.DataField = 'FECHA'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 127
            Top = 18
            AutoSize = False
            DataBinding.DataField = 'NOMBREPACIENTE'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Height = 21
            Width = 300
          end
          object cxGrid2: TcxGrid
            Left = 254
            Top = 415
            Width = 350
            Height = 114
            TabOrder = 6
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid2DBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Enabled = False
              NavigatorButtons.Edit.Enabled = False
              DataController.DataSource = dsDatos
              DataController.KeyFieldNames = 'LineaNo'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView2Descripcion: TcxGridDBColumn
                Caption = 'Descripcion del Material'
                DataBinding.FieldName = 'Descripcion'
                MinWidth = 210
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringMRUItemsList = False
                Options.Focusing = False
                Options.IncSearch = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Options.Sorting = False
                Width = 210
              end
              object cxGrid2DBTableView2Color: TcxGridDBColumn
                DataBinding.FieldName = 'Color'
                MinWidth = 90
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringMRUItemsList = False
                Options.Focusing = False
                Options.IncSearch = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 90
              end
              object cxGrid2DBTableView2Cantidad: TcxGridDBColumn
                DataBinding.FieldName = 'Cantidad'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.AssignedValues.DisplayFormat = True
                Properties.AssignedValues.EditFormat = True
                HeaderAlignmentHorz = taCenter
                MinWidth = 50
                Options.Filtering = False
                Options.FilteringMRUItemsList = False
                Options.IncSearch = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Options.Sorting = False
                Width = 50
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView2
            end
          end
          object EdCoberturaValor: TcxDBCurrencyEdit
            Left = 127
            Top = 442
            DataBinding.DataField = 'COBERTURAPORC'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.DisplayFormat = '0.00;-0.00'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clWindow
            Style.HotTrack = False
            TabOrder = 5
            Width = 65
          end
          object edtipocliente: TcxDBExtLookupComboBox
            Left = 127
            Top = 415
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'ORIGEN'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 4
            Width = 121
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Datos'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Item3: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                Caption = 'Nombre del Paciente'
                Control = cxDBTextEdit7
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Muestra No.'
                Control = EdMuestra
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Fecha'
                Control = cxDBTextEdit6
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Lineas'
              ShowCaption = False
              ShowBorder = False
              object dxLayoutControl2Item4: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'cxGrid1'
                ShowCaption = False
                Control = cxGrid1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group3: TdxLayoutGroup
              Caption = 'Apoyo'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Group5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Forma de Pago'
                  Control = edtipocliente
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Monto Cobrado'
                  Control = EdCoberturaValor
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl2Group4: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Comentario'
                ShowCaption = False
                ShowBorder = False
                object dxLayoutControl2Item9: TdxLayoutItem
                  Control = cxGrid2
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object BtFactura: TcxButton
      Left = 853
      Top = 7
      Width = 105
      Height = 25
      Caption = 'Buscar Facturas'
      TabOrder = 1
      OnClick = BtFacturaClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
        73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
        8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
        9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
        A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
        AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
        BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
        D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
        E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
        F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
        424242424242424242422B39180B42424242424242424242424243443C180B42
        4242424242424242424242444438180B42424242424242424242424244433918
        0A424242424242424242424242444335004201101A114242424242424242453D
        05072F343434291942424242424242221A2D34343437403E0442424242424206
        231C303437404146284242424242421B210F30373A414140310D42424242421F
        20032434373A3A37321342424242421D25030F2D37373737311042424242420D
        2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
        4227312D21252314424242424242424242420E141B1B42424242}
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtProcesar: TcxButton
      Left = 853
      Top = 38
      Width = 103
      Height = 25
      Caption = 'Actualizar Pago'
      TabOrder = 2
      OnClick = BtProcesarClick
      Glyph.Data = {
        DE030000424DDE03000000000000DE0200002800000010000000100000000100
        08000000000000010000120B0000120B0000AA000000AA00000000000000FFFF
        FF00FF00FF00FFFEFE0067343200663332006634320068343100683532006935
        31006B3630006D372F0072392D0071392E00733A2C007D3F2900804026007E40
        27007C3F2800844224008242250081412500964E2100984C1900A7541500A351
        1600A3531700C85B0000C85C0000B35A0E00B1590F00AF580F00AE581000AF5A
        1200A9551200A8551300A5531300A8551400AC591600B3611B00B2611F00A95B
        1E00C9610000CA600100C9600500C5630700C4620700B75B0800B65B0900CB67
        0F00B45C0D00B35A0D00B15A0E00B0590E00CD6B1100B9611000B35D1100CE6E
        1700CE6D1800C26E2200D5853B00C2793800D98D4A00FBEBDC00FBF2EA00D66B
        0000D66C0000D56B0000D46B0000D36A0000D2690000D1690000D0690000CE67
        0000CE680000CD670000CB630000CB640000CB650000CA620000CB660100CA64
        0100D26B0200CD660200CC680200CB660200CA660200CB670300CD680400CF69
        0500C2610500C5640600CD6B0800D3710C00BF630B00D2741400D1731400D175
        1800D2761900D1761900CF721900C36C1A00D9822A00D9832C00DA852F00DF89
        3100E1903F00E1934300DC914800DA914900DD954D00E9A05600E8A05600E8A2
        5A00E4A25E00F1AD6900EBAB6900DE9F6300F0AF6D00E6A76900F0B17100E6AB
        6F00ECB17500DEA56E00E2A87100F6BB7F00E7B68400EABF9300ECC29700EAC1
        9700EAC09800F9D1A800F3CCA500F8D1A900F0CBA600EDCCAA00FAD8B700FAD9
        B700F2D9C000F5DFC900F6E2CF00FAE9D800FBEFE300FDF2E700D1731100D87C
        1C00D87D1E00D9802400DA832900DC8B3600E1913E00E19B5100E6A35D00E7AE
        7200F9BE8100F8C18600ECBA8600FED6AB00F5CEA500F8DBBC00FBDFC200FDE4
        CA00FBE3CA00F8E6D300F5E4D200FEEFDF00FEF2E500FCEEDE00FCF3E800FCF6
        EF000202020202060B15150B0402020202020202020C101F5A56552E1E130702
        0202020212254452584C4B49484218090202021420454F3A813C1C4E50504323
        0502021746545136A4403E1B4E5050411502225E5D6090628B01A97C2B2A5047
        1D093561936794688C01010182312A4A5B0938956B6A966BA3010101018A644D
        530A37727A706F718D0101010187394E530E34779E7873763F0101037E2C2A4A
        2D08326EA0839A7DA701A879594D50471E09026585A59D9B8F8E98925F574E41
        1102022F6CA1A6889F746966635C43190D020202336D89A5A2849C999791240F
        0202020202303B757F86807B3D1612020202020202020221272829261A020202
        0202}
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtImprimir: TcxButton
      Left = 853
      Top = 69
      Width = 100
      Height = 25
      Caption = 'Crear Devoluci'#243'n '
      TabOrder = 3
      OnClick = BtImprimirClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'dgDatos'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'cxPageControl1'
          ShowCaption = False
          Control = cxPageControl1
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avClient
        Caption = 'dgBotones'
        LookAndFeel = dmAppActions.lnfButtonGroup
        ShowCaption = False
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtFactura
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton3'
          ShowCaption = False
          Control = BtProcesar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton4'
          ShowCaption = False
          Control = BtImprimir
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 160
    Top = 196
  end
  inherited alEdit: TActionList
    Left = 161
    Top = 140
  end
  inherited pmCustom: TPopupMenu
    Left = 236
    Top = 140
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPaciente'
      'Where recid = :rec')
    Left = 424
    Top = 144
    object qrEntradaPacienteENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaPacienteHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaPacienteENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrEntradaPacienteRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrEntradaPacienteNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrEntradaPacienteFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrEntradaPacienteFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrEntradaPacienteRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaPacienteRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaPacienteFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrEntradaPacienteHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrEntradaPacienteFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacientePROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrEntradaPacienteRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteBRUTO: TBCDField
      FieldName = 'BRUTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTotalPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalPendiente'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrEntradaPacienteNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradaPacienteTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradaPacienteTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrEntradaPacienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrEntradaPacienteCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradaPacienteSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaPacienteUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaPacienteCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrEntradaPacientePRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaPacienteFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaPacienteTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrEntradaPacienteORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrEntradaPacienteAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaPacienteAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrEntradaPacienteFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrEntradaPacienteMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrEntradaPacienteSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrEntradaPacienteNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrEntradaPacientePUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrEntradaPacienteCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrEntradaPacienteCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrEntradaPacienteGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrEntradaPacienteNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrEntradaPacienteNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrEntradaPacienteFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrEntradaPacienteHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrEntradaPacienteREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrEntradaPacienteTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrEntradaPacienteFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrEntradaPacienteDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrEntradaPacienteDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrEntradaPacienteACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrEntradaPacienteCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrEntradaPacienteDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrEntradaPacienteFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrEntradaPacienteHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrEntradaPacienteTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrEntradaPacienteCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrEntradaPacienteCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrEntradaPacientePACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrEntradaPacienteNCFTYPEID: TStringField
      FieldName = 'NCFTYPEID'
      Size = 10
    end
    object qrEntradaPacienteNCFID: TStringField
      FieldName = 'NCFID'
      Size = 19
    end
    object qrEntradaPacienteNCFNAME: TStringField
      FieldName = 'NCFNAME'
      Size = 80
    end
    object qrEntradaPacienteCUADRADO: TIntegerField
      FieldName = 'CUADRADO'
    end
    object qrEntradaPacienteTRANSFERIDO: TIntegerField
      FieldName = 'TRANSFERIDO'
    end
    object qrEntradaPacienteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object qrEntradaPacienteNUMEROINTERNET: TIntegerField
      FieldName = 'NUMEROINTERNET'
    end
    object qrEntradaPacienteRESULTADOCLIENTE: TIntegerField
      FieldName = 'RESULTADOCLIENTE'
    end
    object qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField
      FieldName = 'PUBLICARINTERNETCLIENTE'
    end
    object qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField
      FieldName = 'COBERTURAPRECONFIRMADA'
    end
    object qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField
      FieldName = 'COBERTURAMONTOPRECONFIRMADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacientePOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrEntradaPacientePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteTRANSFERENCIA: TStringField
      FieldName = 'TRANSFERENCIA'
      Size = 10
    end
    object qrEntradaPacienteGRUPOPRECIO: TStringField
      FieldName = 'GRUPOPRECIO'
      Size = 10
    end
    object qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField
      FieldName = 'GRUPODESCUENTOLINEA'
      Size = 10
    end
    object qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField
      FieldName = 'GRUPODESCUENTOTOTAL'
      Size = 10
    end
    object qrEntradaPacienteFROM_CLINICA: TIntegerField
      FieldName = 'FROM_CLINICA'
    end
    object qrEntradaPacienteSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
    object qrEntradaPacienteFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object qrEntradaPacienteCOD_CASO: TStringField
      FieldName = 'COD_CASO'
      Size = 8
    end
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 496
    Top = 144
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Filtered = True
    OnCalcFields = qrEntradaPacienteDetalleCalcFields
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT PRUEBAID, COMBOPRUEBAID, CODIGOAUTORIZACION, DESCRIPCION,' +
        ' CODIGOCUPID, MUESTRAANT, COBERTURAAPLICA, DESCRIPCIONCUP, REFRE' +
        'CID, SECUENCIA, FLEBOTOMISTAID, COMENTARIOMUESTRA, UNIDADMUESTRA' +
        ', SECUENCIAACT, PRECIO, DESCUENTO, DESCUENTOEXTRA, TOTALLINEA, C' +
        'OMENTARIO, TIPOPRUEBA, TIPOAS400, CODIGOAS400, MEDIOAS400, DESCP' +
        'CT, COBERTURAESPECIAL, COBERTURAESPECIALPORC, COBERTURAAPLICADA,' +
        ' DESCUENTOAPLICADO, FACTURAR, SELECCIONAR, MUESTRANO, COBERTURAE' +
        'XPPORC, URGENTE, REPMUESTRA, HORAENTREGA, ESTATUS, DESCUENTOLINE' +
        'AAPLICADO, CUADRADO, TRANSFERIDO, PASARAXAPTA, COMBO, ADICIONAL,' +
        ' REPREALIZADA, REPMUESTRANO, TIENEACUERDOPRECIO, TIENEACUERDODES' +
        'CUENTO, CUADREGLOBAL, CUADREUSUARIO, EXTERIOR, LDRDEPARTAMENTOID' +
        ', PRECIOCOMBO, FROM_CLINICA, REFRECID_POS, ENTRADAID_POS, MUESTR' +
        'ANO_POS, SINPRFILTER, COMENTARIO_REQ, DATAAREAID, RECID, FECHAEN' +
        'TREGA  FROM PTEntradaPacienteDetalle'
      'WHERE refrecid = :rec'
      'AND (TipoPrueba = '#39'P'#39' OR TipoPrueba = '#39'S'#39')'
      '')
    Left = 424
    Top = 193
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object qrEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object f: TStringField
      FieldName = 'CODIGOCUPID'
    end
    object qrEntradaPacienteDetalleMUESTRAANT: TStringField
      FieldName = 'MUESTRAANT'
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField
      FieldName = 'COBERTURAAPLICA'
    end
    object qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField
      FieldName = 'DESCRIPCIONCUP'
      Size = 80
    end
    object qrEntradaPacienteDetalleREFRECID: TIntegerField
      FieldName = 'REFRECID'
    end
    object qrEntradaPacienteDetalleSECUENCIA: TIntegerField
      FieldName = 'SECUENCIA'
    end
    object qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField
      FieldName = 'UNIDADMUESTRA'
      Size = 10
    end
    object qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField
      FieldName = 'SECUENCIAACT'
    end
    object qrEntradaPacienteDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTIPOPRUEBA: TStringField
      FieldName = 'TIPOPRUEBA'
      Size = 5
    end
    object qrEntradaPacienteDetalleTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleCODIGOAS400: TStringField
      FieldName = 'CODIGOAS400'
    end
    object qrEntradaPacienteDetalleMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleDESCPCT: TBCDField
      FieldName = 'DESCPCT'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField
      FieldName = 'COBERTURAESPECIAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleFACTURAR: TIntegerField
      FieldName = 'FACTURAR'
    end
    object qrEntradaPacienteDetalleSELECCIONAR: TIntegerField
      FieldName = 'SELECCIONAR'
    end
    object qrEntradaPacienteDetalleMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteDetalleURGENTE: TIntegerField
      FieldName = 'URGENTE'
    end
    object qrEntradaPacienteDetalleREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteDetalleHORAENTREGA: TStringField
      FieldName = 'HORAENTREGA'
    end
    object qrEntradaPacienteDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      FixedChar = True
      Size = 2
    end
    object qrEntradaPacienteDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField
      FieldName = 'COMENTARIOMUESTRA'
      Size = 255
    end
    object qrEntradaPacienteDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
    end
    object qrEntradaPacienteDetalleDiasProcesamiento: TStringField
      FieldKind = fkCalculated
      FieldName = 'DiasProcesamiento'
      Size = 50
      Calculated = True
    end
    object qrEntradaPacienteDetalleCondMuestra: TStringField
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'CondMuestra'
      Size = 50
      Calculated = True
    end
    object qrEntradaPacienteDetalleCondPac: TStringField
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'CondPac'
      Size = 50
      Calculated = True
    end
    object qrEntradaPacienteDetalleDiasResultado: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DiasResultado'
      Calculated = True
    end
    object qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField
      FieldName = 'DESCUENTOLINEAAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCUADRADO: TIntegerField
      FieldName = 'CUADRADO'
    end
    object qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField
      FieldName = 'TRANSFERIDO'
    end
    object qrEntradaPacienteDetallePASARAXAPTA: TIntegerField
      FieldName = 'PASARAXAPTA'
    end
    object qrEntradaPacienteDetalleCOMBO: TIntegerField
      FieldName = 'COMBO'
    end
    object qrEntradaPacienteDetalleADICIONAL: TBCDField
      FieldName = 'ADICIONAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleREPREALIZADA: TIntegerField
      FieldName = 'REPREALIZADA'
    end
    object qrEntradaPacienteDetalleREPMUESTRANO: TStringField
      FieldName = 'REPMUESTRANO'
    end
    object qrEntradaPacienteDetalleTIENEACUERDOPRECIO: TIntegerField
      FieldName = 'TIENEACUERDOPRECIO'
    end
    object qrEntradaPacienteDetalleTIENEACUERDODESCUENTO: TIntegerField
      FieldName = 'TIENEACUERDODESCUENTO'
    end
    object qrEntradaPacienteDetalleCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteDetalleCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteDetalleEXTERIOR: TIntegerField
      FieldName = 'EXTERIOR'
    end
    object qrEntradaPacienteDetalleLDRDEPARTAMENTOID: TStringField
      FieldName = 'LDRDEPARTAMENTOID'
      Size = 10
    end
    object qrEntradaPacienteDetallePRECIOCOMBO: TBCDField
      FieldName = 'PRECIOCOMBO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField
      FieldName = 'FROM_CLINICA'
    end
    object qrEntradaPacienteDetalleREFRECID_POS: TIntegerField
      FieldName = 'REFRECID_POS'
    end
    object qrEntradaPacienteDetalleENTRADAID_POS: TStringField
      FieldName = 'ENTRADAID_POS'
    end
    object qrEntradaPacienteDetalleMUESTRANO_POS: TStringField
      FieldName = 'MUESTRANO_POS'
    end
    object qrEntradaPacienteDetalleSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
    object qrEntradaPacienteDetalleCOMENTARIO_REQ: TIntegerField
      FieldName = 'COMENTARIO_REQ'
    end
    object qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 496
    Top = 193
  end
  object cxGridStyles: TcxStyleRepository
    Left = 237
    Top = 196
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object qrMaterialesFactura: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ref'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTMaterialesFactura'
      'WHERE refrecid = :ref')
    Left = 424
    Top = 242
    object qrMaterialesFacturarefrecid: TIntegerField
      FieldName = 'refrecid'
    end
    object qrMaterialesFacturarefrecidLine: TIntegerField
      FieldName = 'refrecidLine'
    end
    object qrMaterialesFacturapruebaid: TStringField
      FieldName = 'pruebaid'
    end
    object qrMaterialesFacturaMaterialid: TStringField
      FieldName = 'Materialid'
      Size = 10
    end
    object qrMaterialesFacturaDescripcion: TStringField
      FieldKind = fkLookup
      FieldName = 'Descripcion'
      LookupDataSet = DM.qrMateriales
      LookupKeyFields = 'MaterialId'
      LookupResultField = 'Descripcion'
      KeyFields = 'Materialid'
      Size = 50
      Lookup = True
    end
    object qrMaterialesFacturaColor: TStringField
      FieldName = 'Color'
    end
    object qrMaterialesFacturaCantidad: TBCDField
      FieldName = 'Cantidad'
      OnValidate = qrMaterialesFacturaCantidadValidate
      Precision = 19
    end
    object qrMaterialesFacturaLineaNo: TIntegerField
      FieldName = 'LineaNo'
    end
    object qrMaterialesFacturaRecId: TIntegerField
      FieldName = 'RecId'
    end
  end
  object dsDatos: TDataSource
    DataSet = qrMaterialesFactura
    Left = 496
    Top = 242
  end
end
