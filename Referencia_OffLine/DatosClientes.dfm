inherited frmDatosClientes: TfrmDatosClientes
  ActiveControl = pcDatos
  Caption = 'Clientes y Pacientes'
  ClientHeight = 585
  ClientWidth = 931
  OnClose = nil
  OnCloseQuery = nil
  OnDestroy = nil
  OnKeyUp = nil
  OnPaint = nil
  ExplicitWidth = 947
  ExplicitHeight = 623
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 931
    Height = 552
    ExplicitWidth = 931
    ExplicitHeight = 552
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 340
      ClientRectRight = 586
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            Width = 781
            Height = 420
            ExplicitWidth = 781
            ExplicitHeight = 420
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'ClienteID'
              object tvDatosClienteID: TcxGridDBColumn
                DataBinding.FieldName = 'ClienteID'
                Width = 90
              end
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
                Width = 200
              end
              object tvDatosGrupoCliente: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'GrupoCliente'
                RepositoryItem = DM.elcGrupoCliente
                Width = 90
              end
              object tvDatosIdentificacion: TcxGridDBColumn
                DataBinding.FieldName = 'IDENTIFICACION'
              end
              object tvDatosQuienPaga: TcxGridDBColumn
                Caption = 'Quien Paga'
                DataBinding.FieldName = 'QUIENPAGA'
                Width = 60
              end
              object tvDatosCobrarDiferencia: TcxGridDBColumn
                Caption = 'Diferencia'
                DataBinding.FieldName = 'COBRARDIFERENCIA'
                Width = 60
              end
              object tvDatosCodigoAxapta: TcxGridDBColumn
                Caption = 'C'#243'digo Axapta'
                DataBinding.FieldName = 'CodigoAxapta'
                Width = 90
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          object edcliente: TcxDBTextEdit [0]
            Tag = 99
            Left = 107
            Top = 90
            DataBinding.DataField = 'CLIENTEID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 145
          end
          object EdNombre: TcxDBTextEdit [1]
            Left = 107
            Top = 117
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 395
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 107
            Top = 377
            DataBinding.DataField = 'Contacto'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 17
            Width = 395
          end
          object cxDBTextEdit6: TcxDBTextEdit [3]
            Left = 107
            Top = 458
            DataBinding.DataField = 'email'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 21
            Width = 395
          end
          object cxDBTextEdit7: TcxDBTextEdit [4]
            Left = 107
            Top = 485
            DataBinding.DataField = 'direccionweb'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 22
            Width = 395
          end
          object cxDBMemo1: TcxDBMemo [5]
            Left = 107
            Top = 257
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Height = 60
            Width = 395
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [6]
            Left = 107
            Top = 323
            RepositoryItem = DM.elcCiudad
            DataBinding.DataField = 'CIUDADID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 15
            Width = 200
          end
          object CbClientePrincipal: TcxDBExtLookupComboBox [7]
            Left = 639
            Top = 36
            RepositoryItem = DM.elcPacientes
            DataBinding.DataField = 'PRINCIPAL'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 8
            Width = 145
          end
          object CbSexo: TcxDBImageComboBox [8]
            Left = 639
            Top = 63
            DataBinding.DataField = 'Sexo'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                ImageIndex = 0
              end
              item
                Description = 'FEMENINO'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'MASCULINO'
                Value = 1
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 9
            Width = 145
          end
          object EdFechaBorn: TcxDBDateEdit [9]
            Left = 639
            Top = 90
            DataBinding.DataField = 'FechaNacimiento'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 10
            Width = 145
          end
          object EdPoliza: TcxDBTextEdit [10]
            Left = 639
            Top = 144
            DataBinding.DataField = 'Poliza'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 145
          end
          object CbGrupoClientes: TcxDBExtLookupComboBox [11]
            Left = 107
            Top = 171
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoCliente'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 5
            Width = 145
          end
          object CbTipodeCliente: TcxDBImageComboBox [12]
            Left = 107
            Top = 198
            DataBinding.DataField = 'TipoCliente'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'ACCIONISTAS'
                Tag = 1
                Value = 'ACC'
              end
              item
                Description = 'COMPANIA'
                Tag = 2
                Value = 'CIA'
              end
              item
                Description = 'CLINICA'
                ImageIndex = 0
                Tag = 3
                Value = 'CLI'
              end
              item
                Description = 'EMPLEADO'
                Tag = 4
                Value = 'EMP'
              end
              item
                Description = 'LABORATORIO'
                Tag = 5
                Value = 'LAB'
              end
              item
                Description = 'PRIVADO'
                Tag = 6
                Value = 'PRI'
              end
              item
                Description = 'SEGURO'
                Tag = 7
                Value = 'SEG'
              end
              item
                Description = 'VIP'
                Tag = 8
                Value = 'VIP'
              end>
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            Width = 145
          end
          object cxDBTextEdit10: TcxDBTextEdit [13]
            Left = 107
            Top = 144
            DataBinding.DataField = 'Alias'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 395
          end
          object EdAseguradora: TcxDBTextEdit [14]
            Left = 639
            Top = 117
            DataBinding.DataField = 'Seguro'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 121
          end
          object cxDBTextEdit9: TcxDBTextEdit [15]
            Left = 107
            Top = 350
            DataBinding.DataField = 'Sector'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 16
            Width = 395
          end
          object cxDBImageComboBox1: TcxDBImageComboBox [16]
            Left = 639
            Top = 171
            DataBinding.DataField = 'TipoSangre'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'A+'
                ImageIndex = 0
                Value = 'A+'
              end
              item
                Description = 'A-'
                Value = 'A-'
              end
              item
                Description = 'B+'
                Value = 'B-'
              end
              item
                Description = 'B-'
                Value = 'B-'
              end
              item
                Description = 'O+'
                Value = 'O+'
              end
              item
                Description = 'O-'
                Value = 'O-'
              end
              item
                Description = 'AB+'
                Value = 'AB+'
              end
              item
                Description = 'AB-'
                Value = 'AB-'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 13
            Width = 121
          end
          object EdCedula: TcxDBMaskEdit [17]
            Left = 107
            Top = 63
            DataBinding.DataField = 'IDENTIFICACION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            OnExit = EdCedulaExit
            Width = 145
          end
          object cxDBMaskEdit3: TcxDBMaskEdit [18]
            Left = 107
            Top = 431
            DataBinding.DataField = 'FAX'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 19
            Width = 121
          end
          object cxDBMaskEdit4: TcxDBMaskEdit [19]
            Left = 234
            Top = 404
            DataBinding.DataField = 'TELEFONO2'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 20
            Width = 121
          end
          object cxDBMaskEdit5: TcxDBMaskEdit [20]
            Left = 107
            Top = 404
            DataBinding.DataField = 'TELEFONO'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 18
            Width = 121
          end
          object imgFoto: TcxImage [21]
            Left = 532
            Top = 257
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.Stretch = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 23
            Height = 250
            Width = 292
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox [22]
            Left = 325
            Top = 171
            RepositoryItem = DM.elcNacionalidad
            DataBinding.DataField = 'COD_NACION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ImmediatePost = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 6
            Width = 177
          end
          object cbExtDocumento: TcxDBExtLookupComboBox [23]
            Left = 107
            Top = 36
            RepositoryItem = DM.elcDocumento
            DataBinding.DataField = 'Tipo_Documento'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.FocusPopup = True
            Properties.OnChange = cbExtDocumentoPropertiesChange
            Properties.OnCloseUp = cbExtDocumentoPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcDatosGroup1: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'General'
                object lcDatosItem6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tipo Documento'
                  Control = cbExtDocumento
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem14: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Cedula/RNC'
                  Control = EdCedula
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Cliente'
                  Control = edcliente
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre'
                  Control = EdNombre
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Alias del Cliente'
                  Control = cxDBTextEdit10
                  ControlOptions.ShowBorder = False
                end
                object lcDatosGroup6: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosGrupos: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Grupo de Cliente'
                    Control = CbGrupoClientes
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Nacionalidad'
                    Control = cxDBExtLookupComboBox2
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosTipos: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tipo de Cliente'
                  Control = CbTipodeCliente
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGrpPacientes: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'Paciente'
                object LcDatosPrincipal: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Principal'
                  Control = CbClientePrincipal
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem20: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Sexo'
                  Control = CbSexo
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem21: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Fecha de Nacimiento'
                  Control = EdFechaBorn
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem15: TdxLayoutItem
                  Caption = 'Aseguradora'
                  Control = EdAseguradora
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem23: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Poliza No.:'
                  Control = EdPoliza
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem19: TdxLayoutItem
                  Caption = 'Tipo de Sangre'
                  Control = cxDBImageComboBox1
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object lcDatosGroup7: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcDatosGroup2: TdxLayoutGroup
                AutoAligns = []
                AlignVert = avClient
                Caption = 'Contacto'
                object lcDatosItem12: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Direcci'#243'n'
                  Control = cxDBMemo1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem13: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Ciudad'
                  Control = cxDBExtLookupComboBox1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem16: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Sector'
                  Control = cxDBTextEdit9
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Contacto'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosGroup3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosGroup4: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object lcDatosItem22: TdxLayoutItem
                      Caption = 'Telefono(s)'
                      Control = cxDBMaskEdit5
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem11: TdxLayoutItem
                      Caption = 'Fax'
                      Control = cxDBMaskEdit3
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object lcDatosItem18: TdxLayoutItem
                    Control = cxDBMaskEdit4
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosItem7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Email'
                  Control = cxDBTextEdit6
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Direcci'#243'n Web'
                  Control = cxDBTextEdit7
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGrpFoto: TdxLayoutGroup
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                Caption = 'Foto'
                object lcDatosItem3: TdxLayoutItem
                  Control = imgFoto
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object BtTransacciones: TcxButton [1]
      Left = 819
      Top = 7
      Width = 100
      Height = 25
      Caption = 'Transacciones'
      TabOrder = 1
      OnClick = BtTransaccionesClick
    end
    object BtBalance: TcxButton [2]
      Left = 819
      Top = 38
      Width = 100
      Height = 25
      Caption = 'Balance'
      TabOrder = 2
      OnClick = BtBalanceClick
    end
    object BtParametro: TcxButton [3]
      Left = 819
      Top = 69
      Width = 100
      Height = 25
      Caption = 'Crear Parametros'
      TabOrder = 3
      OnClick = BtParametroClick
    end
    object BtTarjeta: TcxButton [4]
      Left = 819
      Top = 100
      Width = 100
      Height = 25
      Caption = 'Tarjeta Descuento'
      TabOrder = 4
      OnClick = BtTarjetaClick
    end
    object BtRelacionados: TcxButton [5]
      Left = 819
      Top = 131
      Width = 100
      Height = 25
      Caption = 'Relacionados'
      TabOrder = 5
      OnClick = BtRelacionadosClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF155381155381155381FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1553813E63
        883AA0D837A3D01370BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF4C1E1E4C1E1E4C1E1E4C1E1E4C1E1E4C1E1EFF00FFFF00FFFF00FFFF00FF
        1553813A648A3297D169E1FC74EAFA1370BFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF4C1E1E4C1E1EDA9A4BDDA054CAA353CAA353DDA054DA9A4B4C1E1E48
        1C1CFF00FF1553813F6388319AD767DEFC75EAF651C1FF1370BFFF00FFFF00FF
        FF00FFFF00FF4C1E1E4C1E1EC56A0CC56A0CC56A0CB86E0F36A12E289C286881
        1BBC660BBC660B87551522496C38638A3398D369E0FB73E9F64DBDFF1878CCFF
        00FFFF00FFFF00FFFF00FF4C1E1EB45301BB5800BB5800B85800AF5300697316
        2D892D257B262178227E47032073202D52683D63893299D566DDFC75EAF64FC0
        FE1878CFFF00FFFF00FFFF00FFFF00FF4C1E1EA35C07B75400B75400B45200A4
        4B00873E00525E1D5B5E1E595A1C385A1B275315164F4632638E3399D469E1FB
        74EAF64CBDFF1979CFFF00FFFF00FFFF00FFFF00FFFF00FF4C1E1E9E6B0FB44F
        00B14E00A34800884306A16021C98A4BD79654D4904CC17F3B96641E36463519
        83C66BE1FF74EAF64EBFFC1874C7FF00FFFF00FFFF00FFFF00FFFF00FF4C1E1E
        6CD16C9D6812B04D01A74900914809C68849F2C595E2D49CD7CB89D4C680D9BD
        75E5A35CBC752F40787F42BCE551C2FF1A78CC453D23441B1BFF00FFFF00FFFF
        00FFFF00FF4C1E1E7DCF70A97020B4590F9D4806BC8041F4D3ABE3D8A7DAD49C
        D8D396D7CE8ED3C983CEC177DEA95CB17431284C521651764640279F41004B1D
        1DFF00FFFF00FFFF00FF4C1E1E7DCF70AA5D13BB6B2AB55F1A9C5A18EAC197E9
        EDCBE1E0B0DEDEADDCDAA7D9D59CD7CF8FD3C781D0BD73DD904780440F602600
        8E3800A54100A641004C1E1EFF00FFFF00FF4C1E1E928835BB6B2ABD753DB66D
        2DAD7838F4E5C6E9EDCCE2E9C1E0E7C0DDE3B8DADDAAD8D49CD5CB8ACFC47BE3
        A35CA565225C2300873400785103824C024C1E1EFF00FFFF00FF4C1E1E9E3900
        C68857C17D4CB48C4EB78245F6EED7EBF2D8E6F3D7E3F2D7E1EBC7DCE1B5D9D9
        A4D7CF91D4BF7ADDAF68AB6C2A5E2401843000357F11764E034C1E1EFF00FFFF
        00FF4C1E1EA64C13CB9369C68857BD753DB27E3EF6EED7F0F8E7EDFBEAEEFBED
        E3F0D4DDE5BBDADAA7D7D095D8B574E2B470A36B2941450E8337031D9D1D4769
        0A4C1E1EFF00FFFF00FF4C1E1EA34A17CF9D79C68B64C17D4CA57A38EFD7B7F2
        FCEDEFFAEAEBF8E3E5F0D1DEE3BADADAA7D7D093D9BF80E5AC7084601F415C16
        4377181F9F1F2882104C1E1EFF00FFFF00FF4C1E1EA34A17D3A68ECC9775C68B
        64AF8C55C9965FF4F8E6F2FAE9EDF3DCE3EAC6DEE1B1DDD19EDACF98EAD4A0BD
        7F3E56631F319D322BA62B20A0202289124C1E1EFF00FFFF00FFFF00FF4C1E1E
        D9B29DD1A387C99172C0815DA77538D3A573F4EBD3EEF6E0EBE5CAE9C4A6E9C4
        A1F2CCA5CC92566F6B253B9F3B35AC362CA92C20A0204C1E1EFF00FFFF00FFFF
        00FFFF00FF4C1E1EBC7D5AD7AF99CE9D82C58B6DBC7D5AA17A3ABA8447DEB588
        EBC7A3EDC69EDCAB78B5783878752B49AD4942B44237B1382CA92C20A0204C1E
        1EFF00FFFF00FFFF00FFFF00FFFF00FF4C1E1ED7AF99D3A995C9957DC0866AB4
        936B9ECE83979349986B2B907E35808C3F69B05458C1584FBF5042B74235B036
        2BA72B4C1E1EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4C1E1E9F5334DAB7
        A6D3A68EC9957DBD8166B26D4E99B17286E0867AD97B6FD37064CC6557C5584C
        BD4C41B64134AD342A9C284C1E1EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF561E169F5334D3A995CFA18BC58F76BC7E62A6926390AB67927641769E
        4E5ECA5F53C2544BB042449E334A701D4C1E1EFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF4C1E1E4C1E1EC08469CE9E88C48C72B28864
        98995FA95B3A906A377B8038726927802E074C1E1E4C1E1EFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4C1E1E4C
        1E1EA95B3AB26D4EAA5D3DA3522F9342198C2E0C4C1E1E4C1E1EFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF4C1E1E4C1E1E4C1E1E4C1E1E4C1E1E4C1E1EFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BtLookInternet: TcxButton [6]
      Left = 819
      Top = 193
      Width = 100
      Height = 25
      Caption = 'Consultar Internet'
      TabOrder = 7
      OnClick = BtLookInternetClick
    end
    object BtCrearInternet: TcxButton [7]
      Left = 819
      Top = 162
      Width = 100
      Height = 25
      Caption = 'Crear Internet'
      TabOrder = 6
      OnClick = BtCrearInternetClick
    end
    object BtParametro2: TcxButton [8]
      Left = 819
      Top = 224
      Width = 100
      Height = 25
      Caption = 'Ver Parametros'
      TabOrder = 8
      OnClick = BtParametro2Click
    end
    object btPacientes: TcxButton [9]
      Left = 819
      Top = 255
      Width = 100
      Height = 25
      Caption = 'Buscar Pacientes'
      TabOrder = 9
      OnClick = btPacientesClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF005A5A5A00353535005A5A5A005A5A5A003535
        35005A5A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00946321008D563400AF493100CA5135008D56
        340094632100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0094632100CB633700C94D3000E4573B00B563
        2E0094632100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0094632100F7634A00DB523400F7634A00C96A
        3A0094632100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF004E98D90094632100F65B4000F65B4000F65B4000F65B
        4000946321004E98D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F8725800D8553600F6593800F6573600F64F2E00F653
        3200D8553600F56D5200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F56D5200D8563700F8654400F7614000F6513000F658
        3700D8563700F56D5200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F56D5200D8573800F8694800F8654400F6523100F65C
        3B00D8573800F56D5200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F56D5200FB836500F96E4D00F8674700F6533300F760
        3F00FA816100F56D5200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F56D5200FB7D5C00F96F4F00F7755600FFDEAD00F662
        4200FD846800F56D5200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F56D5200F4644600FFEFD700FFEFD700F464
        4600F56D5200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002475B4002475B400FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F8CBA00429AE1003592E3003F8C
        BA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00479EEA0059ADF100449EEC003590
        E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0054A9EF0091D4FF0048A1ED003995
        E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0047A0EC003E9BEA00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtTransacciones
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = BtBalance
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'cxButton3'
            ShowCaption = False
            Control = BtParametro
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'cxButton4'
            ShowCaption = False
            Control = BtTarjeta
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtRelacionados
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtCrearInternet
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtLookInternet
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtParametro2
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            ShowCaption = False
            Control = btPacientes
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 931
    ExplicitWidth = 931
  end
  inherited formStorage: TJvFormStorage
    Left = 456
    Top = 99
  end
  inherited dsDatos: TDataSource
    AutoEdit = True
    DataSet = DM.qrClientes
    Left = 188
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 362
    Top = 97
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38921.843721967590000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38921.843721967590000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 512
    Top = 3
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 409
    Top = 131
  end
  inherited SaveDialog: TSaveDialog
    Left = 409
    Top = 96
  end
  inherited qryHelper: TADOQuery
    Left = 876
    Top = 323
  end
  inherited alEdit: TActionList
    Left = 348
    Top = 3
  end
  inherited pmCustom: TPopupMenu
    Left = 616
    Top = 3
  end
  inherited qrDefaultView: TADOQuery
    SQL.Strings = (
      'SELECT *'
      '   FROM SysUserFormView (nolock)'
      'WHERE UserID = :pUser'
      '   AND FormName = :pForm'
      '   AND Tipo = :pTipo')
    Left = 840
    Top = 323
  end
  inherited strView: TJvStrHolder
    Left = 276
    Top = 96
  end
  inherited strTableNames: TJvStrHolder
    Left = 315
    Top = 96
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 362
    Top = 131
  end
  inherited qrUserFields: TABSQuery
    Left = 276
    Top = 131
  end
  inherited qrVistas: TABSQuery
    Left = 323
    Top = 131
  end
  object qrClientes: TADOQuery [18]
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeOpen = qrClientesBeforeOpen
    AfterOpen = qrClientesAfterOpen
    BeforeInsert = qrClientesBeforeInsert
    BeforeEdit = qrClientesBeforeEdit
    BeforePost = qrClientesBeforePost
    AfterPost = qrClientesAfterPost
    BeforeDelete = qrClientesBeforeDelete
    AfterScroll = qrClientesAfterScroll
    OnNewRecord = qrClientesNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT Top 1 * FROM PTCliente (nolock)'
      'WHERE DataAreaId = '#39'ldr'#39
      'and GrupoCliente IN ('#39'04'#39','#39'11'#39','#39'05'#39','#39'03'#39') '
      'ORDER BY ClienteId DESC')
    Left = 136
    Top = 3
    object qrClientesCLIENTEID: TStringField
      DisplayLabel = 'Cliente Id'
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
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
    object qrClientesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrClientesFAX: TStringField
      FieldName = 'FAX'
    end
    object qrClientesIDENTIFICACION: TStringField
      DisplayLabel = 'Cedula y/o RNC'
      FieldName = 'IDENTIFICACION'
      OnValidate = qrClientesIDENTIFICACIONValidate
    end
    object qrClientesGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      OnChange = qrClientesGRUPOCLIENTEChange
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
    object qrClientesMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrClientesORIGEN: TIntegerField
      FieldName = 'ORIGEN'
      OnChange = qrClientesORIGENChange
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
    object qrClientesSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrClientesFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
      OnValidate = qrClientesFECHANACIMIENTOValidate
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
    object qrClientesESTATUS: TIntegerField
      FieldName = 'ESTATUS'
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
    object qrClientesTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrClientesDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
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
    object qrClientesCOD_PROV_REF: TStringField
      FieldName = 'COD_PROV_REF'
    end
    object qrClientesRECID: TLargeintField
      FieldName = 'RECID'
    end
    object qrClientesCOD_NACION: TIntegerField
      FieldName = 'COD_NACION'
    end
    object qrClientesTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
    end
    object qrClientesNUMPRINT: TWordField
      FieldName = 'NUMPRINT'
    end
  end
  object pmAcuerdoComercial: TPopupMenu [19]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = pmCustomPopup
    Left = 560
    Top = 3
    object Precios1: TMenuItem
      Caption = 'Precios'
    end
    object Descuentos1: TMenuItem
      Caption = 'Descuentos'
    end
  end
  object ActionList1: TActionList [20]
    Left = 688
    Top = 3
  end
end
