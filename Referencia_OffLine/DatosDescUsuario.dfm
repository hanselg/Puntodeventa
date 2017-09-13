inherited frmDatosDescUsuario: TfrmDatosDescUsuario
  Caption = 'Descuentos Usuarios'
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
              DataController.KeyFieldNames = 'SucursalID'
              object tvDatosSucursalID: TcxGridDBColumn
                Caption = 'Sucursal'
                DataBinding.FieldName = 'SucursalID'
              end
              object tvDatosDescuento: TcxGridDBColumn
                Caption = 'Descuento %'
                DataBinding.FieldName = 'Descuento'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
            Left = 91
            Top = 36
            DataBinding.DataField = 'SucursalID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.KeyFieldNames = 'SucursalID'
            Properties.ListColumns = <
              item
                Caption = 'Sucursal'
                FieldName = 'SucursalID'
              end
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = DM.dsSucursal
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 145
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit [1]
            Left = 91
            Top = 63
            DataBinding.DataField = 'Descuento'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Sucursal'
                Control = cxDBLookupComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Descuento %'
                Control = cxDBCurrencyEdit1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrUsuarioDescuento
    Left = 196
    Top = 2
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38937.649650057880000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38937.649650057880000000
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
    Left = 408
    Top = 2
  end
  object qrUsuarioDescuento: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnNewRecord = qrUsuarioDescuentoNewRecord
    Parameters = <
      item
        Name = 'use'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      '  from PTUsuarioDescuento'
      'where UserId = :use')
    Left = 144
    Top = 3
    object qrUsuarioDescuentoSucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
    object qrUsuarioDescuentoUserId: TStringField
      FieldName = 'UserId'
      Size = 10
    end
    object qrUsuarioDescuentoDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '##0.00'
      Precision = 19
    end
    object qrUsuarioDescuentoRecId: TLargeintField
      FieldName = 'RecId'
    end
  end
end
