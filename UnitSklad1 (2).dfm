object MainForm: TMainForm
  Left = 265
  Top = 273
  Caption = #1040#1083#1100#1092#1072'-'#1057#1082#1083#1072#1076
  ClientHeight = 466
  ClientWidth = 1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = RxMainMenu1
  OldCreateOrder = False
  WindowMenu = N1
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 1082
    Height = 383
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1057#1082#1083#1072#1076
      object Panel1: TPanel
        Left = 0
        Top = 338
        Width = 1074
        Height = 17
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object LbNumRecordsSklad: TStaticText
          Left = 87
          Top = 1
          Width = 105
          Height = 15
          Hint = #1057#1091#1084#1084#1072' '#1074#1089#1077#1093' '#1079#1072#1087#1080#1089#1077#1081
          Align = alLeft
          Caption = 'LbNumRecordsSklad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object StaticText1: TStaticText
          Left = 1
          Top = 1
          Width = 86
          Height = 15
          Align = alLeft
          Caption = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1080#1089#1077#1081':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object StaticText2: TStaticText
          Left = 211
          Top = 1
          Width = 69
          Height = 15
          Align = alLeft
          Caption = #1057#1091#1084#1084#1072' '#1084#1077#1089#1090':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object LbSumN_ItemsSklad: TStaticText
          Left = 280
          Top = 1
          Width = 103
          Height = 15
          Hint = #1057#1091#1084#1084#1072' '#1074#1089#1077#1093' '#1079#1072#1087#1080#1089#1077#1081
          Align = alLeft
          Caption = 'LbSumN_ItemsSklad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object StaticText4: TStaticText
          Left = 402
          Top = 1
          Width = 72
          Height = 15
          Align = alLeft
          Caption = #1057#1091#1084#1084#1072' '#1085#1077#1090#1090#1086':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object LbSumNet_WeightSklad: TStaticText
          Left = 474
          Top = 1
          Width = 121
          Height = 15
          Hint = #1057#1091#1084#1084#1072' '#1074#1089#1077#1093' '#1079#1072#1087#1080#1089#1077#1081
          Align = alLeft
          Caption = 'LbSumNet_WeightSklad'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object StaticText6: TStaticText
          Left = 631
          Top = 1
          Width = 77
          Height = 15
          Align = alLeft
          Caption = #1057#1091#1084#1084#1072' '#1073#1088#1091#1090#1090#1086':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object LbSumGross_WeightSklad: TStaticText
          Left = 708
          Top = 1
          Width = 131
          Height = 15
          Hint = #1057#1091#1084#1084#1072' '#1074#1089#1077#1093' '#1079#1072#1087#1080#1089#1077#1081
          Align = alLeft
          Caption = 'LbSumGross_WeightSklad'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object LbSelSumNum: TStaticText
          Left = 192
          Top = 1
          Width = 19
          Height = 15
          Hint = #1057#1091#1084#1084#1072' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1093' '#1079#1072#1087#1080#1089#1077#1081
          Align = alLeft
          Caption = '(0) '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object LbSelSumItems: TStaticText
          Left = 383
          Top = 1
          Width = 19
          Height = 15
          Hint = #1057#1091#1084#1084#1072' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1093' '#1079#1072#1087#1080#1089#1077#1081
          Align = alLeft
          Caption = '(0) '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object LbSelSumNet: TStaticText
          Left = 595
          Top = 1
          Width = 36
          Height = 15
          Hint = #1057#1091#1084#1084#1072' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1093' '#1079#1072#1087#1080#1089#1077#1081
          Align = alLeft
          Caption = #1082#1075'. (0) '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
        end
        object LbSelSumWeight: TStaticText
          Left = 839
          Top = 1
          Width = 33
          Height = 15
          Hint = #1057#1091#1084#1084#1072' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1093' '#1079#1072#1087#1080#1089#1077#1081
          Align = alLeft
          Caption = #1082#1075'. (0)'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
      end
      object JvDBUltimGrid1: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 1074
        Height = 338
        Align = alClient
        DataSource = DataUnit.DSSklad
        DefaultDrawing = False
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        PopupMenu = RxPopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = JvDBUltimGrid1CellClick
        OnDrawColumnCell = JvDBUltimGrid1DrawColumnCell
        OnDblClick = JvDBUltimGrid1DblClick
        AutoSort = False
        IniStorage = FormPlacement1
        MultiSelect = True
        TitleArrow = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'NameProd'
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Producer'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Transport'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fridge'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sklad'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lot'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Packing'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Weight_place'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_Items'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Net_weight'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Gross_weight'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comment'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Color'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083' '#1087#1086#1089#1090#1072#1074#1086#1082
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 338
        Width = 1074
        Height = 17
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object LbNumRecordsIncoming: TStaticText
          Left = 87
          Top = 1
          Width = 78
          Height = 15
          Align = alLeft
          Caption = 'LbNumRecords'
          TabOrder = 0
        end
        object StaticText10: TStaticText
          Left = 1
          Top = 1
          Width = 86
          Height = 15
          Align = alLeft
          Caption = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1080#1089#1077#1081':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object StaticText11: TStaticText
          Left = 189
          Top = 1
          Width = 69
          Height = 15
          Align = alLeft
          Caption = #1057#1091#1084#1084#1072' '#1084#1077#1089#1090':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object LbSumN_ItemsIncoming: TStaticText
          Left = 258
          Top = 1
          Width = 119
          Height = 15
          Align = alLeft
          Caption = 'LbSumN_ItemsIncoming'
          TabOrder = 3
        end
        object StaticText13: TStaticText
          Left = 412
          Top = 1
          Width = 72
          Height = 15
          Align = alLeft
          Caption = #1057#1091#1084#1084#1072' '#1085#1077#1090#1090#1086':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object LbSumNet_WeightIncoming: TStaticText
          Left = 484
          Top = 1
          Width = 94
          Height = 15
          Align = alLeft
          Caption = 'LbSumNet_Weight'
          TabOrder = 5
        end
        object StaticText15: TStaticText
          Left = 612
          Top = 1
          Width = 77
          Height = 15
          Align = alLeft
          Caption = #1057#1091#1084#1084#1072' '#1073#1088#1091#1090#1090#1086':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object LbSumGross_WeightIncoming: TStaticText
          Left = 689
          Top = 1
          Width = 104
          Height = 15
          Align = alLeft
          Caption = 'LbSumGross_Weight'
          TabOrder = 7
        end
        object StaticText17: TStaticText
          Left = 165
          Top = 1
          Width = 24
          Height = 15
          Align = alLeft
          AutoSize = False
          TabOrder = 8
        end
        object StaticText18: TStaticText
          Left = 377
          Top = 1
          Width = 35
          Height = 15
          Align = alLeft
          AutoSize = False
          TabOrder = 9
        end
        object StaticText19: TStaticText
          Left = 578
          Top = 1
          Width = 34
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = #1082#1075'.'
          TabOrder = 10
        end
        object StaticText20: TStaticText
          Left = 793
          Top = 1
          Width = 34
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = #1082#1075'.'
          TabOrder = 11
        end
      end
      object JvDBUltimGrid2: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 1074
        Height = 338
        Align = alClient
        DataSource = DataUnit.DSLogIncoming
        DefaultDrawing = False
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        PopupMenu = RxPopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = JvDBUltimGrid1CellClick
        OnDrawColumnCell = JvDBUltimGrid2DrawColumnCell
        OnDblClick = JvDBUltimGridEditMode
        AutoSort = False
        IniStorage = FormPlacement1
        MultiSelect = True
        TitleArrow = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DateTime'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NameProd'
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Producer'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Transport'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fridge'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sklad'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lot'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Weight_place'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_Items'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Net_weight'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Gross_weight'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comment'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Color'
            Visible = False
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083' '#1088#1072#1089#1093#1086#1076#1086#1074
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 338
        Width = 1074
        Height = 17
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object LbNumRecordsSale: TStaticText
          Left = 87
          Top = 1
          Width = 78
          Height = 15
          Align = alLeft
          Caption = 'LbNumRecords'
          TabOrder = 0
        end
        object StaticText22: TStaticText
          Left = 1
          Top = 1
          Width = 86
          Height = 15
          Align = alLeft
          Caption = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1080#1089#1077#1081':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object StaticText23: TStaticText
          Left = 189
          Top = 1
          Width = 69
          Height = 15
          Align = alLeft
          Caption = #1057#1091#1084#1084#1072' '#1084#1077#1089#1090':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object LbSumN_ItemsSale: TStaticText
          Left = 258
          Top = 1
          Width = 76
          Height = 15
          Align = alLeft
          Caption = 'LbSumN_Items'
          TabOrder = 3
        end
        object StaticText25: TStaticText
          Left = 369
          Top = 1
          Width = 72
          Height = 15
          Align = alLeft
          Caption = #1057#1091#1084#1084#1072' '#1085#1077#1090#1090#1086':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object LbSumNet_WeightSale: TStaticText
          Left = 441
          Top = 1
          Width = 94
          Height = 15
          Align = alLeft
          Caption = 'LbSumNet_Weight'
          TabOrder = 5
        end
        object StaticText27: TStaticText
          Left = 784
          Top = 1
          Width = 70
          Height = 15
          Align = alLeft
          Caption = #1047#1072' '#1093#1088#1072#1085#1077#1085#1080#1077':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object LbSum_Storage_fee: TStaticText
          Left = 854
          Top = 1
          Width = 101
          Height = 15
          Align = alLeft
          Caption = 'LbSum_Storage_fee'
          TabOrder = 7
        end
        object StaticText29: TStaticText
          Left = 165
          Top = 1
          Width = 24
          Height = 15
          Align = alLeft
          AutoSize = False
          TabOrder = 8
        end
        object StaticText30: TStaticText
          Left = 334
          Top = 1
          Width = 35
          Height = 15
          Align = alLeft
          AutoSize = False
          TabOrder = 9
        end
        object StaticText31: TStaticText
          Left = 535
          Top = 1
          Width = 34
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = #1082#1075'.'
          TabOrder = 10
        end
        object StaticText32: TStaticText
          Left = 750
          Top = 1
          Width = 34
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = #1082#1075'.'
          TabOrder = 11
        end
        object StaticText9: TStaticText
          Left = 569
          Top = 1
          Width = 77
          Height = 15
          Align = alLeft
          Caption = #1057#1091#1084#1084#1072' '#1073#1088#1091#1090#1090#1086':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object LbSumGross_WeightSale: TStaticText
          Left = 646
          Top = 1
          Width = 104
          Height = 15
          Align = alLeft
          Caption = 'LbSumGross_Weight'
          TabOrder = 13
        end
        object StaticText14: TStaticText
          Left = 955
          Top = 1
          Width = 34
          Height = 15
          Align = alLeft
          AutoSize = False
          Caption = #1088'.'
          TabOrder = 14
        end
      end
      object JvDBUltimGrid3: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 1074
        Height = 338
        Align = alClient
        DataSource = DataUnit.DSLogSale
        DefaultDrawing = False
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        PopupMenu = RxPopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = JvDBUltimGrid1CellClick
        OnDrawColumnCell = JvDBUltimGrid3DrawColumnCell
        OnDblClick = JvDBUltimGridEditMode
        AutoSort = False
        IniStorage = FormPlacement1
        MultiSelect = True
        TitleArrow = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DateTime'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NameProd'
            Width = 143
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Producer'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Transport'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fridge'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sklad'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lot'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Weight_place'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_Items'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Net_weight'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Gross_weight'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Storage_fee'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumLetter'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Color'
            Visible = False
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083' '#1082#1083#1080#1077#1085#1090#1086#1074
      ImageIndex = 3
      object JvDBUltimGrid4: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 1074
        Height = 355
        Align = alClient
        DataSource = DataUnit.DSPassports
        DefaultDrawing = False
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        PopupMenu = RxPopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = JvDBUltimGrid1CellClick
        OnDrawColumnCell = JvDBUltimGrid4DrawColumnCell
        OnDblClick = JvDBUltimGridEditMode
        AutoSort = False
        IniStorage = FormPlacement1
        MultiSelect = True
        TitleArrow = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1060#1072#1084#1080#1083#1080#1103
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1048#1084#1103
            Width = 179
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 143
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1077#1088#1080#1103
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1086#1084#1077#1088
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1077#1084' '#1074#1099#1076#1072#1085
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1060#1080#1088#1084#1072
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1040#1076#1088#1077#1089
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Width = 277
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Color'
            Visible = False
          end>
      end
    end
  end
  object PageFilters: TPageControl
    Left = 0
    Top = 412
    Width = 1082
    Height = 54
    ActivePage = FilterSklad
    Align = alBottom
    TabHeight = 10
    TabOrder = 0
    object FilterSklad: TTabSheet
      Caption = 'FilterSklad'
      TabVisible = False
      object Label10: TLabel
        Left = 96
        Top = -1
        Width = 64
        Height = 13
        Caption = #1053#1072#1080#1084'. '#1087#1088#1086#1076'.:'
      end
      object Label11: TLabel
        Left = 192
        Top = -1
        Width = 74
        Height = 13
        Caption = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100':'
      end
      object Label12: TLabel
        Left = 280
        Top = -1
        Width = 57
        Height = 13
        Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090':'
      end
      object Label9: TLabel
        Left = 367
        Top = -1
        Width = 70
        Height = 13
        Caption = #1061#1086#1083#1086#1076#1080#1083#1100#1085#1080#1082':'
      end
      object Label17: TLabel
        Left = 440
        Top = -1
        Width = 34
        Height = 13
        Caption = #1057#1082#1083#1072#1076':'
      end
      object Label13: TLabel
        Left = 512
        Top = -1
        Width = 29
        Height = 13
        Caption = #1044#1072#1090#1072':'
      end
      object Label22: TLabel
        Left = 576
        Top = -1
        Width = 40
        Height = 13
        Caption = #1055#1072#1088#1090#1080#1103':'
      end
      object Label14: TLabel
        Left = 628
        Top = -1
        Width = 65
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1084#1077#1089#1090':'
      end
      object Label15: TLabel
        Left = 700
        Top = -1
        Width = 53
        Height = 13
        Caption = #1042#1077#1089' '#1085#1077#1090#1090#1086':'
      end
      object Label16: TLabel
        Left = 760
        Top = -1
        Width = 58
        Height = 13
        Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086':'
      end
      object Label32: TLabel
        Left = 824
        Top = -1
        Width = 66
        Height = 13
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
      end
      object Label31: TLabel
        Left = 892
        Top = -1
        Width = 28
        Height = 13
        Caption = #1062#1074#1077#1090':'
      end
      object ChFilterSklad: TCheckBox
        Left = 16
        Top = 12
        Width = 65
        Height = 17
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 0
        OnClick = SkladFilter
      end
      object EdNameProd1: TEdit
        Left = 96
        Top = 12
        Width = 93
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 1
        OnChange = SkladFilter
      end
      object EdProducer1: TEdit
        Left = 192
        Top = 12
        Width = 85
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 2
        OnChange = SkladFilter
      end
      object EdTransport1: TEdit
        Left = 280
        Top = 12
        Width = 85
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 3
        OnChange = SkladFilter
      end
      object EdFridge1: TEdit
        Left = 368
        Top = 12
        Width = 69
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 4
        OnChange = SkladFilter
      end
      object EdSklad1: TEdit
        Left = 440
        Top = 12
        Width = 69
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 5
        OnChange = SkladFilter
      end
      object EdDate1: TEdit
        Left = 512
        Top = 12
        Width = 61
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 6
        OnChange = SkladFilter
      end
      object EdLot1: TEdit
        Left = 576
        Top = 12
        Width = 49
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 7
        OnChange = SkladFilter
      end
      object EdN_Items1: TEdit
        Left = 628
        Top = 12
        Width = 69
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 8
        OnChange = SkladFilter
      end
      object EdNet_weight1: TEdit
        Left = 700
        Top = 12
        Width = 57
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 9
        OnChange = SkladFilter
      end
      object EdGross_weight1: TEdit
        Left = 760
        Top = 12
        Width = 61
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 10
        OnChange = SkladFilter
      end
      object EdComment1: TEdit
        Left = 824
        Top = 12
        Width = 65
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 11
        OnChange = SkladFilter
      end
      object EdColorSklad: TComboBoxEx
        Left = 892
        Top = 12
        Width = 105
        Height = 22
        ItemsEx = <
          item
            Caption = #1050#1088#1072#1089#1085#1099#1081
            ImageIndex = 4
            SelectedImageIndex = 4
          end
          item
            Caption = #1057#1080#1085#1080#1081
            ImageIndex = 6
            SelectedImageIndex = 6
          end
          item
            Caption = #1047#1077#1083#1077#1085#1099#1081
            ImageIndex = 3
            SelectedImageIndex = 3
          end
          item
            Caption = #1046#1077#1083#1090#1099#1081
            ImageIndex = 2
            SelectedImageIndex = 2
          end
          item
            Caption = #1043#1086#1083#1091#1073#1086#1081
            ImageIndex = 1
            SelectedImageIndex = 1
          end
          item
            Caption = #1060#1080#1086#1083#1077#1090#1086#1074#1099#1081
            ImageIndex = 8
            SelectedImageIndex = 8
          end
          item
            Caption = #1085#1077#1090' '#1094#1074#1077#1090#1072
            ImageIndex = 0
            SelectedImageIndex = 0
          end>
        Style = csExDropDownList
        StyleEx = [csExNoSizeLimit]
        TabOrder = 12
        OnChange = SkladFilter
        Images = ImageList1
      end
    end
    object FilterIncomingLog: TTabSheet
      Caption = 'FilterIncomingLog'
      ImageIndex = 1
      TabVisible = False
      object Label2: TLabel
        Left = 96
        Top = -1
        Width = 64
        Height = 13
        Caption = #1053#1072#1080#1084'. '#1087#1088#1086#1076'.:'
      end
      object Label3: TLabel
        Left = 192
        Top = -1
        Width = 74
        Height = 13
        Caption = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100':'
      end
      object Label4: TLabel
        Left = 280
        Top = -1
        Width = 57
        Height = 13
        Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090':'
      end
      object Label19: TLabel
        Left = 367
        Top = -1
        Width = 70
        Height = 13
        Caption = #1061#1086#1083#1086#1076#1080#1083#1100#1085#1080#1082':'
      end
      object Label20: TLabel
        Left = 440
        Top = -1
        Width = 34
        Height = 13
        Caption = #1057#1082#1083#1072#1076':'
      end
      object Label5: TLabel
        Left = 512
        Top = -1
        Width = 29
        Height = 13
        Caption = #1044#1072#1090#1072':'
      end
      object Label21: TLabel
        Left = 576
        Top = -1
        Width = 40
        Height = 13
        Caption = #1055#1072#1088#1090#1080#1103':'
      end
      object Label6: TLabel
        Left = 628
        Top = -1
        Width = 65
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1084#1077#1089#1090':'
      end
      object Label7: TLabel
        Left = 700
        Top = -1
        Width = 53
        Height = 13
        Caption = #1042#1077#1089' '#1085#1077#1090#1090#1086':'
      end
      object Label8: TLabel
        Left = 760
        Top = -1
        Width = 58
        Height = 13
        Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086':'
      end
      object Label18: TLabel
        Left = 824
        Top = -1
        Width = 66
        Height = 13
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
      end
      object Label30: TLabel
        Left = 892
        Top = -1
        Width = 28
        Height = 13
        Caption = #1062#1074#1077#1090':'
      end
      object ChLogIncomingFilter: TCheckBox
        Left = 16
        Top = 12
        Width = 65
        Height = 17
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 0
        OnClick = IncomingLogFilter
      end
      object EdProdLogIncomingFilter: TEdit
        Left = 96
        Top = 12
        Width = 93
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 1
        OnChange = IncomingLogFilter
      end
      object EdProducerLogIncomingFilter: TEdit
        Left = 192
        Top = 12
        Width = 85
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 2
        OnChange = IncomingLogFilter
      end
      object EdTransportLogIncomingFilter: TEdit
        Left = 280
        Top = 12
        Width = 85
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 3
        OnChange = IncomingLogFilter
      end
      object EdFridgeLogIncomingFilter: TEdit
        Left = 368
        Top = 12
        Width = 69
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 4
        OnChange = IncomingLogFilter
      end
      object EdSkladLogIncomingFilter: TEdit
        Left = 440
        Top = 12
        Width = 69
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 5
        OnChange = IncomingLogFilter
      end
      object EdDateLogIncomingFilter: TEdit
        Left = 512
        Top = 12
        Width = 61
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 6
        OnChange = IncomingLogFilter
      end
      object EdLotLogIncomingFilter: TEdit
        Left = 576
        Top = 12
        Width = 49
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 7
        OnChange = IncomingLogFilter
      end
      object EdN_ItemsLogIncomingFilter: TEdit
        Left = 628
        Top = 12
        Width = 69
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 8
        OnChange = IncomingLogFilter
      end
      object EdNet_weightLogIncomingFilter: TEdit
        Left = 700
        Top = 12
        Width = 57
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 9
        OnChange = IncomingLogFilter
      end
      object EdGross_weightLogIncomingFilter: TEdit
        Left = 760
        Top = 12
        Width = 61
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 10
        OnChange = IncomingLogFilter
      end
      object EdLogIncomingComments: TEdit
        Left = 824
        Top = 12
        Width = 65
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 11
        OnChange = IncomingLogFilter
      end
      object EdColorLogIncomingFilter: TComboBoxEx
        Left = 892
        Top = 12
        Width = 105
        Height = 22
        ItemsEx = <
          item
            Caption = #1050#1088#1072#1089#1085#1099#1081
            ImageIndex = 4
            SelectedImageIndex = 4
          end
          item
            Caption = #1057#1080#1085#1080#1081
            ImageIndex = 6
            SelectedImageIndex = 6
          end
          item
            Caption = #1047#1077#1083#1077#1085#1099#1081
            ImageIndex = 3
            SelectedImageIndex = 3
          end
          item
            Caption = #1046#1077#1083#1090#1099#1081
            ImageIndex = 2
            SelectedImageIndex = 2
          end
          item
            Caption = #1043#1086#1083#1091#1073#1086#1081
            ImageIndex = 1
            SelectedImageIndex = 1
          end
          item
            Caption = #1060#1080#1086#1083#1077#1090#1086#1074#1099#1081
            ImageIndex = 8
            SelectedImageIndex = 8
          end
          item
            Caption = #1085#1077#1090' '#1094#1074#1077#1090#1072
            ImageIndex = 0
            SelectedImageIndex = 0
          end>
        Style = csExDropDownList
        StyleEx = [csExNoSizeLimit]
        TabOrder = 12
        OnChange = IncomingLogFilter
        Images = ImageList1
      end
    end
    object FilterSaleLog: TTabSheet
      Caption = 'FilterSaleLog'
      ImageIndex = 2
      TabVisible = False
      object Label33: TLabel
        Left = 96
        Top = -1
        Width = 64
        Height = 13
        Caption = #1053#1072#1080#1084'. '#1087#1088#1086#1076'.:'
      end
      object Label34: TLabel
        Left = 192
        Top = -1
        Width = 74
        Height = 13
        Caption = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100':'
      end
      object Label35: TLabel
        Left = 280
        Top = -1
        Width = 57
        Height = 13
        Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090':'
      end
      object Label36: TLabel
        Left = 367
        Top = -1
        Width = 70
        Height = 13
        Caption = #1061#1086#1083#1086#1076#1080#1083#1100#1085#1080#1082':'
      end
      object Label37: TLabel
        Left = 440
        Top = -1
        Width = 34
        Height = 13
        Caption = #1057#1082#1083#1072#1076':'
      end
      object Label38: TLabel
        Left = 512
        Top = -1
        Width = 29
        Height = 13
        Caption = #1044#1072#1090#1072':'
      end
      object Label39: TLabel
        Left = 576
        Top = -1
        Width = 40
        Height = 13
        Caption = #1055#1072#1088#1090#1080#1103':'
      end
      object Label40: TLabel
        Left = 628
        Top = -1
        Width = 65
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1084#1077#1089#1090':'
      end
      object Label41: TLabel
        Left = 700
        Top = -1
        Width = 53
        Height = 13
        Caption = #1042#1077#1089' '#1085#1077#1090#1090#1086':'
      end
      object Label42: TLabel
        Left = 760
        Top = -1
        Width = 58
        Height = 13
        Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086':'
      end
      object Label44: TLabel
        Left = 892
        Top = -1
        Width = 55
        Height = 13
        Caption = #8470' '#1087#1080#1089#1100#1084#1072':'
      end
      object Label45: TLabel
        Left = 948
        Top = -1
        Width = 28
        Height = 13
        Caption = #1062#1074#1077#1090':'
      end
      object Label1: TLabel
        Left = 824
        Top = -1
        Width = 52
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103':'
      end
      object ChSaleFilter: TCheckBox
        Left = 16
        Top = 12
        Width = 65
        Height = 17
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 0
        OnClick = SaleLogFilter
      end
      object EdProdSaleFilter: TEdit
        Left = 96
        Top = 12
        Width = 93
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 1
        OnChange = SaleLogFilter
      end
      object EdProducerSaleFilter: TEdit
        Left = 192
        Top = 12
        Width = 85
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 2
        OnChange = SaleLogFilter
      end
      object EdTransportSaleFilter: TEdit
        Left = 280
        Top = 12
        Width = 85
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 3
        OnChange = SaleLogFilter
      end
      object EdFridgeSaleFilter: TEdit
        Left = 368
        Top = 12
        Width = 69
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 4
        OnChange = SaleLogFilter
      end
      object EdSkladSaleFilter: TEdit
        Left = 440
        Top = 12
        Width = 69
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 5
        OnChange = SaleLogFilter
      end
      object EdDateSaleFilter: TEdit
        Left = 512
        Top = 12
        Width = 61
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 6
        OnChange = SaleLogFilter
      end
      object EdLotSaleFilter: TEdit
        Left = 576
        Top = 12
        Width = 49
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 7
        OnChange = SaleLogFilter
      end
      object EdN_ItemsSaleFilter: TEdit
        Left = 628
        Top = 12
        Width = 69
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 8
        OnChange = SaleLogFilter
      end
      object EdNet_weightSaleFilter: TEdit
        Left = 700
        Top = 12
        Width = 57
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 9
        OnChange = SaleLogFilter
      end
      object EdGross_weightSaleFilter: TEdit
        Left = 760
        Top = 12
        Width = 61
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 10
        OnChange = SaleLogFilter
      end
      object EdNumLetterLogSaleFilter: TEdit
        Left = 892
        Top = 12
        Width = 53
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 11
        OnChange = SaleLogFilter
      end
      object EdColorSaleFilter: TComboBoxEx
        Left = 948
        Top = 12
        Width = 69
        Height = 22
        ItemsEx = <
          item
            Caption = #1050#1088#1072#1089#1085#1099#1081
            ImageIndex = 4
            SelectedImageIndex = 4
          end
          item
            Caption = #1057#1080#1085#1080#1081
            ImageIndex = 6
            SelectedImageIndex = 6
          end
          item
            Caption = #1047#1077#1083#1077#1085#1099#1081
            ImageIndex = 3
            SelectedImageIndex = 3
          end
          item
            Caption = #1046#1077#1083#1090#1099#1081
            ImageIndex = 2
            SelectedImageIndex = 2
          end
          item
            Caption = #1043#1086#1083#1091#1073#1086#1081
            ImageIndex = 1
            SelectedImageIndex = 1
          end
          item
            Caption = #1060#1080#1086#1083#1077#1090#1086#1074#1099#1081
            ImageIndex = 8
            SelectedImageIndex = 8
          end
          item
            Caption = #1085#1077#1090' '#1094#1074#1077#1090#1072
            ImageIndex = 0
            SelectedImageIndex = 0
          end>
        Style = csExDropDownList
        StyleEx = [csExNoSizeLimit]
        TabOrder = 12
        OnChange = SaleLogFilter
        Images = ImageList1
      end
      object EdSirNameSaleFilter: TEdit
        Left = 824
        Top = 12
        Width = 65
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        Color = 14548957
        TabOrder = 13
        OnChange = SaleLogFilter
      end
    end
    object FilterClients: TTabSheet
      Caption = 'FilterClients'
      ImageIndex = 2
      TabVisible = False
      object Label29: TLabel
        Left = 768
        Top = -1
        Width = 28
        Height = 13
        Caption = #1062#1074#1077#1090':'
      end
      object Label28: TLabel
        Left = 604
        Top = -1
        Width = 66
        Height = 13
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
      end
      object Label27: TLabel
        Left = 476
        Top = -1
        Width = 40
        Height = 13
        Caption = #1060#1080#1088#1084#1072':'
      end
      object Label26: TLabel
        Left = 352
        Top = -1
        Width = 48
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085':'
      end
      object Label25: TLabel
        Left = 232
        Top = -1
        Width = 25
        Height = 13
        Caption = #1048#1084#1103':'
      end
      object Label24: TLabel
        Left = 96
        Top = -1
        Width = 52
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103':'
      end
      object EdColorClient: TComboBoxEx
        Left = 768
        Top = 11
        Width = 105
        Height = 22
        ItemsEx = <
          item
            Caption = #1050#1088#1072#1089#1085#1099#1081
            ImageIndex = 4
            SelectedImageIndex = 4
          end
          item
            Caption = #1057#1080#1085#1080#1081
            ImageIndex = 6
            SelectedImageIndex = 6
          end
          item
            Caption = #1047#1077#1083#1077#1085#1099#1081
            ImageIndex = 3
            SelectedImageIndex = 3
          end
          item
            Caption = #1046#1077#1083#1090#1099#1081
            ImageIndex = 2
            SelectedImageIndex = 2
          end
          item
            Caption = #1043#1086#1083#1091#1073#1086#1081
            ImageIndex = 1
            SelectedImageIndex = 1
          end
          item
            Caption = #1060#1080#1086#1083#1077#1090#1086#1074#1099#1081
            ImageIndex = 8
            SelectedImageIndex = 8
          end
          item
            Caption = #1085#1077#1090' '#1094#1074#1077#1090#1072
            ImageIndex = 0
            SelectedImageIndex = 0
          end>
        Style = csExDropDownList
        StyleEx = [csExNoSizeLimit]
        TabOrder = 0
        OnChange = ClientFilter
        Images = ImageList1
      end
      object EdCommentClient: TEdit
        Left = 604
        Top = 11
        Width = 161
        Height = 21
        Color = 13041623
        TabOrder = 1
        OnChange = ClientFilter
      end
      object EdFirmClient: TEdit
        Left = 476
        Top = 12
        Width = 125
        Height = 21
        Color = 13041623
        TabOrder = 2
        OnChange = ClientFilter
      end
      object EdPhoneClient: TEdit
        Left = 352
        Top = 12
        Width = 121
        Height = 21
        Color = 13041623
        TabOrder = 3
        OnChange = ClientFilter
      end
      object EdNameClient: TEdit
        Left = 232
        Top = 12
        Width = 117
        Height = 21
        Color = 13041623
        TabOrder = 4
        OnChange = ClientFilter
      end
      object EdSurnameClient: TEdit
        Left = 96
        Top = 12
        Width = 133
        Height = 21
        Color = 13041623
        TabOrder = 5
        OnChange = ClientFilter
      end
      object ChFilterClient: TCheckBox
        Left = 16
        Top = 12
        Width = 62
        Height = 17
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 6
        OnClick = ClientFilter
      end
    end
  end
  object ActionToolBar2: TActionToolBar
    Left = 0
    Top = 0
    Width = 1082
    Height = 29
    ActionManager = ActionManager1
    AllowHiding = False
    Caption = 'ActionToolBar2'
    ColorMap.HighlightColor = 15660791
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 15660791
    EdgeBorders = [ebBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Spacing = 6
  end
  object RxMainMenu1: TMainMenu
    Images = ImageList2
    Left = 72
    Top = 270
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object MOptions: TMenuItem
        Action = AcOptions
      end
      object N15: TMenuItem
        Caption = #1048#1084#1087#1086#1088#1090
        object Excel1: TMenuItem
          Action = AcImportFromExcel
        end
        object N16: TMenuItem
          Action = AcImportFromPath
        end
      end
      object N14: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090
        object xcel1: TMenuItem
          Action = AcExportToExcel
        end
      end
      object N2: TMenuItem
        Action = AcExit
      end
    end
    object N17: TMenuItem
      Caption = #1057#1082#1083#1072#1076
      object N18: TMenuItem
        Action = AcAddProd
      end
      object N19: TMenuItem
        Action = AcSelProd
      end
      object N20: TMenuItem
        Action = AcPrint
      end
      object N21: TMenuItem
        Action = AcViewProd
      end
      object N22: TMenuItem
        Action = AcSaveChanges
      end
    end
    object N3: TMenuItem
      Caption = '?'
      object N6: TMenuItem
        Action = AcInfo
      end
      object N5: TMenuItem
        Action = AcAbout
      end
    end
  end
  object RxPopupMenu1: TPopupMenu
    Images = ImageList1
    MenuAnimation = [maLeftToRight, maTopToBottom]
    Left = 16
    Top = 216
    object N4: TMenuItem
      Action = AcRed
      Bitmap.Data = {
        06030000424D060300000000000036000000280000000F0000000F0000000100
        180000000000D002000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
    end
    object N7: TMenuItem
      Action = AcBlue
    end
    object N8: TMenuItem
      Action = AcLime
    end
    object N9: TMenuItem
      Action = AcYellow
    end
    object N10: TMenuItem
      Action = AcAqua
    end
    object N11: TMenuItem
      Action = AcFuchsia
    end
    object N13: TMenuItem
      Action = AcWhite
    end
    object N12: TMenuItem
      Action = ColorSelect1
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 72
    Top = 216
    object AcRed: TAction
      Category = 'Colors'
      Caption = #1050#1088#1072#1089#1085#1099#1081
      ImageIndex = 4
      OnExecute = AcRedExecute
    end
    object AcLime: TAction
      Category = 'Colors'
      Caption = #1047#1077#1083#1077#1085#1099#1081
      ImageIndex = 3
      OnExecute = AcLimeExecute
    end
    object AcYellow: TAction
      Category = 'Colors'
      Caption = #1046#1077#1083#1090#1099#1081
      ImageIndex = 2
      OnExecute = AcYellowExecute
    end
    object AcAqua: TAction
      Category = 'Colors'
      Caption = #1043#1086#1083#1091#1073#1086#1081
      ImageIndex = 1
      OnExecute = AcAquaExecute
    end
    object AcBlue: TAction
      Category = 'Colors'
      Caption = #1057#1080#1085#1080#1081
      ImageIndex = 6
      OnExecute = AcBlueExecute
    end
    object AcFuchsia: TAction
      Category = 'Colors'
      Caption = #1060#1080#1086#1083#1077#1090#1086#1074#1099#1081
      ImageIndex = 8
      OnExecute = AcFuchsiaExecute
    end
    object AcWhite: TAction
      Category = 'Colors'
      Caption = #1085#1077#1090' '#1094#1074#1077#1090#1072
      ImageIndex = 0
      OnExecute = AcWhiteExecute
    end
    object ColorSelect1: TColorSelect
      Category = 'Dialog'
      Caption = #1044#1088#1091#1075#1086#1081' '#1094#1074#1077#1090'...'
      Dialog.Color = clBackground
      Dialog.Options = [cdFullOpen, cdPreventFullOpen, cdAnyColor]
      Hint = #1042#1099#1073#1086#1088' '#1094#1074#1077#1090#1072
      OnAccept = ColorSelect1Accept
    end
  end
  object ImageList1: TImageList
    Left = 132
    Top = 216
    Bitmap = {
      494C01010A000E00080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF0084000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF008400FF008400FF00
      8400FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF00
      8400FF008400FF00840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000001000100000000
      0001000100000000000100010000000000010001000000000001000100000000
      0001000100000000000100010000000000010001000000000001000100000000
      0001000100000000000100010000000000010001000000000001000100000000
      00010001000000000001000100000000FFFFFFFFFFFFFFFF0001000100010001
      0001000100010001000100010001000100010001000100010001000100010001
      0001000100010001000100010001000100010001000100010001000100010001
      0001000100010001000100010001000100010001000100010001000100010001
      00010001000100010001000100010001FFFFFFFFFFFFFFFF0001000100010001
      0001000100010001000100010001000100010001000100010001000100010001
      0001000100010001000100010001000100010001000100010001000100010001
      0001000100010001000100010001000100010001000100010001000100010001
      0001000100010001000100010001000100000000000000000000000000000000
      000000000000}
  end
  object FormPlacement1: TJvFormStorage
    AppStorage = FormOptions.JvAppIniFileStorage1
    AppStoragePath = 'MainForm\'
    StoredValues = <>
    Left = 56
    Top = 128
  end
  object ListStr: TJvStrHolder
    Macros = <>
    Left = 132
    Top = 128
    InternalVer = 2
  end
  object Values: TJvStrHolder
    Macros = <>
    Left = 132
    Top = 172
    InternalVer = 2
  end
  object XPManifest1: TXPManifest
    Left = 272
    Top = 248
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = AcAddProd
            ImageIndex = 36
          end
          item
            Action = AcSelProd
            ImageIndex = 38
          end
          item
            Action = AcPrint
            ImageIndex = 14
          end
          item
            Action = AcViewProd
            ImageIndex = 16
          end
          item
            Caption = '-'
          end
          item
            Action = AcImportFromPath
          end
          item
            Caption = '-'
          end
          item
            Action = AcOptions
            ImageIndex = 18
          end
          item
            Action = AcExit
            ImageIndex = 40
          end>
        ActionBar = ActionToolBar2
      end>
    Images = ImageList2
    Left = 272
    Top = 296
    StyleName = 'XP Style'
    object AcAddProd: TAction
      Category = #1057#1082#1083#1072#1076
      Caption = #1055#1088#1080#1093#1086#1076' '#1087#1088#1086#1076#1091#1082#1094#1080#1080'...'
      ImageIndex = 36
      OnExecute = BtnIncomingProd
    end
    object AcSelProd: TAction
      Category = #1057#1082#1083#1072#1076
      Caption = #1054#1090#1087#1091#1089#1082' '#1087#1088#1086#1076#1091#1082#1094#1080#1080'...'
      ImageIndex = 38
      OnExecute = BtnSaleProd
    end
    object AcPrint: TAction
      Category = #1057#1082#1083#1072#1076
      Caption = #1055#1077#1095#1072#1090#1100'...'
      ImageIndex = 14
      OnExecute = BtnPrintClick
    end
    object AcViewProd: TAction
      Category = #1057#1082#1083#1072#1076
      Caption = #1054#1089#1084#1086#1090#1088' '#1087#1088#1086#1076#1091#1082#1094#1080#1080'...'
      ImageIndex = 16
      OnExecute = BtnViewProd
    end
    object AcSaveChanges: TAction
      Category = #1057#1082#1083#1072#1076
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      ImageIndex = 20
      OnExecute = BtnSaveDB
    end
    object AcOptions: TAction
      Category = #1060#1072#1081#1083
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080'...'
      ImageIndex = 18
      OnExecute = MOptionsClick
    end
    object Action7: TAction
      Caption = #1048#1084#1087#1086#1088#1090
    end
    object Action8: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090
    end
    object AcExit: TAction
      Category = #1060#1072#1081#1083
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 40
      OnExecute = N2Click
    end
    object AcImportFromExcel: TAction
      Category = #1048#1084#1087#1086#1088#1090
      Caption = #1048#1079' Excel...'
    end
    object AcImportFromPath: TAction
      Category = #1048#1084#1087#1086#1088#1090
      Caption = #1048#1079' '#1076#1088#1091#1075#1086#1081' '#1087#1072#1087#1082#1080'...'
      OnExecute = AcImportFromPathExecute
    end
    object AcExportToExcel: TAction
      Category = #1069#1082#1089#1087#1086#1088#1090
      Caption = #1042' Excel...'
    end
    object AcInfo: TAction
      Category = '?'
      Caption = #1054' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1077'...'
    end
    object AcAbout: TAction
      Category = '?'
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
    end
  end
  object ImageList2: TImageList
    Left = 136
    Top = 272
    Bitmap = {
      494C01012A002C00080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000B0000000010020000000000000B0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF007B7B7B0000000000FFFFFF00000000000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00000000007B7B7B0000000000FFFFFF000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000000000007B7B7B00FFFFFF00FFFFFF0000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000000000007B7B7B007B7B7B000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400FFFF0000000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF007B7B7B00FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008730800087308000873
      0800087308000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000884AD000884
      AD000884AD000884AD000884AD000884AD00000000000873080010AD210010A5
      1800087308000000000000000000000000000000000000000000848484008484
      840084848400848484008484840084848400000000008C8C8C00A5A5A500A5A5
      A5008C8C8C000000000000000000000000000000000000000000000000000884
      AD000884AD000884AD000884AD000884AD000884AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840000000000000000000000
      00000000000000000000000000000000000000000000008CBD004AD6EF0021D6
      FF0031DEFF006BE7FF008CE7FF0042BDDE000884AD000873080018B5290010AD
      2100087308000000000000000000000000000000000084848400B5B5B500ADAD
      AD00ADADAD00C6C6C600CECECE00ADADAD00848484008C8C8C00A5A5A500A5A5
      A5008C8C8C000000000000000000000000000000000000000000008CBD004AD6
      EF0021D6FF0031DEFF006BE7FF008CE7FF0042BDDE000884AD00000000000000
      00000000000000000000000000000000000000000000000000008C8C8C00B5B5
      B500ADADAD00B5B5B500C6C6C600CECECE00ADADAD0084848400000000000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF000873080008730800087308000873080021BD390018B5
      3100087308000873080008730800087308008C8C8C00CECECE00BDBDBD00ADAD
      AD00B5B5B500C6C6C6008C8C8C008C8C8C008C8C8C008C8C8C00ADADAD00ADAD
      AD008C8C8C008C8C8C008C8C8C008C8C8C0000000000008CBD008CFFFF005AEF
      FF0021D6FF0031D6F70000009C0000009C0000009C0000009C0000009C000000
      9C0000009C0000009C000000000000000000000000008C8C8C00D6D6D600BDBD
      BD00ADADAD00ADADAD007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF000873080039D6630031CE5A0031CE520029C64A0021BD
      420021BD390018B5290010AD29000873080084848400CECECE00BDBDBD00ADAD
      AD00ADADAD00C6C6C6008C8C8C00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5
      B500ADADAD00ADADAD00ADADAD008C8C8C0000000000008CBD008CFFFF005AEF
      FF0021D6FF0031D6F70000009C00396BFF00295AFF00104AFF000031FF000029
      FF000018EF0000009C000000000000000000000000008C8C8C00D6D6D600BDBD
      BD00ADADAD00B5B5B5007B7B7B00B5B5B500ADADAD00A5A5A500A5A5A5009C9C
      9C009C9C9C007B7B7B000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF000873080042DE6B0042DE6B0039D65A0031CE5A0029C6
      4A0029C6420021BD390021BD3100087308008C8C8C00CECECE00BDBDBD00ADAD
      AD00B5B5B500BDBDBD008C8C8C00CECECE00C6C6C600BDBDBD00C6C6C600B5B5
      B500BDBDBD00B5B5B500ADADAD008C8C8C0000000000008CBD008CFFFF005AEF
      FF0021D6FF0031D6FF0000009C004273FF003163FF001852FF000839FF000029
      FF000021F70000009C000000000000000000000000008C8C8C00D6D6D600BDBD
      BD00ADADAD00ADADAD007B7B7B00BDBDBD00ADADAD00ADADAD00A5A5A5009C9C
      9C009C9C9C007B7B7B000000000000000000008CBD00B5FFFF00B5F7FF00C6F7
      FF00E7FFFF00EFFFFF000873080008730800087308000873080039DE6B0039D6
      63000873080008730800087308000873080084848400DEDEDE00DEDEDE00E7E7
      E700EFEFEF00EFEFEF008C8C8C008C8C8C008C8C8C008C8C8C00C6C6C600BDBD
      BD008C8C8C008C8C8C008C8C8C008C8C8C0000000000008CBD00B5FFFF00B5F7
      FF00C6F7FF00E7FFFF0000009C0000009C0000009C0000009C0000009C000000
      9C0000009C0000009C000000000000000000000000008C8C8C00DEDEDE00E7E7
      E700E7E7E700F7F7F7007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000008CBD00BDEFF70031BDDE0010A5
      D600109CCE0021A5CE0031A5CE002194BD0094CEE7000873080042DE730042DE
      6B00087308000000000000000000000000008C8C8C00DEDEDE00A5A5A5008C8C
      8C009494940094949400A5A5A5008C8C8C00C6C6C6008C8C8C00C6C6C600C6C6
      C6008C8C8C0000000000000000000000000000000000008CBD00BDEFF70031BD
      DE0010A5D600109CCE0021A5CE0031A5CE002194BD0094CEE7000884AD000000
      000000000000000000000000000000000000000000008C8C8C00DEDEDE00A5A5
      A5009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00CECECE00848484000000
      000000000000000000000000000000000000008CBD004AC6DE005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E7000084B500087308004AE77B004AE7
      7B000873080000000000000000000000000084848400A5A5A500BDBDBD00ADAD
      AD00B5B5B500C6C6C600CECECE00ADADAD00848484008C8C8C00CECECE00CECE
      CE008C8C8C0000000000000000000000000000000000008CBD004AC6DE005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E7000084B5000884AD000000
      000000000000000000000000000000000000000000008C8C8C00ADADAD00BDBD
      BD00ADADAD00ADADAD00C6C6C600CECECE00ADADAD0084848400848484000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE0008730800087308000873
      0800087308000000000000000000000000008C8C8C00CECECE00BDBDBD00ADAD
      AD00ADADAD00C6C6C600CECECE00ADADAD00949494008C8C8C008C8C8C008C8C
      8C008C8C8C0000000000000000000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD000000
      000000000000000000000000000000000000000000008C8C8C00D6D6D600BDBD
      BD00ADADAD00B5B5B500C6C6C600CECECE00B5B5B5009C9C9C00848484000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE00087BAD00000000000000
      00000000000000000000000000000000000084848400CECECE00BDBDBD00ADAD
      AD00B5B5B500C6C6C600CECECE00ADADAD009494940084848400000000000000
      00000000000000000000000000000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD000000
      000000000000000000000000000000000000000000008C8C8C00D6D6D600BDBD
      BD00ADADAD00B5B5B500C6C6C600CECECE00ADADAD008C8C8C00848484000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD00000000000000
      0000000000000000000000000000000000008C8C8C00CECECE00BDBDBD00ADAD
      AD00B5B5B500C6C6C600CECECE00ADADAD009494940084848400000000000000
      00000000000000000000000000000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD000000
      000000000000000000000000000000000000000000008C8C8C00D6D6D600BDBD
      BD00ADADAD00B5B5B500C6C6C600CECECE00B5B5B5009C9C9C00848484000000
      000000000000000000000000000000000000008CBD0094FFFF0084FFFF006BFF
      FF007BFFFF0094FFFF00A5FFFF0063DEF70008A5D6000884AD00000000000000
      00000000000000000000000000000000000084848400CECECE00CECECE00C6C6
      C600C6C6C600D6D6D600D6D6D600BDBDBD009494940084848400000000000000
      00000000000000000000000000000000000000000000008CBD0094FFFF0084FF
      FF006BFFFF007BFFFF0094FFFF00A5FFFF0063DEF70008A5D6000884AD000000
      000000000000000000000000000000000000000000008C8C8C00D6D6D600CECE
      CE00C6C6C600CECECE00D6D6D600D6D6D600BDBDBD009C9C9C00848484000000
      000000000000000000000000000000000000008CBD00FFFFFF00F7FFFF00D6FF
      FF00B5FFFF00B5FFFF00ADFFFF00ADFFFF006BFFFF000884AD00000000000000
      0000000000000000000000000000000000008C8C8C00F7F7F700F7F7F700E7E7
      E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00C6C6C60084848400000000000000
      00000000000000000000000000000000000000000000008CBD00FFFFFF00F7FF
      FF00D6FFFF00B5FFFF00B5FFFF00ADFFFF00ADFFFF006BFFFF000884AD000000
      000000000000000000000000000000000000000000008C8C8C00FFFFFF00F7F7
      F700EFEFEF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00C6C6C600848484000000
      000000000000000000000000000000000000000000000894C600F7FFFF00E7FF
      FF00C6FFFF00ADFFFF00A5FFFF009CFFFF001084AD0000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00EFEFEF00EFEF
      EF00E7E7E700DEDEDE00D6D6D600D6D6D6008484840000000000000000000000
      00000000000000000000000000000000000000000000000000000894C600F7FF
      FF00E7FFFF00C6FFFF00ADFFFF00A5FFFF009CFFFF001084AD00000000000000
      00000000000000000000000000000000000000000000000000008C8C8C00F7F7
      F700F7F7F700E7E7E700DEDEDE00DEDEDE00D6D6D6008C8C8C00000000000000
      0000000000000000000000000000000000000000000000000000008CBD00008C
      BD00008CBD00008CBD00008CBD00008CBD000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C008484
      84008C8C8C00848484008C8C8C00848484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000008C
      BD00008CBD00008CBD00008CBD00008CBD00008CBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE6B00009C390800E7CEB500E79C4A00DE8C31009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C008C8C8C00949494007B7B7B00DEDEDE00CECECE00ADADAD007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE6B00009C390800E7CEB500E79C4A00DE8C31009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C008C8C8C00949494007B7B7B00DEDEDE00CECECE00ADADAD007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE6300009C390800E7CEB500E79C4A00DE8C31009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C008C8C8C008C8C8C007B7B7B00DEDEDE00CECECE00ADADAD007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE6300009C390800E7CEB500E79C4A00DE8C31009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C008C8C8C008C8C8C007B7B7B00DEDEDE00CECECE00ADADAD007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE6300009C390800E7CEB500E79C4A00DE8C31009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C008C8C8C008C8C8C007B7B7B00DEDEDE00CECECE00ADADAD007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE6300009C390800E7CEB500E79C4A00DE8C31009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C008C8C8C008C8C8C007B7B7B00DEDEDE00CECECE00ADADAD007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000010
      DE000010DE00000000000010DE000010DE007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000009494
      9400949494000000000094949400949494009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000006363
      6300636363006363630063636300000000009C390800E7CEB500E79C4A00DE8C
      31009C3908000000000000000000000000000000000000000000000000000010
      DE000010DE000010DE000010DE000010DE007B7B7B00DEDEDE00CECECE00ADAD
      AD007B7B7B000000000000000000000000000000000000000000000000009494
      9400949494009494940094949400949494009C390800E7CEB500E79C4A00DE8C
      31009C3908000000000000000000000000000000000000000000000000000000
      0000000000000039FF0000000000000000007B7B7B00DEDEDE00CECECE00ADAD
      AD007B7B7B000000000000000000000000000000000000000000000000006363
      630000000000ADADAD0063636300000000009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      00000010DE000010DE000010DE00000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000949494009494940094949400000000009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      00000039FF00000000000039FF00000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000006363
      6300ADADAD0000000000ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000010
      DE000010DE000010DE000010DE000010DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400949494009494940094949400949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000039FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      6300636363006363630063636300ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000010
      DE000010DE00000000000010DE000010DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400949494000000000094949400949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000039FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6B00000000000000000000000000009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      00008C8C8C000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE6B00009C390800E7CEB500E79C4A00DE8C31009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C008C8C8C00949494007B7B7B00DEDEDE00CECECE00ADADAD007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6B0000CE6B0000CE6B0000CE6B00009C390800FF9C9400EFA55A00DE84
      29009C3908000000000000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C008C8C8C00949494007B7B7B00D6D6D600CECECE00ADAD
      AD007B7B7B000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6B00000000000000000000000000009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      00008C8C8C000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000CE6300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6B00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6B00000000000000000000000000009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      00008C8C8C000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE6300009C390800E7CEB500E79C4A00DE8C31009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C008C8C8C008C8C8C007B7B7B00DEDEDE00CECECE00ADADAD007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6B0000CE6B0000CE6B0000CE6B00009C390800FF9C9400EFA55A00DE84
      29009C3908000000000000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C008C8C8C008C8C8C007B7B7B00D6D6D600CECECE00ADAD
      AD007B7B7B000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6B00000000000000000000000000009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      00008C8C8C000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000CE6300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6B00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6B00000000000000000000000000009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      00008C8C8C000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE6300009C390800E7CEB500E79C4A00DE8C31009C3908000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C008C8C8C008C8C8C007B7B7B00DEDEDE00CECECE00ADADAD007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6B0000CE6B0000CE6B0000CE6B00009C390800FF9C9400EFA55A00DE84
      29009C3908000000000000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C008C8C8C008C8C8C007B7B7B00D6D6D600CECECE00ADAD
      AD007B7B7B000000000000000000000000000000000000000000CE6300000000
      000000000000000000009C3908009C3908009C3908009C3908009C3908000000
      00002984210029842100000000000000000000000000000000008C8C8C000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000737373007373730000000000000000000000000000000000000000000000
      0000CE6B00000000000000000000000000009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      00008C8C8C000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000009C3908009C3908009C3908009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      0000298421002984210000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00007373730073737300000000000000000000000000000000009C3908009C39
      08009C3908009C3908009C390800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000009C390800E7CEB500E79C4A00DE8C
      31009C390800000000000000000000000000000000000000000029842100298C
      2900318C2900318C290029842100298421007B7B7B00DEDEDE00CECECE00ADAD
      AD007B7B7B000000000000000000000000000000000000000000737373008484
      840084848400848484007B7B7B007373730000000000000000009C390800FF9C
      9400EFA55A00DE8429009C390800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00D6D6
      D600CECECE00ADADAD007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000009C3908009C3908009C3908009C39
      08009C390800000000000000000000000000000000000000000029842100298C
      2900318C2900318C290029842100298421007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000737373008484
      84008C8C8C008C8C8C007B7B7B007373730000000000000000009C3908009C39
      08009C3908009C3908009C390800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000318C2900318C290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000298421002984210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863AD001863
      AD001863AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500A5A5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001863
      AD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863AD00399C
      F7001863AD000000000000000000000000001084210010842100108421001084
      2100108421001084210010842100108421000000000000000000A5A5A500CECE
      CE00A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD0000000000000000001863AD007B9C
      FF001863AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500DEDE
      DE00A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863AD00399C
      F7001863AD000000000000000000000000001084210010842100108421001084
      2100108421001084210010842100108421000000000000000000A5A5A500CECE
      CE00A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00000000001863AD007B9CFF007B9C
      FF007B9CFF001863AD0000000000000000001084210010842100000000000000
      00000000000000000000000000000000000000000000A5A5A500DEDEDE00DEDE
      DE00DEDEDE00A5A5A5000000000000000000ADADAD00ADADAD00000000000000
      00000000000000000000000000000000000000000000000000001863AD00399C
      F7001863AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500CECE
      CE00A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001863AD001863AD001863AD007B9C
      FF001863AD001863AD001863AD00000000001084210010842100000000000000
      000000000000000000000000000000000000A5A5A500A5A5A500A5A5A500DEDE
      DE00A5A5A500A5A5A500A5A5A50000000000ADADAD00ADADAD00000000000000
      00000000000000000000000000000000000000000000000000001863AD00399C
      F7001863AD000000000000000000000000001084210010842100108421001084
      2100108421001084210000000000000000000000000000000000A5A5A500CECE
      CE00A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00000000000000000000000000000000001863AD0073B5
      FF001863AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500E7E7
      E700A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863AD00399C
      F7001863AD000000000000000000000000001084210010842100108421001084
      2100108421001084210000000000000000000000000000000000A5A5A500CECE
      CE00A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00000000000000000000000000000000001863AD0073BD
      FF001863AD000000000000000000000000001084210010842100108421001084
      2100000000000000000000000000000000000000000000000000A5A5A500F7F7
      F700A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD000000000000000000000000000000000000000000000000001863AD00399C
      F7001863AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500CECE
      CE00A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863AD0073BD
      FF001863AD000000000000000000000000001084210010842100108421001084
      2100000000000000000000000000000000000000000000000000A5A5A500F7F7
      F700A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD000000000000000000000000000000000000000000000000001863AD004AA5
      FF001863AD000000000000000000000000001084210010842100108421001084
      2100000000000000000000000000000000000000000000000000A5A5A500D6D6
      D600A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD000000000000000000000000000000000000000000000000001863AD0084D6
      FF001863AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500F7F7
      F700A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863AD0052B5
      FF001863AD000000000000000000000000001084210010842100108421001084
      2100000000000000000000000000000000000000000000000000A5A5A500D6D6
      D600A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD000000000000000000000000000000000000000000000000001863AD0094DE
      FF001863AD000000000000000000000000001084210010842100108421001084
      2100108421001084210000000000000000000000000000000000A5A5A500F7F7
      F700A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00000000000000000000000000000000001863AD006BBD
      F7001863AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500DEDE
      DE00A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863AD009CDE
      F7001863AD000000000000000000000000001084210010842100108421001084
      2100108421001084210000000000000000000000000000000000A5A5A500F7F7
      F700A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD0000000000000000001863AD001863AD001863AD007BC6
      F7001863AD001863AD001863AD00000000001084210010842100000000000000
      000000000000000000000000000000000000A5A5A500A5A5A500A5A5A500DEDE
      DE00A5A5A500A5A5A500A5A5A50000000000ADADAD00ADADAD00000000000000
      00000000000000000000000000000000000000000000000000001863AD00ADE7
      F7001863AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500F7F7
      F700A5A5A5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001863AD0094CEEF0084CE
      F70084CEF7001863AD0000000000000000001084210010842100000000000000
      00000000000000000000000000000000000000000000A5A5A500DEDEDE00DEDE
      DE00DEDEDE00A5A5A5000000000000000000ADADAD00ADADAD00000000000000
      00000000000000000000000000000000000000000000000000001863AD00ADE7
      F7001863AD000000000000000000000000001084210010842100108421001084
      2100108421001084210010842100108421000000000000000000A5A5A500F7F7
      F700A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD0000000000000000001863AD0094CE
      EF001863AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500DEDE
      DE00A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863AD00ADE7
      F7001863AD000000000000000000000000001084210010842100108421001084
      2100108421001084210010842100108421000000000000000000A5A5A500F7F7
      F700A5A5A500000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD000000000000000000000000001863
      AD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863AD001863
      AD001863AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500A5A5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A637B00BD9494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000944239009442
      3900B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C009431
      31009442390000000000000000000000000000000000000000008C8C8C008C8C
      8C00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD008484
      84008C8C8C000000000000000000000000006B9CC600188CEF004A7BA500CE94
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00949494008C8C8C00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094423900D66B6B00C663
      6300E7DEDE009429290094292900E7E7E700E7E7E700DEDEE700CECECE008C21
      1800AD424200944239000000000000000000000000008C8C8C00BDBDBD00ADAD
      AD00EFEFEF008484840084848400F7F7F700EFEFEF00EFEFEF00DEDEDE007B7B
      7B009C9C9C008C8C8C0000000000000000004AB5FF0052B5FF00218CEF004A7B
      A500C69494000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD009C9C9C008C8C
      8C00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094423900D6636300C65A
      5A00EFE7E7009429290094292900E7E7E700E7E7EF00DEE7E700CECECE008C21
      2100AD424200944239000000000000000000000000008C8C8C00B5B5B500ADAD
      AD00F7F7F7008484840084848400EFEFEF00F7F7F700EFEFEF00DEDEDE007B7B
      7B009C9C9C008C8C8C0000000000000000000000000052B5FF0052B5FF001884
      E7004A7BA500CE94940000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD009494
      94008C8C8C00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094423900D6636300C65A
      5A00EFE7E7009429290094292900DEDEDE00E7E7EF00E7E7E700D6D6D6008C18
      1800AD424200944239000000000000000000000000008C8C8C00B5B5B500ADAD
      AD00F7F7F7008484840084848400EFEFEF00EFEFEF00EFEFEF00E7E7E7007B7B
      7B009C9C9C008C8C8C000000000000000000000000000000000052B5FF004AB5
      FF00188CE7004A7BA500BD949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00949494008C8C8C00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094423900D6636300C65A
      5A00EFE7E700EFE7E700E7DEDE00E7DEDE00DEE7E700E7E7E700D6D6D6009429
      2900B54A4A00944239000000000000000000000000008C8C8C00B5B5B500ADAD
      AD00F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E7008484
      84009C9C9C008C8C8C00000000000000000000000000000000000000000052BD
      FF004AB5FF002184DE005A6B730000000000B5847B00C69C9400C69C9400BD9C
      8C0000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00949494007B7B7B000000000094949400ADADAD00ADADAD00A5A5
      A500000000000000000000000000000000000000000094423900CE636300CE63
      6300CE636300CE737300CE737300C66B6B00C6636300CE6B6B00CE636300C65A
      5A00CE636300944239000000000000000000000000008C8C8C00B5B5B500ADAD
      AD00B5B5B500BDBDBD00B5B5B500B5B5B500ADADAD00B5B5B500B5B5B500ADAD
      AD00B5B5B5008C8C8C0000000000000000000000000000000000000000000000
      000052BDFF00B5D6EF00BD9C9400BD9C8C00E7DEC600FFFFE700FFFFE700FFFF
      DE00DEC6B500B58C840000000000000000000000000000000000000000000000
      0000BDBDBD00D6D6D600ADADAD00A5A5A500D6D6D600F7F7F700F7F7F700EFEF
      EF00C6C6C6009C9C9C0000000000000000000000000094423900B5525200C67B
      7B00D69C9C00D6A5A500DEA5A500DEA5A500D6A59C00D6A59C00D6ADA500DEAD
      AD00CE636300944239000000000000000000000000008C8C8C00A5A5A500B5B5
      B500CECECE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00D6D6D600D6D6
      D600B5B5B5008C8C8C0000000000000000000000000000000000000000000000
      00000000000000000000CEA59400FFEFBD00FFFFDE00FFFFDE00FFFFDE00FFFF
      E700FFFFFF00EFDEDE00AD847B00000000000000000000000000000000000000
      00000000000000000000B5B5B500DEDEDE00EFEFEF00EFEFEF00EFEFEF00F7F7
      F700FFFFFF00E7E7E70094949400000000000000000094423900CE636300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE636300944239000000000000000000000000008C8C8C00B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5B5B5008C8C8C0000000000000000000000000000000000000000000000
      00000000000000000000C6A59400FFDEAD00FFF7D600FFFFDE00FFFFE700FFFF
      FF00FFFFFF00FFFFFF00C6AD9C00000000000000000000000000000000000000
      00000000000000000000ADADAD00D6D6D600E7E7E700EFEFEF00F7F7F700FFFF
      FF00FFFFFF00FFFFFF00B5B5B500000000000000000094423900CE636300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE636300944239000000000000000000000000008C8C8C00B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5B5B5008C8C8C0000000000000000000000000000000000000000000000
      000000000000C6A59400FFE7AD00F7C69400FFF7CE00FFFFDE00FFFFE700FFFF
      F700FFFFF700FFFFEF00EFE7CE00BD948C000000000000000000000000000000
      000000000000ADADAD00D6D6D600C6C6C600E7E7E700EFEFEF00F7F7F700FFFF
      FF00FFFFFF00F7F7F700DEDEDE00A5A5A5000000000094423900CE636300FFFF
      FF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00FFFF
      FF00CE636300944239000000000000000000000000008C8C8C00B5B5B500FFFF
      FF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00FFFF
      FF00B5B5B5008C8C8C0000000000000000000000000000000000000000000000
      000000000000C6A59400FFE7AD00EFB58400F7DEAD00FFFFDE00FFFFDE00FFFF
      E700FFFFE700FFFFE700F7EFD600BD948C000000000000000000000000000000
      000000000000ADADAD00D6D6D600B5B5B500D6D6D600EFEFEF00EFEFEF00F7F7
      F700F7F7F700EFEFEF00E7E7E700A5A5A5000000000094423900CE636300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE636300944239000000000000000000000000008C8C8C00B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5B5B5008C8C8C0000000000000000000000000000000000000000000000
      000000000000BD948C00FFE7B500F7C69400F7CE9400FFE7BD00FFFFDE00FFFF
      DE00FFFFDE00FFFFE700E7D6BD00B58C84000000000000000000000000000000
      000000000000A5A5A500DEDEDE00C6C6C600C6C6C600DEDEDE00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00CECECE009C9C9C000000000094423900CE636300FFFF
      FF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00FFFF
      FF00CE636300944239000000000000000000000000008C8C8C00B5B5B500FFFF
      FF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00FFFF
      FF00B5B5B5008C8C8C0000000000000000000000000000000000000000000000
      00000000000000000000DEC6AD00FFFFE700F7DEBD00F7CE9400F7D6A500FFEF
      BD00FFF7CE00FFFFD600B5948C00000000000000000000000000000000000000
      00000000000000000000C6C6C600F7F7F700D6D6D600C6C6C600CECECE00DEDE
      DE00E7E7E700EFEFEF009C9C9C00000000000000000094423900CE636300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE636300944239000000000000000000000000008C8C8C00B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5B5B5008C8C8C0000000000000000000000000000000000000000000000
      00000000000000000000B58C8400EFDEDE00FFFFF700FFDEA500F7C68C00FFD6
      9C00FFEFBD00D6B59C00BD948400000000000000000000000000000000000000
      000000000000000000009C9C9C00E7E7E700FFFFFF00CECECE00C6C6C600CECE
      CE00DEDEDE00B5B5B5009C9C9C0000000000000000000000000094423900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009442390000000000000000000000000000000000000000008C8C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD847B00CEAD9C00EFE7B500EFDEB500E7CE
      AD00BD948400BD94840000000000000000000000000000000000000000000000
      000000000000000000000000000094949400B5B5B500D6D6D600D6D6D600CECE
      CE009C9C9C009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD948C00BD9C8C00B594
      8C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500A5A5A5009C9C
      9C000000000000000000000000000000000000000000636B7B0000000000C6A5
      A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5
      A500C6A5A500C6A5A500C6A5A50000000000000000006B6B6B0000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500000000000000000000000000C6A5A500C6A5
      A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5
      A500C6A5A500C6A5A50000000000000000000000000000000000B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B50000000000000000005A9CC600318CD6007B849C00C6A5
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6A5A5000000000094949400848484008C8C8C00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5B5B500000000000000000000000000C6A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6A5A50000000000000000000000000000000000B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B5000000000000000000000000004AB5FF00298CE7008484
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6A5A5000000000000000000A5A5A500848484008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5B5B500000000000000000000000000C6A5A500FFFF
      FF009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      0000FFFFFF00C6A5A50000000000000000000000000000000000B5B5B500FFFF
      FF008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C00FFFFFF00B5B5B500000000000000000000000000000000004AB5FF00218C
      DE007B849C00FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      F700FFFFF700FFFFF700C6A5A500000000000000000000000000A5A5A5008484
      84008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5B5B500000000000000000000000000C6A5A500FFFF
      F7009C310000FFFFFF00FFFFFF00FFFFFF008CA5FF00BDC6FF00FFFFFF009C31
      0000FFFFF700C6A5A50000000000000000000000000000000000B5B5B500FFFF
      FF008C8C8C00FFFFFF00FFFFFF00FFFFFF00DEDEDE00DEDEDE00FFFFFF008C8C
      8C00FFFFFF00B5B5B50000000000000000000000000000000000000000004ABD
      FF005A94BD00E7CECE00C6A59C00B5848400C6A59C00E7CECE00FFFFF700FFFF
      F700FFFFF700FFFFF700C6A5A50000000000000000000000000000000000A5A5
      A5008C8C8C00D6D6D600B5B5B5009C9C9C00B5B5B500D6D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5B5B500000000000000000000000000C6A5A500FFFF
      F7009C310000FFFFFF00FFFFFF007B9CFF000031FF005A7BFF00FFFFFF009C31
      0000FFFFF700C6A5A50000000000000000000000000000000000B5B5B500FFFF
      FF008C8C8C00FFFFFF00FFFFFF00D6D6D60094949400BDBDBD00FFFFFF008C8C
      8C00FFFFFF00B5B5B5000000000000000000000000000000000000000000C6A5
      A500D6B5B500BD948C00D6B5AD00EFDEC600D6B5A500B58C8400E7CEC600FFF7
      F700FFF7F700FFF7F700C6A5A50000000000000000000000000000000000B5B5
      B500C6C6C600A5A5A500BDBDBD00DEDEDE00BDBDBD009C9C9C00D6D6D600F7F7
      F700F7F7F700F7F7F700B5B5B500000000000000000000000000C6A5A500FFF7
      F7009C310000D6DEFF00426BFF000031FF004263FF000031FF00DEE7FF009C31
      0000FFF7F700C6A5A50000000000000000000000000000000000B5B5B500F7F7
      F7008C8C8C00EFEFEF00B5B5B50094949400B5B5B50094949400EFEFEF008C8C
      8C00F7F7F700B5B5B5000000000000000000000000000000000000000000C6A5
      A500C6A59C00D6BDB500FFEFDE00FFE7D600FFFFF700D6B5A500C6A59C00FFF7
      EF00FFF7EF00FFF7EF00C6A5A50000000000000000000000000000000000B5B5
      B500B5B5B500C6C6C600EFEFEF00E7E7E700FFFFFF00BDBDBD00B5B5B500F7F7
      F700F7F7F700F7F7F700B5B5B500000000000000000000000000C6A5A500FFF7
      EF009C3100005273FF001042FF00BDCEFF00EFF7FF001842FF004A73FF009431
      0000FFF7EF00C6A5A50000000000000000000000000000000000B5B5B500F7F7
      F7008C8C8C00BDBDBD009C9C9C00DEDEDE00F7F7F7009C9C9C00BDBDBD008C8C
      8C00F7F7F700B5B5B5000000000000000000000000000000000000000000C6A5
      A500B5848400F7EFE700FFEFE700FFEFDE00FFFFF700F7DEC600B5848400FFF7
      EF00FFF7EF00FFF7EF00C6A5A50000000000000000000000000000000000B5B5
      B5009C9C9C00EFEFEF00EFEFEF00EFEFEF00F7F7F700DEDEDE009C9C9C00F7F7
      F700F7F7F700F7F7F700B5B5B500000000000000000000000000C6A5A500FFF7
      EF009C310000E7EFFF00DEE7FF00FFFFFF00FFFFFF009CADFF000031FF006331
      5A00FFF7EF00C6A5A50000000000000000000000000000000000B5B5B500F7F7
      F7008C8C8C00F7F7F700EFEFEF00FFFFFF00FFFFFF00CECECE00949494008C8C
      8C00F7F7F700B5B5B5000000000000000000000000000000000000000000C6A5
      A500C6A59C00D6BDBD00FFF7EF00FFEFE700FFFFDE00D6B5AD00C6A59C00FFF7
      E700FFF7E700FFF7E700C6A5A50000000000000000000000000000000000B5B5
      B500ADADAD00CECECE00F7F7F700EFEFEF00EFEFEF00BDBDBD00ADADAD00F7F7
      F700F7F7F700F7F7F700B5B5B500000000000000000000000000C6A5A500FFF7
      E7009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005273FF000031
      FF00FFF7E700C6A5A50000000000000000000000000000000000B5B5B500F7F7
      F7008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD009494
      9400F7F7F700B5B5B5000000000000000000000000000000000000000000C6A5
      A500E7C6BD00BD948C00D6BDBD00F7EFE700D6BDB500BD948C00CEB5AD00DECE
      C600DECEC600DECEC600C6A5A50000000000000000000000000000000000B5B5
      B500CECECE00A5A5A500CECECE00EFEFEF00C6C6C600A5A5A500BDBDBD00CECE
      CE00CECECE00CECECE00B5B5B500000000000000000000000000C6A5A500FFF7
      E7009C3100009C3100009C3100009C3100009C3100009C3100008C3110002131
      CE000031FF00C6A5A50000000000000000000000000000000000B5B5B500F7F7
      F7008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C0094949400B5B5B5000000000000000000000000000000000000000000C6A5
      A500FFEFDE00E7C6BD00C6A59C00B5848400C6A59C00E7C6BD00C6B5AD00C6B5
      AD00C6B5A500C6B5A500C6A5A50000000000000000000000000000000000B5B5
      B500EFEFEF00CECECE00ADADAD009C9C9C00ADADAD00CECECE00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500000000000000000000000000C6A5A500FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00C6B5AD00C6B5AD00C6B5
      A5000031FF000031FF000031FF00000000000000000000000000B5B5B500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00B5B5B500B5B5B500B5B5
      B50094949400949494009494940000000000000000000000000000000000C6A5
      A500FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00B5A59400B5A5
      9400B5A59400B5A59400C6A5A50000000000000000000000000000000000B5B5
      B500EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00A5A5A500A5A5
      A500A5A5A500A5A5A500B5B5B500000000000000000000000000C6A5A500FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00B5A59400B5A59400B5A5
      9400B5A59400C6A5A5000031FF00000000000000000000000000B5B5B500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00A5A5A500A5A5A500A5A5
      A500A5A5A500B5B5B5009494940000000000000000000000000000000000C6A5
      A500FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600CEBDAD00FFFFF700FFFF
      F700E7DEDE00C6A5A5000000000000000000000000000000000000000000B5B5
      B500EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00BDBDBD00F7F7F700F7F7
      F700DEDEDE00B5B5B50000000000000000000000000000000000C6A5A500FFEF
      D600FFEFD600FFEFD600FFEFD600FFEFD600CEBDAD00FFFFF700FFFFF700E7DE
      DE00C6A5A5000000000000000000000000000000000000000000B5B5B500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00BDBDBD00F7F7F700F7F7F700DEDE
      DE00B5B5B500000000000000000000000000000000000000000000000000C6A5
      A500FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600CEBDAD00FFFFF700DECE
      C600C6A5A500000000000000000000000000000000000000000000000000B5B5
      B500EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00BDBDBD00F7F7F700D6D6
      D600B5B5B5000000000000000000000000000000000000000000C6A5A500FFEF
      D600FFEFD600FFEFD600FFEFD600FFEFD600CEBDAD00FFFFF700DECEC600C6A5
      A500000000000000000000000000000000000000000000000000B5B5B500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00BDBDBD00F7F7F700D6D6D600B5B5
      B50000000000000000000000000000000000000000000000000000000000C6A5
      A500FFE7D600FFE7D600FFE7D600FFE7D600FFE7D600CEBDAD00DECEC600C6A5
      A50000000000000000000000000000000000000000000000000000000000B5B5
      B500E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00D6D6D600B5B5
      B500000000000000000000000000000000000000000000000000C6A5A500FFE7
      D600FFE7D600FFE7D600FFE7D600FFE7D600CEBDAD00DECEC600C6A5A5000000
      0000000000000000000000000000000000000000000000000000B5B5B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00D6D6D600B5B5B5000000
      000000000000000000000000000000000000000000000000000000000000C6A5
      A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A5000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B5000000
      0000000000000000000000000000000000000000000000000000C6A5A500C6A5
      A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500000000000000
      0000000000000000000000000000000000000000000000000000B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000018A5CE0029ADD6001084B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000949494009C9C9C0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C009C9C9C0000000000000000009C9C9C009C9C9C00000000000000
      00000000000000000000000000000000000000000000000000000000000021A5
      CE0021A5CE001084B500189CC60029ADD60029ADD600108CB5001084B50029AD
      D60029A5D6000000000000000000000000000000000000000000000000009C9C
      9C0094949400848484008C8C8C009C9C9C00A5A5A5008C8C8C0084848400A5A5
      A500A5A5A5000000000000000000000000000000000000000000000000008484
      8400BDBDBD00B5B5B500848484008484840084848400EFEFEF00848484008484
      8400848484000000000000000000000000000000000000000000000000009C9C
      9C00BDBDBD00BDBDBD009C9C9C009C9C9C009C9C9C00E7E7E7009C9C9C009C9C
      9C009C9C9C0000000000000000000000000000000000000000000000000021A5
      CE0029ADD60029ADD60018A5CE0021D6FF004AD6F70021A5CE005AC6DE0063C6
      DE0021A5CE000000000000000000000000000000000000000000000000009C9C
      9C00A5A5A500949494008C8C8C00A5A5A500B5B5B5009C9C9C00B5B5B500B5B5
      B5009C9C9C00000000000000000000000000000000000000000084848400E7E7
      E700B5B5B500B5B5B500B5B5B500525252004A4A4A0084848400CECECE00EFEF
      EF00C6C6C60084848400848484008484840000000000000000009C9C9C00DEDE
      DE00BDBDBD00BDBDBD00BDBDBD0073737300737373009C9C9C00CECECE00DEDE
      DE00C6C6C6009C9C9C009C9C9C009C9C9C0000000000108CB500189CC6004AC6
      E7007BDEF7004AC6E70039CEEF0018D6FF0039D6FF005ADEF70073C6D600ADE7
      EF0094E7F700108CB5000000000000000000000000008C8C8C0094949400ADAD
      AD00CECECE00B5B5B500ADADAD00ADADAD00B5B5B500BDBDBD00BDBDBD00DEDE
      DE00CECECE008C8C8C0000000000000000000000000084848400DEDEDE00D6D6
      D600A5A5A500A5A5A500A5A5A500525252001010100010101000181818001010
      100094949400CECECE008484840000000000000000009C9C9C00D6D6D600D6D6
      D600ADADAD00ADADAD00ADADAD007373730042424200424242004A4A4A004242
      4200A5A5A500CECECE009C9C9C0000000000000000005AC6DE0029ADD6004AC6
      E70094E7F7008CE7F7005ADEF70021D6F70018D6FF0052DEF70073DEF7007BDE
      F70039CEEF0029ADD60021A5CE000000000000000000B5B5B500A5A5A500B5B5
      B500D6D6D600D6D6D600BDBDBD00ADADAD00A5A5A500BDBDBD00CECECE00CECE
      CE00ADADAD00A5A5A5009C9C9C000000000084848400D6D6D600D6D6D600A5A5
      A500E7DEDE00DED6D600CECECE00C6C6C600B5B5B5009C9C9C007B7373001010
      10001010100010101000848484008C8C8C009C9C9C00D6D6D600D6D6D600ADAD
      AD00DEDEDE00D6D6D600CECECE00C6C6C600BDBDBD00ADADAD008C8C8C004242
      420042424200424242009C9C9C009C9C9C00000000001894BD0021A5CE004AC6
      E7007BDEF70094E7F70073DEF7005AC6DE004AC6E70029CEF70018D6FF0018D6
      FF0018D6FF0021D6FF0029ADD60000000000000000008C8C8C009C9C9C00B5B5
      B500CECECE00D6D6D600BDBDBD00ADADAD00A5A5A500A5A5A5009C9C9C009C9C
      9C009C9C9C009C9C9C00949494000000000084848400D6D6D600A5A5A500F7F7
      F700FFFFFF00FFFFFF00EFE7EF00E7E7E700E7E7E700DEDEDE00CECECE00BDBD
      BD00A5A5A50073737300949494008C8C8C009C9C9C00D6D6D600ADADAD00E7E7
      E700EFEFEF00EFEFEF00DEDEDE00DEDEDE00DEDEDE00D6D6D600CECECE00C6C6
      C600ADADAD008C8C8C00A5A5A5009C9C9C0000000000188CBD0029ADD60042C6
      EF006BDEF7008CBDCE00949494009494940094949400949494004AC6E70018D6
      FF0018D6FF0018D6FF00189CCE0000000000000000008C8C8C009C9C9C00ADAD
      AD00C6C6C600C6C6C600ADADAD00ADADAD00ADADAD00ADADAD00ADADAD009C9C
      9C00A5A5A500A5A5A5008C8C8C000000000084848400A5A5A500FFFFFF00FFFF
      FF00FFFFFF00DEDEDE00ADA5AD00B5ADAD00C6BDBD00D6CECE00E7E7E700E7E7
      E700D6D6D600C6C6C600A5A5A500848484009C9C9C00ADADAD00EFEFEF00EFEF
      EF00EFEFEF00DEDEDE00B5B5B500B5B5B500C6C6C600CECECE00DEDEDE00DEDE
      DE00D6D6D600C6C6C600ADADAD0094949400000000001894BD0029ADD60029AD
      D6005ADEF70094949400E7DEE700B5B5B500ADA5A500BDB5B5009494940052DE
      F7009CE7F700ADE7EF00189CC60000000000000000008C8C8C009C9C9C00A5A5
      A500BDBDBD00ADADAD00E7E7E700C6C6C600BDBDBD00D6D6D600ADADAD00BDBD
      BD00DEDEDE00E7E7E7009C9C9C0000000000000000008484840084848400F7F7
      F700C6BDBD00948C8C00A59C9C00ADADAD00ADA5A500B5ADAD00ADADAD00B5AD
      AD00CECECE00DEDEDE00D6D6D60084848400000000009C9C9C009C9C9C00E7E7
      E700C6C6C6009C9C9C00ADADAD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500CECECE00D6D6D600CECECE009C9C9C0000000000108CB50018A5CE0029AD
      D60042C6EF0094949400E7DEE700B5B5B500ADA5A500BDB5B500949494007BDE
      F700ADE7EF008CBDCE0021A5CE0000000000000000008C8C8C00949494009C9C
      9C00B5B5B500ADADAD00E7E7E700C6C6C600BDBDBD00D6D6D600ADADAD00CECE
      CE00DEDEDE00C6C6C600A5A5A500000000000000000000000000000000008484
      8400CEA59400BD9C8400A58C7B0094847B008C7B7B00948C9400A5A5A500BDB5
      B500D6D6D600CECECE0084848400000000000000000000000000000000009C9C
      9C00A5A5A5009C9C9C008C8C8C009C9C9C00949494009C9C9C00ADADAD00BDBD
      BD00D6D6D600CECECE009C9C9C000000000000000000000000001084B50021A5
      CE0039CEEF0094949400E7DEE700B5B5B500ADA5A500BDB5B5009494940063DE
      F70063C6DE001084B50000000000000000000000000000000000848484009494
      9400ADADAD00ADADAD00E7E7E700C6C6C600BDBDBD00D6D6D600ADADAD00C6C6
      C600BDBDBD007B7B7B0000000000000000000000000000000000000000000000
      0000CE9C9C00FFEFC600FFDEB500EFC69C00D6AD8C00CEA58400CE9C9C009C94
      9400848484008484840000000000000000000000000000000000000000000000
      0000ADADAD00D6D6D600CECECE00BDBDBD00A5A5A5009C9C9C00ADADAD00A5A5
      A5009C9C9C009C9C9C000000000000000000000000000000000000000000108C
      B500188CBD0094949400E7DEE700B5B5B500ADA5A500BDB5B50094949400189C
      C6001894BD000000000000000000000000000000000000000000000000008484
      84008C8C8C00ADADAD00E7E7E700C6C6C600BDBDBD00D6D6D600ADADAD009494
      94008C8C8C000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFE7CE00FFDEBD00FFDEB500FFDEA500FFD69C00CE9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00D6D6D600CECECE00CECECE00C6C6C600C6C6C600ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7DEE700BDADAD00ADA5A500BDB5B500949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00E7E7E700C6C6C600BDBDBD00D6D6D600ADADAD000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00FFEFDE00FFE7CE00FFE7C600FFDEBD00FFDEAD00CE9C9C00000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00DEDEDE00DEDEDE00D6D6D600CECECE00CECECE00ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400B5B5B500A5A5A5009C949400ADA5A500949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00C6C6C600B5B5B500B5B5B500BDBDBD00ADADAD000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00FFF7E700FFEFDE00FFE7CE00FFE7C600FFDEB500CE9C9C00000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00E7E7E700DEDEDE00D6D6D600D6D6D600CECECE00ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700BDB5B500A5A5A500B5A5A500949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00E7E7E700D6D6D600BDBDBD00BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000CE9C9C00FFFF
      F700FFFFF700FFF7E700FFEFD600FFEFCE00F7D6BD00CE9C9C00000000000000
      0000000000000000000000000000000000000000000000000000ADADAD00EFEF
      EF00EFEFEF00E7E7E700DEDEDE00D6D6D600CECECE00ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7DEE700E7DEE700BDB5B500A59C9C00949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00E7E7E700E7E7E700CECECE00B5B5B500ADADAD000000
      0000000000000000000000000000000000000000000000000000CE9C9C00CE9C
      9C00CE9C9C00FFF7EF00FFEFDE00FFE7D600CE9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD00ADAD
      AD00ADADAD00E7E7E700DEDEDE00DEDEDE00ADADAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094949400949494009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00ADADAD00ADADAD00ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE9C9C00CE9C9C00CE9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00ADADAD00ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A5A500C6A5
      A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5
      A500C6A5A500C6A5A50000000000000000000000000000000000B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B5000000000000000000000000000000000000639C000063
      9C0000639C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C
      8C00BD8C8C00BD8C8C00BD8C8C00000000000000000000000000848484008484
      840084848400A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000C6A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6A5A50000000000000000000000000000000000B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B50000000000000000000000000000639C0039BDE70031BD
      E70031B5DE00BD8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BD8C8C00000000000000000084848400B5B5B500B5B5
      B500ADADAD00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A5A5A500000000000000000000000000C6A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6A5A50000000000000000000000000000000000B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B50000000000000000000000000000639C0042C6E70039C6
      E70039BDE700BD8C8C00FFFFFF00B57B7300B57B7300B57B7300B57B7300B57B
      7300B57B7300FFFFFF00BD8C8C00000000000000000084848400BDBDBD00BDBD
      BD00B5B5B500A5A5A500FFFFFF00949494009494940094949400949494009494
      940094949400FFFFFF00A5A5A500000000000000000000000000C6A5A500FFFF
      F700FFFFFF00FFFFF700FFFFF700FFFFFF00FFFFF700FFFFF700FFFFFF00FFFF
      F700FFFFF700C6A5A50000000000000000000000000000000000B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5B5B50000000000000000000000000000639C004ACEEF0042C6
      E70042C6E700BD8C8C00FFFFF700FFF7EF00FFF7EF00FFFFF700FFFFF700FFFF
      F700FFFFFF00FFFFF700BD8C8C00000000000000000084848400C6C6C600BDBD
      BD00BDBDBD00A5A5A500FFFFFF00F7F7F700F7F7F700F7F7F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A5A5A500000000000000000000000000C6A5A500FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      F700FFFFF700C6A5A50000000000000000000000000000000000B5B5B500F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700B5B5B50000000000000000000000000000639C0052CEEF0052CE
      EF004AC6EF00BD8C8C00FFF7EF00B57B7300B57B7300B57B7300B57B7300B57B
      7300B57B7300FFF7EF00BD8C8C00000000000000000084848400C6C6C600C6C6
      C600C6C6C600A5A5A500F7F7F700949494009494940094949400949494009494
      940094949400F7F7F700A5A5A500000000000000000000000000C6A5A500FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700C6A5A50000000000000000000000000000000000B5B5B500F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700B5B5B50000000000000000000000000000639C005AD6F7005ACE
      EF0052CEEF00BD8C8C00FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7
      EF00FFF7EF00FFF7E700BD8C8C00000000000000000084848400CECECE00CECE
      CE00C6C6C600A5A5A500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700A5A5A500000000000000000000000000C6A5A500FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7F700FFF7F700FFF7EF00FFF7
      F700FFF7F700C6A5A50000000000000000000000000000000000B5B5B500F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700B5B5B50000000000000000000000000000639C0063D6F70063D6
      F7005AD6EF00BD8C8C00FFEFDE00B57B7300B57B7300B57B7300B57B7300CEAD
      9C00CEAD9C00D6C6BD00BD8C8C00000000000000000084848400D6D6D600CECE
      CE00CECECE00A5A5A500EFEFEF0094949400949494009494940094949400B5B5
      B500B5B5B500CECECE00A5A5A500000000000000000000000000C6A5A500FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00C6A5A50000000000000000000000000000000000B5B5B500F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700B5B5B50000000000000000000000000000639C006BDEF70063DE
      F70063D6F700BD8C8C00FFEFDE00FFEFD600FFEFDE00FFEFDE00FFEFDE00C6AD
      A500C6ADAD00CEB5B500CE9C9C00000000000000000084848400D6D6D600D6D6
      D600CECECE00A5A5A500EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00B5B5
      B500B5B5B500BDBDBD00B5B5B500000000000000000000000000C6A5A500FFF7
      E700FFF7E700FFF7EF00FFEFDE00FFF7EF00FFEFDE00FFF7EF00FFEFDE00FFF7
      EF00FFEFDE00C6A5A50000000000000000000000000000000000B5B5B500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00B5B5B50000000000000000000000000000639C0073DEFF006BDE
      F7006BDEF700BD8C8C00FFEFD600FFEFD600FFEFD600FFEFD600FFE7CE00C6AD
      AD00FFFFFF00CE9C9C0000000000000000000000000084848400DEDEDE00D6D6
      D600D6D6D600A5A5A500EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700B5B5
      B500FFFFFF00B5B5B50000000000000000000000000000000000C6A5A500FFF7
      EF00FFEFDE00FFF7E700FFF7EF00FFEFDE00FFF7E700DECEC600DECEC600DECE
      C600DECEC600C6A5A50000000000000000000000000000000000B5B5B500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00D6D6D600D6D6D600D6D6
      D600D6D6D600B5B5B50000000000000000000000000000639C007BE7FF0073E7
      FF0073DEF700BD8C8C00FFE7CE00FFE7CE00FFE7CE00FFE7CE00EFCEBD00D6BD
      B500CE9C9C0000639C0000000000000000000000000084848400DEDEDE00DEDE
      DE00D6D6D600A5A5A500E7E7E700E7E7E700E7E7E700E7E7E700D6D6D600C6C6
      C600B5B5B5008484840000000000000000000000000000000000C6A5A500FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00C6B5AD00C6B5AD00C6B5
      AD00C6B5AD00C6A5A50000000000000000000000000000000000B5B5B500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000639C007BE7FF007BE7
      FF0073E7FF00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00BD8C8C00CE9C
      9C0052CEEF0000639C0000000000000000000000000084848400E7E7E700DEDE
      DE00DEDEDE00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500B5B5
      B500C6C6C6008484840000000000000000000000000000000000C6A5A500FFEF
      DE00FFEFD600FFEFDE00FFEFD600FFEFD600FFEFDE00B5A59400B5A59400B5A5
      9400B5A59400C6A5A50000000000000000000000000000000000B5B5B500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00ADADAD00ADADAD00ADAD
      AD00ADADAD00B5B5B50000000000000000000000000000639C0084EFFF0084E7
      FF007BE7FF007BE7FF007BE7FF0073DEFF006BDEF70063D6F7005AD6EF0052CE
      EF0052CEEF0000639C0000000000000000000000000084848400E7E7E700E7E7
      E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00C6C6
      C600C6C6C6008484840000000000000000000000000000000000C6A5A500FFEF
      D600FFEFD600FFEFD600FFEFD600FFEFD600CEBDAD00FFFFF700FFF7F700E7DE
      DE00C6A5A5000000000000000000000000000000000000000000B5B5B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00FFFFFF00F7F7F700DEDE
      DE00B5B5B5000000000000000000000000000000000000639C0084EFFF0084EF
      FF007373730073737300737373007373730073737300737373007373730063D6
      F7005ACEEF0000639C0000000000000000000000000084848400E7E7E700E7E7
      E70084848400848484008484840084848400848484008484840084848400CECE
      CE00CECECE008484840000000000000000000000000000000000C6A5A500FFEF
      D600FFE7D600FFEFD600FFE7D600FFEFD600C6B5AD00FFFFF700DECEC600C6A5
      A500000000000000000000000000000000000000000000000000B5B5B500E7E7
      E700E7E7E700E7E7E700E7E7E700EFEFEF00BDBDBD00F7F7F700D6D6D600B5B5
      B500000000000000000000000000000000000000000000639C0084EFFF0084EF
      FF0073737300CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEBDB500737373006BDE
      F70063D6F70000639C0000000000000000000000000084848400E7E7E700E7E7
      E70084848400BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0084848400D6D6
      D600CECECE008484840000000000000000000000000000000000C6A5A500FFE7
      D600FFE7D600FFE7D600FFE7D600FFE7D600CEBDAD00DECEC600C6A5A5000000
      0000000000000000000000000000000000000000000000000000B5B5B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00D6D6D600B5B5B5000000
      000000000000000000000000000000000000000000000000000000639C000063
      9C0073737300E7DED600FFFFFF00FFFFF700FFFFF700D6C6BD00737373000063
      9C0000639C000000000000000000000000000000000000000000848484008484
      840084848400CECECE00EFEFEF00EFEFEF00EFEFEF00BDBDBD00848484008484
      8400848484000000000000000000000000000000000000000000C6A5A500C6A5
      A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500C6A5A500000000000000
      0000000000000000000000000000000000000000000000000000B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007373730073737300737373007373730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008CBD00008CBD00008C
      BD00008CBD00008CBD00008CBD00008CBD00008CBD00008CBD0008841800008C
      BD00008CBD00008CBD000000000000000000000000008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C007B7B7B008C8C
      8C008C8C8C008C8C8C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000844208007B3908007B3908007B39
      08007B3908000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484007B7B7B007B7B7B007B7B
      7B007B7B7B00000000000000000000000000008CBD0021A5D60073C6E70084D6
      FF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF00088418000884
      180039ADDE00008CBD0000000000000000008C8C8C00A5A5A500CECECE00DEDE
      DE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE007B7B7B007B7B
      7B00ADADAD008C8C8C0000000000000000000000000000000000000000000000
      00000000000000000000000000009C5A10008C5208008C520800C67310008439
      08007B3908007B39080084390800000000000000000000000000000000000000
      00000000000000000000000000008C8C8C008C8C8C008C8C8C00949494008484
      8400848484007B7B7B007B7B7B0000000000008CBD004ABDE70039ADD600A5E7
      FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF006BD6FF000884180021B5
      39000884180084D6EF00008CBD00000000008C8C8C00BDBDBD00ADADAD00E7E7
      E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D6007B7B7B009C9C
      9C007B7B7B00D6D6D6008C8C8C00000000000000000000000000000000000000
      000000000000000000009C5A1000BD731000CE7B0800D6AD7B00AD8C6300C673
      1000CE7B0800843908007B3908007B3908000000000000000000000000000000
      000000000000000000008C8C8C00949494009C9C9C00C6C6C600B5B5B5009C9C
      9C009C9C9C00848484007B7B7B007B7B7B00008CBD0073D6FF00008CBD00ADEF
      FF007BDEFF0008841800088418000884180008841800088418000884180029BD
      4A0021B5390008841800008CBD00000000008C8C8C00D6D6D6008C8C8C00EFEF
      EF00D6D6D6007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B009C9C
      9C009C9C9C007B7B7B008C8C8C00000000000000000000000000000000000000
      0000000000009C5A1000CE7B0800CE7B0800CEC6BD00C6843900BD731000CEC6
      BD00AD8C6300BD731000BD731000843908000000000000000000000000000000
      0000000000008C8C8C0094949400A5A5A500DEDEDE00A5A5A5008C8C8C00DEDE
      DE00ADADAD009C9C9C009494940084848400008CBD007BDEFF00218CB500B5C6
      CE00BDB5B5000884180063EF94005AE78C0052DE84004AD6730042CE630039C6
      5A0029BD4A0021B5390008841800000000008C8C8C00D6D6D60094949400D6D6
      D600CECECE007B7B7B00C6C6C600C6C6C600BDBDBD00B5B5B500ADADAD00A5A5
      A5009C9C9C009C9C9C007B7B7B00000000000000000000000000000000000000
      00009C5A1000CE7B0800D6A55A00CEC6BD00CE945200CE842100CEC6BD00AD84
      5A00BD731000CEC6BD00AD8C6300844208000000000000000000000000000000
      00008C8C8C009C9C9C00B5B5B500DEDEDE00B5B5B500A5A5A500DEDEDE00ADAD
      AD009C9C9C00DEDEDE00B5B5B50084848400008CBD0084E7FF005A8CA50084CE
      E700EFFFFF000884180063EF940063EF94005AE78C0052DE84004AD6730042CE
      630031C65A0029BD4A0021B53900088418008C8C8C00DEDEDE00A5A5A500C6C6
      C600FFFFFF007B7B7B00C6C6C600C6C6C600C6C6C600BDBDBD00B5B5B500ADAD
      AD00A5A5A5009C9C9C009C9C9C007B7B7B000000000000000000000000009C63
      1800C6731000DEA56300DEAD6300CEB58C00CE944A00CEC6BD00C68C4200BD73
      1000CEC6BD00A57B4A009C5A1000843908000000000000000000000000008C8C
      8C009C9C9C00CECECE00CECECE00D6D6D600B5B5B500DEDEDE00ADADAD009C9C
      9C00DEDEDE00A5A5A5008C8C8C0084848400008CBD008CEFFF009C8C9400219C
      C600FFFFFF000884180063EF940063EF940063EF94005AE78C0052DE84004AD6
      730042CE630031C6520008841800008CBD008C8C8C00DEDEDE008C8C8C009C9C
      9C00FFFFFF007B7B7B00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00B5B5
      B500ADADAD00A5A5A5007B7B7B008C8C8C0000000000000000009C631800CE7B
      1000DEAD6B00AD845A005A3118006B3110009C631800C68C4200C68C4200CEC6
      BD00C6843100A57339008C5208000000000000000000000000008C8C8C00A5A5
      A500CECECE00ADADAD008C8C8C008C8C8C008C8C8C00ADADAD00ADADAD00DEDE
      DE00A5A5A5009C9C9C008484840000000000008CBD0094F7FF00BD8C8C00219C
      C600008CBD0008841800088418000884180008841800088418000884180052DE
      84004AD6730008841800008CBD00008CBD008C8C8C00E7E7E700A5A5A5009C9C
      9C008C8C8C007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00BDBD
      BD00B5B5B5007B7B7B008C8C8C008C8C8C00000000009C631800CE7B0800DEA5
      63006B737300424A4200292929005A636300949C94006B737300844A0800CE94
      5200A57339008C5208000000000000000000000000008C8C8C009C9C9C00CECE
      CE009C9C9C009C9C9C008C8C8C0094949400D6D6D6009C9C9C007B7B7B00BDBD
      BD009C9C9C00848484000000000000000000008CBD009CF7FF00BD8C8C00FFF7
      EF00FFF7E700FFF7EF00FFF7EF00FFFFF700FFFFF700FFF7EF00088418005AE7
      8C00088418000000000000000000000000008C8C8C00E7E7E700A5A5A500F7F7
      F700F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF00F7F7F7007B7B7B00C6C6
      C6007B7B7B00000000000000000000000000000000009C5A1000DEA56300A57B
      4A00636B6300DEDEDE00B5B5B5006B73730084848400424A4A0010101000CE7B
      08008C520800000000000000000000000000000000008C8C8C00CECECE009C9C
      9C0094949400DEDEDE00BDBDBD009C9C9C00B5B5B5007B7B7B00737373009C9C
      9C008C8C8C00000000000000000000000000008CBD00FFFFFF00BD8C8C00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7EF00FFF7EF00FFF7E700088418000884
      1800088CBD000000000000000000000000008C8C8C00FFFFFF00A5A5A500F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7007B7B7B007B7B
      7B008C8C8C000000000000000000000000009C5A1000DEA56300A57B4A00525A
      5A00EFEFEF00EFEFEF00EFEFEF00E7E7DE00C6BDBD00949C94005A3118009C5A
      1000000000000000000000000000000000008C8C8C00CECECE00A5A5A5008C8C
      8C00E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDBDBD008C8C8C008C8C
      8C000000000000000000000000000000000000000000008CBD00BD8C8C00FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00EFD6CE00E7D6CE00D6C6BD0008841800008C
      BD0000000000000000000000000000000000000000008C8C8C00A5A5A500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00DEDEDE00DEDEDE00CECECE007B7B7B008C8C
      8C00000000000000000000000000000000009C5A1000A57B4A00424A4200EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF0042393100844A08000000
      0000000000000000000000000000000000008C8C8C00A5A5A5007B7B7B00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70073737300848484000000
      0000000000000000000000000000000000000000000000000000BD8C8C00FFEF
      DE00FFEFD600FFEFDE00FFEFDE00C6ADA500C6ADAD00CEB5B500CE9C9C000000
      0000000000000000000000000000000000000000000000000000A5A5A500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00B5B5B500B5B5B500BDBDBD00B5B5B5000000
      000000000000000000000000000000000000845A290010080800101010004A52
      52009C9C9C00DEDEDE00EFEFEF00DEDEDE00423931008C520800000000000000
      0000000000000000000000000000000000008C8C8C0073737300737373008484
      8400C6C6C600DEDEDE00E7E7E700D6D6D6007B7B7B0084848400000000000000
      0000000000000000000000000000000000000000000000000000BD8C8C00FFEF
      D600FFEFD600FFEFD600FFE7CE00C6ADAD00FFFFFF00CE9C9C00000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500EFEF
      EF00EFEFEF00EFEFEF00E7E7E700B5B5B500FFFFFF00B5B5B500000000000000
      0000000000000000000000000000000000000000000018181800000000000000
      000000000000313131006B73730031313100844A080000000000000000000000
      000000000000000000000000000000000000000000007B7B7B006B6B6B006363
      63006363630073737300A5A5A500737373007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000BD8C8C00FFE7
      CE00FFE7CE00FFE7CE00EFCEBD00D6BDB500CE9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500E7E7
      E700E7E7E700E7E7E700D6D6D600C6C6C600B5B5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000633110000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6B006B6B6B006B6B6B00737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD8C8C00BD8C
      8C00BD8C8C00BD8C8C00BD8C8C00CE9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00000000000000
      00000000000000000000000000000000000000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300000000000000000094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      94009494940094949400949494000000000000000000B5847B00FFEFDE00FFDE
      C600FFDEB500FFDEAD00FFD6AD00FFD6AD00FFDEAD0094736B00000000000000
      00000000000000000000000000000000000000000000A5A5A500EFEFEF00E7E7
      E700DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D60094949400000000000000
      000000000000000000000000000000000000A57B7300C6948C00EFC6A500FFDE
      AD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDE
      AD00FFDEAD00EFBDA500C6948C00A57B730094949400ADADAD00C6C6C600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600ADADAD009494940000000000CE9C7B00FFEFE700FFE7
      C600FFDEBD00FFDEB500F7D6AD00F7CEA500FFD6AD0094736B00000000000000
      00000000000000000000000000000000000000000000ADADAD00EFEFEF00E7E7
      E700DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D60094949400000000000000
      000000000000000000000000000000000000A57B7300DEB59C00C6949400F7DE
      BD00F7DEC600F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
      C600F7D6BD00C6949400E7BDA500A57B730094949400BDBDBD00ADADAD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00ADADAD00BDBDBD009494940000000000CEA58400FFF7EF00FFEF
      DE00FFE7C600FFDEBD00FFDEAD00FFD6AD00FFD6AD0094736B00000000000000
      00000000000000000000000000000000000000000000B5B5B500EFEFEF00E7E7
      E700E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D60094949400000000000000
      000000000000000000000000000000000000A57B7300F7DEC600D6A59400CEAD
      A500F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600CEA59C00D6A59C00F7E7CE00A57B730094949400D6D6D600B5B5B500B5B5
      B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00B5B5B500B5B5B500DEDEDE009494940000000000D6A58C00FFFFFF00FFEF
      E700FFEFDE00FFE7C600FFDEBD00FFDEAD00FFDEAD0094736B00A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B730000000000B5B5B500F7F7F700EFEF
      EF00E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600949494009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00A57B7300EFE7DE00F7DEC600C694
      8C00E7CEC600F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700DEC6
      BD00C6948C00F7E7D600EFE7DE00A57B730094949400DEDEDE00D6D6D600A5A5
      A500CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7E7E700C6C6
      C600ADADAD00DEDEDE00DEDEDE009494940000000000D6AD8C00FFFFFF00F7F7
      EF00FFEFE700FFEFDE00FFE7C600FFDEBD00FFDEB50094736B00D6A58C00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00A57B730000000000BDBDBD00F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700DEDEDE00DEDEDE0094949400BDBDBD00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE009C9C9C00A57B7300F7EFE700FFF7EF00EFCE
      B500BD948C00EFDEDE00F7EFE700F7EFE700F7EFE700F7EFE700EFD6D600C694
      8C00EFD6C600FFF7EF00F7EFE700A57B730094949400E7E7E700E7E7E700CECE
      CE00A5A5A500DEDEDE00E7E7E700DEDEDE00DEDEDE00E7E7E700D6D6D600ADAD
      AD00CECECE00EFEFEF00E7E7E7009494940000000000DEAD8C00FFFFFF00FFFF
      FF00F7F7EF00FFEFE700FFEFDE00FFE7C600FFDEBD0094736B00CEA58C00E7B5
      8400E7B58400FFDEBD00FFEFE700A57B730000000000BDBDBD00F7F7F700F7F7
      F700F7F7F700EFEFEF00E7E7E700E7E7E700DEDEDE0094949400B5B5B500BDBD
      BD00BDBDBD00DEDEDE00EFEFEF009C9C9C00A57B7300FFF7F700FFFFF700D6AD
      AD00C6948C00A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300C68C
      8C00E7C6C600FFFFFF00FFF7F700A57B730094949400EFEFEF00EFEFEF00BDBD
      BD00A5A5A50094949400949494009494940094949400949494008C8C8C00A5A5
      A500CECECE00F7F7F700EFEFEF009494940000000000E7B58C00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFEFE700F7E7D600EFC6A50094736B00CEA58C00FFD6
      AD00FFD6AD00FFE7C600FFEFE700A57B730000000000C6C6C600F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00E7E7E700CECECE0094949400B5B5B500D6D6
      D600D6D6D600DEDEDE00EFEFEF009C9C9C00A57B7300EFDEDE00C69C9C00CEA5
      A500F7EFEF00F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFFFFF00DEDE
      DE00C69C9400CEA5A500F7E7E700A57B730094949400DEDEDE00ADADAD00B5B5
      B500E7E7E700EFEFEF00E7E7E700E7E7E700DEDEDE00E7E7E700E7E7E700D6D6
      D600ADADAD00B5B5B500DEDEDE009494940000000000E7B58C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7E7D600B5847300CE947300BD8C7300D6A58C00E7B5
      8400E7B58400F7E7D600FFFFFF00A57B730000000000C6C6C600F7F7F700F7F7
      F700F7F7F700F7F7F700E7E7E700A5A5A500ADADAD009C9C9C00BDBDBD00BDBD
      BD00BDBDBD00E7E7E700F7F7F7009C9C9C00A57B7300C6949400DEC6C600FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00EFFFFF00F7FF
      FF00EFFFFF00D6B5B500C69C9400A57B730094949400ADADAD00CECECE00F7F7
      F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E7E7E700BDBDBD00ADADAD009494940000000000E7B58C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7EF00B5847300E7B58400E7B58400FFF7EF00FFFF
      FF00FFF7EF00EFC6A500EFC6A500A57B730000000000C6C6C600F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00A5A5A500B5B5B500BDBDBD00EFEFEF00F7F7
      F700EFEFEF00CECECE00CECECE009C9C9C00A57B7300B5E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00EFF7
      F700DEF7F700D6F7F700BDCECE00A57B730094949400CECECE00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700DEDEDE00DEDEDE00C6C6C6009494940000000000E7B58C00DEAD8C00DEAD
      8C00DEAD8C00DEAD8C00DEAD8C00B5847300EFC6A500F7F7EF00FFFFFF00FFFF
      FF00F7E7CE00C6947300CE947300A57B730000000000C6C6C600BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00A5A5A500CECECE00F7F7F700F7F7F700F7F7
      F700DEDEDE00A5A5A500A5A5A5009C9C9C0000000000A57B7300FFFFFF00FFFF
      FF00FFFFFF00F7FFFF00EFF7F700D6EFEF00BDDEDE00ADCED6009CCED60094C6
      D6008CC6D6008CB5CE00A57B7300000000000000000094949400F7F7F700F7F7
      F700F7F7F700EFEFEF00E7E7E700D6D6D600C6C6C600BDBDBD00B5B5B500B5B5
      B500ADADAD00ADADAD0094949400000000000000000000000000000000000000
      000000000000A57B7300F7E7D600F7E7D600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700A5ADAD00A5ADAD00A57B73000000000000000000000000000000
      0000000000009C9C9C00E7E7E700E7E7E700F7F7F700F7F7F700F7F7F700F7F7
      F700EFEFEF00ADADAD00ADADAD009C9C9C000000000000000000A57B7300BDE7
      E700A5FFFF0094E7EF008CDEEF0084E7EF0084E7EF0084E7F70084E7F70084E7
      FF009CCEDE00A57B73000000000000000000000000000000000094949400CECE
      CE00CECECE00BDBDBD00B5B5B500B5B5B500B5B5B500BDBDBD00BDBDBD00BDBD
      BD00BDBDBD009494940000000000000000000000000000000000000000000000
      000000000000A57B7300F7F7EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7EF00A57B73000000000000000000000000000000
      0000000000009C9C9C00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF009C9C9C00000000000000000000000000A57B
      7300ADC6CE008CF7FF008CFFFF008CF7FF008CF7FF008CFFFF008CEFFF00B5BD
      C600A57B73000000000000000000000000000000000000000000000000009494
      9400B5B5B500BDBDBD00BDBDBD00C6C6C600C6C6C600BDBDBD00C6C6C600B5B5
      B500949494000000000000000000000000000000000000000000000000000000
      00000000000000000000A57B7300F7E7CE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7E7D600A57B7300000000000000000000000000000000000000
      000000000000000000009C9C9C00DEDEDE00F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700E7E7E7009C9C9C00000000000000000000000000000000000000
      0000A57B7300A57B73009CE7E7008CF7FF008CF7FF009CE7E700A57B7300A57B
      7300000000000000000000000000000000000000000000000000000000000000
      00009494940094949400BDBDBD00BDBDBD00BDBDBD00BDBDBD008C8C8C009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A57B7300A57B7300F7F7EF00FFFFFF00FFFF
      FF00A57B7300A57B730000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C009C9C9C00EFEFEF00F7F7F700F7F7
      F7009C9C9C009C9C9C0000000000000000000000000000000000000000000000
      00000000000000000000A57B7300A57B7300A57B7300A57B7300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094949400949494009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300A57B7300A57B
      7300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C009C9C
      9C0000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000B00000000100010000000000800500000000000000000000
      000000000000000000000000FFFFFF00C007C00300000000C007CBF300000000
      C007C5F300000000C007CAF300000000C007CCF300000000C007CCF300000000
      C007CCF300000000C007CCF300000000C007CCF300000000C007CC7300000000
      C007CCF300000000C007CCF300000000C007C8F300000000C007C0F300000000
      C007C00300000000C007C00700000000FF87FF87FFFFFFFFC087C087E07FE07F
      80078007C03FC03F000000008003800300000000800380030000000080038003
      000000008003800300070007801F801F00070007801F801F00070007801F801F
      003F003F801F801F003F003F801F801F003F003F801F801F003F003F801F801F
      807F807FC03FC03FC0FFC0FFE07FE07FDC1FDC1FDC1FDC1FC01FC01FC01FC01F
      DC1FDC1FDC1FDC1FDFFFDFFFDFFFDFFFDC1FDC1FDC1FDC1FC01FC01FC01FC01F
      DC1FDC1FDC1FDC1FDFFFDFFFDFFFDFFFDC1FDC1FDC1FDC1FC01FC01FC01FC01F
      DC1FDC1FDC1FDC1F07E407E407E107E107E007E007E907E907F107F107E507E5
      FFE0FFE0FFE0FFE0FFE4FFE4FFFEFFFEFFFFFFFFDC1FDC1FF707F707C01FC01F
      F007F007DC1FDC1FF707F707DFFFDFFFF7FFF7FFDC1FDC1FF707F707C01FC01F
      F007F007DC1FDC1FF707F707DFFFDFFFF7FFF7FFDC1FDC1FF707F707C01FC01F
      F007F007DC13DC13F707F70707F307F3C1FFC1FF07C007C0C1FFC1FF07C007C0
      C1FFC1FFFFF3FFF3FFFFFFFFFFF3FFF3FFFFFFFFFFFFFFFFC7FFC7FFEFFFEFFF
      C700C700C7FFC7FFC700C700833F833FC7FFC7FF013F013FC703C703C7FFC7FF
      C703C703C70FC70FC7FFC7FFC70FC70FC70FC70FC7FFC7FFC70FC70FC703C703
      C7FFC7FFC703C703013F013FC7FFC7FF833F833FC700C700C7FFC7FFC700C700
      EFFFEFFFC7FFC7FFFFFFFFFFFFFFFFFFFFFFFFFF9FFF9FFFC007C0070FFF0FFF
      8003800307FF07FF8003800383FF83FF80038003C1FFC1FF80038003E10FE10F
      80038003F003F00380038003FC01FC0180038003FC01FC0180038003F800F800
      80038003F800F80080038003F800F80080038003FC01FC0180038003FC01FC01
      C007C007FE03FE03FFFFFFFFFF8FFF8FA001A001C003C00300010001C003C003
      80018001C003C003C001C001C003C003E001E001C003C003E001E001C003C003
      E001E001C003C003E001E001C003C003E001E001C003C003E001E001C003C003
      E001E001C001C001E001E001C001C001E003E003C007C007E007E007C00FC00F
      E00FE00FC01FC01FE01FE01FC03FC03FFE3FFE3FF33FF33FE007E007E007E007
      E007E007C000C000800380038001800180018001000000008001800100000000
      8001800100000000800180018000800080018001E001E001C003C003F003F003
      E007E007F01FF01FF81FF81FE03FE03FF81FF81FE03FE03FF81FF81FC03FC03F
      F81FF81FC07FC07FFC3FFC3FF8FFF8FFC003C003C001C001C003C00380018001
      C003C00380018001C003C00380018001C003C00380018001C003C00380018001
      C003C00380018001C003C00380018001C003C00380038003C003C00380038003
      C003C00380038003C003C00380038003C007C00780038003C00FC00F80038003
      C01FC01FC007C007C03FC03FF83FF83FFFFFFFFF80038003FF07FF0700030003
      FE01FE0100010001FC00FC0000010001F800F80000010001F000F00000000000
      E000E00000000000C001C0010000000080038003000700078007800700070007
      000F000F800F800F001F001FC01FC01F003F003FC03FC03F807F807FC07FC07F
      F0FFF0FFC0FFC0FFFFFFFFFFFFFFFFFFFFFFFFFF803F803F80018001803F803F
      00000000803F803F00000000803F803F00000000800080000000000080008000
      0000000080008000000000008000800000000000800080000000000080008000
      000000008000800080018001F800F800C003C003F800F800E007E007FC01FC01
      F00FF00FFE03FE03FC3FFC3FFF8FFF8F00000000000000000000000000000000
      000000000000}
  end
end
