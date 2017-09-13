inherited frmTransferenciaClinica: TfrmTransferenciaClinica
  Caption = 'Transferencia de las Ordenes de la Clinica.'
  ClientHeight = 588
  ClientWidth = 970
  KeyPreview = True
  OnPaint = nil
  ExplicitWidth = 978
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 970
    Height = 3
    ExplicitWidth = 970
    ExplicitHeight = 3
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 3
    Width = 970
    Height = 585
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
            Height = 300
            TabOrder = 2
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsEntradaPaciente
              DataController.KeyFieldNames = 'RECID'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid1DBTableView1NETO
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'BRUTO'
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'DESCUENTO'
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'SUBTOTAL'
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'NETO'
                  Column = cxGrid1DBTableView1NETO
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1ENTRADAID: TcxGridDBColumn
                Caption = 'Registro No'
                DataBinding.FieldName = 'ENTRADAID'
                Options.Editing = False
                Width = 100
              end
              object cxGrid1DBTableView1FECHA: TcxGridDBColumn
                Caption = 'Fecha'
                DataBinding.FieldName = 'FECHA'
                Options.Editing = False
                Width = 90
              end
              object cxGrid1DBTableView1RECORDCLINICA: TcxGridDBColumn
                Caption = 'Record No.'
                DataBinding.FieldName = 'RECORDCLINICA'
                Options.Editing = False
                Width = 75
              end
              object cxGrid1DBTableView1NUMEROHABITACION: TcxGridDBColumn
                Caption = 'Hab.'
                DataBinding.FieldName = 'NUMEROHABITACION'
                Options.Editing = False
                Width = 40
              end
              object cxGrid1DBTableView1FECHAENTRADA: TcxGridDBColumn
                Caption = 'Fecha Ent.'
                DataBinding.FieldName = 'FECHAENTRADA'
                Options.Editing = False
                Width = 90
              end
              object cxGrid1DBTableView1NETO: TcxGridDBColumn
                Caption = 'Valor Orden'
                DataBinding.FieldName = 'NETO'
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taRightJustify
                Options.Editing = False
                Width = 90
              end
              object cxGrid1DBTableView1NOMBREPACIENTE: TcxGridDBColumn
                Caption = 'Nombre del Paciente'
                DataBinding.FieldName = 'NOMBREPACIENTE'
                Options.Editing = False
                Width = 175
              end
              object cxGrid1DBTableView1CLIENTENOMBRE: TcxGridDBColumn
                Caption = 'Nombre del Cliente'
                DataBinding.FieldName = 'CLIENTENOMBRE'
                Options.Editing = False
                Width = 175
              end
              object cxGrid1DBTableView1ESTATUS_CLINICA: TcxGridDBColumn
                Caption = 'Fact.'
                DataBinding.FieldName = 'ESTATUS_CLINICA'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'F'
                Properties.ValueUnchecked = 'P'
                Width = 35
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxGrid2: TcxGrid
            Left = 254
            Top = 365
            Width = 500
            Height = 202
            TabOrder = 10
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid2DBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Enabled = False
              NavigatorButtons.Edit.Enabled = False
              DataController.DataSource = dsEntradaPacienteDetalle
              DataController.KeyFieldNames = 'RECID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView2PRUEBAID: TcxGridDBColumn
                Caption = 'Prueba Id'
                DataBinding.FieldName = 'PRUEBAID'
                Options.Editing = False
                Width = 125
              end
              object cxGrid2DBTableView2DESCRIPCION: TcxGridDBColumn
                Caption = 'Nombre de la Prueba'
                DataBinding.FieldName = 'DESCRIPCION'
                Options.Editing = False
                Width = 300
              end
              object cxGrid2DBTableView2PRECIO: TcxGridDBColumn
                Caption = 'Precio'
                DataBinding.FieldName = 'PRECIO'
                Options.Editing = False
                Width = 125
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView2
            end
          end
          object EdCliente: TcxTextEdit
            Left = 86
            Top = 411
            Hint = 'Haga Doble Click para Activar la Consulta'
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clAqua
            Style.HotTrack = False
            TabOrder = 4
            OnDblClick = EdClienteDblClick
            Width = 121
          end
          object EdClienteNombre: TcxTextEdit
            Left = 23
            Top = 438
            Hint = 'Haga Doble Click para Activar la Consulta'
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clAqua
            Style.HotTrack = False
            TabOrder = 5
            OnDblClick = EdClienteDblClick
            Width = 225
          end
          object EdFechaEntrada: TcxDateEdit
            Left = 86
            Top = 519
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 8
            Width = 121
          end
          object EdFechaSalida: TcxDateEdit
            Left = 86
            Top = 546
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 9
            Width = 121
          end
          object RgPaciente: TcxRadioGroup
            Left = 23
            Top = 365
            Caption = ' Paciente Esta Interno '
            ItemIndex = 0
            Properties.Columns = 2
            Properties.DefaultValue = 'S'
            Properties.Items = <
              item
                Caption = 'SI'
                Value = 'S'
              end
              item
                Caption = 'NO'
                Value = 'N'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            TabOrder = 3
            Height = 40
            Width = 185
          end
          object EdPaciente: TcxTextEdit
            Left = 86
            Top = 18
            Hint = 'Haga Doble Click para Activar la Consulta'
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clAqua
            Style.HotTrack = False
            TabOrder = 0
            OnDblClick = EdPacienteDblClick
            Width = 121
          end
          object EdPacienteNombre: TcxTextEdit
            Left = 317
            Top = 18
            Hint = 'Haga Doble Click para Activar la Consulta'
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clAqua
            Style.HotTrack = False
            TabOrder = 1
            OnDblClick = EdPacienteDblClick
            Width = 400
          end
          object EdRecord: TcxTextEdit
            Left = 86
            Top = 465
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 162
          end
          object EdHabitacion: TcxTextEdit
            Left = 86
            Top = 492
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Width = 50
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Datos'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Item12: TdxLayoutItem
                Caption = 'Paciente Id'
                Control = EdPaciente
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                Caption = 'Nombre del Paciente'
                Control = EdPacienteNombre
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
              object dxLayoutControl2Group6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Item11: TdxLayoutItem
                  Caption = 'cxRadioGroup1'
                  ShowCaption = False
                  Control = RgPaciente
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item5: TdxLayoutItem
                  Caption = 'Cliente'
                  Control = EdCliente
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item6: TdxLayoutItem
                  Control = EdClienteNombre
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Record Cli.: '
                  Control = EdRecord
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = 'Habitacion'
                  Control = EdHabitacion
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item2: TdxLayoutItem
                  Caption = 'Fecha Ent.: '
                  Control = EdFechaEntrada
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item7: TdxLayoutItem
                  Caption = 'Fecha Sal.: '
                  Control = EdFechaSalida
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
    object BtProcesar: TcxButton
      Left = 858
      Top = 7
      Width = 100
      Height = 25
      Hint = 'Transferir Las Ordenes'
      Caption = 'F9 = &Transferir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtProcesarClick
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
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton3'
          ShowCaption = False
          Control = BtProcesar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 862
    Top = 109
  end
  inherited alEdit: TActionList
    Left = 862
    Top = 62
  end
  inherited pmCustom: TPopupMenu
    Left = 913
    Top = 62
  end
  inherited cxIntl1: TcxIntl
    Left = 888
    Top = 244
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterScroll = qrEntradaPacienteAfterScroll
    OnCalcFields = qrEntradaPacienteCalcFields
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
      'SELECT * FROM PTEntradaPacienteClinica'
      'WHERE recid = :rec'
      'AND DataAreaId = '#39'ldr'#39
      'ORDER BY RecId')
    Left = 862
    Top = 156
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
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTotalPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalPendiente'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
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
    object qrEntradaPacienteREFRECID_POS: TIntegerField
      FieldName = 'REFRECID_POS'
    end
    object qrEntradaPacienteENTRADAID_POS: TStringField
      FieldName = 'ENTRADAID_POS'
    end
    object qrEntradaPacienteMUESTRANO_POS: TStringField
      FieldName = 'MUESTRANO_POS'
    end
    object qrEntradaPacienteESTATUS_CLINICA: TStringField
      FieldName = 'ESTATUS_CLINICA'
      Size = 2
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
    Left = 913
    Top = 156
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Filtered = True
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
      'SELECT * FROM PTEntradaPacienteDetalleClinica'
      'WHERE refrecid = :rec'
      'AND DataAreaId = '#39'ldr'#39
      'ORDER BY RecId')
    Left = 862
    Top = 203
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
    object qrEntradaPacienteDetalleCODIGOCUPID: TStringField
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
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
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
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
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
    object qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
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
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
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
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
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
    object qrEntradaPacienteDetalleESTATUS_CLINICA: TStringField
      FieldName = 'ESTATUS_CLINICA'
      Size = 2
    end
    object qrEntradaPacienteDetalleSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 913
    Top = 203
  end
  object cxGridStyles: TcxStyleRepository
    Left = 913
    Top = 109
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object qrClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTCliente'
      'WHERE DataAreaId = '#39'ldr'#39)
    Left = 864
    Top = 298
    object qrClientesCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrClientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrClientesFAX: TStringField
      FieldName = 'FAX'
    end
    object qrClientesGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      Size = 10
    end
    object qrClientesINCLUIRPRECIOTICKET: TIntegerField
      FieldName = 'INCLUIRPRECIOTICKET'
    end
    object qrClientesAUTOCONFIRMAR: TIntegerField
      FieldName = 'AUTOCONFIRMAR'
    end
    object qrClientesEMPLEADOID: TStringField
      FieldName = 'EMPLEADOID'
      Size = 10
    end
    object qrClientesCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrClientesDIRECCIONWEB: TStringField
      FieldName = 'DIRECCIONWEB'
      Size = 80
    end
    object qrClientesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrClientesMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrClientesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object qrClientesORIGEN: TIntegerField
      FieldName = 'ORIGEN'
    end
    object qrClientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrClientesCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrClientesPRUEBASPORDIA: TIntegerField
      FieldName = 'PRUEBASPORDIA'
    end
    object qrClientesCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrClientesPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      Size = 10
    end
    object qrClientesENVIORESULTADO: TIntegerField
      FieldName = 'ENVIORESULTADO'
    end
    object qrClientesPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrClientesFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object qrClientesSEGURO: TStringField
      FieldName = 'SEGURO'
      Size = 10
    end
    object qrClientesCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrClientesPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object qrClientesCOBRARDIFERENCIA: TIntegerField
      FieldName = 'COBRARDIFERENCIA'
    end
    object qrClientesENVIARFAX: TIntegerField
      FieldName = 'ENVIARFAX'
    end
    object qrClientesACTIVARDESCUENTOS: TIntegerField
      FieldName = 'ACTIVARDESCUENTOS'
    end
    object qrClientesUSARALIASNOMBRE: TIntegerField
      FieldName = 'USARALIASNOMBRE'
    end
    object qrClientesUSARALIASPRUEBAS: TIntegerField
      FieldName = 'USARALIASPRUEBAS'
    end
    object qrClientesSIEMPREINTERNET: TIntegerField
      FieldName = 'SIEMPREINTERNET'
    end
    object qrClientesIMPRIMIRALIASNOMBRE: TIntegerField
      FieldName = 'IMPRIMIRALIASNOMBRE'
    end
    object qrClientesIMPRIMIRALIASPRUEBA: TIntegerField
      FieldName = 'IMPRIMIRALIASPRUEBA'
    end
    object qrClientesIMPRIMIRSOLOTOTALES: TIntegerField
      FieldName = 'IMPRIMIRSOLOTOTALES'
    end
    object qrClientesIMPRIMIRALIASRESULTADOS: TIntegerField
      FieldName = 'IMPRIMIRALIASRESULTADOS'
    end
    object qrClientesUSARACUERDOPROPIO: TIntegerField
      FieldName = 'USARACUERDOPROPIO'
    end
    object qrClientesALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 100
    end
    object qrClientesQUIENPAGA: TStringField
      FieldName = 'QUIENPAGA'
      Size = 5
    end
    object qrClientesTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object qrClientesENTREGARRESULTADOS: TStringField
      FieldName = 'ENTREGARRESULTADOS'
      Size = 5
    end
    object qrClientesTEXTOREFERENCIA: TStringField
      FieldName = 'TEXTOREFERENCIA'
    end
    object qrClientesSIEMPREIMPRIMIR: TIntegerField
      FieldName = 'SIEMPREIMPRIMIR'
    end
    object qrClientesTIPOSANGRE: TStringField
      FieldName = 'TIPOSANGRE'
      Size = 5
    end
    object qrClientesPACIENTECIAID: TStringField
      FieldName = 'PACIENTECIAID'
      Size = 10
    end
    object qrClientesSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 100
    end
    object qrClientesUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrClientesCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrClientesTIPOINTERNET: TStringField
      FieldName = 'TIPOINTERNET'
      Size = 2
    end
    object qrClientesCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrClientesDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrClientesSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrClientesESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrClientesTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrClientesCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
      Size = 10
    end
    object qrClientesGRUPOPRECIO: TStringField
      FieldName = 'GRUPOPRECIO'
      Size = 10
    end
    object qrClientesFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Size = 10
    end
    object qrClientesDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrClientesRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrClientesGRUPODESCUENTOLINEA: TStringField
      FieldName = 'GRUPODESCUENTOLINEA'
      Size = 10
    end
    object qrClientesGRUPODESCUENTOTOTAL: TStringField
      FieldName = 'GRUPODESCUENTOTOTAL'
      Size = 10
    end
    object qrClientesSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
  end
  object dsClientes: TDataSource
    DataSet = qrClientes
    Left = 916
    Top = 298
  end
  object dsPacientes: TDataSource
    DataSet = qrPacientes
    Left = 916
    Top = 351
  end
  object qrPacientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTCliente'
      'WHERE Origen = 0'
      'AND DataAreaId = '#39'ldr'#39)
    Left = 864
    Top = 351
    object qrPacientesCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrPacientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrPacientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrPacientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrPacientesFAX: TStringField
      FieldName = 'FAX'
    end
    object qrPacientesGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      Size = 10
    end
    object qrPacientesINCLUIRPRECIOTICKET: TIntegerField
      FieldName = 'INCLUIRPRECIOTICKET'
    end
    object qrPacientesAUTOCONFIRMAR: TIntegerField
      FieldName = 'AUTOCONFIRMAR'
    end
    object qrPacientesEMPLEADOID: TStringField
      FieldName = 'EMPLEADOID'
      Size = 10
    end
    object qrPacientesCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrPacientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrPacientesDIRECCIONWEB: TStringField
      FieldName = 'DIRECCIONWEB'
      Size = 80
    end
    object qrPacientesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrPacientesMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrPacientesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object qrPacientesORIGEN: TIntegerField
      FieldName = 'ORIGEN'
    end
    object qrPacientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrPacientesCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrPacientesPRUEBASPORDIA: TIntegerField
      FieldName = 'PRUEBASPORDIA'
    end
    object qrPacientesCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrPacientesPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      Size = 10
    end
    object qrPacientesENVIORESULTADO: TIntegerField
      FieldName = 'ENVIORESULTADO'
    end
    object qrPacientesPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrPacientesFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object qrPacientesSEGURO: TStringField
      FieldName = 'SEGURO'
      Size = 10
    end
    object qrPacientesCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrPacientesPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object qrPacientesCOBRARDIFERENCIA: TIntegerField
      FieldName = 'COBRARDIFERENCIA'
    end
    object qrPacientesENVIARFAX: TIntegerField
      FieldName = 'ENVIARFAX'
    end
    object qrPacientesACTIVARDESCUENTOS: TIntegerField
      FieldName = 'ACTIVARDESCUENTOS'
    end
    object qrPacientesUSARALIASNOMBRE: TIntegerField
      FieldName = 'USARALIASNOMBRE'
    end
    object qrPacientesUSARALIASPRUEBAS: TIntegerField
      FieldName = 'USARALIASPRUEBAS'
    end
    object qrPacientesSIEMPREINTERNET: TIntegerField
      FieldName = 'SIEMPREINTERNET'
    end
    object qrPacientesIMPRIMIRALIASNOMBRE: TIntegerField
      FieldName = 'IMPRIMIRALIASNOMBRE'
    end
    object qrPacientesIMPRIMIRALIASPRUEBA: TIntegerField
      FieldName = 'IMPRIMIRALIASPRUEBA'
    end
    object qrPacientesIMPRIMIRSOLOTOTALES: TIntegerField
      FieldName = 'IMPRIMIRSOLOTOTALES'
    end
    object qrPacientesIMPRIMIRALIASRESULTADOS: TIntegerField
      FieldName = 'IMPRIMIRALIASRESULTADOS'
    end
    object qrPacientesUSARACUERDOPROPIO: TIntegerField
      FieldName = 'USARACUERDOPROPIO'
    end
    object qrPacientesALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 100
    end
    object qrPacientesQUIENPAGA: TStringField
      FieldName = 'QUIENPAGA'
      Size = 5
    end
    object qrPacientesTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object qrPacientesENTREGARRESULTADOS: TStringField
      FieldName = 'ENTREGARRESULTADOS'
      Size = 5
    end
    object qrPacientesTEXTOREFERENCIA: TStringField
      FieldName = 'TEXTOREFERENCIA'
    end
    object qrPacientesSIEMPREIMPRIMIR: TIntegerField
      FieldName = 'SIEMPREIMPRIMIR'
    end
    object qrPacientesTIPOSANGRE: TStringField
      FieldName = 'TIPOSANGRE'
      Size = 5
    end
    object qrPacientesPACIENTECIAID: TStringField
      FieldName = 'PACIENTECIAID'
      Size = 10
    end
    object qrPacientesSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 100
    end
    object qrPacientesUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrPacientesCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrPacientesTIPOINTERNET: TStringField
      FieldName = 'TIPOINTERNET'
      Size = 2
    end
    object qrPacientesCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrPacientesDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrPacientesSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrPacientesESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrPacientesTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrPacientesCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
      Size = 10
    end
    object qrPacientesGRUPOPRECIO: TStringField
      FieldName = 'GRUPOPRECIO'
      Size = 10
    end
    object qrPacientesFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Size = 10
    end
    object qrPacientesDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrPacientesRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrPacientesGRUPODESCUENTOLINEA: TStringField
      FieldName = 'GRUPODESCUENTOLINEA'
      Size = 10
    end
    object qrPacientesGRUPODESCUENTOTOTAL: TStringField
      FieldName = 'GRUPODESCUENTOTOTAL'
      Size = 10
    end
    object qrPacientesSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
  end
end
