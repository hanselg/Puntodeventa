inherited frmDatosTarjetasCliente: TfrmDatosTarjetasCliente
  Caption = 'Registrar las Tarjetas de Descuentos'
  ClientHeight = 288
  ClientWidth = 495
  OnClose = nil
  OnCloseQuery = nil
  OnDestroy = nil
  OnKeyUp = nil
  OnPaint = nil
  ExplicitWidth = 503
  ExplicitHeight = 322
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 495
    Height = 255
    ExplicitWidth = 495
    ExplicitHeight = 255
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 340
      ClientRectRight = 586
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'TarjetaID'
              object tvDatosClienteId: TcxGridDBColumn
                Caption = 'Cliente'
                DataBinding.FieldName = 'ClienteId'
              end
              object tvDatosTarjetaID: TcxGridDBColumn
                Caption = 'Tarjeta'
                DataBinding.FieldName = 'TarjetaID'
              end
              object tvDatosTarjetaNumero: TcxGridDBColumn
                Caption = 'Numero'
                DataBinding.FieldName = 'TarjetaNumero'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          object EdCliente: TcxDBTextEdit [0]
            Left = 101
            Top = 36
            DataBinding.DataField = 'ClienteId'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 150
          end
          object EdTarjetaNumero: TcxDBTextEdit [1]
            Left = 101
            Top = 90
            DataBinding.DataField = 'TarjetaNumero'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 300
          end
          object EdTarjeta: TcxDBExtLookupComboBox [2]
            Left = 101
            Top = 63
            RepositoryItem = DM.elcTarjetaDescuento
            DataBinding.DataField = 'TarjetaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 150
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              AutoAligns = [aaVertical]
              Caption = 'General'
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Cliente Id'
                Control = EdCliente
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tarjeta Id'
                Control = EdTarjeta
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tarjeta Numero'
                Control = EdTarjetaNumero
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 495
    ExplicitWidth = 495
  end
  inherited dsDatos: TDataSource
    DataSet = qrTarjetaCliente
    Left = 209
    Top = 2
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 144
    Top = 48
  end
  inherited qryHelper: TADOQuery
    Left = 380
  end
  inherited alEdit: TActionList
    Left = 300
    Top = 88
  end
  inherited pmCustom: TPopupMenu
    Left = 376
    Top = 92
  end
  inherited qrDefaultView: TADOQuery
    Left = 424
  end
  inherited strView: TJvStrHolder
    Left = 420
    Top = 92
  end
  inherited strTableNames: TJvStrHolder
    Left = 208
    Top = 252
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 344
    Top = 252
  end
  inherited qrUserFields: TABSQuery
    Top = 252
  end
  inherited qrVistas: TABSQuery
    Left = 284
    Top = 128
  end
  object qrTarjetaCliente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrTarjetaClienteBeforePost
    AfterPost = qrTarjetaClienteAfterPost
    OnNewRecord = qrTarjetaClienteNewRecord
    Parameters = <
      item
        Name = 'clt'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = ''
      end>
    SQL.Strings = (
      'Select *  From PTTarjetaCliente'
      'Where ClienteId = :clt')
    Left = 96
    object qrTarjetaClienteClienteId: TStringField
      FieldName = 'ClienteId'
      Size = 10
    end
    object qrTarjetaClienteTarjetaID: TStringField
      FieldName = 'TarjetaID'
      Size = 10
    end
    object qrTarjetaClienteTarjetaNumero: TStringField
      FieldName = 'TarjetaNumero'
      Size = 25
    end
    object qrTarjetaClientePuntosTotal: TIntegerField
      FieldName = 'PuntosTotal'
    end
    object qrTarjetaClientePuntosUsados: TIntegerField
      FieldName = 'PuntosUsados'
    end
    object qrTarjetaClienteFechaLimite: TDateTimeField
      FieldName = 'FechaLimite'
    end
  end
end
