inherited frmPuntoVentaClinica: TfrmPuntoVentaClinica
  Caption = 'Facturacion Punto de Venta (Entrada de Cl'#237'nica)'
  ClientHeight = 614
  ClientWidth = 1020
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitTop = -80
  ExplicitWidth = 1036
  ExplicitHeight = 652
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 1020
    Height = 0
    Visible = False
    ExplicitWidth = 1020
    ExplicitHeight = 0
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 1020
    Height = 567
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
        ExplicitWidth = 0
        ExplicitHeight = 0
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
            Left = 99
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
            Left = 747
            Top = 18
            DataBinding.DataField = 'MUESTRANO'
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
          object EdPaciente: TcxDBTextEdit
            Tag = 99
            Left = 348
            Top = 63
            DataBinding.DataField = 'PACIENTEID'
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
            TabOrder = 14
            Width = 60
          end
          object CxDbPaciente: TcxDBTextEdit
            Tag = 99
            Left = 414
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
            TabOrder = 15
            Width = 115
          end
          object cxDBMemo2: TcxDBMemo
            Tag = 99
            Left = 348
            Top = 90
            DataBinding.DataField = 'DIRECCION'
            DataBinding.DataSource = dsEntradaPaciente
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 200
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
            Height = 48
            Width = 180
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Tag = 99
            Left = 348
            Top = 144
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
            TabOrder = 17
            Width = 87
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Tag = 99
            Left = 441
            Top = 144
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
            TabOrder = 18
            Width = 87
          end
          object EdCliente: TcxDBTextEdit
            Tag = 99
            Left = 99
            Top = 90
            DataBinding.DataField = 'CLIENTEID'
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
            Left = 99
            Top = 117
            DataBinding.DataField = 'CLIENTENOMBRE'
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
            Left = 856
            Top = 63
            DataBinding.DataField = 'COBERTURAPORC'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.DisplayFormat = '0.00;-0.00'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clWindow
            Style.HotTrack = False
            TabOrder = 32
            OnExit = EdCoberturaValorExit
            Width = 65
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 856
            Top = 117
            DataBinding.DataField = 'COBERTURACONFIRMADA'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.DisplayChecked = 'True'
            Properties.DisplayUnchecked = 'False'
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 34
            Width = 65
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 856
            Top = 144
            DataBinding.DataField = 'AprobacionNo'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 35
            Width = 65
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 856
            Top = 171
            DataBinding.DataField = 'APROBACIONPOR'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 36
            Width = 65
          end
          object CbDocumento: TcxDBImageComboBox
            Left = 255
            Top = 18
            DataBinding.DataField = 'TIPODOCUMENTO'
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
            Properties.OnChange = CbDocumentoPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 90
          end
          object EdDoctor: TcxDBExtLookupComboBox
            Left = 657
            Top = 63
            RepositoryItem = elcDoctores
            DataBinding.DataField = 'DOCTORID'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.FocusPopup = True
            Properties.OnChange = EdDoctorPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 25
            OnDblClick = EdDoctorDblClick
            OnEnter = EdDoctorPropertiesChange
            OnExit = EdDoctorPropertiesChange
            Width = 90
          end
          object cxDBDateEdit3: TcxDBDateEdit
            Left = 657
            Top = 171
            DataBinding.DataField = 'FECHAPROMETIDA'
            DataBinding.DataSource = dsEntradaPaciente
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 29
            Width = 90
          end
          object cxDBImageComboBox7: TcxDBImageComboBox
            Left = 657
            Top = 117
            RepositoryItem = icFormaEntregaPruebaDoctor
            DataBinding.DataField = 'RESULTADODOCTOR'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'NINGUNO'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'CONSULTORIO'
                Value = 1
              end
              item
                Description = 'FAX'
                Value = 2
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 27
            Width = 90
          end
          object cxDBImageComboBox8: TcxDBImageComboBox
            Left = 348
            Top = 198
            RepositoryItem = icFormaEntregaPruebas
            DataBinding.DataField = 'RESULTADOPACIENTE'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'NINGUNO'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'PERSONAL'
                Value = 1
              end
              item
                Description = 'FAX'
                Value = 2
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 21
            Width = 93
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox
            Left = 657
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
            TabOrder = 28
            Width = 90
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 99
            Top = 144
            DataBinding.DataField = 'FECHAENTRADA'
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
            Left = 99
            Top = 225
            DataBinding.DataField = 'MONEDAID'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 85
          end
          object edcobexpporc: TcxDBCheckBox
            Left = 856
            Top = 90
            DataBinding.DataField = 'COBERTURAEXPPORC'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.DisplayChecked = 'True'
            Properties.DisplayUnchecked = 'False'
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 33
            OnExit = EdCoberturaValorExit
            Width = 65
          end
          object cxDBCurrencyEdit9: TcxDBCurrencyEdit
            Left = 477
            Top = 198
            DataBinding.DataField = 'EDADPACIENTE'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.DisplayFormat = '##'
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 22
            Width = 50
          end
          object EdNombreDoctor: TcxDBTextEdit
            Left = 657
            Top = 90
            DataBinding.DataField = 'NOMBREDOCTOR'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 26
            OnDblClick = EdNombreDoctorDblClick
            Width = 90
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 510
            Top = 225
            DataBinding.DataField = 'PUBLICARINTERNET'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.DisplayChecked = 'True'
            Properties.DisplayUnchecked = 'False'
            Properties.DisplayGrayed = 'False'
            Properties.NullStyle = nssInactive
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 0
            Properties.OnChange = cxDBCheckBox2PropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 24
            Width = 20
          end
          object edtipocliente: TcxDBExtLookupComboBox
            Left = 99
            Top = 63
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'ORIGEN'
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
            Left = 657
            Top = 225
            DataBinding.DataField = 'PUBLICARINTERNETDOCTOR'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.DisplayChecked = 'True'
            Properties.DisplayUnchecked = 'False'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 31
            Width = 85
          end
          object cxDBTextEdit16: TcxDBTextEdit
            Left = 348
            Top = 225
            DataBinding.DataField = 'POLIZAID'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 23
            OnKeyUp = cxDBTextEdit16KeyUp
            Width = 75
          end
          object LbHold: TcxLabel
            Left = 843
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
            Left = 432
            Top = 18
            DataBinding.DataField = 'TIPOENTRADA'
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
            Left = 605
            Top = 18
            DataBinding.DataField = 'FORMADEPAGO'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Images = frmMain.ilNavBarSmall
            Properties.Items = <
              item
                Description = 'Contado US$'
                ImageIndex = 14
                Value = 'CASH'
              end
              item
                Description = 'Contra Entrega'
                ImageIndex = 27
                Value = 'CE'
              end
              item
                Description = 'Credito'
                ImageIndex = 3
                Value = 'CRE'
              end
              item
                Description = 'Contado RD$'
                ImageIndex = 13
                Value = 'EFE'
              end>
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clAqua
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            StyleDisabled.Color = clAqua
            TabOrder = 3
            Width = 90
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 99
            Top = 171
            DataBinding.DataField = 'FECHADEALTA'
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
            Left = 99
            Top = 198
            DataBinding.DataField = 'RECORDCLINICA'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 60
          end
          object LbHoraPrometida: TcxDBLabel
            Left = 657
            Top = 198
            DataBinding.DataField = 'HORAPROMETIDA'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.LabelEffect = cxleCool
            Properties.LabelStyle = cxlsRaised
            Style.HotTrack = False
            Style.TextColor = clGreen
            Style.TextStyle = [fsBold]
            Height = 21
            Width = 90
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 165
            Top = 198
            DataBinding.DataField = 'NUMEROHABITACION'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 60
          end
          object cxDBDateEdit5: TcxDBDateEdit
            Left = 348
            Top = 171
            DataBinding.DataField = 'FECHANACIMIENTO'
            DataBinding.DataSource = dsEntradaPaciente
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 19
            OnExit = cxDBDateEdit5Exit
            Width = 80
          end
          object cxDBImageComboBox2: TcxDBImageComboBox
            Left = 463
            Top = 171
            DataBinding.DataField = 'SEXO'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.Items = <
              item
                Description = 'FEMENINO'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'MASCULINO'
                Value = 1
              end
              item
                Value = 2
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 20
            Width = 64
          end
          object cxDBCheckBox4: TcxDBCheckBox
            Left = 777
            Top = 198
            Caption = 'Urgente'
            DataBinding.DataField = 'PRIORIDAD'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.DisplayChecked = 'True'
            Properties.DisplayUnchecked = 'false'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueGrayed = '0'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 37
            Width = 143
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
                Control = CbDocumento
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
                  object LcCliente: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Cliente'
                    Control = EdCliente
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
                object lcGeneralGroup11: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcGeneralItem13: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Record y Hab.'
                    Control = cxDBTextEdit13
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    Control = cxDBTextEdit3
                    ControlOptions.ShowBorder = False
                  end
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
                  object LcPaciente: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Paciente'
                    Control = EdPaciente
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
                object lcGeneralGroup14: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcGeneralItem10: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Fecha Nac.'
                    Control = cxDBDateEdit5
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem11: TdxLayoutItem
                    Caption = 'Sexo'
                    Control = cxDBImageComboBox2
                    ControlOptions.ShowBorder = False
                  end
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
                  Control = EdNombreDoctor
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
                object lcGeneralItem25: TdxLayoutItem
                  AutoAligns = []
                  Caption = 'Hora Prometida'
                  Control = LbHoraPrometida
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
                Visible = False
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
                object lcGeneralGroup15: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object lcGeneralItem20: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Aprobada Por'
                    Control = cxDBTextEdit12
                    ControlOptions.ShowBorder = False
                  end
                  object lcGeneralItem27: TdxLayoutItem
                    Caption = 'Urgente'
                    ShowCaption = False
                    Control = cxDBCheckBox4
                    ControlOptions.ShowBorder = False
                  end
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
      Width = 989
      Height = 147
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
        NavigatorButtons.Delete.Enabled = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsEntradaPacienteDetalle
        DataController.KeyFieldNames = 'SECUENCIA'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = GridPruebasEntradasPacienteDetPruebaID
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.NewItemRowInfoText = 'Click here to add a new row'
        Styles.Selection = dmAppActions.cxStyleVerde
        Styles.OnGetContentStyle = GridPruebasEntradasPacienteDetStylesGetContentStyle
        object GridPruebasEntradasPacienteDetPruebaID: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'PRUEBAID'
          Options.Editing = False
          Width = 75
        end
        object GridPruebasEntradasPacienteDetDescripcion: TcxGridDBColumn
          Caption = 'Prueba'
          DataBinding.FieldName = 'DESCRIPCION'
          Options.Editing = False
          Width = 274
        end
        object GridPruebasEntradasPacienteDetCodigoCupID: TcxGridDBColumn
          Caption = 'Codigo ARS'
          DataBinding.FieldName = 'CODIGOCUPID'
          Options.Editing = False
          Width = 82
        end
        object GridPruebasEntradasPacienteDetPrecio: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'PRECIO'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 78
        end
        object GridPruebasEntradasPacienteDetDescuento: TcxGridDBColumn
          Caption = 'Descuento'
          DataBinding.FieldName = 'DESCUENTO'
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 80
        end
        object GridPruebasEntradasPacienteDetDescPct: TcxGridDBColumn
          Caption = '% Descuento'
          DataBinding.FieldName = 'DESCPCT'
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 80
        end
        object GridPruebasEntradasPacienteDetCOBERTURAAPLICADA: TcxGridDBColumn
          Caption = 'Cobertura'
          DataBinding.FieldName = 'COBERTURAAPLICADA'
          Visible = False
          Options.Editing = False
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
          Properties.DisplayChecked = 'True'
          Properties.DisplayUnchecked = 'False'
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
          Width = 78
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
          Properties.OnInitPopup = GridPruebasEntradasPacienteDetComentarioPropertiesInitPopup
          Width = 60
        end
        object GridPruebasEntradasPacienteDetCoberturaAplica: TcxGridDBColumn
          Caption = 'Aplica Cobertura'
          DataBinding.FieldName = 'COBERTURAAPLICA'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Editing = False
          Width = 35
        end
      end
      object GridPruebasLevel1: TcxGridLevel
        GridView = GridPruebasEntradasPacienteDet
      end
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 458
      DataBinding.DataField = 'GASTOSVARIOS'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '###,###,##0.00;-###,###,##0.00'
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
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Tag = 99
      Left = 650
      Top = 485
      DataBinding.DataField = 'COBERTURASEGURO'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '###,###,##0.00;-###,###,##0.00'
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
      TabOrder = 9
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 512
      DataBinding.DataField = 'TOTALPAGADO'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '###,###,##0.00;-###,###,##0.00'
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
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 539
      DataBinding.DataField = 'TotalPendiente'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Properties.ReadOnly = True
      Properties.OnChange = cxDBCurrencyEdit4PropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.Shadow = False
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 121
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit
      Tag = 99
      Left = 847
      Top = 485
      DataBinding.DataField = 'NETO'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '###,###,##0.00;-###,###,##0.00'
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
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit
      Tag = 99
      Left = 650
      Top = 458
      DataBinding.DataField = 'BRUTO'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '###,###,##0.00;-###,###,##0.00'
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
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit
      Tag = 99
      Left = 650
      Top = 539
      DataBinding.DataField = 'DESCUENTO'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.DisplayFormat = '###,###,##0.00;-###,###,##0.00'
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
    object cxDBMemo1: TcxDBMemo
      Left = 23
      Top = 458
      DataBinding.DataField = 'NOTA'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 200
      Properties.WantReturns = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Height = 75
      Width = 300
    end
    object cxDBCurrencyEdit10: TcxDBCurrencyEdit
      Left = 650
      Top = 512
      DataBinding.DataField = 'DESCUENTOPORC'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.DisplayFormat = '0.00,%;(0.00,%)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit
      Left = 411
      Top = 458
      DataBinding.DataField = 'FECHAREGISTRO'
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
      TabOrder = 4
      Width = 120
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 411
      Top = 512
      DataBinding.DataField = 'FLEBOTOMISTAID'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 411
      Top = 539
      DataBinding.DataField = 'TASA'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object LbHora: TcxDBLabel
      Left = 411
      Top = 485
      DataBinding.DataField = 'HORAENTRADA'
      DataBinding.DataSource = dsEntradaPaciente
      ParentFont = False
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsRaised
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clGreen
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clGreen
      Style.IsFontAssigned = True
      Height = 21
      Width = 121
    end
    object lbUltimaMuestra: TcxLabel
      Left = 23
      Top = 539
      AutoSize = False
      Caption = 'lbUltimaMuestra'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsRaised
      Properties.ShadowedColor = clGray
      Style.Color = 16311249
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clGreen
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clGreen
      Style.IsFontAssigned = True
      Height = 21
      Width = 299
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
          object dxLayoutControl1Group6: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item13: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avBottom
              Caption = 'cxLabel1'
              ShowCaption = False
              Control = lbUltimaMuestra
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item10: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'cxDBMemo1'
              ShowCaption = False
              Control = cxDBMemo1
              ControlOptions.ShowBorder = False
            end
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
            object dxLayoutControl1Item15: TdxLayoutItem
              Caption = 'Hora'
              Control = LbHora
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
    Top = 567
    Width = 1020
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
  object btPacientes: TcxButton [4]
    Left = 786
    Top = 232
    Width = 72
    Height = 25
    Hint = 'Reg.  Nuevo Paciente'
    Caption = 'Paciente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = RegistrarNuevoPaciente1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00398C31002A902A00398C3100398C3100398C3100398C3100398C3100398C
      31001D871A0013841300398C3100398C3100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00398C310035B035003DB73D003DB73D004ABD4A007DD272004DA5490059A8
      520074C5690037B137001C961C000C850C00398C3100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00398C31003DB73D0051C151006ECE6B0082CE7700D0F0CC0052A5
      4A009CD98F0052C5520036AB36001F8B1F00299C2900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00299C29003DB73D0066CC64007FCC740052A54A00FFFCF90052A5
      4A0099D88D0065CB65003EAD3E00299C2900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00299C2900398C31004A8C4200D0F0CC00FFF5EC00ACBE
      9A004A8C4200398C3100299C2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E89A600328FCD002F8CCA003187
      A200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D9DD30043A8E90042A7E8003CA1E3002D93
      D6002E87AC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D9DD3004FB4F2004BB0EE0042A7E8003A9F
      E2004D9DD300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004693C90053B8F40055BAF6004FB4F20046ABEB003FA4
      E6002E94D800107BB500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001E73AF0055B9F50057BCF80050B5F30047ACEB0040A5
      E6003193D6003F7FA300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0034769A00388EC5004CA4D700469ED2003B94CA00328C
      C4002B8DCA0039738C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004080A4004382A6004080A30038799D002A6C92001F63
      8A0039738C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003F7FA3004F8DAF003E7FA2002F7196002165
      8B003F7FA300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F7FA3003F7FA3002F7196003F7F
      A300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
  end
  object cxButton1: TcxButton [5]
    Left = 864
    Top = 232
    Width = 74
    Height = 25
    Hint = 'Reg.  Cobertura'
    Caption = 'Cobertura'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Visible = False
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00097E
      C900096EB000096EB000096EB000096EB000096EB000096EB000096EB000096E
      B000096EB000096EB000096EB000096EB000096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD004AC8FD004AC8FD004AC8FD004AC8FD004AC8FD004AC8FD004AC8
      FD004AC8FD004AC8FD004AC8FD004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB009A9D9E009A9D9E009A9D9E009A9D9E009A9D9E009A9D
      9E009A9D9E009A9D9E009A9D9E004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD009A9D9E004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB00FEFEFD007C7C7B007C7C7B007C7C7B00FEFEFD0022A1
      2200A4ECA400FEFEFD009A9D9E004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB00FEFEFD00AFAFAF00AFAFAF00AFAFAF0022A12200A4EC
      A40022A12200A4ECA4009A9D9E004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD0022A122009A9D9E004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD0022A122004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB00FEFEFD007C7C7B007C7C7B007C7C7B00FEFEFD0022A1
      2200A4ECA400FEFEFD009A9D9E004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB00FEFEFD00AFAFAF00AFAFAF00AFAFAF0022A12200A4EC
      A40022A12200A4ECA4009A9D9E004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD0022A122009A9D9E004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD0022A122004AC8FD00096EB000FFFFFF00FFFFFF000B8A
      DA004AC8FD00ACABAB00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD009A9D9E004AC8FD00096EB000FFFFFF00FFFFFF000B84
      D1004AC8FD00ACABAB00ACABAB008D9295006C70720061616000616160006161
      600061616000ACABAB009A9D9E004AC8FD000A7BC400FFFFFF00FFFFFF00FFFF
      FF000B84D1000B84D1000B84D1009DA1A300FFFFFF00E5E6E700E5E6E700B5B7
      B900616160000A70B1000A7BC4000A7BC400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009DA1A3009DA1A3009DA1A3008D92
      9500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
  end
  object btAutoriza: TcxButton [6]
    Left = 864
    Top = 205
    Width = 74
    Height = 25
    Hint = 'Autorizaci'#243'n Seguros'
    Caption = 'Autorizaci'#243'n'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Visible = False
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000066010000660100006601002B5E17002B5E1700FFFFFF00FFFFFF000066
      9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066
      010005A60D0005AD0A00006601000190080000669A000058000000669A0038B9
      FA0000669A00FFFFFF0000669A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066
      010011B121000FB11F000066010000669A0037C5D50000669A0000669A0038B9
      FA0000669A0000669A0062C4DD0000669A00FFFFFF00FFFFFF00FFFFFF000066
      01001BBA35001BBB3500006601002AA36D0000669A0038D2F70018C5F10021BB
      F80030B2E30049BEDE0000669A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066
      010024C2480023C648000066010000669A0000669A006DE5FF0024C7DE000066
      9A0021A8C2003ABAEC0000669A0000669A00FFFFFF00FFFFFF00FFFFFF000066
      01002ECE5C001FBE450000669A00BBE5F300B9EEF50086E0F80000669A001884
      300000669A0022ABD00036B6E9004FC1E50000669A00FFFFFF00FFFFFF000066
      010037D76D0030D063000066010000669A0000669A00B2EDFD00B2EDFD000066
      9A001BBCE5001BBCE50000669A0000669A00FFFFFF00FFFFFF00FFFFFF000066
      010041E17C0042E37F00006601001DAF530000669A00DFFCFF00B0EAF50060C9
      C90045D1EB0023DCFF0000669A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066
      01004AEA86004BEC8A000066010000669A00D2F3FF0000669A0000669A00B5F4
      FF0000669A0000669A001ED2FB0000669A00FFFFFF00FFFFFF00FFFFFF000066
      010055F48D0056F792000066010049C2800000669A003DD0820000669A00D7F1
      FF0000669A000066010000669A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066
      010062FF9E0062FFA2000066010048D4740058FC930052F4860058DE99000066
      9A0062E4AB0000660100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066
      010053E987003EB55700006601000066010034C6590046E3790058F991005CFE
      98005CFE980000660100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066
      0100006601007E795C00D8C5C100D8DBCE000066010000660100006601005CFE
      98005DF8930000660100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00175F0B002B5E17002B5E17007E795C00C6A4A100C6A4A1000066
      01000066010000660100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000066010000660100006601000066
      0100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
  end
  object cxButton2: TcxButton [7]
    Left = 720
    Top = 226
    Width = 36
    Height = 25
    Hint = 'Verifica Usuario Internet'
    TabOrder = 6
    OnClick = cxButton2Click
    Glyph.Data = {
      560D0000424D560D00000000000036000000280000001F000000230000000100
      180000000000200D000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAF2F2
      F2E8E8E8DEDEDED6D6D6D1D1D1D0D0D0D3D3D3D7D7D7DDDDDDE2E2E2E9E9E9F0
      F0F0F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEBEBEBD2D2D2B6B6B69696
      967A7A7A6767675D5D5D5C5C5C6363636F6F6F7E7E7E9090909E9E9EADADADBC
      BCBCCBCBCBF1F1F1F9F9F9FEFEFEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDA0A0A077777755504C4C3E
      2C5649277A5E38996C47AA724CB07950AC7650986F518A726284807D9090909D
      9D9DABABABD2D2D2E0E0E0F0F0F0FBFBFBFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797977668668352414C6A30437D
      35508B3C46943961A1439E8A4FAD744BBE8455CA965FD8A766D3A362B8916AA3
      9C96AAAAAAC5C5C5CECECEDEDEDEF3F3F3FEFEFEFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2736AA65544945C42488937589C
      3E5BA33E41A63840AE3255AC3A889347A3884CAF7847C99057D7A361DEB069DA
      AD65BA9B80C7C7C7CFCFCFDCDCDCF2F2F2FEFEFEFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA251409449377D6F3E509E3B5196
      373E912F35942B3AA02D3EA52E48AD3156B138A38048B77C49CD8E54D29558D5
      A061DAAA67D1D1D1E0E0E0EFEFEFFBFBFBFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFBF6F6C47C717D6A3D287C2225711E1D71141677
      0E187B0F1C820F228913258C1529931629971827A21B787D33A65A33BE6C42C2
      7347C3784AD5A285FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFD49D97B353453384262372191C7210187A0E2081
      1421820F2589152B921E29931B35992544932844962861792C9B4E2CB65936B9
      5E3ABB613DC27951E4C1B4FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFEED8D5AD4538AB403216811225780E2288132B911C298E
      1A2A941E2CA12336A428777B3D82582D8B4A288C4423933E229C4227B34F32B5
      5134B55234B86140BD6D4BF8F0EDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC57B73A83527A93627119011298D142A962335A12837AB
      2B3CB43840BA3F59B04E8D3F269A3522A93B27AD3E2AB0412BB3442EB3462EB3
      482FB24931B14F35B65B3CD7A799FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFF4E6E4A73A2DA73427A935271FA4232BAB2539A22E43B93A48CD
      5478B8658E7D498E55328F351FB1412CB8402EB63D2DB53F2CB53E2CB23F2CB2
      412CB1442EAF4A30AF4D32B35B40FBF8F7FFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFDAAAA5A53325A73426A23323448E2B46AB3C4BAD4263A84980A0
      58925431974425A95030B35636BD583ABC5037BB4933B7422EB53D2CB33C2BB3
      3C2BB23D2CA13E28A04029A74A30E7CBC4FFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFC07269A53125A03123973020884E278B63328D6A339352259A4E
      24A25428C06A37C7723EC67040C36B40C16640BE5C3BBC4F35B94431B73D2CB3
      3A2AB23B2A7652247C402189341FB78976FFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFB04E43A23123902C1D824120B45827B96129B9662ABC6C2DC87C
      33CE8238CE833ACE833ECD7F40C97942C87344C56E43C1633FBD5638BA4832B5
      3B2BAC3727209D1F2D892674401F875A3EFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFA2382D8C2A1C8A331E5D7326C06A28B6792DBB8738C68531D290
      35D79639D6953AD5943CD48F3ECF893FCC8143C97945C57145C26642BC563AB8
      4430AA36261B9D291691241E7615345415FFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFF8A281A88321D517A21587527AD7A2DBF8D35CA9B40D39C32DCA6
      38DFAD3BDEAB3DDDA93EDBA23DD79A3ED39142CE8745CA7B48C67246C16642BB
      5338A63A2823AC551D9E410D7F1C0C5309FFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFF88462E298D188B4528A45326CC9E35DCB63CEBCA4AEED250EFD7
      54F0D757EFD453ECCD4DE8C348E2BA47DFAE47D9A149D2944FCC864EC7794CC3
      6C46AB4C3244D18633C56A1CB4423E7227FFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFF9E5D4B2693167A632A9F5320B99030D8BB40F2DE5BF5E664F7E9
      6CF8E96DF6E666F4E05FF0D656E9C94FE3BA4BDDAC4DD59D52D09153C98251C5
      734AAC553636C57B2FC26A24BC516A8848FFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFB88779299A193E9023827329BEB74ACFA736E8DD58FBF482FDF6
      8DFEF68BFDF381FBEE72F6E363F1D658E7C652E0B652D9A556D19757CA8854C6
      794EB35F3E3DCD852CBC6726BB54A1A480FFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFE2CDC738861E12BC1B19AF1D44DC4DDCE077EBE34EFAF888FFFE
      B8FFFEBFFEFCA9FEF891FCEE73F5E164ECCF5AE3BD58DAAB5AD49C5CCB8D57C8
      7E50BE694551DF9C37C27423AB4AE4DFD6FFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF5B813713BC1D1DBE283FE76484F3ADF6F7A5FDFD67FEFE
      A0FDFCD8FAF8C3FFFDABFEF686F8E76CEED562E4C15DDCAE5DD49F5FCD9059C4
      7D4F9C50315EE1A23EBD7165844DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFABAB8C18AC171DC72F53E48575F5CDBCFCF4FEFFF1FEFE
      BBF6F5C5F8F7DBF7F4AFF4EB80F9E96FEFD664E6C260DCB061D4A060CD925CC0
      794D9755338C78507D5436DBC6BFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF64A54521CA2E4CDA64CEE8C7EDF8F1C8FDF7F5FD
      F8F1F0C9E7E4A1DEDB9CEFE57EF9E870EFD567E5C264DCB064D4A063CD925EC0
      794E9B633C8E2B1DBD7E74FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFDEDCCD4EB13947D35CC8DFBED3F3E2CFF9EEE5FB
      F1ECF5E1E5EED4D9D39AECE170F9EA6DEFD365E4BD65DBAD64D19B60BB7D4DAD
      663F9653328F744AF6EFEDFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C5A730C24249E08FCFDEAACCEED1C6F7
      E6C6F8E9E0F2D6D3BE5CEAD763EDD862E8CE61E6C263DAAC62C28954B07349AE
      814F979251D6D0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72BB5848BD4FABA44EBBA449C0BD
      6FB7CA81C4BA6CBF9F48DDEECDDCC58EA67432C5A356C6A15BC38E4DBC884EB2
      8D52B3956AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABC59369BB5949BE636BC4
      755BCD81B3CF95C1A558D3E4DAE2ECE5BE9A63BF9D5DC09457BB854DB8B280D0
      CEB0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D5BCB7C5
      9DAEB581B49A5EAFAA78C2D0C0C6C5ADB98E62D1A77FDEBDA2E8DED1FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
  end
  inherited formStorage: TJvFormStorage
    Left = 416
    Top = 338
  end
  inherited alEdit: TActionList
    Left = 724
    Top = 304
  end
  inherited pmCustom: TPopupMenu
    Left = 796
    Top = 300
  end
  object mdPago: TdxMemData [11]
    Indexes = <>
    SortOptions = []
    SortedField = 'Orden'
    Left = 605
    Top = 305
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
  object dsPago: TDataSource [12]
    DataSet = mdPago
    Left = 657
    Top = 304
  end
  object dsEntradaPaciente: TDataSource [13]
    DataSet = qrEntradaPaciente
    OnStateChange = dsEntradaPacienteStateChange
    Left = 104
    Top = 312
  end
  object qrEntradaPacienteDetalle: TADOQuery [14]
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
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 10
        Size = 4
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT * FROM PTEntradaPacienteDetalleClinica'
      'WHERE refrecid = :rec'
      'AND DataAreaId = '#39'ldr'#39
      'ORDER BY secuencia')
    Left = 32
    Top = 360
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
      OnChange = qrEntradaPacienteDetallePRUEBAIDChange
      OnValidate = qrEntradaPacienteDetallePRUEBAIDValidate
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
    object qrEntradaPacienteDetalleSECUENCIA: TIntegerField
      FieldName = 'SECUENCIA'
    end
    object qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField
      FieldName = 'COMENTARIOMUESTRA'
      Size = 255
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
      OnChange = qrEntradaPacienteDetalleDESCUENTOChange
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
    object qrEntradaPacienteDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
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
      OnChange = qrEntradaPacienteDetalleDESCUENTOChange
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
    object qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
    end
    object qrEntradaPacienteDetalleHORAENTREGA: TStringField
      FieldName = 'HORAENTREGA'
    end
    object qrEntradaPacienteDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 2
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
    object qrEntradaPacienteDetalleESTATUS_CLINICA: TStringField
      FieldName = 'ESTATUS_CLINICA'
      Size = 2
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
    object qrEntradaPacienteDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteDetalleREFRECID: TLargeintField
      FieldName = 'REFRECID'
    end
    object qrEntradaPacienteDetalleREFRECID_POS: TLargeintField
      FieldName = 'REFRECID_POS'
    end
    object qrEntradaPacienteDetalleRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
  object dsEntradaPacienteDetalle: TDataSource [15]
    DataSet = qrEntradaPacienteDetalle
    Left = 104
    Top = 360
  end
  object ppImpFactura: TppReport [16]
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.ZoomSetting = zs100Percent
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
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
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
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
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
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
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
        DataField = 'ENTRADAID'
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
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
  object ppImpCotizacion: TppReport [17]
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.ZoomSetting = zs100Percent
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
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
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
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 14552
        mmWidth = 31221
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
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4233
        mmLeft = 50536
        mmTop = 14552
        mmWidth = 37042
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
        mmHeight = 4233
        mmLeft = 42863
        mmTop = 14288
        mmWidth = 7144
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
        DataField = 'ENTRADAID'
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
        mmLeft = 3440
        mmTop = 1058
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
  object ppEntradaPaciente: TppDBPipeline [18]
    DataSource = dsEntradaPaciente
    UserName = 'EntradaPaciente'
    Left = 224
    Top = 312
    object ppEntradaPacienteppField1: TppField
      FieldAlias = 'ENTRADAID'
      FieldName = 'ENTRADAID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteppField2: TppField
      FieldAlias = 'ORIGEN'
      FieldName = 'ORIGEN'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppEntradaPacienteppField3: TppField
      FieldAlias = 'CLIENTEID'
      FieldName = 'CLIENTEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppEntradaPacienteppField4: TppField
      FieldAlias = 'PACIENTEID'
      FieldName = 'PACIENTEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppEntradaPacienteppField5: TppField
      FieldAlias = 'POLIZAID'
      FieldName = 'POLIZAID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 4
    end
    object ppEntradaPacienteppField6: TppField
      FieldAlias = 'DOCTORID'
      FieldName = 'DOCTORID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppEntradaPacienteppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENCLINICA'
      FieldName = 'ENCLINICA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppEntradaPacienteppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'FROM_CLINICA'
      FieldName = 'FROM_CLINICA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppEntradaPacienteppField9: TppField
      FieldAlias = 'RECORDCLINICA'
      FieldName = 'RECORDCLINICA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppEntradaPacienteppField10: TppField
      FieldAlias = 'NUMEROHABITACION'
      FieldName = 'NUMEROHABITACION'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppEntradaPacienteppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'RESULTADOPACIENTE'
      FieldName = 'RESULTADOPACIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppEntradaPacienteppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'RESULTADODOCTOR'
      FieldName = 'RESULTADODOCTOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppEntradaPacienteppField13: TppField
      FieldAlias = 'HORAPROMETIDA'
      FieldName = 'HORAPROMETIDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppEntradaPacienteppField14: TppField
      FieldAlias = 'FLEBOTOMISTAID'
      FieldName = 'FLEBOTOMISTAID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 13
    end
    object ppEntradaPacienteppField15: TppField
      FieldAlias = 'PROYECTOID'
      FieldName = 'PROYECTOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 14
    end
    object ppEntradaPacienteppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECORDID'
      FieldName = 'RECORDID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppEntradaPacienteppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'BRUTO'
      FieldName = 'BRUTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 16
    end
    object ppEntradaPacienteppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTO'
      FieldName = 'DESCUENTO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 17
    end
    object ppEntradaPacienteppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUBTOTAL'
      FieldName = 'SUBTOTAL'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 18
    end
    object ppEntradaPacienteppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'NETO'
      FieldName = 'NETO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 19
    end
    object ppEntradaPacienteppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALPAGADO'
      FieldName = 'TOTALPAGADO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 20
    end
    object ppEntradaPacienteppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAPORC'
      FieldName = 'COBERTURAPORC'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 21
    end
    object ppEntradaPacienteppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURASEGURO'
      FieldName = 'COBERTURASEGURO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 22
    end
    object ppEntradaPacienteppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAVALOR'
      FieldName = 'COBERTURAVALOR'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 23
    end
    object ppEntradaPacienteppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAMONTOPRECONFIRMADO'
      FieldName = 'COBERTURAMONTOPRECONFIRMADO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 24
    end
    object ppEntradaPacienteppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOPORC'
      FieldName = 'DESCUENTOPORC'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 25
    end
    object ppEntradaPacienteppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOVALOR'
      FieldName = 'DESCUENTOVALOR'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 26
    end
    object ppEntradaPacienteppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCUENTOBONO'
      FieldName = 'DESCUENTOBONO'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 27
    end
    object ppEntradaPacienteppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'GASTOSVARIOS'
      FieldName = 'GASTOSVARIOS'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 28
    end
    object ppEntradaPacienteppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TASA'
      FieldName = 'TASA'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 29
    end
    object ppEntradaPacienteppField31: TppField
      FieldAlias = 'NOMBREPACIENTE'
      FieldName = 'NOMBREPACIENTE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 30
    end
    object ppEntradaPacienteppField32: TppField
      FieldAlias = 'TELEFONOS'
      FieldName = 'TELEFONOS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppEntradaPacienteppField33: TppField
      FieldAlias = 'TELEFONO2'
      FieldName = 'TELEFONO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 32
    end
    object ppEntradaPacienteppField34: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 33
    end
    object ppEntradaPacienteppField35: TppField
      FieldAlias = 'CLIENTENOMBRE'
      FieldName = 'CLIENTENOMBRE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 34
    end
    object ppEntradaPacienteppField36: TppField
      FieldAlias = 'SUCURSALID'
      FieldName = 'SUCURSALID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 35
    end
    object ppEntradaPacienteppField37: TppField
      FieldAlias = 'USERID'
      FieldName = 'USERID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 36
    end
    object ppEntradaPacienteppField38: TppField
      FieldAlias = 'COBROID'
      FieldName = 'COBROID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 37
    end
    object ppEntradaPacienteppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRIORIDAD'
      FieldName = 'PRIORIDAD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppEntradaPacienteppField40: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 39
    end
    object ppEntradaPacienteppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPODOCUMENTO'
      FieldName = 'TIPODOCUMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 40
    end
    object ppEntradaPacienteppField42: TppField
      FieldAlias = 'APROBACIONNO'
      FieldName = 'APROBACIONNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object ppEntradaPacienteppField43: TppField
      FieldAlias = 'APROBACIONPOR'
      FieldName = 'APROBACIONPOR'
      FieldLength = 80
      DisplayWidth = 80
      Position = 42
    end
    object ppEntradaPacienteppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURARECHAZADA'
      FieldName = 'COBERTURARECHAZADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 43
    end
    object ppEntradaPacienteppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURACONFIRMADA'
      FieldName = 'COBERTURACONFIRMADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 44
    end
    object ppEntradaPacienteppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAPRECONFIRMADA'
      FieldName = 'COBERTURAPRECONFIRMADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 45
    end
    object ppEntradaPacienteppField47: TppField
      FieldAlias = 'MUESTRANO'
      FieldName = 'MUESTRANO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 46
    end
    object ppEntradaPacienteppField48: TppField
      FieldAlias = 'MONEDAID'
      FieldName = 'MONEDAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 47
    end
    object ppEntradaPacienteppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBERTURAEXPPORC'
      FieldName = 'COBERTURAEXPPORC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 48
    end
    object ppEntradaPacienteppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'EDADPACIENTE'
      FieldName = 'EDADPACIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object ppEntradaPacienteppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEXO'
      FieldName = 'SEXO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 50
    end
    object ppEntradaPacienteppField52: TppField
      FieldAlias = 'NOMBREDOCTOR'
      FieldName = 'NOMBREDOCTOR'
      FieldLength = 80
      DisplayWidth = 80
      Position = 51
    end
    object ppEntradaPacienteppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'PUBLICARINTERNET'
      FieldName = 'PUBLICARINTERNET'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object ppEntradaPacienteppField54: TppField
      FieldAlias = 'CARNET'
      FieldName = 'CARNET'
      FieldLength = 20
      DisplayWidth = 20
      Position = 53
    end
    object ppEntradaPacienteppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'PUBLICARINTERNETDOCTOR'
      FieldName = 'PUBLICARINTERNETDOCTOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 54
    end
    object ppEntradaPacienteppField56: TppField
      FieldAlias = 'CUADREGLOBAL'
      FieldName = 'CUADREGLOBAL'
      FieldLength = 20
      DisplayWidth = 20
      Position = 55
    end
    object ppEntradaPacienteppField57: TppField
      FieldAlias = 'CUADREUSUARIO'
      FieldName = 'CUADREUSUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 56
    end
    object ppEntradaPacienteppField58: TppField
      FieldAlias = 'DESCAUTORIZADOPOR'
      FieldName = 'DESCAUTORIZADOPOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 57
    end
    object ppEntradaPacienteppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOAS400'
      FieldName = 'NOAS400'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 58
    end
    object ppEntradaPacienteppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOAXAPTA'
      FieldName = 'NOAXAPTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 59
    end
    object ppEntradaPacienteppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOFACTURA'
      FieldName = 'NOFACTURA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object ppEntradaPacienteppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'FACTEXTERIOR'
      FieldName = 'FACTEXTERIOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object ppEntradaPacienteppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'HOLD'
      FieldName = 'HOLD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object ppEntradaPacienteppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'REPMUESTRA'
      FieldName = 'REPMUESTRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppEntradaPacienteppField65: TppField
      FieldAlias = 'ENTRADAIDANT'
      FieldName = 'ENTRADAIDANT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 64
    end
    object ppEntradaPacienteppField66: TppField
      FieldAlias = 'TIPOENTRADA'
      FieldName = 'TIPOENTRADA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 65
    end
    object ppEntradaPacienteppField67: TppField
      FieldAlias = 'FORMADEPAGO'
      FieldName = 'FORMADEPAGO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 66
    end
    object ppEntradaPacienteppField68: TppField
      FieldAlias = 'DESCUENTOCARD'
      FieldName = 'DESCUENTOCARD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 67
    end
    object ppEntradaPacienteppField69: TppField
      FieldAlias = 'DESCUENTOTEXTO'
      FieldName = 'DESCUENTOTEXTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 68
    end
    object ppEntradaPacienteppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACUERDOPROPIO'
      FieldName = 'ACUERDOPROPIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 69
    end
    object ppEntradaPacienteppField71: TppField
      FieldAlias = 'CLIENTEPADRE'
      FieldName = 'CLIENTEPADRE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 70
    end
    object ppEntradaPacienteppField72: TppField
      FieldAlias = 'DESCUENTOPLANID'
      FieldName = 'DESCUENTOPLANID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 71
    end
    object ppEntradaPacienteppField73: TppField
      FieldAlias = 'HORAREGISTRO'
      FieldName = 'HORAREGISTRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 72
    end
    object ppEntradaPacienteppField74: TppField
      FieldAlias = 'HORAENTRADA'
      FieldName = 'HORAENTRADA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 73
    end
    object ppEntradaPacienteppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTATUS'
      FieldName = 'ESTATUS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 74
    end
    object ppEntradaPacienteppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOCLIENTEAS400'
      FieldName = 'TIPOCLIENTEAS400'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 75
    end
    object ppEntradaPacienteppField77: TppField
      FieldAlias = 'CLASECREDITO'
      FieldName = 'CLASECREDITO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 76
    end
    object ppEntradaPacienteppField78: TppField
      FieldAlias = 'CARNETNUMERO'
      FieldName = 'CARNETNUMERO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 77
    end
    object ppEntradaPacienteppField79: TppField
      FieldAlias = 'CLIENTEPADREAXAPTA'
      FieldName = 'CLIENTEPADREAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 78
    end
    object ppEntradaPacienteppField80: TppField
      FieldAlias = 'PACIENTEIDAXAPTA'
      FieldName = 'PACIENTEIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 79
    end
    object ppEntradaPacienteppField81: TppField
      FieldAlias = 'CLIENTEIDAXAPTA'
      FieldName = 'CLIENTEIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 80
    end
    object ppEntradaPacienteppField82: TppField
      FieldAlias = 'DOCTORIDAXAPTA'
      FieldName = 'DOCTORIDAXAPTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 81
    end
    object ppEntradaPacienteppField83: TppField
      FieldAlias = 'DATAAREAID'
      FieldName = 'DATAAREAID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 82
    end
    object ppEntradaPacienteppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECID'
      FieldName = 'RECID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object ppEntradaPacienteppField85: TppField
      FieldAlias = 'NOTA'
      FieldName = 'NOTA'
      FieldLength = 255
      DisplayWidth = 255
      Position = 84
    end
    object ppEntradaPacienteppField86: TppField
      FieldAlias = 'DIRECCION'
      FieldName = 'DIRECCION'
      FieldLength = 255
      DisplayWidth = 255
      Position = 85
    end
    object ppEntradaPacienteppField87: TppField
      FieldAlias = 'NCFTYPEID'
      FieldName = 'NCFTYPEID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 86
    end
    object ppEntradaPacienteppField88: TppField
      FieldAlias = 'NCFID'
      FieldName = 'NCFID'
      FieldLength = 19
      DisplayWidth = 19
      Position = 87
    end
    object ppEntradaPacienteppField89: TppField
      FieldAlias = 'NCFNAME'
      FieldName = 'NCFNAME'
      FieldLength = 80
      DisplayWidth = 80
      Position = 88
    end
    object ppEntradaPacienteppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalPendiente'
      FieldName = 'TotalPendiente'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 28
      Position = 89
    end
    object ppEntradaPacienteppField91: TppField
      FieldAlias = 'FECHA'
      FieldName = 'FECHA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 23
      Position = 90
    end
    object ppEntradaPacienteppField92: TppField
      FieldAlias = 'FECHADEALTA'
      FieldName = 'FECHADEALTA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 23
      Position = 91
    end
    object ppEntradaPacienteppField93: TppField
      FieldAlias = 'FECHAENTRADA'
      FieldName = 'FECHAENTRADA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 23
      Position = 92
    end
    object ppEntradaPacienteppField94: TppField
      FieldAlias = 'FECHAREGISTRO'
      FieldName = 'FECHAREGISTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 23
      Position = 93
    end
    object ppEntradaPacienteppField95: TppField
      FieldAlias = 'FECHAPROMETIDA'
      FieldName = 'FECHAPROMETIDA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 23
      Position = 94
    end
    object ppEntradaPacienteppField96: TppField
      FieldAlias = 'FECHAASEGURADORA'
      FieldName = 'FECHAASEGURADORA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 23
      Position = 95
    end
    object ppEntradaPacienteppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUADRADO'
      FieldName = 'CUADRADO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object ppEntradaPacienteppField98: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSFERIDO'
      FieldName = 'TRANSFERIDO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 97
    end
    object ppEntradaPacienteppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUCURSAL'
      FieldName = 'SUCURSAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 98
    end
    object ppEntradaPacienteppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMEROINTERNET'
      FieldName = 'NUMEROINTERNET'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 99
    end
    object ppEntradaPacienteppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'RESULTADOCLIENTE'
      FieldName = 'RESULTADOCLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object ppEntradaPacienteppField102: TppField
      Alignment = taRightJustify
      FieldAlias = 'PUBLICARINTERNETCLIENTE'
      FieldName = 'PUBLICARINTERNETCLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 101
    end
    object ppEntradaPacienteppField103: TppField
      FieldAlias = 'TRANSFERENCIA'
      FieldName = 'TRANSFERENCIA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 102
    end
    object ppEntradaPacienteppField104: TppField
      FieldAlias = 'GRUPOPRECIO'
      FieldName = 'GRUPOPRECIO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 103
    end
    object ppEntradaPacienteppField105: TppField
      FieldAlias = 'GRUPODESCUENTOLINEA'
      FieldName = 'GRUPODESCUENTOLINEA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 104
    end
    object ppEntradaPacienteppField106: TppField
      FieldAlias = 'GRUPODESCUENTOTOTAL'
      FieldName = 'GRUPODESCUENTOTOTAL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 105
    end
    object ppEntradaPacienteppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'SINPRFILTER'
      FieldName = 'SINPRFILTER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object ppEntradaPacienteppField108: TppField
      FieldAlias = 'FECHANACIMIENTO'
      FieldName = 'FECHANACIMIENTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 107
    end
    object ppEntradaPacienteppField109: TppField
      FieldAlias = 'COD_CASO'
      FieldName = 'COD_CASO'
      FieldLength = 8
      DisplayWidth = 8
      Position = 108
    end
  end
  object ppEntradaPacienteDetalle: TppDBPipeline [19]
    DataSource = dsEntradaPacienteDetalle
    UserName = 'EntradaPacienteDetalle'
    Left = 224
    Top = 360
  end
  object cxGridStyles: TcxStyleRepository [20]
    Left = 544
    Top = 300
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object menuImpresion: TPopupMenu [21]
    Left = 888
    Top = 120
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
    object RecibodeCobro1: TMenuItem
      Caption = 'Recibo de Cobro'
    end
    object NotadeCredito1: TMenuItem
      Caption = 'Nota de Credito'
      OnClick = NotadeCredito1Click
    end
    object notadedebito1: TMenuItem
      Caption = 'Nota de D'#233'bito'
      OnClick = notadedebito1Click
    end
    object Devoluciones1: TMenuItem
      Caption = 'Devoluciones'
      OnClick = Devoluciones1Click
    end
    object CuadredeCaja2: TMenuItem
      Caption = 'Cuadre de Caja'
      Enabled = False
      Visible = False
      OnClick = CuadredeCaja2Click
    end
    object InstructivodeInternet1: TMenuItem
      Caption = 'Instructivo Internet'
      OnClick = InstructivodeInternet1Click
    end
    object DepositosSucursales1: TMenuItem
      Caption = 'Depositos Sucursales'
      OnClick = DepositosSucursales1Click
    end
    object CodigodeBarra1: TMenuItem
      Caption = 'Codigo de Barra'
      OnClick = CodigodeBarra1Click
    end
  end
  object ExtraOptions1: TExtraOptions [22]
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
  object ppImpFacturaSeguro: TppReport [23]
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 256
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 280
    Top = 278
    Version = '10.04'
    mmColumnWidth = 95250
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object CabeFactSeguro: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 92075
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2117
        mmTop = 85196
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
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3970
        mmTop = 86519
        mmWidth = 10583
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
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 86519
        mmWidth = 16404
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
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 86519
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText3'
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
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 28046
        mmWidth = 62706
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3969
        mmTop = 28046
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Categor'#237'a             :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3969
        mmTop = 46038
        mmWidth = 23548
        BandType = 0
      end
      object ppDBText57: TppDBText
        UserName = 'DBText4'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 27780
        mmTop = 46038
        mmWidth = 59267
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label4'
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 64823
        mmTop = 79640
        mmWidth = 12965
        BandType = 0
      end
      object ppDBText61: TppDBText
        UserName = 'DBText101'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 78317
        mmTop = 79640
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha                  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3970
        mmTop = 61383
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fecha'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 27780
        mmTop = 61383
        mmWidth = 59002
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario                :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3970
        mmTop = 79640
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText60: TppDBText
        UserName = 'DBText602'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 27781
        mmTop = 79639
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
        Caption = 'Num.. Aprob.       : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3970
        mmTop = 70379
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText59: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'APROBACIONNO'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 27780
        mmTop = 70379
        mmWidth = 59002
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Edad :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 32544
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Doctor                 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3969
        mmTop = 50800
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText112: TppDBText
        UserName = 'DBText10'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 27780
        mmTop = 50800
        mmWidth = 59267
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
        Caption = 'Aprobado por      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3970
        mmTop = 74877
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText64: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'APROBACIONPOR'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 27780
        mmTop = 74877
        mmWidth = 59002
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label1002'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Poliza No.            :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3970
        mmTop = 65881
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'POLIZAID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 27780
        mmTop = 65881
        mmWidth = 59002
        BandType = 0
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MUESTRANO'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 27780
        mmTop = 55827
        mmWidth = 59002
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Num. de Lab.   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3970
        mmTop = 55827
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOMBRE'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4233
        mmLeft = 20638
        mmTop = 18256
        mmWidth = 67204
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText1'
        AutoSize = True
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
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4191
        mmLeft = 20638
        mmTop = 22754
        mmWidth = 21082
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'R N C : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2910
        mmTop = 22754
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sucursal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2910
        mmTop = 18256
        mmWidth = 16976
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 46567
        mmTop = 22754
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Nac.     :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3970
        mmTop = 32544
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sexo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 71173
        mmTop = 32544
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel'#233'fono         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3969
        mmTop = 37042
        mmWidth = 19050
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
        Caption = 'C'#233'dula.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 46302
        mmTop = 37041
        mmWidth = 12700
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
        Caption = 'Direcci'#243'n        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3970
        mmTop = 41540
        mmWidth = 18521
        BandType = 0
      end
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Direccion'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 22754
        mmTop = 41540
        mmWidth = 64294
        BandType = 0
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefonos'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 24077
        mmTop = 37042
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label140'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label140'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 60854
        mmTop = 37041
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel141: TppLabel
        UserName = 'Label141'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label141'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 24077
        mmTop = 32544
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label133'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 82815
        mmTop = 32544
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label138'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ISO-9001:2000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 13758
        mmWidth = 33020
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label170'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label170'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 57415
        mmTop = 32545
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label171'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label171'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 55827
        mmTop = 23019
        mmWidth = 31750
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 3810
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
        mmTop = 254
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
        mmTop = 254
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
        mmTop = 254
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppSummaryFacturaSeguro: TppSummaryBand
      BeforePrint = ppSummaryFacturaSeguroBeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 24871
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 2381
        mmWidth = 29369
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 7144
        mmWidth = 28840
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 11906
        mmWidth = 29369
        BandType = 7
      end
      object ppDBText71: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COBERTURASEGURO'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 66939
        mmTop = 11906
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
      object ppLbCoberturaPorc: TppLabel
        UserName = 'LbCoberturaPorc'
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 66939
        mmTop = 7144
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
        mmHeight = 4572
        mmLeft = 1059
        mmTop = 20108
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLbCoberturaValor: TppLabel
        UserName = 'LbCoberturaValor'
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 66939
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppImpFactPacienteConSeguro: TppReport [24]
    AutoStop = False
    Columns = 2
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 326
    Top = 278
    Version = '10.04'
    mmColumnWidth = 44450
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand4: TppHeaderBand
      BeforePrint = ppHeaderBand4BeforePrint
      mmBottomOffset = 0
      mmHeight = 86784
      mmPrintPosition = 0
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
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 27781
        mmWidth = 62177
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
        Caption = 'Paciente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 27781
        mmWidth = 21960
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
        Caption = 'Categor'#237'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 51065
        mmWidth = 15610
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 51065
        mmWidth = 67733
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 70115
        mmWidth = 18521
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape1'
        mmHeight = 5027
        mmLeft = 2116
        mmTop = 81492
        mmWidth = 84930
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3704
        mmTop = 81756
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENTRADAID'
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
        mmLeft = 55563
        mmTop = 18255
        mmWidth = 31485
        BandType = 0
      end
      object LbFechayHora: TppLabel
        UserName = 'LbFechayHora'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'LbFechayHora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2116
        mmTop = 60325
        mmWidth = 84931
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 82021
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 78317
        mmTop = 82021
        mmWidth = 7408
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
        Caption = 'Doctor    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 55563
        mmWidth = 15610
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 55563
        mmWidth = 67733
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 26194
        mmTop = 70379
        mmWidth = 36777
        BandType = 0
      end
      object ppDBText78: TppDBText
        UserName = 'DBText78'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MUESTRANO'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 32544
        mmWidth = 33602
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Num. de Lab.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2116
        mmTop = 32545
        mmWidth = 21696
        BandType = 0
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOMBRE'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 18255
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        AutoSize = True
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
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4191
        mmLeft = 19845
        mmTop = 22754
        mmWidth = 21082
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label136'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'R N C : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2116
        mmTop = 22754
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sucursal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2116
        mmTop = 18256
        mmWidth = 16976
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label139'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 45773
        mmTop = 22754
        mmWidth = 7673
        BandType = 0
      end
      object LbEntregaCobertura: TppLabel
        UserName = 'LbEntregaCobertura'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'LbEntregaCobertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2116
        mmTop = 65088
        mmWidth = 84930
        BandType = 0
      end
      object ppLabel142: TppLabel
        UserName = 'Label142'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Nac.    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 37041
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label143'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label143'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 37042
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'Label144'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sexo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 59796
        mmTop = 37042
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel145: TppLabel
        UserName = 'Label145'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label145'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 70379
        mmTop = 37041
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel146: TppLabel
        UserName = 'Label146'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel'#233'fono.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 41804
        mmWidth = 15610
        BandType = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefonos'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 41804
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#233'dula.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 44186
        mmTop = 41804
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel149: TppLabel
        UserName = 'Label149'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Direcci'#243'n.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 46567
        mmWidth = 15875
        BandType = 0
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Direccion'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 46567
        mmWidth = 67733
        BandType = 0
      end
      object ppLabel150: TppLabel
        UserName = 'Label150'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Edad :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 59531
        mmTop = 32544
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel151: TppLabel
        UserName = 'Label151'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ISO-9001:2000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2116
        mmTop = 13758
        mmWidth = 33020
        BandType = 0
      end
      object ppLabel148: TppLabel
        UserName = 'Label148'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label148'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 58738
        mmTop = 41804
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel172: TppLabel
        UserName = 'Label172'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label172'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 70379
        mmTop = 32544
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel173: TppLabel
        UserName = 'Label173'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label173'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 53711
        mmTop = 22754
        mmWidth = 32808
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
        Caption = 'Usuario :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 74613
        mmWidth = 14023
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 74613
        mmWidth = 35454
        BandType = 0
      end
    end
    object ppColumnHeaderBand2: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBandConSeguro: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4572
      mmPrintPosition = 0
      object ppDBText74: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRIPCION'
        DataPipeline = ppEntradaPacienteDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPacienteDetalle'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 265
        mmWidth = 41540
        BandType = 4
      end
    end
    object ppColumnFooterBand2: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryFactPacienteConSeguro: TppSummaryBand
      BeforePrint = ppSummaryFactPacienteConSeguroBeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 32279
      mmPrintPosition = 0
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
        mmHeight = 4318
        mmLeft = 254
        mmTop = 27960
        mmWidth = 88646
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label201'
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 11113
        mmWidth = 29718
        BandType = 7
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 15610
        mmWidth = 29718
        BandType = 7
      end
      object ppLabel71: TppLabel
        UserName = 'LbPendienteTit1'
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 20108
        mmWidth = 29718
        BandType = 7
      end
      object LbNetoCon: TppLabel
        UserName = 'LbNetoCon'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbNeto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 11113
        mmWidth = 21590
        BandType = 7
      end
      object LbPagadoCon: TppLabel
        UserName = 'LbPagadoCon'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPagado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 15610
        mmWidth = 21590
        BandType = 7
      end
      object LbPendienteCon: TppLabel
        UserName = 'LbPendienteCon'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPendiente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 20108
        mmWidth = 21590
        BandType = 7
      end
      object LbDescConTitulo: TppLabel
        UserName = 'LbDescConTitulo'
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 6615
        mmWidth = 63500
        BandType = 7
      end
      object LbDescuentoCon: TppLabel
        UserName = 'LbDescuentoCon'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbDescuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 6615
        mmWidth = 21590
        BandType = 7
      end
      object ppLabel135: TppLabel
        UserName = 'Label135'
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 2117
        mmWidth = 29718
        BandType = 7
      end
      object LbBrutoCon: TppLabel
        UserName = 'LbBrutoCon'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbBruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 2117
        mmWidth = 21696
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppImpFactPacienteSinSeguro: TppReport [25]
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '6350'
      '50800')
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 373
    Top = 278
    Version = '10.04'
    mmColumnWidth = 44450
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand5: TppHeaderBand
      BeforePrint = ppHeaderBand5BeforePrint
      mmBottomOffset = 0
      mmHeight = 87577
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 82286
        mmWidth = 84930
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 70908
        mmTop = 82550
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Determinaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 44979
        mmTop = 82550
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
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
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 22754
        mmTop = 27252
        mmWidth = 63765
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 27252
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Categor'#237'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 50800
        mmWidth = 16140
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText67'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 50800
        mmWidth = 67469
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 70115
        mmWidth = 18521
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText69'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENTRADAID'
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
        mmLeft = 55563
        mmTop = 18255
        mmWidth = 31221
        BandType = 0
      end
      object LbFechayHora1: TppLabel
        UserName = 'LbFechayHora1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'LbFechayHora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2116
        mmTop = 60325
        mmWidth = 84931
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 75142
        mmWidth = 14288
        BandType = 0
      end
      object ppDBText79: TppDBText
        UserName = 'DBText79'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 78317
        mmTop = 75142
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Doctor    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 55563
        mmWidth = 16140
        BandType = 0
      end
      object ppDBText81: TppDBText
        UserName = 'DBText81'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 55563
        mmWidth = 67469
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 26194
        mmTop = 70379
        mmWidth = 36777
        BandType = 0
      end
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MUESTRANO'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 22754
        mmTop = 32279
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Num. de Lab.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2116
        mmTop = 32279
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText83: TppDBText
        UserName = 'DBText83'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOMBRE'
        DataPipeline = DM.ppSucursal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppSucursal'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 18255
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText84: TppDBText
        UserName = 'DBText84'
        AutoSize = True
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
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 4191
        mmLeft = 19844
        mmTop = 22754
        mmWidth = 17526
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'R N C : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2116
        mmTop = 22754
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sucursal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2116
        mmTop = 18255
        mmWidth = 16976
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel. : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 45773
        mmTop = 22754
        mmWidth = 7673
        BandType = 0
      end
      object LbEntregaCobertura1: TppLabel
        UserName = 'LbEntregaCobertura1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'LbEntregaCobertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2116
        mmTop = 65088
        mmWidth = 84930
        BandType = 0
      end
      object ppLabel152: TppLabel
        UserName = 'Label152'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Nac.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 37042
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel153: TppLabel
        UserName = 'Label153'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label153'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 23020
        mmTop = 37041
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label154'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sexo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 55563
        mmTop = 37042
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label155'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label155'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 66675
        mmTop = 37042
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label156'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel'#233'fono  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 41804
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText115: TppDBText
        UserName = 'DBText115'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefonos'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 41804
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel157: TppLabel
        UserName = 'Label157'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#233'dula.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 44979
        mmTop = 41804
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel158: TppLabel
        UserName = 'Label158'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Direcci'#243'n.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 46302
        mmWidth = 16140
        BandType = 0
      end
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Direccion'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 46302
        mmWidth = 67733
        BandType = 0
      end
      object ppLabel159: TppLabel
        UserName = 'Label159'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label159'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 58738
        mmTop = 41804
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel160: TppLabel
        UserName = 'Label1501'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Edad :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 55563
        mmTop = 32279
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel161: TppLabel
        UserName = 'Label161'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ISO-9001:2000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2116
        mmTop = 13758
        mmWidth = 33020
        BandType = 0
      end
      object ppLabel174: TppLabel
        UserName = 'Label174'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label174'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 66146
        mmTop = 32279
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel175: TppLabel
        UserName = 'Label175'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label175'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 53975
        mmTop = 22754
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2116
        mmTop = 75142
        mmWidth = 14023
        BandType = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText603'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 16669
        mmTop = 75142
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Determinaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 82550
        mmWidth = 22754
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28310
        mmTop = 82550
        mmWidth = 15346
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
      ColumnTraversal = ctLeftToRight
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
        mmLeft = 2117
        mmTop = 265
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
        mmLeft = 28046
        mmTop = 265
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
      mmHeight = 32015
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 11113
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 15610
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 20108
        mmWidth = 29718
        BandType = 7
      end
      object LbNetoSin: TppLabel
        UserName = 'LbNetoSin'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbNetoSin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 11113
        mmWidth = 21590
        BandType = 7
      end
      object LbPagadoSin: TppLabel
        UserName = 'LbPagadoSin'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPagadoSin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 15610
        mmWidth = 21590
        BandType = 7
      end
      object LbPendienteSin: TppLabel
        UserName = 'LbPendienteSin'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPendienteSin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 20108
        mmWidth = 21590
        BandType = 7
      end
      object LbDescSinTitulo: TppLabel
        UserName = 'LbDescSinTitulo'
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 6615
        mmWidth = 63500
        BandType = 7
      end
      object LbDescuentoSin: TppLabel
        UserName = 'LbDescuentoSin'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbDescuentoSin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 6615
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
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 2117
        mmWidth = 29718
        BandType = 7
      end
      object LbBrutoSin: TppLabel
        UserName = 'LbBrutoSin'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbBrutoSin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64770
        mmTop = 2117
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
        mmHeight = 4318
        mmLeft = 254
        mmTop = 27696
        mmWidth = 88646
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
  object MenuFunciones: TPopupMenu [26]
    Left = 781
    Top = 152
    object RegistrarNuevoPaciente1: TMenuItem
      Caption = 'Registrar Nuevo Paciente'
      OnClick = RegistrarNuevoPaciente1Click
    end
    object ConfirmarCobertura1: TMenuItem
      Caption = 'Confirmar Cobertura'
    end
    object RegistrarFechaPrometida1: TMenuItem
      Caption = 'Registrar Fecha Prometida'
      OnClick = RegistrarFechaPrometida1Click
    end
    object DistribucionCaja1: TMenuItem
      Caption = 'Distribuci'#243'n Cobrado'
      Visible = False
      OnClick = DistribucionCaja1Click
    end
    object CambiarLaboratorioNoenlasLineas1: TMenuItem
      Caption = 'Cambiar Laboratorio No. en las Lineas'
      OnClick = CambiarLaboratorioNoenlasLineas1Click
    end
    object Asignar2daMuestra1: TMenuItem
      Caption = 'Asignar Factura Como 2da. Muestra'
    end
    object AsignarDescuentoPermitidoalUsuario1: TMenuItem
      Caption = 'Asignar Descuento Permitido al Usuario'
    end
    object AsignarDescuentoPermitidoalEmpleado1: TMenuItem
      Caption = 'Asignar Descuento Permitido al Empleado'
      OnClick = AsignarDescuentoPermitidoalEmpleado1Click
    end
    object AsignarDescuentoAutorizadoporCobros1: TMenuItem
      Caption = 'Asignar Descuento Autorizado por Cobros'
      OnClick = AsignarDescuentoAutorizadoporCobros1Click
    end
    object EliminarDescuentoAplicado1: TMenuItem
      Caption = 'Eliminar Descuento Aplicado'
      OnClick = EliminarDescuentoAplicado1Click
    end
    object GastosVarios1: TMenuItem
      Caption = 'Gastos Varios'
    end
    object RegistrarPruebadelExterior1: TMenuItem
      Caption = 'Registrar Prueba del Exterior'
      OnClick = RegistrarPruebadelExterior1Click
    end
    object Materiales1: TMenuItem
      Caption = 'Materiales'
    end
    object BtInterfaseAS400: TMenuItem
      Caption = 'Interfase AS-400'
      OnClick = BtInterfaseAS400Click
    end
    object CuadredeCaja1: TMenuItem
      Caption = 'Generar el Cuadre de Caja'
      OnClick = CuadredeCaja1Click
    end
    object TransferirAxapta1: TMenuItem
      Caption = 'Marcar para Transferir a Axapta'
      OnClick = TransferirAxapta1Click
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
    object VerTransacciones1: TMenuItem
      Caption = 'Ver Transacciones'
      OnClick = VerTransacciones1Click
    end
    object BalanceActual1: TMenuItem
      Caption = 'Balance Actual'
      OnClick = BalanceActual1Click
    end
    object RecibosdelAS4001: TMenuItem
      Caption = 'Recibos del AS-400'
      OnClick = RecibosdelAS4001Click
    end
    object CancelarOrdenInterfaseAS4001: TMenuItem
      Caption = 'Cancelar Orden Interfase AS-400'
      OnClick = CancelarOrdenInterfaseAS4001Click
    end
  end
  object MenuGrid: TPopupMenu [27]
    Left = 822
    Top = 152
    object MenuItem1: TMenuItem
      Caption = 'Ver Cobertura Especial'
      OnClick = MenuItem1Click
    end
  end
  object ppImpFacturaExterior: TppReport [28]
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 420
    Top = 278
    Version = '10.04'
    mmColumnWidth = 95250
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand6: TppHeaderBand
      BeforePrint = ppHeaderBand6BeforePrint
      mmBottomOffset = 0
      mmHeight = 84931
      mmPrintPosition = 0
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
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 32015
        mmWidth = 61119
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 32015
        mmWidth = 23019
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 1058
        mmTop = 77788
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
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 78846
        mmWidth = 16669
        BandType = 0
      end
      object ppDBText92: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENTRADAID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 59002
        mmWidth = 60854
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 59002
        mmWidth = 16140
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 63765
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 63765
        mmWidth = 60854
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 68263
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 68263
        mmWidth = 60854
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 72761
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 36513
        mmWidth = 23019
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 54240
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 54240
        mmWidth = 61119
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 72761
        mmWidth = 60854
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
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 27252
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
        DataField = 'MUESTRANO'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 25665
        mmTop = 27252
        mmWidth = 61119
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
        mmLeft = 2117
        mmTop = 22225
        mmWidth = 85461
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText66'
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
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOMBRE'
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
      object ppDBText77: TppDBText
        UserName = 'DBText77'
        AutoSize = True
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
        mmLeft = 41185
        mmTop = 16669
        mmWidth = 21082
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RNC : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 16669
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel162: TppLabel
        UserName = 'Label162'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Date of Birth :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 40746
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel163: TppLabel
        UserName = 'Label163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label163'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 40747
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel164: TppLabel
        UserName = 'Label164'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sex :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 74083
        mmTop = 40481
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label165'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label165'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 83608
        mmTop = 40481
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Phone :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 45244
        mmWidth = 15610
        BandType = 0
      end
      object ppDBText121: TppDBText
        UserName = 'DBText121'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefonos'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 45244
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label167'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ID.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 52652
        mmTop = 44979
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label168'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Street :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 49742
        mmWidth = 14552
        BandType = 0
      end
      object ppDBText122: TppDBText
        UserName = 'DBText122'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Direccion'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 49742
        mmWidth = 67998
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label169'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label169'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 58738
        mmTop = 44979
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel176: TppLabel
        UserName = 'Label176'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label176'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 36513
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel177: TppLabel
        UserName = 'Label177'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label177'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 11906
        mmWidth = 85196
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
        mmLeft = 3440
        mmTop = 529
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
      mmHeight = 5080
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
        mmHeight = 4572
        mmLeft = 1058
        mmTop = 254
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
  end
  object ppReport1: TppReport [29]
    AutoStop = False
    DataPipeline = ppEntradaPacienteDetalle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 480
    Top = 313
    Version = '10.04'
    mmColumnWidth = 95250
    DataPipelineName = 'ppEntradaPacienteDetalle'
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 84667
      mmPrintPosition = 0
      object ppDBText90: TppDBText
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
      object ppDBText91: TppDBText
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
      object ppLabel87: TppLabel
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
      object ppShape10: TppShape
        UserName = 'Shape1'
        mmHeight = 6085
        mmLeft = 2117
        mmTop = 78052
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel92: TppLabel
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
        mmLeft = 3704
        mmTop = 79111
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel95: TppLabel
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
        mmTop = 79111
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText95: TppDBText
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
      object ppLabel96: TppLabel
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
        mmTop = 79111
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText96: TppDBText
        UserName = 'DBText3'
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
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 25665
        mmWidth = 58208
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Paciente       :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 25665
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Categor'#237'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 34925
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText100: TppDBText
        UserName = 'DBText4'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 34925
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label4'
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
        mmLeft = 62442
        mmTop = 71438
        mmWidth = 12965
        BandType = 0
      end
      object ppDBText101: TppDBText
        UserName = 'DBText101'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 76729
        mmTop = 71438
        mmWidth = 8467
        BandType = 0
      end
      object ppDBText102: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENTRADAID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 44186
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Registro No.  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 44186
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha            :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 48683
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText103: TppDBText
        UserName = 'DBText6'
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
        mmLeft = 28575
        mmTop = 48683
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label7'
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
        mmLeft = 3969
        mmTop = 53181
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText104: TppDBText
        UserName = 'DBText7'
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
        mmLeft = 28575
        mmTop = 53181
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3704
        mmTop = 71438
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText105: TppDBText
        UserName = 'DBText602'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 71438
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label100'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Aprobacion    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 62177
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText106: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'APROBACIONNO'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 62177
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label9'
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
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 30163
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText107: TppDBText
        UserName = 'DBText9'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 30163
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label10'
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
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 39423
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText110: TppDBText
        UserName = 'DBText10'
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
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 39423
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label1001'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Aprobado por :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 66675
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText117: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'APROBACIONPOR'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 66675
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label1002'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Poliza No.     :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 57679
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText118: TppDBText
        UserName = 'DBText70'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'POLIZAID'
        DataPipeline = ppEntradaPaciente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 57679
        mmWidth = 57944
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 4318
      mmPrintPosition = 0
      object ppLabel121: TppLabel
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
      object ppLabel122: TppLabel
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
      object ppLabel123: TppLabel
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
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryFacturaSeguroBeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppLabel124: TppLabel
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 2911
        mmWidth = 29369
        BandType = 7
      end
      object ppLabel125: TppLabel
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 7673
        mmWidth = 28840
        BandType = 7
      end
      object ppLabel126: TppLabel
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 12435
        mmWidth = 29369
        BandType = 7
      end
      object ppDBText119: TppDBText
        UserName = 'DBText202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COBERTURASEGURO'
        DataPipeline = ppEntradaPaciente
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppEntradaPaciente'
        mmHeight = 4233
        mmLeft = 66939
        mmTop = 12435
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel127: TppLabel
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 85481
        mmTop = 7938
        mmWidth = 2540
        BandType = 7
      end
      object ppLabel128: TppLabel
        UserName = 'LbCoberturaPorc'
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 66939
        mmTop = 7673
        mmWidth = 16933
        BandType = 7
      end
      object ppShape11: TppShape
        UserName = 'Shape2'
        mmHeight = 1058
        mmLeft = 1059
        mmTop = 529
        mmWidth = 86784
        BandType = 7
      end
      object ppMemo1: TppMemo
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
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 6085
        mmLeft = 1059
        mmTop = 20638
        mmWidth = 86784
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel129: TppLabel
        UserName = 'LbCoberturaValor'
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
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 66939
        mmTop = 2911
        mmWidth = 17198
        BandType = 7
      end
    end
  end
  inherited cxIntl1: TcxIntl
    Left = 619
    Top = 362
  end
  object menuInternet: TPopupMenu
    Left = 914
    Top = 120
    object InternetPaciente1: TMenuItem
      Caption = 'Internet Paciente'
    end
    object InternetCliente1: TMenuItem
      Caption = 'Internet Cliente'
    end
    object InternetDoctor1: TMenuItem
      Caption = 'Internet Doctor'
    end
  end
  object qrBalanceCliente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cli'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'doc'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT monedaid, SUM(valor) as Valor, '
      'SUM(valorMST) ValorRD FROM PTClienteTransacciones'
      'WHERE ClienteId = :cli'
      'AND DocumentoAplica <> :doc'
      'group by monedaid')
    Left = 168
    Top = 336
    object qrBalanceClientemonedaid: TStringField
      FieldName = 'monedaid'
      Size = 3
    end
    object qrBalanceClienteValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrBalanceClienteValorRD: TBCDField
      FieldName = 'ValorRD'
      ReadOnly = True
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
  end
  object ppReport2: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 480
    Top = 352
    Version = '10.04'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object MenuEspecial: TPopupMenu
    Left = 781
    Top = 240
    object MenuItem5: TMenuItem
      Caption = 'Cambiar Laboratorio No. en las Lineas'
      OnClick = CambiarLaboratorioNoenlasLineas1Click
    end
    object MenuItem7: TMenuItem
      Caption = 'Asignar Descuento Permitido al Usuario'
    end
    object MenuItem8: TMenuItem
      Caption = 'Asignar Descuento Autorizado por Cobros'
      OnClick = AsignarDescuentoAutorizadoporCobros1Click
    end
    object MenuItem9: TMenuItem
      Caption = 'Eliminar Descuento Aplicado'
      OnClick = EliminarDescuentoAplicado1Click
    end
    object MenuItem12: TMenuItem
      Caption = 'InterfaseAS400'
      OnClick = BtInterfaseAS400Click
    end
    object MenuItem13: TMenuItem
      Caption = 'Generar el Cuadre de Caja'
      OnClick = CuadredeCaja1Click
    end
    object MenuItem14: TMenuItem
      Caption = 'Marcar para Transferir a Axapta'
      OnClick = TransferirAxapta1Click
    end
    object MenuItem17: TMenuItem
      Caption = 'Marcar Prueba NO Procesar'
      OnClick = MarcarPruebaNOProcesar1Click
    end
    object MenuItem18: TMenuItem
      Caption = 'Ver Transacciones'
      OnClick = VerTransacciones1Click
    end
    object MenuItem19: TMenuItem
      Caption = 'Balance Actual'
      OnClick = BalanceActual1Click
    end
  end
  object RAWPrinter1: TRAWPrinter
    Left = 536
    Top = 368
  end
  object cxViewRepository: TcxGridViewRepository
    Left = 576
    Top = 328
    object vwDoctores: TcxGridDBTableView
      OnKeyDown = vwDoctoresKeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM.dsDoctor
      DataController.KeyFieldNames = 'DoctorID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object vwDoctoresDoctorID: TcxGridDBColumn
        DataBinding.FieldName = 'DoctorId'
        Width = 80
      end
      object vwDoctoresNombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
        Width = 250
      end
    end
  end
  object cxEditRepository: TcxEditRepository
    Left = 644
    Top = 344
    object cxTextEdit: TcxEditRepositoryTextItem
    end
    object cxIntEdit: TcxEditRepositorySpinItem
    end
    object cxCalcEdit: TcxEditRepositoryCalcItem
      Properties.QuickClose = True
    end
    object cxDateEdit: TcxEditRepositoryDateItem
      Properties.InputKind = ikStandard
      Properties.SaveTime = False
      Properties.ShowTime = False
    end
    object cxComboBoxEdit: TcxEditRepositoryComboBoxItem
    end
    object cxCheckBoxEdit: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'SI'
          Value = 1
        end
        item
          Description = 'NO'
          Value = 0
        end
        item
          Description = 'TODOS'
          Value = ''
        end>
    end
    object cxPostadoSiNoAmbos: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'NO'
          Value = '0'
        end
        item
          Description = 'SI'
          Value = '1'
        end
        item
          Description = 'AMBOS'
          Value = '2'
        end>
    end
    object cxIcTodoGrupoTabla: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'TABLA'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'GRUPO'
          Value = '1'
        end
        item
          Description = 'TODO'
          Value = '2'
        end>
    end
    object cxIcIvDimField: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Configuracion'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Talla'
          Value = '2'
        end
        item
          Description = 'Color'
          Value = '3'
        end
        item
          Description = 'Almacen'
          Value = '4'
        end
        item
          Description = 'Ubicaci'#243'n'
          Value = '5'
        end
        item
          Description = 'Lote'
          Value = '6'
        end
        item
          Description = 'N'#250'mero de Serie'
          Value = '7'
        end>
    end
    object icTodoTabla: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'TODO'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'TABLA'
          Value = '2'
        end>
    end
    object cxDateMaskEdit: TcxEditRepositoryMaskItem
      Properties.EditMask = '!99/99/0000;1; '
    end
    object cxSvProgressBar: TcxEditRepositoryProgressBar
      Properties.BarStyle = cxbsLEDs
      Properties.ShowText = False
    end
    object cxLcProcesos: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'ProcesoId'
      Properties.ListColumns = <
        item
          Caption = 'Proceso'
          FieldName = 'ProcesoId'
        end
        item
          Caption = 'Descripci'#243'n'
          FieldName = 'Descripcion'
        end>
    end
    object icFormaEntregaPruebas: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'NINGUNO'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'PERSONAL'
          Value = 1
        end
        item
          Description = 'FAX'
          Value = 2
        end>
    end
    object elcDoctores: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
      Properties.ImmediatePost = True
      Properties.View = vwDoctores
      Properties.KeyFieldNames = 'DoctorID'
      Properties.ListFieldItem = vwDoctoresDoctorID
      Properties.MaxLength = 0
    end
    object elcProyecto: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcFlebotomista: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
      Properties.MaxLength = 0
    end
    object elcGrupoCliente: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
      Properties.ImmediatePost = True
      Properties.MaxLength = 0
    end
    object elcClientes: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcPacientes: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcGrupoPrueba: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object lcMonedas: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'MoneadaID'
      Properties.ListColumns = <
        item
          Caption = 'Moneda'
          FieldName = 'MoneadaID'
        end>
    end
    object elcPruebas: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object icTipoCliente: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'PRIVADO'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'SEGURO'
          Value = 1
        end
        item
          Description = 'CLINICA'
          Value = 2
        end
        item
          Description = 'LABORATORIO'
          Value = 3
        end>
    end
    object elcCiudad: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.FocusPopup = True
    end
    object elcEspecialidad: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcSeguro: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcGastosVarios: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object cxIcTodoGrupoTablaTarjetaDescuentos: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'TABLA - CLIENTE'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'GRUPO - CLIENTE'
          Value = '1'
        end
        item
          Description = 'TODOS - CLIENTES'
          Value = '2'
        end
        item
          Description = 'TABLA - TARJETA DESCUENTO'
          Value = '3'
        end>
    end
    object elcTarjetaDescuento: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcDiasProcesamiento: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcUnidades: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcMateriales: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcDepartamento: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcMuestras: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcConceptoNotas: TcxEditRepositoryExtLookupComboBoxItem
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object icFormaEntregaPruebaDoctor: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'NINGUNO'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'CONSULTORIO'
          Value = 1
        end
        item
          Description = 'FAX'
          Value = 2
        end>
    end
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterPost = qrEntradaPacienteAfterPost
    OnCalcFields = qrEntradaPacienteCalcFields
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTEntradaPacienteClinica'
      'WHERE RecId = :rec'
      'AND DataAreaId = '#39'ldr'#39)
    Left = 32
    Top = 312
    object qrEntradaPacienteENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaPacienteHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacientePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      OnValidate = qrEntradaPacientePACIENTEIDValidate
      Size = 10
    end
    object qrEntradaPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      OnChange = qrEntradaPacienteCLIENTEIDChange
      Size = 10
    end
    object qrEntradaPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      OnChange = qrEntradaPacienteDOCTORIDChange
      Size = 10
    end
    object qrEntradaPacientePOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 80
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
    object qrEntradaPacienteNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
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
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      OnValidate = qrEntradaPacienteNOMBREPACIENTEValidate
      Size = 80
    end
    object qrEntradaPacienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
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
    object qrEntradaPacienteTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacientePRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaPacienteFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaPacienteCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      OnValidate = qrEntradaPacienteCOBERTURAPORCValidate
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      OnValidate = qrEntradaPacienteCOBERTURAVALORValidate
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteORIGEN: TStringField
      FieldName = 'ORIGEN'
      OnChange = qrEntradaPacienteORIGENChange
      Size = 10
    end
    object qrEntradaPacienteAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaPacienteAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 80
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
      OnChange = qrEntradaPacienteTIPOENTRADAChange
      Size = 2
    end
    object qrEntradaPacienteFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
      Size = 10
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
    object qrEntradaPacienteSEXO: TIntegerField
      FieldName = 'SEXO'
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
    object qrEntradaPacienteTRANSFERENCIA: TStringField
      FieldName = 'TRANSFERENCIA'
      Size = 10
    end
    object qrEntradaPacienteGRUPOPRECIO: TStringField
      FieldName = 'GRUPOPRECIO'
      Size = 10
    end
    object qrEntradaPacienteTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
      OnChange = qrEntradaPacienteTIPODOCUMENTOChange
    end
    object qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField
      FieldName = 'GRUPODESCUENTOLINEA'
      Size = 10
    end
    object qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField
      FieldName = 'GRUPODESCUENTOTOTAL'
      Size = 10
    end
    object qrEntradaPacienteRESULTADOCLIENTE: TIntegerField
      FieldName = 'RESULTADOCLIENTE'
    end
    object qrEntradaPacienteRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaPacienteRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaPacienteFROM_CLINICA: TIntegerField
      FieldName = 'FROM_CLINICA'
    end
    object qrEntradaPacienteESTATUS_CLINICA: TStringField
      FieldName = 'ESTATUS_CLINICA'
      Size = 2
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
    object qrEntradaPacienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteTotalPendiente: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalPendiente'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrEntradaPacienteRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
end
