inherited frmDatosDoctor: TfrmDatosDoctor
  Caption = 'Doctores'
  ClientHeight = 554
  ClientWidth = 835
  ExplicitWidth = 851
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 835
    Height = 521
    ExplicitWidth = 835
    ExplicitHeight = 521
    inherited pcDatos: TcxPageControl
      ActivePage = tsMain
      ClientRectBottom = 340
      ClientRectRight = 586
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            Width = 687
            Height = 413
            ExplicitWidth = 687
            ExplicitHeight = 413
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'DoctorID'
              object tvDatosDoctorID: TcxGridDBColumn
                DataBinding.FieldName = 'DoctorID'
              end
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
              end
              object tvDatosTelefono: TcxGridDBColumn
                DataBinding.FieldName = 'Telefono'
              end
              object tvDatosCodigoAxapta: TcxGridDBColumn
                Caption = 'Codigo Axapta'
                DataBinding.FieldName = 'CodigoAxapta'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          object eddoctor: TcxDBTextEdit [0]
            Tag = 99
            Left = 131
            Top = 36
            DataBinding.DataField = 'DoctorID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 131
            Top = 63
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 300
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 131
            Top = 392
            DataBinding.DataField = 'Contacto'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 129
          end
          object cxDBTextEdit4: TcxDBTextEdit [3]
            Left = 131
            Top = 419
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 129
          end
          object cxDBTextEdit5: TcxDBTextEdit [4]
            Left = 303
            Top = 419
            DataBinding.DataField = 'Fax'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 129
          end
          object cxDBTextEdit6: TcxDBTextEdit [5]
            Left = 131
            Top = 446
            DataBinding.DataField = 'Email'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Width = 300
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit [6]
            Left = 131
            Top = 171
            DataBinding.DataField = 'Comision'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object cxDBTextEdit7: TcxDBTextEdit [7]
            Left = 131
            Top = 144
            DataBinding.DataField = 'CODIGOWEB'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          object cxDBImageComboBox1: TcxDBImageComboBox [8]
            Left = 131
            Top = 117
            RepositoryItem = DM.icFormaEntregaPruebas
            DataBinding.DataField = 'ResultadoDoctor'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 121
          end
          object cxDBMemo1: TcxDBMemo [9]
            Left = 131
            Top = 257
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Height = 48
            Width = 300
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [10]
            Left = 131
            Top = 365
            RepositoryItem = DM.elcCiudad
            DataBinding.DataField = 'CIUDADID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 9
            Width = 300
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox [11]
            Left = 131
            Top = 198
            RepositoryItem = DM.elcEspecialidad
            DataBinding.DataField = 'EspecialidadID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 6
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox [12]
            Left = 131
            Top = 90
            DataBinding.DataField = 'PublicarInternet'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 0
            Properties.ValueUnchecked = 1
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 551
          end
          object cxDBMemo2: TcxDBMemo [13]
            Left = 131
            Top = 311
            DataBinding.DataField = 'DireccionConsulta1'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Height = 48
            Width = 300
          end
          object cxDBTextEdit1: TcxDBTextEdit [14]
            Left = 303
            Top = 392
            DataBinding.DataField = 'Celular'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 129
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Doctor'
                Control = eddoctor
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Nombre'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem13: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Publicar en Internet'
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem9: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Entrega de Resultado'
                Control = cxDBImageComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Codigo Internet'
                Control = cxDBTextEdit7
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Comisi'#243'n'
                Control = cxDBCurrencyEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Especialidad'
                Control = cxDBExtLookupComboBox2
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Contacto'
              object lcDatosItem11: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Direcci'#243'n'
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem14: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Direcci'#243'n 2'
                Control = cxDBMemo2
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcDatosItem12: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Ciudad'
                  Control = cxDBExtLookupComboBox1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosGroup5: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosItem3: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Contacto'
                    Control = cxDBTextEdit3
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem15: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Celular'
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = cxDBTextEdit1
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object lcDatosGroup3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Telefono'
                  Control = cxDBTextEdit4
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Fax'
                  Control = cxDBTextEdit5
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Email'
                Control = cxDBTextEdit6
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object BtCrearInternet: TcxButton [1]
      Left = 723
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Crear Internet'
      TabOrder = 1
      OnClick = BtCrearInternetClick
    end
    object BtLookInternet: TcxButton [2]
      Left = 723
      Top = 38
      Width = 100
      Height = 25
      Caption = 'Consultar Internet'
      TabOrder = 2
      OnClick = BtLookInternetClick
      LookAndFeel.Kind = lfUltraFlat
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtCrearInternet
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = BtLookInternet
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 835
    ExplicitWidth = 835
  end
  inherited formStorage: TJvFormStorage
    Left = 600
    Top = 142
  end
  inherited dsDatos: TDataSource
    DataSet = qrDoctor
    Left = 201
    Top = 2
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 500
    Top = 108
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.435714699070000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.435714699070000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 480
    Top = 240
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 496
    Top = 188
  end
  inherited SaveDialog: TSaveDialog
    Left = 545
    Top = 232
  end
  inherited qryHelper: TADOQuery
    Left = 516
    Top = 2
  end
  inherited alEdit: TActionList
    Left = 468
    Top = 144
  end
  inherited pmCustom: TPopupMenu
    Left = 640
    Top = 180
  end
  inherited qrDefaultView: TADOQuery
    Left = 584
    Top = 2
  end
  inherited strView: TJvStrHolder
    Left = 532
    Top = 148
  end
  inherited strTableNames: TJvStrHolder
    Left = 624
    Top = 236
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 592
    Top = 92
  end
  inherited qrUserFields: TABSQuery
    Left = 576
    Top = 196
  end
  inherited qrVistas: TABSQuery
    Left = 556
    Top = 96
  end
  object qrDoctor: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrDoctorBeforePost
    OnNewRecord = qrDoctorNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTDoctor'
      'WHERE DataAreaId = '#39'ldr'#39)
    Left = 149
    Top = 2
    object qrDoctorDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrDoctorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrDoctorCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrDoctorTELEFONO: TStringField
      FieldName = 'TELEFONO'
      EditMask = '(000)-000-0000;1;_'
    end
    object qrDoctorFAX: TStringField
      FieldName = 'FAX'
      EditMask = '(000)-000-0000;1;_'
    end
    object qrDoctorCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrDoctorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrDoctorCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '(000)-000-0000;1;_'
    end
    object qrDoctorCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrDoctorRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrDoctorESPECIALIDADID: TStringField
      FieldName = 'ESPECIALIDADID'
      Size = 10
    end
    object qrDoctorPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrDoctorCODIGORESULTADO: TStringField
      FieldName = 'CODIGORESULTADO'
      Size = 10
    end
    object qrDoctorUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrDoctorCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrDoctorCOMISION: TBCDField
      FieldName = 'COMISION'
      Precision = 28
      Size = 12
    end
    object qrDoctorESPECIALIDAD: TStringField
      FieldName = 'ESPECIALIDAD'
      Size = 80
    end
    object qrDoctorCODIGOWEB: TStringField
      FieldName = 'CODIGOWEB'
      Size = 10
    end
    object qrDoctorDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrDoctorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrDoctorDIRECCIONCONSULTA2: TStringField
      FieldName = 'DIRECCIONCONSULTA2'
      Size = 255
    end
    object qrDoctorDIRECCIONCONSULTA1: TStringField
      FieldName = 'DIRECCIONCONSULTA1'
      Size = 255
    end
    object qrDoctorRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
end
