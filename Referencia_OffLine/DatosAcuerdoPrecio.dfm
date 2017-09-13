inherited frmDatosAcuerdoPrecio: TfrmDatosAcuerdoPrecio
  Left = 329
  Top = 115
  Caption = 'Acuerdo de Precios'
  ClientHeight = 497
  ClientWidth = 663
  Position = poDesigned
  ExplicitWidth = 679
  ExplicitHeight = 535
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 663
    Height = 464
    ExplicitWidth = 663
    ExplicitHeight = 464
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 340
      ClientRectRight = 586
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'recid'
              object tvDatosPruebaCode: TcxGridDBColumn
                Caption = 'Tipo Prueba'
                DataBinding.FieldName = 'PruebaCode'
                RepositoryItem = DM.cxIcTodoGrupoTabla
              end
              object tvDatosPruebaRelation: TcxGridDBColumn
                Caption = 'Relaci'#243'n Prueba'
                DataBinding.FieldName = 'PruebaRelation'
              end
              object tvDatosClienteCode: TcxGridDBColumn
                Caption = 'Tipo Cliente'
                DataBinding.FieldName = 'ClienteCode'
                RepositoryItem = DM.cxIcTodoGrupoTabla
              end
              object tvDatosClienteRelation: TcxGridDBColumn
                Caption = 'Relaci'#243'n Cliente'
                DataBinding.FieldName = 'ClienteRelation'
              end
              object tvDatosDesde: TcxGridDBColumn
                DataBinding.FieldName = 'Desde'
              end
              object tvDatosHasta: TcxGridDBColumn
                DataBinding.FieldName = 'Hasta'
              end
              object tvDatosMonedaID: TcxGridDBColumn
                Caption = 'Moneda'
                DataBinding.FieldName = 'MonedaID'
              end
              object tvDatosPrecio: TcxGridDBColumn
                DataBinding.FieldName = 'Precio'
              end
              object tvDatosActivo: TcxGridDBColumn
                DataBinding.FieldName = 'Activo'
                PropertiesClassName = 'TcxCheckBoxProperties'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          object cxDBImageComboBox1: TcxDBImageComboBox [0]
            Left = 107
            Top = 36
            RepositoryItem = DM.cxIcTodoGrupoTabla
            DataBinding.DataField = 'PRUEBACODE'
            DataBinding.DataSource = dsDatos
            Properties.Items = <>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 145
          end
          object elcRelacionPrueba: TcxDBExtLookupComboBox [1]
            Left = 107
            Top = 63
            DataBinding.DataField = 'PRUEBARELATION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 145
          end
          object cxDBImageComboBox2: TcxDBImageComboBox [2]
            Left = 107
            Top = 122
            RepositoryItem = DM.cxIcTodoGrupoTabla
            DataBinding.DataField = 'CLIENTECODE'
            DataBinding.DataSource = dsDatos
            Properties.Items = <>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Width = 145
          end
          object elcRelacionCliente: TcxDBExtLookupComboBox [3]
            Left = 107
            Top = 149
            DataBinding.DataField = 'CLIENTERELATION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 145
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
            Left = 107
            Top = 262
            RepositoryItem = DM.lcMonedas
            DataBinding.DataField = 'MONEDAID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ListColumns = <>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 6
            Width = 145
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit [5]
            Left = 107
            Top = 289
            DataBinding.DataField = 'PRECIO'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Width = 145
          end
          object cxDBDateEdit1: TcxDBDateEdit [6]
            Left = 107
            Top = 235
            DataBinding.DataField = 'HASTA'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 5
            Width = 145
          end
          object cxDBDateEdit2: TcxDBDateEdit [7]
            Left = 107
            Top = 208
            DataBinding.DataField = 'DESDE'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 4
            Width = 145
          end
          object CbActivo: TcxDBCheckBox [8]
            Left = 107
            Top = 370
            DataBinding.DataField = 'ACTIVO'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 145
          end
          object edcobertura: TcxDBCurrencyEdit [9]
            Left = 107
            Top = 316
            DataBinding.DataField = 'COBERTURAVALOR'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 145
          end
          object edcoberturaporc: TcxDBCheckBox [10]
            Left = 107
            Top = 343
            DataBinding.DataField = 'COBERTURAEXPPORC'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 9
            Width = 145
          end
          object CbCosto: TcxDBCheckBox [11]
            Left = 107
            Top = 397
            DataBinding.DataField = 'COSTO'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup2: TdxLayoutGroup
              Caption = 'Relaci'#243'n Prueba'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo Prueba'
                Control = cxDBImageComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcRelacionPrueba: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ralaci'#243'n Prueba'
                Control = elcRelacionPrueba
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup3: TdxLayoutGroup
              Caption = 'Relaci'#243'n Cliente'
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo Cliente'
                Control = cxDBImageComboBox2
                ControlOptions.ShowBorder = False
              end
              object lcRelacionCliente: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Relaci'#243'n Cliente'
                Control = elcRelacionCliente
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup4: TdxLayoutGroup
              Caption = 'Configurar'
              object lcDatosItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Desde'
                Control = cxDBDateEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Hasta'
                Control = cxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Moneda'
                Control = cxDBLookupComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Precio'
                Control = cxDBCurrencyEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Cobertura'
                Control = edcobertura
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Cobertura en %'
                Control = edcoberturaporc
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem9: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Activo'
                Control = CbActivo
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Costo'
                Control = CbCosto
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 663
    ExplicitWidth = 663
  end
  inherited dsDatos: TDataSource
    DataSet = qrAcuerdoPrecios
    Left = 214
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38925.673943865740000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38925.673944768520000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Left = 524
  end
  inherited alEdit: TActionList
    Top = 152
  end
  inherited qrDefaultView: TADOQuery
    Left = 462
  end
  inherited strView: TJvStrHolder
    Top = 156
  end
  object qrAcuerdoPrecios: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrAcuerdoPreciosBeforePost
    AfterScroll = qrAcuerdoPreciosAfterScroll
    OnNewRecord = qrAcuerdoPreciosNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTAcuerdoComercial'
      'Where Relacion = '#39'P'#39)
    Left = 159
    Top = 3
    object qrAcuerdoPreciosPRECIO: TBCDField
      FieldName = 'PRECIO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrAcuerdoPreciosADICIONAL: TBCDField
      FieldName = 'ADICIONAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrAcuerdoPreciosPCTDESCUENTO: TBCDField
      FieldName = 'PCTDESCUENTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrAcuerdoPreciosDESDE: TDateTimeField
      FieldName = 'DESDE'
    end
    object qrAcuerdoPreciosHASTA: TDateTimeField
      FieldName = 'HASTA'
    end
    object qrAcuerdoPreciosMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrAcuerdoPreciosPRUEBARELATION: TStringField
      FieldName = 'PRUEBARELATION'
    end
    object qrAcuerdoPreciosCLIENTERELATION: TStringField
      FieldName = 'CLIENTERELATION'
    end
    object qrAcuerdoPreciosRELACION: TStringField
      FieldName = 'RELACION'
      Size = 1
    end
    object qrAcuerdoPreciosCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      OnValidate = qrAcuerdoPreciosCoberturaValorValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrAcuerdoPreciosACTIVO: TIntegerField
      FieldName = 'ACTIVO'
    end
    object qrAcuerdoPreciosCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
      OnValidate = qrAcuerdoPreciosCoberturaExpPorcValidate
    end
    object qrAcuerdoPreciosGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrAcuerdoPreciosGASTOVARIOID: TStringField
      FieldName = 'GASTOVARIOID'
      Size = 10
    end
    object qrAcuerdoPreciosCOSTO: TIntegerField
      FieldName = 'COSTO'
    end
    object qrAcuerdoPreciosPRUEBACODE: TIntegerField
      FieldName = 'PRUEBACODE'
      OnChange = qrAcuerdoPreciosPruebaCodeChange
    end
    object qrAcuerdoPreciosCLIENTECODE: TIntegerField
      FieldName = 'CLIENTECODE'
      OnChange = qrAcuerdoPreciosClienteCodeChange
    end
    object qrAcuerdoPreciosDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrAcuerdoPreciosRECID: TLargeintField
      FieldName = 'RECID'
    end
    object qrAcuerdoPreciosREFRECID: TLargeintField
      FieldName = 'REFRECID'
    end
  end
end
