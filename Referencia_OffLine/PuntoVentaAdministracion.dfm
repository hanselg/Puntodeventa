inherited frmPuntoVentaAdministracion: TfrmPuntoVentaAdministracion
  ActiveControl = cxPageControlCabecera
  Caption = 'Punto de Venta'
  ClientHeight = 625
  ClientWidth = 1028
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 1036
  ExplicitHeight = 659
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 1028
    Height = 0
    Visible = False
    ExplicitWidth = 1028
    ExplicitHeight = 0
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 1028
    Height = 578
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cxPageControlCabecera: TcxPageControl
      Left = 11
      Top = 11
      Width = 972
      Height = 263
      ActivePage = TabGeneral
      HideTabs = True
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      ClientRectBottom = 263
      ClientRectRight = 972
      ClientRectTop = 0
      object TabGeneral: TcxTabSheet
        Caption = 'General'
        ImageIndex = 0
        object lcGeneral: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 972
          Height = 263
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          object cxDBTextEdit1: TcxDBTextEdit
            Tag = 99
            Left = 102
            Top = 18
            DataBinding.DataField = 'ENTRADAID'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 90
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Tag = 99
            Left = 750
            Top = 18
            DataBinding.DataField = 'MuestraNo'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 90
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Tag = 99
            Left = 346
            Top = 63
            DataBinding.DataField = 'PacienteID'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 13
            Width = 60
          end
          object CxDbPaciente: TcxDBTextEdit
            Tag = 99
            Left = 412
            Top = 63
            DataBinding.DataField = 'NombrePaciente'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 14
            Width = 115
          end
          object cxDBMemo2: TcxDBMemo
            Tag = 99
            Left = 346
            Top = 90
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 15
            Height = 51
            Width = 180
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Tag = 99
            Left = 346
            Top = 147
            DataBinding.DataField = 'Telefonos'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 16
            Width = 87
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Tag = 99
            Left = 439
            Top = 147
            DataBinding.DataField = 'Fax'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 17
            Width = 87
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Tag = 99
            Left = 346
            Top = 174
            DataBinding.DataField = 'Email'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 18
            Width = 180
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Tag = 99
            Left = 102
            Top = 90
            DataBinding.DataField = 'ClienteID'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 85
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Tag = 99
            Left = 102
            Top = 117
            DataBinding.DataField = 'ClienteNombre'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 121
          end
          object EdCoberturaValor: TcxDBCurrencyEdit
            Left = 869
            Top = 63
            DataBinding.DataField = 'CoberturaPorc'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.DisplayFormat = '0.00;-0.00'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 30
            OnExit = EdCoberturaValorExit
            Width = 65
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 869
            Top = 117
            DataBinding.DataField = 'CoberturaConfirmada'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 32
            Width = 65
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 869
            Top = 144
            DataBinding.DataField = 'AprobacionNo'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 33
            Width = 65
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 869
            Top = 171
            DataBinding.DataField = 'AprobadoPor'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 34
            Width = 65
          end
          object cxDBImageComboBox2: TcxDBImageComboBox
            Left = 258
            Top = 18
            DataBinding.DataField = 'TipoDocumento'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'Factura'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Cotizacion'
                Value = 1
              end
              item
                Description = 'Devolucion'
                Value = 2
              end
              item
                Description = 'Exterior'
                Value = 3
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 90
          end
          object EdDoctor: TcxDBExtLookupComboBox
            Left = 655
            Top = 63
            RepositoryItem = DM.elcDoctores
            DataBinding.DataField = 'DoctorID'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.OnChange = EdDoctorPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 23
            OnEnter = EdDoctorPropertiesChange
            OnExit = EdDoctorPropertiesChange
            Width = 85
          end
          object cxDBDateEdit3: TcxDBDateEdit
            Left = 655
            Top = 171
            DataBinding.DataField = 'FechaPrometida'
            DataBinding.DataSource = dsEntradaPaciente
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 27
            Width = 85
          end
          object cxDBTimeEdit3: TcxDBTimeEdit
            Left = 655
            Top = 198
            DataBinding.DataField = 'HoraPrometida'
            DataBinding.DataSource = dsEntradaPaciente
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 28
            Width = 85
          end
          object cxDBImageComboBox7: TcxDBImageComboBox
            Left = 655
            Top = 117
            RepositoryItem = DM.icFormaEntregaPruebas
            DataBinding.DataField = 'ResultadoDoctor'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'Personal'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Fax'
                Value = 1
              end
              item
                Description = 'Email'
                Value = 2
              end
              item
                Description = 'Ninguno'
                Value = 3
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 25
            Width = 85
          end
          object cxDBImageComboBox8: TcxDBImageComboBox
            Left = 346
            Top = 201
            RepositoryItem = DM.icFormaEntregaPruebas
            DataBinding.DataField = 'ResultadoPaciente'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 19
            Width = 93
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox
            Left = 655
            Top = 144
            RepositoryItem = DM.elcFlebotomista
            DataBinding.DataField = 'FlebotomistaID'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 26
            Width = 85
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 102
            Top = 144
            DataBinding.DataField = 'FechaEntrada'
            DataBinding.DataSource = dsEntradaPaciente
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 9
            Width = 85
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 102
            Top = 225
            DataBinding.DataField = 'MonedaID'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 85
          end
          object edcobexpporc: TcxDBCheckBox
            Left = 869
            Top = 90
            DataBinding.DataField = 'CoberturaExpPorc'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 31
            OnExit = EdCoberturaValorExit
            Width = 65
          end
          object cxDBCurrencyEdit9: TcxDBCurrencyEdit
            Left = 475
            Top = 201
            DataBinding.DataField = 'EdadPaciente'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.AssignedValues.DisplayFormat = True
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 20
            Width = 50
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 655
            Top = 90
            DataBinding.DataField = 'NombreDoctor'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 24
            Width = 105
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 508
            Top = 228
            DataBinding.DataField = 'PUBLICARINTERNET'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 22
            Width = 20
          end
          object edtipocliente: TcxDBExtLookupComboBox
            Left = 102
            Top = 63
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'Origen'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 6
            Width = 121
          end
          object cxDBCheckBox3: TcxDBCheckBox
            Left = 655
            Top = 225
            DataBinding.DataField = 'PublicarInternetDoctor'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 29
            Width = 85
          end
          object cxDBTextEdit16: TcxDBTextEdit
            Left = 346
            Top = 228
            DataBinding.DataField = 'PolizaID'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 21
            Width = 75
          end
          object LbHold: TcxLabel
            Left = 846
            Top = 18
            Caption = 'Hold.'
            ParentColor = False
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.LabelEffect = cxleCool
            Properties.LabelStyle = cxlsRaised
            Properties.ShadowedColor = clNavy
            Style.Color = 16311249
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
          end
          object cxDBImageComboBox1: TcxDBImageComboBox
            Left = 435
            Top = 18
            DataBinding.DataField = 'TipoEntrada'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Images = frmMain.ilNavBarSmall
            Properties.Items = <
              item
                Description = 'Normal'
                ImageIndex = 46
                Value = 'N'
              end
              item
                Description = 'Domicilio'
                ImageIndex = 47
                Value = 'D'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Width = 90
          end
          object cxDBImageComboBox3: TcxDBImageComboBox
            Left = 608
            Top = 18
            DataBinding.DataField = 'FormadePago'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Images = frmMain.ilNavBarSmall
            Properties.Items = <
              item
                Description = 'Contado'
                ImageIndex = 14
                Value = 'Contado'
              end
              item
                Description = 'Contra Entrega'
                ImageIndex = 27
                Value = 'Contra Entrega'
              end
              item
                Description = 'Credito'
                ImageIndex = 15
                Value = 'Credito'
              end>
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 90
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 102
            Top = 171
            DataBinding.DataField = 'FechadeAlta'
            DataBinding.DataSource = dsEntradaPaciente
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 10
            Width = 85
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 102
            Top = 198
            DataBinding.DataField = 'NumeroHabitacion'
            DataBinding.DataSource = dsEntradaPaciente
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 85
          end
          object lcGeneralGroup_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object lcGeneralGroup1: TdxLayoutGroup
              AutoAligns = [aaVertical]
              Caption = 'Identificacion'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              object lcGeneralItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Registro No.'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcGeneralItem21: TdxLayoutItem
                Caption = 'Documento'
                Control = cxDBImageComboBox2
                ControlOptions.ShowBorder = False
              end
              object lcGeneralItem2: TdxLayoutItem
                Caption = 'Tipo de Entrada'
                Control = cxDBImageComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcGeneralItem3: TdxLayoutItem
                Caption = 'Forma de Pago'
                Control = cxDBImageComboBox3
                ControlOptions.ShowBorder = False
              end
              object lcGeneralItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Lab. No.'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcGeneralItem38: TdxLayoutItem
                Caption = 'cxLabel1'
                ShowCaption = False
                Control = LbHold
                ControlOptions.ShowBorder = False
              end
            end
            object lcGeneralGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcGeneralGroup3: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'Cliente'
                ShowCaption = False
                object lcGeneralItem14: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tipo de Cliente'
                  Control = edtipocliente
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralGroup10: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object lcGeneralItem11: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Cliente'
                    Control = cxDBTextEdit8
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem12: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Nombre '
                    Control = cxDBTextEdit9
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcGeneralItem31: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Fecha Ingreso'
                  Control = cxDBDateEdit2
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem22: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Fecha de Alta'
                  Control = cxDBDateEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem13: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Habitacion No.:'
                  Control = cxDBTextEdit13
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem23: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Moneda'
                  Control = cxDBTextEdit14
                  ControlOptions.ShowBorder = False
                end
              end
              object lcGeneralGroup2: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                Caption = 'Paciente'
                ShowCaption = False
                object lcGeneralGroup9: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcGeneralItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Paciente'
                    Control = cxDBTextEdit3
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem6: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Nombre'
                    ShowCaption = False
                    Control = CxDbPaciente
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcGeneralItem7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Direcci'#243'n'
                  Control = cxDBMemo2
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralGroup4: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcGeneralItem8: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Telefono'
                    Control = cxDBTextEdit5
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem9: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Fax'
                    ShowCaption = False
                    Control = cxDBTextEdit6
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcGeneralItem10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Email'
                  Control = cxDBTextEdit7
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralGroup8: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object lcGeneralGroup13: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object lcGeneralItem29: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Entrega Resultado'
                      Control = cxDBImageComboBox8
                      ControlOptions.ShowBorder = False
                    end
                    object lcGeneralItem33: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Edad'
                      Control = cxDBCurrencyEdit9
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object lcGeneralGroup12: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object lcGeneralItem15: TdxLayoutItem
                      Caption = 'Afiliado No.:'
                      Control = cxDBTextEdit16
                      ControlOptions.ShowBorder = False
                    end
                    object lcGeneralItem35: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Pub. en Internet'
                      Control = cxDBCheckBox2
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
              object lcGeneralGroup7: TdxLayoutGroup
                Caption = 'Otros'
                ShowCaption = False
                object lcGeneralItem24: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Doctor'
                  Control = EdDoctor
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem34: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre'
                  Control = cxDBTextEdit15
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem28: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Entrega Resultado'
                  Control = cxDBImageComboBox7
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem30: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Flebotomista'
                  Visible = False
                  Control = cxDBExtLookupComboBox2
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem26: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Fecha Prometida'
                  Visible = False
                  Control = cxDBDateEdit3
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem27: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Hora Prometida'
                  Visible = False
                  Control = cxDBTimeEdit3
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem32: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Publicar en Internet'
                  Control = cxDBCheckBox3
                  ControlOptions.ShowBorder = False
                end
              end
              object lcGeneralGroup6: TdxLayoutGroup
                Caption = 'Cobertura'
                ShowCaption = False
                object lcGeneralItem17: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Cobertura %'
                  Control = EdCoberturaValor
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem16: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Cobertura en %'
                  Visible = False
                  Control = edcobexpporc
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem18: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Confirmada'
                  Control = cxDBCheckBox1
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem19: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'No. Aprobaci'#243'n'
                  Control = cxDBTextEdit11
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem20: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Aprobada Por'
                  Control = cxDBTextEdit12
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object GridPruebas: TcxGrid
      Left = 11
      Top = 280
      Width = 900
      Height = 146
      PopupMenu = MenuGrid
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object GridPruebasEntradasPacienteDet: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsEntradaPacienteDetalle
        DataController.KeyFieldNames = 'Secuencia'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridPruebasEntradasPacienteDetPruebaID: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'PRUEBAID'
          Width = 80
        end
        object GridPruebasEntradasPacienteDetDescripcion: TcxGridDBColumn
          Caption = 'Prueba'
          DataBinding.FieldName = 'DESCRIPCION'
          Options.Editing = False
          Width = 250
        end
        object GridPruebasEntradasPacienteDetCodigoCupID: TcxGridDBColumn
          Caption = 'Codigo ARS'
          DataBinding.FieldName = 'CODIGOCUPID'
          Options.Editing = False
          Width = 80
        end
        object GridPruebasEntradasPacienteDetPrecio: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'PRECIO'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 80
        end
        object GridPruebasEntradasPacienteDetDescuento: TcxGridDBColumn
          Caption = 'Descuento'
          DataBinding.FieldName = 'DESCUENTO'
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          Width = 80
        end
        object GridPruebasEntradasPacienteDetDescPct: TcxGridDBColumn
          Caption = '% Descuento'
          DataBinding.FieldName = 'DESCPCT'
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          Width = 80
        end
        object GridPruebasEntradasPacienteDetCOBERTURAAPLICADA: TcxGridDBColumn
          Caption = 'Cobertura'
          DataBinding.FieldName = 'COBERTURAAPLICADA'
          Visible = False
          Width = 80
        end
        object GridPruebasEntradasPacienteDetCoberturaEspecial: TcxGridDBColumn
          Caption = 'Cobertura Esp.'
          DataBinding.FieldName = 'COBERTURAESPECIAL'
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 80
        end
        object GridPruebasEntradasPacienteDetCoberturaExpPorc: TcxGridDBColumn
          Caption = 'Cobertura en %'
          DataBinding.FieldName = 'COBERTURAEXPPORC'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 40
        end
        object GridPruebasEntradasPacienteDetTotalLinea: TcxGridDBColumn
          Caption = 'Total Linea'
          DataBinding.FieldName = 'TOTALLINEA'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 90
        end
        object GridPruebasEntradasPacienteDetMuestraNo: TcxGridDBColumn
          Caption = 'Laboratorio No.'
          DataBinding.FieldName = 'MUESTRANO'
          Visible = False
          Options.Editing = False
          Width = 80
        end
        object GridPruebasEntradasPacienteDetComentario: TcxGridDBColumn
          Caption = 'Comentario'
          DataBinding.FieldName = 'COMENTARIO'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Properties.MemoCharCase = ecUpperCase
          Properties.MemoMaxLength = 200
          Properties.MemoWantTabs = False
          Width = 65
        end
        object GridPruebasEntradasPacienteDetCoberturaAplica: TcxGridDBColumn
          Caption = 'Aplica Cobertura'
          DataBinding.FieldName = 'COBERTURAAPLICA'
          Options.Editing = False
          Width = 25
        end
      end
      object GridPruebasLevel1: TcxGridLevel
        GridView = GridPruebasEntradasPacienteDet
      end
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 457
      DataBinding.DataField = 'GastosVarios'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Tag = 99
      Left = 650
      Top = 484
      DataBinding.DataField = 'CoberturaSeguro'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 511
      DataBinding.DataField = 'TotalPagado'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 121
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 538
      DataBinding.DataField = 'TotalPendiente'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 121
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 484
      DataBinding.DataField = 'Neto'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 121
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit
      Tag = 99
      Left = 650
      Top = 457
      DataBinding.DataField = 'Bruto'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 121
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit
      Tag = 99
      Left = 650
      Top = 538
      DataBinding.DataField = 'Descuento'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo
      Left = 23
      Top = 457
      DataBinding.DataField = 'Nota'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 200
      Properties.WantReturns = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Height = 89
      Width = 300
    end
    object cxDBCurrencyEdit10: TcxDBCurrencyEdit
      Left = 650
      Top = 511
      DataBinding.DataField = 'DescuentoPorc'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.DisplayFormat = '0.00;(0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit
      Left = 411
      Top = 457
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 120
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 411
      Top = 484
      DataBinding.DataField = 'HoraEntrada'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 411
      Top = 511
      DataBinding.DataField = 'UserID'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 411
      Top = 538
      DataBinding.DataField = 'Tasa'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        Caption = 'cxPageControl1'
        ShowCaption = False
        Control = cxPageControlCabecera
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        Caption = 'cxGrid1'
        ShowCaption = False
        Control = GridPruebas
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group8: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Group2: TdxLayoutGroup
          AutoAligns = [aaVertical]
          Caption = 'Comentario'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Item10: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'cxDBMemo1'
            ShowCaption = False
            Control = cxDBMemo1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group5: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item12: TdxLayoutItem
              Caption = 'Fecha'
              Control = cxDBDateEdit4
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item13: TdxLayoutItem
              Caption = 'Hora'
              Control = cxDBTimeEdit2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item14: TdxLayoutItem
              Caption = 'Usuario'
              Control = cxDBTextEdit4
              ControlOptions.ShowBorder = False
            end
            object lcGeneralItem37: TdxLayoutItem
              Caption = 'Tasa de Cambio'
              Control = cxDBTextEdit10
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          AutoAligns = [aaVertical]
          Caption = 'Totales'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Group3: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item8: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'SubTotal'
              Control = cxDBCurrencyEdit6
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item4: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Cobertura Seguro'
              Control = cxDBCurrencyEdit2
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item11: TdxLayoutItem
              Caption = 'Descuento %'
              Control = cxDBCurrencyEdit10
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item9: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Descuento'
              Control = cxDBCurrencyEdit7
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group7: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item3: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Gastos Varios'
              Control = cxDBCurrencyEdit1
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Neto a Pagar'
              Control = cxDBCurrencyEdit5
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item5: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Total Pagado'
              Control = cxDBCurrencyEdit3
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item6: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Pendiente'
              Control = cxDBCurrencyEdit4
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  object lgBotones: TdxLayoutControl [3]
    Left = 0
    Top = 578
    Width = 1028
    Height = 47
    Align = alBottom
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object btentrada: TcxButton
      Left = 275
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Buscar Entradas Registradas'
      Caption = 'F5 = Entradas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btentradaClick
    end
    object btpaciente: TcxButton
      Left = 99
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Consulta de Pacientes'
      Caption = 'F3 = Pacientes'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btpacienteClick
    end
    object btprueba: TcxButton
      Left = 187
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Consulta de Pruebas'
      Caption = 'F4 = Pruebas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btpruebaClick
    end
    object btcancelar: TcxButton
      Left = 451
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Cancelar Operaci'#243'n'
      Caption = 'F7 = Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btcancelarClick
    end
    object bteliminar: TcxButton
      Left = 363
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Eliminar Linea'
      Caption = 'F6 = Eliminar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bteliminarClick
    end
    object btcliente: TcxButton
      Left = 11
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Consulta de Clientes'
      Caption = 'F2 = Clientes'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btclienteClick
    end
    object btgrabar: TcxButton
      Left = 539
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Grabar Entrada'
      Caption = 'F8 = Cobrar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btgrabarClick
    end
    object btimprimir: TcxButton
      Left = 627
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Impresiones'
      Caption = 'F9 = Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      DropDownMenu = menuImpresion
      Kind = cxbkDropDown
    end
    object BtFunciones: TcxButton
      Left = 807
      Top = 11
      Width = 86
      Height = 25
      Hint = 'Funciones'
      Caption = 'F11 = Funciones'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      DropDownMenu = MenuFunciones
      Kind = cxbkDropDown
    end
    object btnotacredito: TcxButton
      Left = 715
      Top = 11
      Width = 86
      Height = 25
      Caption = 'F10 = Nota Cred'
      TabOrder = 8
      OnClick = btnotacreditoClick
    end
    object BtHold: TcxButton
      Left = 899
      Top = 11
      Width = 82
      Height = 25
      Hint = 'Documentos en Hold'
      Caption = 'F12 = Hold'
      TabOrder = 10
      OnClick = BtHoldClick
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object lgBotonesItem6: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btcliente
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem2: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btpaciente
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem3: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btprueba
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem1: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btentrada
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem5: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = bteliminar
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem4: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btcancelar
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem7: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btgrabar
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem9: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btimprimir
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem13: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = btnotacredito
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem12: TdxLayoutItem
        AutoAligns = [aaVertical]
        Caption = 'cxButton1'
        ShowCaption = False
        Control = BtFunciones
        ControlOptions.ShowBorder = False
      end
      object lgBotonesItem11: TdxLayoutItem
        AutoAligns = [aaVertical]
        ShowCaption = False
        Control = BtHold
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 312
    Top = 146
  end
  inherited alEdit: TActionList
    Left = 724
    Top = 304
  end
  inherited pmCustom: TPopupMenu
    Left = 796
    Top = 300
  end
  object mdPago: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'Orden'
    Left = 605
    Top = 308
    object mdPagoFormaDePago: TStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object mdPagoOrden: TSmallintField
      FieldName = 'Orden'
    end
    object mdPagoPagado: TCurrencyField
      FieldName = 'Pagado'
      DisplayFormat = '##,###,##0.00'
    end
    object mdPagoFormaPagoID: TStringField
      FieldName = 'FormaDePagoID'
      Size = 15
    end
    object mdPagorefrecid: TLargeintField
      FieldName = 'refrecid'
    end
    object mdPagoMoneda: TStringField
      FieldName = 'Moneda'
      Size = 5
    end
  end
  object dsPago: TDataSource
    DataSet = mdPago
    Left = 657
    Top = 304
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterPost = qrEntradaPacienteAfterPost
    OnCalcFields = qrEntradaPacienteCalcFields
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
    Left = 32
    Top = 312
    object qrEntradaPacienteENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaPacienteHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacientePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      OnChange = qrEntradaPacienteClienteIDChange
      Size = 10
    end
    object qrEntradaPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      OnChange = qrEntradaPacienteDoctorIDChange
      Size = 10
    end
    object qrEntradaPacientePOLIZAID: TStringField
      FieldName = 'POLIZAID'
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
    object qrEntradaPacienteNOTA: TMemoField
      FieldName = 'NOTA'
      BlobType = ftMemo
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
      OnValidate = qrEntradaPacienteCoberturaPorcValidate
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
      OnValidate = qrEntradaPacienteCoberturaValorValidate
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
    object qrEntradaPacienteGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTASA: TBCDField
      FieldName = 'TASA'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      OnValidate = qrEntradaPacienteNombrePacienteValidate
      Size = 80
    end
    object qrEntradaPacienteDIRECCION: TMemoField
      FieldName = 'DIRECCION'
      BlobType = ftMemo
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
      OnChange = qrEntradaPacienteTipoDocumentoChange
    end
    object qrEntradaPacienteORIGEN: TStringField
      FieldName = 'ORIGEN'
      OnChange = qrEntradaPacienteOrigenChange
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
      OnChange = qrEntradaPacienteTipoEntradaChange
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
    object qrEntradaPacienteTotalPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalPendiente'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 104
    Top = 312
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeInsert = qrEntradaPacienteDetalleBeforeInsert
    BeforeEdit = qrEntradaPacienteDetalleBeforeEdit
    BeforePost = qrEntradaPacienteDetalleBeforePost
    AfterPost = qrEntradaPacienteDetalleAfterPost
    BeforeDelete = qrEntradaPacienteDetalleBeforeDelete
    AfterDelete = qrEntradaPacienteDetalleAfterDelete
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
      'Select *  from PTEntradaPacienteDetalle'
      'Where refrecid = :rec')
    Left = 32
    Top = 360
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      DisplayLabel = 'Prueba Id'
      FieldName = 'PRUEBAID'
      OnChange = qrEntradaPacienteDetallePruebaIDChange
      OnValidate = qrEntradaPacienteDetallePruebaIDValidate
    end
    object qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object qrEntradaPacienteDetalleDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
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
    object qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TMemoField
      FieldName = 'COMENTARIOMUESTRA'
      BlobType = ftMemo
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
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      OnChange = qrEntradaPacienteDetalleDescuentoChange
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOMENTARIO: TMemoField
      FieldName = 'COMENTARIO'
      BlobType = ftMemo
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
      OnChange = qrEntradaPacienteDetalleDescuentoChange
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField
      FieldName = 'COBERTURAESPECIAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      DisplayFormat = '###,###,##0.00'
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
    object qrEntradaPacienteDetalleESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 104
    Top = 360
  end
  object ppImpFactura: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'ZZZ'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 131
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 307
    Top = 364
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 49742
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
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
        mmHeight = 5842
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4995
        mmLeft = 2381
        mmTop = 8731
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefono'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4191
        mmLeft = 10054
        mmTop = 14817
        mmWidth = 25135
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fax'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4191
        mmLeft = 45508
        mmTop = 14817
        mmWidth = 28840
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160073
        mmTop = 9525
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 13758
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2381
        mmTop = 14552
        mmWidth = 7281
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 37835
        mmTop = 14552
        mmWidth = 7239
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Impresion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 131234
        mmTop = 9525
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pagina No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 131234
        mmTop = 14023
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PacienteID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 22490
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 43921
        mmTop = 22490
        mmWidth = 78317
        BandType = 0
      end
      object pplbtipodoc: TppLabel
        UserName = 'lbtipodoc'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 130969
        mmTop = 19579
        mmWidth = 46831
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntredaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4868
        mmLeft = 130969
        mmTop = 25929
        mmWidth = 46831
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 22490
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 26988
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 26988
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 43921
        mmTop = 26988
        mmWidth = 78317
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Referencia   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 31750
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PolizaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 31750
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobertura % :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2381
        mmTop = 36777
        mmWidth = 23029
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CoberturaSeguro'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26194
        mmTop = 36777
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha                   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 130704
        mmTop = 32808
        mmWidth = 32639
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 164042
        mmTop = 32808
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha de Entrega :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 130704
        mmTop = 37042
        mmWidth = 32279
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaPrometida'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 164042
        mmTop = 37042
        mmWidth = 31750
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2381
        mmTop = 42598
        mmWidth = 198173
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prueba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 3704
        mmTop = 43656
        mmWidth = 11896
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 23283
        mmTop = 43656
        mmWidth = 20108
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppEntradaPaciente
        DataField = 'CoberturaConfirmada'
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 5556
        mmLeft = 40217
        mmTop = 36777
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Confirmada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 45773
        mmTop = 37042
        mmWidth = 18246
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 126471
        mmTop = 43656
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc. %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 43656
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 167746
        mmTop = 43921
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RNC :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 130969
        mmTop = 1852
        mmWidth = 8731
        BandType = 0
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RNC'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 3969
        mmLeft = 140229
        mmTop = 1852
        mmWidth = 37835
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PruebaID'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descripcion'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 0
        mmWidth = 87048
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Precio'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 4022
        mmLeft = 120386
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descuento'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 529
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalLinea'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 794
        mmWidth = 27781
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 33073
      mmPrintPosition = 0
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SubTotal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 529
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Bruto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 529
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descuento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 5027
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descuento'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 5027
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 9525
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SubTotal'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 9525
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobertura Seg. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 14023
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText22: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CoberturaSeguro'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 14023
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Neto a Pagar :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148432
        mmTop = 18521
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Neto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 18521
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Pagado :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148432
        mmTop = 23019
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPagado'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 179123
        mmTop = 23019
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pendiente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148432
        mmTop = 27517
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPendiente'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 179123
        mmTop = 27517
        mmWidth = 17198
        BandType = 8
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'Nota'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 30427
        mmLeft = 3175
        mmTop = 529
        mmWidth = 107156
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 2117
        mmTop = 0
        mmWidth = 197909
        BandType = 8
      end
    end
  end
  object ppImpCotizacion: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'ZZZ'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 131
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 353
    Top = 364
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 49742
      mmPrintPosition = 0
      object ppDBText26: TppDBText
        UserName = 'DBText1'
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
        mmHeight = 5842
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 8731
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefono'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4191
        mmLeft = 9790
        mmTop = 14552
        mmWidth = 25135
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fax'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4191
        mmLeft = 45244
        mmTop = 14552
        mmWidth = 28840
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160073
        mmTop = 2117
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 6350
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2117
        mmTop = 14552
        mmWidth = 7281
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 37571
        mmTop = 14288
        mmWidth = 7239
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Impresion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 131234
        mmTop = 2117
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pagina No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 131234
        mmTop = 6615
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PacienteID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 22490
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 43921
        mmTop = 22490
        mmWidth = 78317
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'lbtipodoc'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'COTIZACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 130969
        mmTop = 14023
        mmWidth = 46831
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntredaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4868
        mmLeft = 130969
        mmTop = 20373
        mmWidth = 46831
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 22490
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 26988
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 26988
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 43921
        mmTop = 26988
        mmWidth = 78317
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Referencia   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 31750
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PolizaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 31750
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobertura % :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2381
        mmTop = 36777
        mmWidth = 23029
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CoberturaSeguro'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26194
        mmTop = 36777
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha                   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 130704
        mmTop = 32279
        mmWidth = 32639
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 164042
        mmTop = 32279
        mmWidth = 31750
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2381
        mmTop = 42598
        mmWidth = 198173
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prueba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 3704
        mmTop = 43656
        mmWidth = 11896
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 23283
        mmTop = 43656
        mmWidth = 20108
        BandType = 0
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppEntradaPaciente
        DataField = 'CoberturaConfirmada'
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 5556
        mmLeft = 40217
        mmTop = 36777
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Confirmada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 45773
        mmTop = 37042
        mmWidth = 18246
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 126471
        mmTop = 43656
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc. %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 43656
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 167746
        mmTop = 43921
        mmWidth = 28310
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText39: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PruebaID'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descripcion'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 0
        mmWidth = 87048
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Precio'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 4022
        mmLeft = 120386
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descuento'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 529
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalLinea'
        DataPipeline = ppEntradaPacienteDetalle
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 794
        mmWidth = 27781
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppLabel41: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SubTotal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 529
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText44: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Bruto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 529
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel42: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descuento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 5027
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText45: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descuento'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 5027
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel43: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148167
        mmTop = 9525
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText46: TppDBText
        UserName = 'DBText201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SubTotal'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 9525
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel44: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobertura Seg. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 14023
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText47: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CoberturaSeguro'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 14023
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel45: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Neto a Pagar :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 148432
        mmTop = 18521
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText48: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Neto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 178859
        mmTop = 18521
        mmWidth = 17198
        BandType = 8
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'Nota'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 21696
        mmLeft = 3175
        mmTop = 529
        mmWidth = 107156
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 2117
        mmTop = 0
        mmWidth = 197909
        BandType = 8
      end
    end
  end
  object ppEntradaPaciente: TppDBPipeline
    DataSource = dsEntradaPaciente
    UserName = 'EntradaPaciente'
    Left = 160
    Top = 312
    object ppEntradaPacienteppField1: TppField
      FieldAlias = 'EntredaID'
      FieldName = 'EntredaID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteppField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object ppEntradaPacienteppField3: TppField
      FieldAlias = 'PacienteID'
      FieldName = 'PacienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppEntradaPacienteppField4: TppField
      FieldAlias = 'DoctorID'
      FieldName = 'DoctorID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppEntradaPacienteppField5: TppField
      FieldAlias = 'ClienteID'
      FieldName = 'ClienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppEntradaPacienteppField6: TppField
      FieldAlias = 'PolizaID'
      FieldName = 'PolizaID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppEntradaPacienteppField7: TppField
      FieldAlias = 'EnClinica'
      FieldName = 'EnClinica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
    object ppEntradaPacienteppField8: TppField
      FieldAlias = 'RecordClinica'
      FieldName = 'RecordClinica'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppEntradaPacienteppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ResultadoPaciente'
      FieldName = 'ResultadoPaciente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppEntradaPacienteppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ResultadoDoctor'
      FieldName = 'ResultadoDoctor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppEntradaPacienteppField11: TppField
      FieldAlias = 'FechaPrometida'
      FieldName = 'FechaPrometida'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object ppEntradaPacienteppField12: TppField
      FieldAlias = 'HoraPrometida'
      FieldName = 'HoraPrometida'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppEntradaPacienteppField13: TppField
      FieldAlias = 'FlebotomistaID'
      FieldName = 'FlebotomistaID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object ppEntradaPacienteppField14: TppField
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField15: TppField
      FieldAlias = 'CoberturaConfirmada'
      FieldName = 'CoberturaConfirmada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 14
    end
    object ppEntradaPacienteppField16: TppField
      FieldAlias = 'ProyectoID'
      FieldName = 'ProyectoID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object ppEntradaPacienteppField17: TppField
      FieldAlias = 'Recid'
      FieldName = 'Recid'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 16
    end
    object ppEntradaPacienteppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Bruto'
      FieldName = 'Bruto'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 17
    end
    object ppEntradaPacienteppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 18
    end
    object ppEntradaPacienteppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'SubTotal'
      FieldName = 'SubTotal'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 19
    end
    object ppEntradaPacienteppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaSeguro'
      FieldName = 'CoberturaSeguro'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 20
    end
    object ppEntradaPacienteppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Neto'
      FieldName = 'Neto'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 21
    end
    object ppEntradaPacienteppField23: TppField
      FieldAlias = 'NombrePaciente'
      FieldName = 'NombrePaciente'
      FieldLength = 80
      DisplayWidth = 80
      Position = 22
    end
    object ppEntradaPacienteppField24: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteppField25: TppField
      FieldAlias = 'Telefonos'
      FieldName = 'Telefonos'
      FieldLength = 16
      DisplayWidth = 16
      Position = 24
    end
    object ppEntradaPacienteppField26: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object ppEntradaPacienteppField27: TppField
      FieldAlias = 'ClienteNombre'
      FieldName = 'ClienteNombre'
      FieldLength = 80
      DisplayWidth = 80
      Position = 26
    end
    object ppEntradaPacienteppField28: TppField
      FieldAlias = 'SucursalId'
      FieldName = 'SucursalId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 27
    end
    object ppEntradaPacienteppField29: TppField
      FieldAlias = 'UserID'
      FieldName = 'UserID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 28
    end
    object ppEntradaPacienteppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalPendiente'
      FieldName = 'TotalPendiente'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object ppEntradaPacienteppField31: TppField
      FieldAlias = 'CobroID'
      FieldName = 'CobroID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 30
    end
    object ppEntradaPacienteppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalPagado'
      FieldName = 'TotalPagado'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 31
    end
    object ppEntradaPacienteppField33: TppField
      FieldAlias = 'HoraEntrada'
      FieldName = 'HoraEntrada'
      FieldLength = 20
      DisplayWidth = 20
      Position = 32
    end
    object ppEntradaPacienteppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'Prioridad'
      FieldName = 'Prioridad'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppEntradaPacienteppField35: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 16
      DisplayWidth = 16
      Position = 34
    end
    object ppEntradaPacienteppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'TipoDocumento'
      FieldName = 'TipoDocumento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object ppEntradaPacienteppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaPorc'
      FieldName = 'CoberturaPorc'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 36
    end
    object ppEntradaPacienteppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaValor'
      FieldName = 'CoberturaValor'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 37
    end
    object ppEntradaPacienteppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescuentoPorc'
      FieldName = 'DescuentoPorc'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 38
    end
    object ppEntradaPacienteppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescuentoValor'
      FieldName = 'DescuentoValor'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 39
    end
    object ppEntradaPacienteppField41: TppField
      FieldAlias = 'AprobadoPor'
      FieldName = 'AprobadoPor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 40
    end
    object ppEntradaPacienteppField42: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object ppEntradaPacienteppField43: TppField
      FieldAlias = 'AprobacionNo'
      FieldName = 'AprobacionNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 42
    end
    object ppEntradaPacienteppField44: TppField
      FieldAlias = 'MonedaID'
      FieldName = 'MonedaID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 43
    end
    object ppEntradaPacienteppField45: TppField
      FieldAlias = 'FechaEntrada'
      FieldName = 'FechaEntrada'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 44
    end
    object ppEntradaPacienteppField46: TppField
      FieldAlias = 'CoberturaExpPorc'
      FieldName = 'CoberturaExpPorc'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 45
    end
    object ppEntradaPacienteppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'EdadPaciente'
      FieldName = 'EdadPaciente'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 46
    end
    object ppEntradaPacienteppField48: TppField
      FieldAlias = 'NombreDoctor'
      FieldName = 'NombreDoctor'
      FieldLength = 80
      DisplayWidth = 80
      Position = 47
    end
    object ppEntradaPacienteppField49: TppField
      FieldAlias = 'PublicarInternet'
      FieldName = 'PublicarInternet'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 48
    end
    object ppEntradaPacienteppField50: TppField
      FieldAlias = 'Origen'
      FieldName = 'Origen'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object ppEntradaPacienteppField51: TppField
      FieldAlias = 'Carnet'
      FieldName = 'Carnet'
      FieldLength = 20
      DisplayWidth = 20
      Position = 50
    end
    object ppEntradaPacienteppField52: TppField
      FieldAlias = 'PublicarInternetDoctor'
      FieldName = 'PublicarInternetDoctor'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 51
    end
    object ppEntradaPacienteppField53: TppField
      FieldAlias = 'CuadreGlobal'
      FieldName = 'CuadreGlobal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 52
    end
    object ppEntradaPacienteppField54: TppField
      FieldAlias = 'CuadreUsuario'
      FieldName = 'CuadreUsuario'
      FieldLength = 20
      DisplayWidth = 20
      Position = 53
    end
    object ppEntradaPacienteppField55: TppField
      FieldAlias = 'DescAutorizadoPor'
      FieldName = 'DescAutorizadoPor'
      FieldLength = 10
      DisplayWidth = 10
      Position = 54
    end
    object ppEntradaPacienteppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'GastosVarios'
      FieldName = 'GastosVarios'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 55
    end
    object ppEntradaPacienteppField57: TppField
      FieldAlias = 'NoAS400'
      FieldName = 'NoAS400'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 56
    end
    object ppEntradaPacienteppField58: TppField
      FieldAlias = 'NoAxapta'
      FieldName = 'NoAxapta'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 57
    end
    object ppEntradaPacienteppField59: TppField
      FieldAlias = 'NoFactura'
      FieldName = 'NoFactura'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 58
    end
    object ppEntradaPacienteppField60: TppField
      FieldAlias = 'FactExterior'
      FieldName = 'FactExterior'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 59
    end
    object ppEntradaPacienteppField61: TppField
      FieldAlias = 'Hold'
      FieldName = 'Hold'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 60
    end
    object ppEntradaPacienteppField62: TppField
      FieldAlias = 'RepMuestra'
      FieldName = 'RepMuestra'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 61
    end
    object ppEntradaPacienteppField63: TppField
      FieldAlias = 'EntradaIdAnt'
      FieldName = 'EntradaIdAnt'
      FieldLength = 20
      DisplayWidth = 20
      Position = 62
    end
    object ppEntradaPacienteppField64: TppField
      FieldAlias = 'TipoEntrada'
      FieldName = 'TipoEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 63
    end
    object ppEntradaPacienteppField65: TppField
      FieldAlias = 'FormadePago'
      FieldName = 'FormadePago'
      FieldLength = 20
      DisplayWidth = 20
      Position = 64
    end
    object ppEntradaPacienteppField66: TppField
      FieldAlias = 'DescuentoCard'
      FieldName = 'DescuentoCard'
      FieldLength = 30
      DisplayWidth = 30
      Position = 65
    end
    object ppEntradaPacienteppField67: TppField
      FieldAlias = 'DescuentoTexto'
      FieldName = 'DescuentoTexto'
      FieldLength = 30
      DisplayWidth = 30
      Position = 66
    end
  end
  object ppEntradaPacienteDetalle: TppDBPipeline
    DataSource = dsEntradaPacienteDetalle
    UserName = 'EntradaPacienteDetalle'
    Left = 160
    Top = 360
    object ppEntradaPacienteDetalleppField1: TppField
      FieldAlias = 'PruebaID'
      FieldName = 'PruebaID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteDetalleppField2: TppField
      FieldAlias = 'ComboPruebaID'
      FieldName = 'ComboPruebaID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppEntradaPacienteDetalleppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Precio'
      FieldName = 'Precio'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 2
    end
    object ppEntradaPacienteDetalleppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 3
    end
    object ppEntradaPacienteDetalleppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescuentoExtra'
      FieldName = 'DescuentoExtra'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 4
    end
    object ppEntradaPacienteDetalleppField6: TppField
      FieldAlias = 'CodigoAutorizacion'
      FieldName = 'CodigoAutorizacion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppEntradaPacienteDetalleppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalLinea'
      FieldName = 'TotalLinea'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 6
    end
    object ppEntradaPacienteDetalleppField8: TppField
      FieldAlias = 'RefRecid'
      FieldName = 'RefRecid'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 7
    end
    object ppEntradaPacienteDetalleppField9: TppField
      FieldAlias = 'Secuencia'
      FieldName = 'Secuencia'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 8
    end
    object ppEntradaPacienteDetalleppField10: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 80
      DisplayWidth = 80
      Position = 9
    end
    object ppEntradaPacienteDetalleppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescPct'
      FieldName = 'DescPct'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object ppEntradaPacienteDetalleppField12: TppField
      FieldAlias = 'CoberturaAplica'
      FieldName = 'CoberturaAplica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 11
    end
    object ppEntradaPacienteDetalleppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaEspecial'
      FieldName = 'CoberturaEspecial'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object ppEntradaPacienteDetalleppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaEspecialPorc'
      FieldName = 'CoberturaEspecialPorc'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 13
    end
    object ppEntradaPacienteDetalleppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaAplicada'
      FieldName = 'CoberturaAplicada'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 14
    end
    object ppEntradaPacienteDetalleppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescuentoLineaAplicado'
      FieldName = 'DescuentoLineaAplicado'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 15
    end
    object ppEntradaPacienteDetalleppField17: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object ppEntradaPacienteDetalleppField18: TppField
      FieldAlias = 'Comentario'
      FieldName = 'Comentario'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteDetalleppField19: TppField
      FieldAlias = 'CoberturaExpPorc'
      FieldName = 'CoberturaExpPorc'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 18
    end
    object ppEntradaPacienteDetalleppField20: TppField
      FieldAlias = 'RepMuestra'
      FieldName = 'RepMuestra'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 19
    end
    object ppEntradaPacienteDetalleppField21: TppField
      FieldAlias = 'MuestraAnt'
      FieldName = 'MuestraAnt'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object ppEntradaPacienteDetalleppField22: TppField
      FieldAlias = 'Facturar'
      FieldName = 'Facturar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 21
    end
    object ppEntradaPacienteDetalleppField23: TppField
      FieldAlias = 'CodigoCupID'
      FieldName = 'CodigoCupID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object ppEntradaPacienteDetalleppField24: TppField
      FieldAlias = 'DescripcionCup'
      FieldName = 'DescripcionCup'
      FieldLength = 80
      DisplayWidth = 80
      Position = 23
    end
  end
  object cxGridStyles: TcxStyleRepository
    Left = 544
    Top = 300
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object menuImpresion: TPopupMenu
    Left = 872
    Top = 224
    object RecibodeCobro1: TMenuItem
      Caption = 'Recibo de Cobro'
      OnClick = RecibodeCobro1Click
    end
    object VolantedePruebasARS1: TMenuItem
      Caption = 'Factura Seguro'
      OnClick = VolantedePruebasARS1Click
    end
    object VolantedePruebasTomaMuestra1: TMenuItem
      Caption = 'Factura Paciente'
      OnClick = VolantedePruebasTomaMuestra1Click
    end
    object FacturaExterior1: TMenuItem
      Caption = 'Factura Exterior'
      OnClick = FacturaExterior1Click
    end
    object NotadeCredito1: TMenuItem
      Caption = 'Nota de Credito'
      OnClick = NotadeCredito1Click
    end
    object CuadredeCaja2: TMenuItem
      Caption = 'Cuadre de Caja'
      OnClick = CuadredeCaja2Click
    end
    object CodigodeBarra1: TMenuItem
      Caption = 'Codigo de Barra'
      OnClick = CodigodeBarra1Click
    end
  end
  object ExtraOptions1: TExtraOptions
    About = 'TExtraDevices 2.6'
    HTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    HTML.BackLink = '&lt&lt'
    HTML.ForwardLink = '&gt&gt'
    HTML.ShowLinks = True
    HTML.UseTextFileName = False
    HTML.ZoomableImages = False
    HTML.Visible = True
    HTML.PixelFormat = pf8bit
    HTML.SingleFileOutput = False
    XHTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    XHTML.BackLink = '&lt&lt'
    XHTML.ForwardLink = '&gt&gt'
    XHTML.ShowLinks = True
    XHTML.UseTextFileName = False
    XHTML.ZoomableImages = False
    XHTML.Visible = True
    XHTML.PixelFormat = pf8bit
    XHTML.SingleFileOutput = False
    RTF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    RTF.Visible = True
    RTF.RichTextAsImage = False
    RTF.UseTextBox = True
    Lotus.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Lotus.Visible = True
    Lotus.ColSpacing = 16934
    Quattro.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Quattro.Visible = True
    Quattro.ColSpacing = 16934
    Excel.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Excel.Visible = True
    Excel.ColSpacing = 16934
    Excel.RowSizing = False
    Excel.AutoConvertToNumber = True
    Graphic.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Graphic.PixelFormat = pf8bit
    Graphic.UseTextFileName = False
    Graphic.Visible = True
    Graphic.PixelsPerInch = 96
    Graphic.GrayScale = False
    PDF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    PDF.FastCompression = False
    PDF.CompressImages = True
    PDF.ScaleImages = True
    PDF.Visible = True
    PDF.RichTextAsImage = False
    PDF.PixelFormat = pf24bit
    PDF.PixelsPerInch = 96
    PDF.Permissions = [ppPrint, ppModify, ppCopy, ppModifyAnnot]
    PDF.AutoEmbedFonts = True
    DotMatrix.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    DotMatrix.Visible = True
    DotMatrix.CharsPerInch = cs10CPI
    DotMatrix.LinesPerInch = ls6LPI
    DotMatrix.Port = 'LPT1'
    DotMatrix.ContinousPaper = False
    Left = 856
    Top = 304
  end
  object ppImpFacturaSeguro: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'ZZZ'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 131
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 280
    Top = 276
    Version = '10.04'
    mmColumnWidth = 95250
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand3: TppHeaderBand
      BeforePrint = ppHeaderBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 81492
      mmPrintPosition = 0
      object ppDBText49: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText50: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 7673
        mmWidth = 85461
        BandType = 0
      end
      object pplbtelefono: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : (809) 221-5545'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 12435
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25929
        mmTop = 26723
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 26723
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 35983
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText57: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25929
        mmTop = 35983
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moneda         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 64558
        mmTop = 69321
        mmWidth = 12965
        BandType = 0
      end
      object ppDBText61: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MonedaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 78317
        mmTop = 69586
        mmWidth = 8467
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2116
        mmTop = 74083
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 75142
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 70115
        mmTop = 75142
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText62: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RNC'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4191
        mmLeft = 2117
        mmTop = 17198
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntredaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25929
        mmTop = 45244
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Registro No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 45244
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 49742
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 49742
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora             : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 54240
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HoraEntrada'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 54240
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 67998
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UserID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 67998
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Aprobacion   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 58738
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText59: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'AprobacionNo'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 58738
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Edad           :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 31221
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText111: TppDBText
        UserName = 'DBText111'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EdadPaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 31221
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Doctor          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 40481
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombreDoctor'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25929
        mmTop = 40481
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prueba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17463
        mmTop = 75142
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label1001'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Aprobado por   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 63236
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'AprobadoPor'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 30427
        mmTop = 48948
        mmWidth = 57150
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 4318
      mmPrintPosition = 0
      object LbCodigo: TppLabel
        UserName = 'LbCodigo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbCodigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1588
        mmTop = 508
        mmWidth = 15240
        BandType = 4
      end
      object LbDescripcion: TppLabel
        UserName = 'LbDescripcion1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbDescripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 17780
        mmTop = 508
        mmWidth = 49530
        BandType = 4
      end
      object LbPrecio: TppLabel
        UserName = 'LbPrecio1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPrecio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 67998
        mmTop = 508
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppSummaryFacturaSeguro: TppSummaryBand
      BeforePrint = ppSummaryFacturaSeguroBeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppLabel66: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 2910
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText70: TppDBText
        UserName = 'DBText201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SubTotal'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 66940
        mmTop = 2910
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobertura :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 7673
        mmWidth = 29369
        BandType = 7
      end
      object ppLabel67: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Seguro :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 12435
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText71: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CoberturaSeguro'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 66940
        mmTop = 12435
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 84931
        mmTop = 7938
        mmWidth = 3090
        BandType = 7
      end
      object pplbcobertura: TppLabel
        UserName = 'lbcobertura'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 66939
        mmTop = 7673
        mmWidth = 16933
        BandType = 7
      end
      object ppShape7: TppShape
        UserName = 'Shape2'
        mmHeight = 1058
        mmLeft = 1059
        mmTop = 529
        mmWidth = 86784
        BandType = 7
      end
      object ppMemoFactSeg: TppMemo
        UserName = 'ppMemoFactSeg'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppMemoFactSeg'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 6615
        mmLeft = 1059
        mmTop = 18785
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
  object ppImpFactPacienteConSeguro: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'ZZZ'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 131
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 326
    Top = 276
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand4: TppHeaderBand
      BeforePrint = ppHeaderBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 82550
      mmPrintPosition = 0
      object ppDBText51: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 7673
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : (809) 221-5545'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 12435
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25908
        mmTop = 26723
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2380
        mmTop = 26723
        mmWidth = 22860
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2380
        mmTop = 36513
        mmWidth = 22860
        BandType = 0
      end
      object ppDBText63: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25908
        mmTop = 36513
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entrega        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 65088
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaPrometida'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25908
        mmTop = 65088
        mmWidth = 31750
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2646
        mmTop = 75406
        mmWidth = 84402
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prueba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 76465
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RNC'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4191
        mmLeft = 2116
        mmTop = 17198
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntredaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25908
        mmTop = 46038
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Registro No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2380
        mmTop = 46038
        mmWidth = 22860
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 55563
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25908
        mmTop = 55563
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora             : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 60325
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HoraEntrada'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25908
        mmTop = 60325
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 69586
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText73: TppDBText
        UserName = 'DBText60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UserID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25908
        mmTop = 69586
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moneda :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 63500
        mmTop = 69586
        mmWidth = 14288
        BandType = 0
      end
      object ppDBText108: TppDBText
        UserName = 'DBText601'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MonedaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 78581
        mmTop = 69321
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Edad            :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2380
        mmTop = 31485
        mmWidth = 22860
        BandType = 0
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EdadPaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25908
        mmTop = 31485
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Doctor          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2380
        mmTop = 41275
        mmWidth = 22860
        BandType = 0
      end
      object ppDBText114: TppDBText
        UserName = 'DBText114'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombreDoctor'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25908
        mmTop = 41275
        mmWidth = 61119
        BandType = 0
      end
      object LbCobertura: TppLabel
        UserName = 'LbCobertura'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'No Se Ha Solicitado La Cobertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2380
        mmTop = 50800
        mmWidth = 85461
        BandType = 0
      end
    end
    object ppDetailBandConSeguro: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText74: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descripcion'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 265
        mmWidth = 79640
        BandType = 4
      end
    end
    object ppSummaryFactPacienteConSeguro: TppSummaryBand
      BeforePrint = ppSummaryFactPacienteConSeguroBeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 26988
      mmPrintPosition = 0
      object ppLabel69: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Neto a Pagar :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34131
        mmTop = 2910
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText76: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Neto'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 2910
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel70: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Pagado :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34131
        mmTop = 7673
        mmWidth = 29369
        BandType = 7
      end
      object ppDBText77: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPagado'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 7673
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel71: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Pendiente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34131
        mmTop = 12435
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText78: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TotalPendiente'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 12435
        mmWidth = 21167
        BandType = 7
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 1058
        mmLeft = 1058
        mmTop = 529
        mmWidth = 86784
        BandType = 7
      end
      object ppMemoFactConSeg: TppMemo
        UserName = 'ppMemoFactConSeg'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppMemoFactConSeg'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 6615
        mmLeft = 1058
        mmTop = 18521
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
  object ppImpFactPacienteSinSeguro: TppReport
    AutoStop = False
    Columns = 2
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'ZZZ'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 131
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 372
    Top = 276
    Version = '10.04'
    mmColumnWidth = 44450
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand5: TppHeaderBand
      BeforePrint = ppHeaderBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 77788
      mmPrintPosition = 0
      object ppDBText75: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText79: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 7673
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : (809) 221-5545'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 12435
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 26723
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 36248
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText81: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteNombre'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25665
        mmTop = 36248
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entrega        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 60061
        mmWidth = 23813
        BandType = 0
      end
      object ppDBText82: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FechaPrometida'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 60061
        mmWidth = 31750
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2381
        mmTop = 70379
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Determinacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 3704
        mmTop = 71702
        mmWidth = 22691
        BandType = 0
      end
      object ppDBText83: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RNC'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4191
        mmLeft = 2117
        mmTop = 17198
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText84: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntredaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25665
        mmTop = 46038
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Registro No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 46038
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 50536
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText85: TppDBText
        UserName = 'DBText56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 50536
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora             : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 55298
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText86: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HoraEntrada'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 55298
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 64558
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText87: TppDBText
        UserName = 'DBText60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UserID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 64558
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 28839
        mmTop = 71702
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moneda :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 65352
        mmTop = 64558
        mmWidth = 14288
        BandType = 0
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MonedaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4022
        mmLeft = 80169
        mmTop = 64558
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Doctor          :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 41275
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText115: TppDBText
        UserName = 'DBText115'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombreDoctor'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4191
        mmLeft = 25665
        mmTop = 41275
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Edad            :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 31485
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EdadPaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 31485
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 70907
        mmTop = 71702
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Determinacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 44979
        mmTop = 71702
        mmWidth = 22691
        BandType = 0
      end
      object LbPaciente: TppLabel
        UserName = 'LbPaciente'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPaciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 26988
        mmWidth = 61648
        BandType = 0
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBandSinSeguro: TppDetailBand
      BeforePrint = ppDetailBandSinSeguroBeforePrint
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object LbDescripcion1: TppLabel
        UserName = 'LbDescripcion1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbDescripcion1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object LbPrecio1: TppLabel
        UserName = 'LbPrecio1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPrecio1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 28575
        mmTop = 0
        mmWidth = 15240
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryFactPacienteSinSeguro: TppSummaryBand
      BeforePrint = ppSummaryFactPacienteSinSeguroBeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 35983
      mmPrintPosition = 0
      object LbNetoTit: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Neto a Pagar : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34290
        mmTop = 12435
        mmWidth = 29718
        BandType = 7
      end
      object LbPagadoTit: TppLabel
        UserName = 'Label61'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Pagado : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34290
        mmTop = 17198
        mmWidth = 29718
        BandType = 7
      end
      object LbPendienteTit: TppLabel
        UserName = 'LbPendienteTit'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Pendiente : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34290
        mmTop = 21960
        mmWidth = 29718
        BandType = 7
      end
      object LbNeto: TppLabel
        UserName = 'LbNeto'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbNeto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 12435
        mmWidth = 21590
        BandType = 7
      end
      object LbPagado: TppLabel
        UserName = 'LbPagado'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPagado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 17198
        mmWidth = 21590
        BandType = 7
      end
      object LbPendiente: TppLabel
        UserName = 'LbPendiente'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPendiente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 21960
        mmWidth = 21590
        BandType = 7
      end
      object LbDescTit: TppLabel
        UserName = 'Label202'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descuento : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 7408
        mmWidth = 63500
        BandType = 7
      end
      object LbDescuento: TppLabel
        UserName = 'LbDescuento'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbDescuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 7408
        mmWidth = 21590
        BandType = 7
      end
      object LbBrutoTit: TppLabel
        UserName = 'Label203'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SubTotal : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34290
        mmTop = 2381
        mmWidth = 29718
        BandType = 7
      end
      object LbBruto: TppLabel
        UserName = 'LbBruto'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbBruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 2381
        mmWidth = 21590
        BandType = 7
      end
      object ppMemoFactSinSeg: TppMemo
        UserName = 'ppMemoFactSinSeg'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppMemoFactSinSeg'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 6615
        mmLeft = 1058
        mmTop = 27781
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 1058
        mmLeft = 1058
        mmTop = 529
        mmWidth = 86784
        BandType = 7
      end
    end
  end
  object MenuFunciones: TPopupMenu
    Left = 792
    Top = 224
    object ConfirmarCobertura1: TMenuItem
      Caption = 'Confirmar Cobertura'
      OnClick = ConfirmarCobertura1Click
    end
    object RegistrarPruebadelExterior1: TMenuItem
      Caption = 'Registrar Prueba del Exterior'
      OnClick = RegistrarPruebadelExterior1Click
    end
    object RegistrarFechaPrometida1: TMenuItem
      Caption = 'Registrar Fecha Prometida'
      OnClick = RegistrarFechaPrometida1Click
    end
    object CambiarLaboratorioNoenlasLineas1: TMenuItem
      Caption = 'Cambiar Laboratorio No. en las Lineas'
      OnClick = CambiarLaboratorioNoenlasLineas1Click
    end
    object Asignar2daMuestra1: TMenuItem
      Caption = 'Asignar Factura Como 2da. Muestra'
      OnClick = Asignar2daMuestra1Click
    end
    object AsignarDescuentoPermitidoalUsuario1: TMenuItem
      Caption = 'Asignar Descuento Permitido al Usuario'
      OnClick = AsignarDescuentoPermitidoalUsuario1Click
    end
    object AsignarDescuentoAutorizadoporCobros1: TMenuItem
      Caption = 'Asignar Descuento Autorizado por Cobros'
      OnClick = AsignarDescuentoAutorizadoporCobros1Click
    end
    object EliminarDescuentoAplicado1: TMenuItem
      Caption = 'Eliminar Descuento Aplicado'
      OnClick = EliminarDescuentoAplicado1Click
    end
    object CuadredeCaja1: TMenuItem
      Caption = 'Cuadre de Caja'
      OnClick = CuadredeCaja1Click
    end
    object GastosVarios1: TMenuItem
      Caption = 'Gastos Varios'
      OnClick = GastosVarios1Click
    end
    object Materiales1: TMenuItem
      Caption = 'Materiales'
      OnClick = Materiales1Click
    end
    object RegistrarCobrosTemporales1: TMenuItem
      Caption = 'Registrar Cobros Temporales'
      OnClick = RegistrarCobrosTemporales1Click
    end
    object EliminarOrdenesenHold1: TMenuItem
      Caption = 'Eliminar Ordenes en Hold'
      OnClick = EliminarOrdenesenHold1Click
    end
    object MarcarPruebaNOProcesar1: TMenuItem
      Caption = 'Marcar Prueba NO Procesar'
      OnClick = MarcarPruebaNOProcesar1Click
    end
  end
  object MenuGrid: TPopupMenu
    Left = 832
    Top = 224
    object MenuItem1: TMenuItem
      Caption = 'Ver Cobertura Especial'
      OnClick = MenuItem1Click
    end
  end
  object ppImpFacturaExterior: TppReport
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'ZZZ'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 131
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 420
    Top = 279
    Version = '10.04'
    mmColumnWidth = 95250
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 57415
      mmPrintPosition = 0
      object ppDBText65: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SubTituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4995
        mmLeft = 2116
        mmTop = 2117
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText88: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombrePaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26459
        mmTop = 17463
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 17463
        mmWidth = 23019
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 1323
        mmTop = 50536
        mmWidth = 86519
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4318
        mmLeft = 3175
        mmTop = 51594
        mmWidth = 17463
        BandType = 0
      end
      object ppDBText92: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EntredaID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 31750
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Invoice Num.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 31750
        mmWidth = 20532
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 36513
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText93: TppDBText
        UserName = 'DBText56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 36513
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 41010
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText94: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HoraEntrada'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 41010
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'User Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 45508
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Age'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 2381
        mmTop = 21960
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText97: TppDBText
        UserName = 'DBText111'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EdadPaciente'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 22225
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Doctor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 26988
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText98: TppDBText
        UserName = 'DBText112'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombreDoctor'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 26988
        mmWidth = 61648
        BandType = 0
      end
      object ppDBText99: TppDBText
        UserName = 'DBText64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UserID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 3969
        mmLeft = 26458
        mmTop = 45508
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Lab Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2380
        mmTop = 12700
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText80: TppDBText
        UserName = 'DBText80'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MuestraNo'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26459
        mmTop = 12700
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Envio al Exterior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 2116
        mmTop = 7673
        mmWidth = 85461
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      BeforePrint = ppDetailBand4BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBComentario: TppDBMemo
        UserName = 'ppDBComentario'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = True
        DataField = 'Comentario'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 528
        mmWidth = 83608
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBDescripcion: TppDBMemo
        UserName = 'ppDBDescripcion'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = True
        DataField = 'Descripcion'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 528
        mmWidth = 83608
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand4: TppSummaryBand
      BeforePrint = ppSummaryBand4BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppMemoFactExterior: TppMemo
        UserName = 'ppMemoFactExterior'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppMemoFactExterior'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 6615
        mmLeft = 1058
        mmTop = 3969
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
end
