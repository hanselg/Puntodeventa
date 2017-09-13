inherited frmDatosFormaPago: TfrmDatosFormaPago
  Caption = 'Forma de Pago'
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
              DataController.KeyFieldNames = 'FormaDePagoID'
              object tvDatosFormaDePagoID: TcxGridDBColumn
                Caption = 'Forma Pago'
                DataBinding.FieldName = 'FormaDePagoID'
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 85
            Top = 36
            DataBinding.DataField = 'FormaDePagoID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 85
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBSpinEdit1: TcxDBSpinEdit [2]
            Left = 85
            Top = 90
            DataBinding.DataField = 'Orden'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 2
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Forma Pago'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Orden'
                Control = cxDBSpinEdit1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrFormaDePago
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.351883680550000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.351883854160000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Left = 449
    Top = 2
  end
  inherited qrDefaultView: TADOQuery
    Left = 388
    Top = 2
  end
  object qrFormaDePago: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTFormaDePago'
      'WHERE DataAreaId = '#39'ldr'#39)
    Left = 133
    Top = 2
    object qrFormaDePagoFormaDePagoID: TStringField
      FieldName = 'FormaDePagoID'
      Required = True
      Size = 10
    end
    object qrFormaDePagoOrden: TIntegerField
      FieldName = 'Orden'
    end
    object qrFormaDePagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object qrFormaDePagoRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
end
