object frmImpresionListados: TfrmImpresionListados
  Left = 0
  Top = 0
  Caption = 'Impresion de Listados'
  ClientHeight = 559
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 373
    Top = 233
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Color = 16311249
    ParentColor = False
  end
  object dxLayoutControl3: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 515
    Height = 559
    Align = alClient
    TabOrder = 0
    LookAndFeel = dmAppActions.lnfWeb
    ExplicitWidth = 517
    object RgMuestra: TcxRadioGroup
      Left = 11
      Top = 460
      HelpType = htKeyword
      Caption = 'Muestra Tomada'
      ItemIndex = 2
      Properties.Columns = 3
      Properties.DefaultValue = 'T'
      Properties.Items = <
        item
          Caption = 'No'
          Value = 'N'
        end
        item
          Caption = 'Si'
          Value = 'S'
        end
        item
          Caption = 'Todas'
          Value = 'T'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Shadow = False
      Style.TextColor = clWindowText
      TabOrder = 15
      Transparent = True
      Height = 40
      Width = 230
    end
    object btaceptarcuadre: TcxButton
      Left = 23
      Top = 519
      Width = 200
      Height = 22
      Caption = 'Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 17
    end
    object btcancelarcuadre: TcxButton
      Left = 270
      Top = 519
      Width = 200
      Height = 22
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 18
    end
    object EdEmplFin: TcxTextEdit
      Left = 349
      Top = 13
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object CiaIni: TcxTextEdit
      Left = 125
      Top = 72
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object CiaFin: TcxTextEdit
      Left = 349
      Top = 72
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object EmplIni: TcxTextEdit
      Left = 125
      Top = 13
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object DeptoIni: TcxTextEdit
      Left = 125
      Top = 131
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object DeptoFin: TcxTextEdit
      Left = 349
      Top = 131
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object LabIni: TcxTextEdit
      Left = 125
      Top = 190
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object LabFin: TcxTextEdit
      Left = 349
      Top = 190
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object SucIni: TcxTextEdit
      Left = 125
      Top = 249
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object SucFin: TcxTextEdit
      Left = 349
      Top = 249
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object PosIni: TcxTextEdit
      Left = 125
      Top = 308
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object PosFin: TcxTextEdit
      Left = 349
      Top = 308
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object FechaIni: TcxDateEdit
      Left = 125
      Top = 367
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 12
      Width = 121
    end
    object FechaFin: TcxDateEdit
      Left = 349
      Top = 367
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 13
      Width = 121
    end
    object RgImpresion: TcxRadioGroup
      Left = 252
      Top = 460
      HelpType = htKeyword
      Caption = 'Etiquetas Impresas'
      ItemIndex = 2
      Properties.Columns = 3
      Properties.DefaultValue = 'T'
      Properties.Items = <
        item
          Caption = 'No'
          Value = 'N'
        end
        item
          Caption = 'Si'
          Value = 'S'
        end
        item
          Caption = 'Todas'
          Value = 'T'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Shadow = False
      Style.TextColor = clWindowText
      TabOrder = 16
      Transparent = True
      Height = 40
      Width = 230
    end
    object CbOrdenar: TcxComboBox
      Left = 125
      Top = 426
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'CARGO'
        'DEPARTAMENTO'
        'EMPLEADO'
        'EMPRESA'
        'NUMERO'
        'SUCURSAL')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 14
      Text = 'NUMERO'
      Width = 121
    end
    object dxLayoutGroup2: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl3Group14: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object GrupoParametros: TdxLayoutGroup
          Caption = 'Parametros Cuadre'
          ShowCaption = False
          ShowBorder = False
          object GrupoEmpleados: TdxLayoutGroup
            Caption = 'Filtrar Empleados'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item34: TdxLayoutItem
              Caption = 'Paciente Inicial'
              Control = EmplIni
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item35: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Paciente Final'
              Control = EdEmplFin
              ControlOptions.ShowBorder = False
            end
          end
          object GroupEmpresas: TdxLayoutGroup
            Caption = 'Filtrar Empresas'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item36: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Empresa Incial'
              Control = CiaIni
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item38: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Empresa Final'
              Control = CiaFin
              ControlOptions.ShowBorder = False
            end
          end
          object GrupoDepartamento: TdxLayoutGroup
            Caption = 'Filtrar Departamentos'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item37: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Departamento Inicial'
              Control = DeptoIni
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item39: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Departamento Final'
              Control = DeptoFin
              ControlOptions.ShowBorder = False
            end
          end
          object GrupoLaboratorio: TdxLayoutGroup
            Caption = 'Filtrar Numero de Laboratorio'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item40: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Laboratorio Inicial'
              Control = LabIni
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item41: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Laboratorio Final'
              Control = LabFin
              ControlOptions.ShowBorder = False
            end
          end
          object GrupoSucursales: TdxLayoutGroup
            Caption = 'Filtrar Sucursales'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item42: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Sucursal Inicial'
              Control = SucIni
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item43: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Sucursal Final'
              Control = SucFin
              ControlOptions.ShowBorder = False
            end
          end
          object GrupoCargos: TdxLayoutGroup
            Caption = 'Filtrar por Cargos'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item44: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Cargo Inicial'
              Control = PosIni
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item45: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Cargo Inicial'
              Control = PosFin
              ControlOptions.ShowBorder = False
            end
          end
          object GrupoToma: TdxLayoutGroup
            Caption = 'Filtrar por Fecha de Toma de Muestra'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Fecha Inicial'
              Control = FechaIni
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item33: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Fecha Final'
              Control = FechaFin
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl3Group2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object GrupoOrdenar: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Ordernar El Listado por :'
              object dxLayoutControl3Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ordenar por'
                Control = CbOrdenar
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl3Group1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutItem1: TdxLayoutItem
                AutoAligns = []
                Caption = 'New Item'
                ShowCaption = False
                Control = RgMuestra
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem2: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahRight
                Caption = 'cxRadioGroup1'
                ShowCaption = False
                Control = RgImpresion
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
        object GroupSaldo: TdxLayoutGroup
          Caption = 'Saldo Final en Caja'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
        end
      end
      object botonescuadre: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'botonescuadre'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        object dxLayoutControl3Item31: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btaceptarcuadre
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl3Item10: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = btcancelarcuadre
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end