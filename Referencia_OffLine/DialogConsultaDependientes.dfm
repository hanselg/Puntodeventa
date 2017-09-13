object frmDialogDependiente: TfrmDialogDependiente
  Left = 0
  Top = 0
  Caption = 'Consulta Dependientes'
  ClientHeight = 251
  ClientWidth = 765
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 765
    Height = 251
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 11
      Top = 11
      Width = 743
      Height = 198
      TabOrder = 0
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.KeyFieldNames = 'ClienteID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object dbDatosSeleccion: TcxGridDBColumn
          DataBinding.FieldName = 'Seleccion'
          PropertiesClassName = 'TcxRadioGroupProperties'
          Properties.DefaultValue = False
          Properties.Items = <
            item
              Value = '0'
            end>
          HeaderAlignmentHorz = taRightJustify
          Width = 54
        end
        object dbDatosClienteID: TcxGridDBColumn
          DataBinding.FieldName = 'ClienteID'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 61
        end
        object dbDatosCedula: TcxGridDBColumn
          DataBinding.FieldName = 'Cedula'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 118
        end
        object dbDatosTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 90
        end
        object dbDatosNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 289
        end
        object dbDatosTelefono: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 117
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object btcancelar: TcxButton
      Left = 679
      Top = 215
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      ModalResult = 2
      TabOrder = 2
    end
    object btaceptar: TcxButton
      Left = 598
      Top = 215
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'cxGrid1'
        ShowCaption = False
        Control = cgDatos
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = btaceptar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btcancelar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = JvMemoryData1
    Left = 148
    Top = 79
  end
  object qrPacientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Identificacion%'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT '#39#39' as Selecciona ,clienteid,identificacion as Cedula,grup' +
        'ocliente as TipoPaciente,nombre,telefono FROM PtCliente'
      'Where DataAreaId='#39'ldr'#39
      'and GrupoCliente in ('#39'03'#39','#39'05'#39') '
      'And Identificacion like :Identificacion%'
      'And Estatus='#39'0'#39
      '')
    Left = 64
    Top = 80
    object qrPacientesSelecciona: TStringField
      FieldName = 'Selecciona'
      ReadOnly = True
      Size = 1
    end
    object qrPacientesclienteid: TStringField
      FieldName = 'clienteid'
      Size = 10
    end
    object qrPacientesCedula: TStringField
      FieldName = 'Cedula'
    end
    object qrPacientesTipoPaciente: TStringField
      FieldName = 'TipoPaciente'
      Size = 25
    end
    object qrPacientesnombre: TStringField
      FieldName = 'nombre'
      Size = 80
    end
    object qrPacientestelefono: TStringField
      FieldName = 'telefono'
    end
  end
  object JvMemoryData1: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Seleccion'
        DataType = ftBoolean
      end
      item
        Name = 'PruebaID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Precio'
        DataType = ftCurrency
      end
      item
        Name = 'PrecioDolares'
        DataType = ftCurrency
      end>
    Left = 216
    Top = 72
    object JvMemoryData1Seleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object JvMemoryData1ClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object JvMemoryData1Cedula: TStringField
      FieldName = 'Cedula'
    end
    object JvMemoryData1Tipo: TStringField
      FieldName = 'Tipo'
    end
    object JvMemoryData1Nombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object JvMemoryData1Telefono: TStringField
      FieldName = 'Telefono'
    end
  end
end
