object FormOptions: TFormOptions
  Left = 629
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 357
  ClientWidth = 460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 460
    Height = 321
    ActivePage = TabSheet3
    Align = alTop
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = #1054#1073#1097#1080#1077
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 99
        Top = 11
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = #1053#1086#1084#1077#1088' '#1087#1080#1089#1100#1084#1072':'
      end
      object Label2: TLabel
        Left = 57
        Top = 40
        Width = 120
        Height = 13
        Alignment = taRightJustify
        Caption = #1055#1072#1087#1082#1072' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1087#1080#1089#1077#1084':'
      end
      object Label6: TLabel
        Left = 63
        Top = 208
        Width = 114
        Height = 13
        Alignment = taRightJustify
        Caption = #1055#1072#1087#1082#1072' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1073#1072#1079#1099':'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 128
        Width = 453
        Height = 5
        Shape = bsTopLine
      end
      object Label1: TLabel
        Left = 66
        Top = 75
        Width = 111
        Height = 13
        Alignment = taRightJustify
        Caption = #1053#1086#1084#1077#1088' '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1080':'
      end
      object Label4: TLabel
        Left = 12
        Top = 104
        Width = 165
        Height = 13
        Alignment = taRightJustify
        Caption = #1055#1072#1087#1082#1072' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1077#1081':'
      end
      object Bevel2: TBevel
        Left = 0
        Top = 64
        Width = 453
        Height = 5
        Shape = bsTopLine
      end
      object Bevel3: TBevel
        Left = 0
        Top = 232
        Width = 453
        Height = 5
        Shape = bsTopLine
      end
      object Label5: TLabel
        Left = 94
        Top = 139
        Width = 83
        Height = 13
        Alignment = taRightJustify
        Caption = #1053#1086#1084#1077#1088' '#1078#1091#1088#1085#1072#1083#1072':'
      end
      object Label7: TLabel
        Left = 40
        Top = 168
        Width = 137
        Height = 13
        Alignment = taRightJustify
        Caption = #1055#1072#1087#1082#1072' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1078#1091#1088#1085#1072#1083#1086#1074':'
      end
      object Bevel4: TBevel
        Left = 0
        Top = 196
        Width = 453
        Height = 5
        Shape = bsTopLine
      end
      object Label8: TLabel
        Left = 44
        Top = 244
        Width = 133
        Height = 13
        Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1086#1082#1085#1072':'
      end
      object Label9: TLabel
        Left = 309
        Top = 236
        Width = 136
        Height = 28
        Caption = #1044#1083#1103' '#1087#1088#1080#1085#1103#1090#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1081' - '#13#10#1087#1077#1088#1077#1079#1072#1075#1088#1091#1079#1080#1090#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1091'.'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DirLetters: TJvDirectoryEdit
        Left = 184
        Top = 37
        Width = 257
        Height = 21
        OnButtonClick = DirLettersButtonClick
        DialogKind = dkWin32
        DialogText = #1055#1072#1087#1082#1072' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1087#1080#1089#1077#1084
        DialogOptions = [sdAllowCreate, sdPerformCreate]
        InitialDir = 'C:\'#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'\Letters'
        TabOrder = 0
        Text = 'C:\'#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'\Letters'
      end
      object DBPathEdit: TJvDirectoryEdit
        Left = 184
        Top = 205
        Width = 257
        Height = 24
        DialogKind = dkWin32
        DialogText = #1055#1072#1087#1082#1072' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1073#1072#1099' '#1076#1072#1085#1085#1099#1093
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Cyr'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = ''
      end
      object DirAuthority: TJvDirectoryEdit
        Left = 184
        Top = 101
        Width = 257
        Height = 21
        OnButtonClick = DirLettersButtonClick
        DialogKind = dkWin32
        DialogText = #1055#1072#1087#1082#1072' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1087#1080#1089#1077#1084
        DialogOptions = [sdAllowCreate, sdPerformCreate]
        InitialDir = 'C:\'#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'\Letters'
        TabOrder = 2
        Text = 'C:\'#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'\Letters'
      end
      object DirReports: TJvDirectoryEdit
        Left = 184
        Top = 165
        Width = 257
        Height = 21
        OnButtonClick = DirReportsButtonClick
        DialogKind = dkWin32
        DialogText = #1055#1072#1087#1082#1072' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1087#1080#1089#1077#1084
        DialogOptions = [sdAllowCreate, sdPerformCreate]
        InitialDir = 'C:\'#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'\Reports'
        TabOrder = 3
        Text = 'C:\'#1052#1086#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'\Reports'
      end
      object EdFormCaption: TEdit
        Left = 184
        Top = 240
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object EdNumLetter: TSpinEdit
        Left = 184
        Top = 8
        Width = 77
        Height = 22
        Color = 10354621
        MaxValue = 999999999
        MinValue = 1
        TabOrder = 5
        Value = 1
        OnChange = EdNumLetterChange
      end
      object EdNumAuthority: TSpinEdit
        Left = 184
        Top = 72
        Width = 77
        Height = 22
        Color = 10419945
        MaxValue = 999999999
        MinValue = 1
        TabOrder = 6
        Value = 1
        OnChange = EdNumAuthorityChange
      end
      object EdNumReports: TSpinEdit
        Left = 184
        Top = 136
        Width = 77
        Height = 22
        Color = 16775372
        MaxValue = 999999999
        MinValue = 1
        TabOrder = 7
        Value = 1
        OnChange = EdNumReportsChange
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1059#1087#1072#1082#1086#1074#1082#1080
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 8
        Top = 4
        Width = 293
        Height = 185
        Caption = ' '#1056#1086#1076' '#1091#1087#1072#1082#1086#1074#1082#1080' '
        TabOrder = 0
        object ListPacks: TDBGrid
          Left = 28
          Top = 24
          Width = 149
          Height = 133
          Cursor = crHandPoint
          DataSource = Datas.DSPacks
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Pack'
              Title.Caption = #1059#1087#1072#1082#1086#1074#1082#1072
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Num'
              Title.Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090
              Width = 72
              Visible = True
            end>
        end
        object AddPackBtn: TBitBtn
          Left = 192
          Top = 30
          Width = 85
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000C40E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF007777777FFF77
            77777777772AAF7777777777772AAF7777777777772AAF7777777777772AAF77
            777777FFFF2AAFFFFFF772AAAAAAAAAAAAF772AAAAAAAAAAAAF77222222AA222
            22777777772AAF7777777777772AAF7777777777772AAF7777777777772AAF77
            777777777722277777777777777777777777}
          TabOrder = 1
          OnClick = AddPackBtnClick
        end
        object DelPackBtn: TBitBtn
          Left = 192
          Top = 78
          Width = 85
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          Spacing = 8
          TabOrder = 2
          OnClick = DelPackBtnClick
        end
        object BitBtn1: TBitBtn
          Left = 192
          Top = 126
          Width = 85
          Height = 25
          Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1091#1087#1072#1082#1086#1074#1082#1091' '#1085#1072' '#1085#1086#1074#1091#1102' '#1074#1086' '#1074#1089#1077#1084' '#1089#1082#1083#1072#1076#1077'.'
          Caption = #1047#1072#1084#1077#1085#1080#1090#1100
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
            33333333333F8888883F33330000324334222222443333388F3833333388F333
            000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
            F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
            223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
            3338888300003AAAAAAA33333333333888888833333333330000333333333333
            333333333333333333FFFFFF000033333333333344444433FFFF333333888888
            00003A444333333A22222438888F333338F3333800003A2243333333A2222438
            F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
            22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
            33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
            3333333333338888883333330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BitBtn1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1061#1086#1083#1086#1076#1080#1083#1100#1085#1080#1082#1080
      ImageIndex = 1
      OnHide = TabSheet2Hide
      OnShow = TabSheet2Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 10
        Top = 4
        Width = 431
        Height = 245
        Caption = ' '#1061#1088#1072#1085#1077#1085#1080#1077' '#1085#1072' '#1089#1082#1083#1072#1076#1072#1093' '
        TabOrder = 0
        object Panel1: TPanel
          Left = 28
          Top = 24
          Width = 137
          Height = 165
          BevelInner = bvLowered
          Caption = 'Panel1'
          TabOrder = 0
          object FridgeList: TDBGrid
            Left = 2
            Top = 2
            Width = 133
            Height = 161
            Cursor = crHandPoint
            Align = alClient
            DataSource = Datas.DSFridges
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = FridgeListCellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Fridge'
                Title.Alignment = taCenter
                Title.Caption = #1061#1086#1083#1086#1076#1080#1083#1100#1085#1080#1082
                Width = 112
                Visible = True
              end>
          end
        end
        object Panel2: TPanel
          Left = 268
          Top = 24
          Width = 137
          Height = 165
          BevelInner = bvLowered
          Caption = 'Panel1'
          TabOrder = 1
          object PeriodList: TDBGrid
            Left = 2
            Top = 2
            Width = 133
            Height = 161
            Cursor = crHandPoint
            Align = alClient
            DataSource = Datas.DSPeriods
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -8
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Periods'
                Title.Alignment = taCenter
                Title.Caption = #1055#1077#1088#1080#1086#1076
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Charges'
                Title.Alignment = taCenter
                Title.Caption = #1057#1090#1072#1074#1082#1072
                Width = 57
                Visible = True
              end>
          end
        end
        object AddSkladBtn: TBitBtn
          Left = 8
          Top = 200
          Width = 85
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000C40E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF007777777FFF77
            77777777772AAF7777777777772AAF7777777777772AAF7777777777772AAF77
            777777FFFF2AAFFFFFF772AAAAAAAAAAAAF772AAAAAAAAAAAAF77222222AA222
            22777777772AAF7777777777772AAF7777777777772AAF7777777777772AAF77
            777777777722277777777777777777777777}
          TabOrder = 2
          OnClick = AddSkladBtnClick
        end
        object DelSkladBtn: TBitBtn
          Left = 104
          Top = 200
          Width = 85
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          Spacing = 8
          TabOrder = 3
          OnClick = DelSkladBtnClick
        end
        object AddPeriodBtn: TBitBtn
          Left = 240
          Top = 200
          Width = 85
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000C40E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF007777777FFF77
            77777777772AAF7777777777772AAF7777777777772AAF7777777777772AAF77
            777777FFFF2AAFFFFFF772AAAAAAAAAAAAF772AAAAAAAAAAAAF77222222AA222
            22777777772AAF7777777777772AAF7777777777772AAF7777777777772AAF77
            777777777722277777777777777777777777}
          TabOrder = 4
          OnClick = AddPeriodBtnClick
        end
        object DelPeriodBtn: TBitBtn
          Left = 334
          Top = 200
          Width = 85
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          Spacing = 8
          TabOrder = 5
          OnClick = DelPeriodBtnClick
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1099
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ListTables: TListBox
        Left = 16
        Top = 16
        Width = 109
        Height = 205
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
          #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100
          #1058#1088#1072#1085#1089#1087#1086#1088#1090
          #1061#1086#1083#1086#1076#1080#1083#1100#1085#1080#1082
          #1057#1082#1083'. '#1089#1074'.'
          #1055#1072#1088#1090#1080#1103
          #1056#1086#1076' '#1091#1087#1072#1082#1086#1074#1082#1080
          #1042#1077#1089' '#1084#1077#1089#1090#1072)
        ParentFont = False
        TabOrder = 0
        OnClick = ListTablesClick
      end
      object AddField: TBitBtn
        Left = 256
        Top = 236
        Width = 85
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF007777777FFF77
          77777777772AAF7777777777772AAF7777777777772AAF7777777777772AAF77
          777777FFFF2AAFFFFFF772AAAAAAAAAAAAF772AAAAAAAAAAAAF77222222AA222
          22777777772AAF7777777777772AAF7777777777772AAF7777777777772AAF77
          777777777722277777777777777777777777}
        TabOrder = 1
        OnClick = AddFieldClick
      end
      object DelField: TBitBtn
        Left = 352
        Top = 236
        Width = 85
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        Spacing = 8
        TabOrder = 2
        OnClick = DelFieldClick
      end
      object TableGrid: TDBGrid
        Left = 164
        Top = 16
        Width = 273
        Height = 205
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1050#1083#1080#1077#1085#1090#1099
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Button1: TButton
        Left = 28
        Top = 32
        Width = 121
        Height = 25
        Caption = #1058#1072#1073#1083#1080#1094#1072' '#1082#1083#1080#1077#1085#1090#1086#1074'...'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1048#1085#1090#1077#1088#1092#1077#1081#1089
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label10: TLabel
        Left = 12
        Top = 16
        Width = 189
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1089#1090#1088#1086#1082' '#1074' '#1074#1099#1087#1072#1076#1072#1102#1097#1077#1084' '#1089#1087#1080#1089#1082#1077':'
      end
      object ListBoxItemsCount: TSpinEdit
        Left = 205
        Top = 13
        Width = 77
        Height = 22
        Color = 10354621
        MaxValue = 2147483647
        MinValue = 1
        TabOrder = 0
        Value = 8
        OnChange = ListBoxItemsCountChange
      end
      object FillItem: TRadioGroup
        Left = 12
        Top = 52
        Width = 269
        Height = 69
        Caption = #1069#1083#1077#1084#1077#1085#1090' '#1094#1074#1077#1090#1072' '#1074' '#1090#1072#1073#1083#1080#1094#1077
        ItemIndex = 1
        Items.Strings = (
          #1064#1088#1080#1092#1090
          #1060#1086#1085)
        TabOrder = 1
        OnClick = FillItemClick
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 368
    Top = 328
    Width = 83
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 1
  end
  object StringTemp: TJvStringGrid
    Left = 0
    Top = 328
    Width = 41
    Height = 29
    ColCount = 1
    Ctl3D = False
    FixedCols = 0
    Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goTabs, goRowSelect]
    ParentCtl3D = False
    ScrollBars = ssNone
    TabOrder = 2
    Visible = False
    Alignment = taLeftJustify
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'MS Sans Serif'
    FixedFont.Style = []
  end
  object FormStorage1: TJvFormStorage
    Active = False
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = 'FormOptions\'
    StoredProps.Strings = (
      'DirLetters.Text'
      'DirLetters.InitialDir'
      'DBPathEdit.Text'
      'DBPathEdit.InitialDir'
      'DirAuthority.InitialDir'
      'DirAuthority.Text'
      'DirReports.InitialDir'
      'DirReports.Text'
      'EdFormCaption.Text')
    StoredValues = <
      item
        Name = 'NumLetter'
        Value = '1'
      end
      item
        Name = 'NumAuthority'
        Value = 1
      end
      item
        Name = 'NumReports'
        Value = 1
      end
      item
        Name = 'ListBoxCount'
        Value = 8
      end
      item
        Name = 'FillItem'
        Value = 1
      end>
    Left = 40
    Top = 296
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    FileName = 'AlphaSklad.ini'
    SubStorages = <>
    Left = 140
    Top = 292
  end
end
