inherited frmDatosGastosVarios: TfrmDatosGastosVarios
  Caption = 'Gastos Varios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'GastoVarioId'
              object tvDatosGastoVarioId: TcxGridDBColumn
                Caption = 'Gasto Id'
                DataBinding.FieldName = 'GastoVarioId'
                Width = 100
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Width = 300
              end
              object tvDatosValor: TcxGridDBColumn
                DataBinding.FieldName = 'Valor'
                Width = 100
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object EdGastoId: TcxDBTextEdit [0]
            Left = 95
            Top = 36
            DataBinding.DataField = 'GastoVarioId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 125
          end
          object EdDescripcion: TcxDBTextEdit [1]
            Left = 95
            Top = 90
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 400
          end
          object EdValor: TcxDBCurrencyEdit [2]
            Left = 95
            Top = 63
            DataBinding.DataField = 'Valor'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 125
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Gasto Vario Id'
                Control = EdGastoId
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Valor'
                Control = EdValor
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Descripci'#243'n'
                Control = EdDescripcion
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrGastosVarios
    Left = 188
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38932.673759942130000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38932.673759942130000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Top = 2
  end
  inherited qrDefaultView: TADOQuery
    Left = 392
    Top = 2
  end
  inherited qrVistas: TABSQuery
    Left = 348
    Top = 72
  end
  object qrGastosVarios: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTGastosVario')
    Left = 134
    Top = 3
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
end
