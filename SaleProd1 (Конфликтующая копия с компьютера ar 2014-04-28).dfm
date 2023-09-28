object SaleProd: TSaleProd
  Left = 357
  Top = 441
  ActiveControl = Print_to_Word
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1054#1090#1087#1091#1089#1082' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
  ClientHeight = 387
  ClientWidth = 545
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
  DesignSize = (
    545
    387)
  PixelsPerInch = 96
  TextHeight = 13
  object Label35: TLabel
    Left = 8
    Top = 360
    Width = 65
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1084#1077#1089#1090':'
  end
  object LbSumItems: TLabel
    Left = 72
    Top = 360
    Width = 12
    Height = 13
    Caption = '00'
  end
  object Label37: TLabel
    Left = 112
    Top = 360
    Width = 68
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1085#1077#1090#1090#1086':'
  end
  object LbSumNet_Weight: TLabel
    Left = 180
    Top = 360
    Width = 12
    Height = 13
    Caption = '00'
  end
  object Pages: TPageControl
    Left = 0
    Top = 0
    Width = 549
    Height = 345
    ActivePage = TabSheet2
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1088#1086#1076#1091#1082#1094#1080#1103
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Bevel1: TBevel
        Left = -8
        Top = 20
        Width = 549
        Height = 9
        Shape = bsBottomLine
      end
      object Label1: TLabel
        Left = 30
        Top = 40
        Width = 117
        Height = 13
        Alignment = taRightJustify
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072':'
      end
      object Label2: TLabel
        Left = 73
        Top = 76
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100':'
      end
      object Label3: TLabel
        Left = 90
        Top = 112
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090':'
      end
      object Label4: TLabel
        Left = 77
        Top = 148
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = #1061#1086#1083#1086#1076#1080#1083#1100#1085#1080#1082':'
      end
      object Label5: TLabel
        Left = 104
        Top = 184
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1082#1083'. '#1089#1074'.:'
      end
      object Label6: TLabel
        Left = 127
        Top = 214
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1072#1076#1082#1080':'
      end
      object Label7: TLabel
        Left = 355
        Top = 40
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = #1055#1072#1088#1090#1080#1103':'
      end
      object Label8: TLabel
        Left = 323
        Top = 76
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = #1056#1086#1076' '#1091#1087#1072#1082#1086#1074#1082#1080':'
      end
      object Label9: TLabel
        Left = 339
        Top = 112
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = #1042#1077#1089' '#1084#1077#1089#1090#1072':'
      end
      object Label10: TLabel
        Left = 330
        Top = 148
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = #1050#1086#1083'-'#1074#1086' '#1084#1077#1089#1090':'
      end
      object Label11: TLabel
        Left = 342
        Top = 184
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = #1042#1077#1089' '#1085#1077#1090#1090#1086':'
      end
      object Label12: TLabel
        Left = 337
        Top = 220
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086':'
      end
      object Label13: TLabel
        Left = 329
        Top = 256
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
      end
      object LbFridge: TLabel
        Left = 0
        Top = 268
        Width = 180
        Height = 36
        Alignment = taCenter
        Caption = #1055#1077#1088#1080#1086#1076' '#1076#1083#1103' '#1076#1072#1085#1085#1086#1075#1086#13#10#1093#1086#1083#1086#1076#1080#1083#1100#1085#1080#1082#1072' '#1085#1077' '#1079#1072#1076#1072#1085'!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label19: TLabel
        Left = 480
        Top = 136
        Width = 33
        Height = 13
        Caption = #1042#1089#1077#1075#1086':'
      end
      object LbAllItems: TLabel
        Left = 480
        Top = 152
        Width = 12
        Height = 13
        Caption = '00'
      end
      object Bevel4: TBevel
        Left = 0
        Top = 180
        Width = 103
        Height = 85
        Shape = bsFrame
      end
      object Label17: TLabel
        Left = 8
        Top = 244
        Width = 40
        Height = 13
        Caption = #1042#1089#1077#1075#1086':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 8
        Top = 224
        Width = 30
        Height = 13
        Caption = #1044#1085#1077#1081':'
      end
      object Label15: TLabel
        Left = 8
        Top = 204
        Width = 55
        Height = 13
        Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076':'
      end
      object Label14: TLabel
        Left = 8
        Top = 184
        Width = 41
        Height = 13
        Caption = #1055#1077#1088#1080#1086#1076':'
      end
      object Label20: TLabel
        Left = 480
        Top = 184
        Width = 14
        Height = 13
        Caption = #1082#1075'.'
      end
      object Label21: TLabel
        Left = 480
        Top = 220
        Width = 14
        Height = 13
        Caption = #1082#1075'.'
      end
      object Label22: TLabel
        Left = 135
        Top = 242
        Width = 72
        Height = 13
        Caption = #1044#1072#1090#1072' '#1086#1090#1087#1091#1089#1082#1072':'
      end
      object Label33: TLabel
        Left = 168
        Top = 272
        Width = 78
        Height = 13
        Caption = #1053#1086#1084#1077#1088' '#1087#1080#1089#1100#1084#1072':'
      end
      object Label34: TLabel
        Left = 136
        Top = 300
        Width = 111
        Height = 13
        Caption = #1053#1086#1084#1077#1088' '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1080':'
        Transparent = True
      end
      object StaticText1: TStaticText
        Left = 12
        Top = 4
        Width = 97
        Height = 17
        Caption = #1042#1099#1073#1088#1072#1085#1086' '#1079#1072#1087#1080#1089#1077#1081':'
        TabOrder = 0
      end
      object SelNum: TStaticText
        Left = 108
        Top = 4
        Width = 10
        Height = 17
        BorderStyle = sbsSunken
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object StaticText2: TStaticText
        Left = 392
        Top = 4
        Width = 91
        Height = 17
        Caption = #1058#1077#1082#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100':'
        TabOrder = 2
      end
      object Index: TStaticText
        Left = 484
        Top = 4
        Width = 10
        Height = 17
        BorderStyle = sbsSunken
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EdDate: TDateTimePicker
        Left = 212
        Top = 212
        Width = 81
        Height = 21
        Date = 37434.086366342600000000
        Time = 37434.086366342600000000
        Color = clInfoBk
        TabOrder = 4
        OnChange = EdDateChange
      end
      object EdComment: TEdit
        Left = 400
        Top = 252
        Width = 133
        Height = 21
        Color = clInfoBk
        TabOrder = 5
      end
      object EdGross_weight: TEdit
        Left = 400
        Top = 216
        Width = 77
        Height = 21
        TabOrder = 6
        OnChange = EdGross_weightChange
      end
      object EdNet_Weight: TEdit
        Left = 400
        Top = 180
        Width = 77
        Height = 21
        TabOrder = 7
        OnChange = EdNet_WeightChange
      end
      object Next: TBitBtn
        Left = 404
        Top = 309
        Width = 73
        Height = 25
        Caption = #1042#1087#1077#1088#1077#1076
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 8
        OnClick = NextClick
      end
      object Back: TBitBtn
        Left = 336
        Top = 309
        Width = 69
        Height = 25
        Caption = #1053#1072#1079#1072#1076
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333333333333333333333333333333333FF333333333333
          3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
          E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
          E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
          E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
          000033333373FF77777733333330003333333333333777333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 9
        OnClick = BackClick
      end
      object Button1: TButton
        Left = 4
        Top = 308
        Width = 83
        Height = 25
        Caption = #1055#1077#1088#1080#1086#1076#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = Button1Click
      end
      object LbPer: TStaticText
        Left = 53
        Top = 184
        Width = 7
        Height = 17
        Hint = #1058#1077#1082#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076' ('#1085#1086#1084#1077#1088' '#1087#1077#1088#1080#1086#1076#1072')'
        BevelInner = bvLowered
        BevelOuter = bvNone
        Caption = ' '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object LbTotal: TStaticText
        Left = 49
        Top = 244
        Width = 8
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvNone
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object LbDay: TStaticText
        Left = 45
        Top = 224
        Width = 7
        Height = 17
        Hint = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1096#1077#1076#1096#1080#1093' '#1076#1085#1077#1081
        BevelInner = bvLowered
        BevelOuter = bvNone
        Caption = ' '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
      object LbChar: TStaticText
        Left = 67
        Top = 204
        Width = 7
        Height = 17
        BevelInner = bvLowered
        BevelOuter = bvNone
        Caption = ' '
        ParentShowHint = False
        ShowHint = False
        TabOrder = 14
      end
      object EdStorage_Date: TDateTimePicker
        Left = 212
        Top = 240
        Width = 81
        Height = 21
        Date = 37434.086366342600000000
        Time = 37434.086366342600000000
        TabOrder = 15
        OnChange = EdStorage_DateChange
      end
      object EdNumLetter: TSpinEdit
        Left = 252
        Top = 268
        Width = 41
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 16
        Value = 0
        OnChange = EdNumLetterChange
      end
      object EdNumAuthority: TSpinEdit
        Left = 252
        Top = 296
        Width = 41
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 17
        Value = 0
        OnChange = EdNumAuthorityChange
      end
      object EdN_Items: TJvSpinEdit
        Left = 400
        Top = 144
        Width = 77
        Height = 21
        ButtonKind = bkStandard
        Thousands = True
        Decimal = 1
        ValueType = vtFloat
        TabOrder = 18
        OnChange = EdN_ItemsChange
      end
      object EdNameProd: TJvComboBox
        Left = 152
        Top = 36
        Width = 145
        Height = 21
        TabOrder = 19
        Text = ''
      end
      object EdProducer: TJvComboBox
        Left = 152
        Top = 72
        Width = 145
        Height = 21
        TabOrder = 20
        Text = ''
      end
      object EdTransport: TJvComboBox
        Left = 152
        Top = 108
        Width = 145
        Height = 21
        TabOrder = 21
        Text = ''
      end
      object EdFridge: TJvComboBox
        Left = 152
        Top = 144
        Width = 145
        Height = 21
        TabOrder = 22
        Text = ''
      end
      object EdSklad: TJvComboBox
        Left = 152
        Top = 180
        Width = 145
        Height = 21
        TabOrder = 23
        Text = ''
      end
      object EdLot: TJvComboBox
        Left = 400
        Top = 36
        Width = 77
        Height = 21
        TabOrder = 24
        Text = 'EdNameProd'
      end
      object EdPacking: TJvComboBox
        Left = 400
        Top = 72
        Width = 77
        Height = 21
        TabOrder = 25
        Text = 'EdNameProd'
        OnChange = EdPackingChange
      end
      object EdWeight_place: TJvComboBox
        Left = 400
        Top = 108
        Width = 77
        Height = 21
        TabOrder = 26
        Text = 'EdNameProd'
        OnChange = EdWeight_placeChange
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1050#1083#1080#1077#1085#1090
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Bevel3: TBevel
        Left = 4
        Top = 252
        Width = 529
        Height = 9
        Shape = bsBottomLine
      end
      object Label18: TLabel
        Left = 36
        Top = 32
        Width = 57
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1060#1072#1084#1080#1083#1080#1103':'
      end
      object DBText1: TDBText
        Left = 100
        Top = 32
        Width = 48
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1060#1072#1084#1080#1083#1080#1103
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 43
        Top = 172
        Width = 49
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1053#1086#1084#1077#1088':'
      end
      object DBText2: TDBText
        Left = 100
        Top = 52
        Width = 48
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1048#1084#1103
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 44
        Top = 92
        Width = 49
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1060#1080#1088#1084#1072':'
      end
      object DBText3: TDBText
        Left = 100
        Top = 72
        Width = 48
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1054#1090#1095#1077#1089#1090#1074#1086
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 24
        Top = 212
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080':'
      end
      object DBText4: TDBText
        Left = 100
        Top = 92
        Width = 48
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1060#1080#1088#1084#1072
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 44
        Top = 72
        Width = 49
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
      end
      object DBText5: TDBText
        Left = 100
        Top = 112
        Width = 48
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1058#1077#1083#1077#1092#1086#1085
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 43
        Top = 52
        Width = 49
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1048#1084#1103':'
      end
      object DBText6: TDBText
        Left = 100
        Top = 152
        Width = 48
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1057#1077#1088#1080#1103
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 44
        Top = 152
        Width = 49
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1057#1077#1088#1080#1103':'
      end
      object DBText7: TDBText
        Left = 100
        Top = 172
        Width = 48
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1053#1086#1084#1077#1088
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 44
        Top = 112
        Width = 49
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1058#1077#1083#1077#1092#1086#1085':'
      end
      object DBText8: TDBText
        Left = 100
        Top = 212
        Width = 48
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 27
        Top = 192
        Width = 66
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085':'
      end
      object DBText9: TDBText
        Left = 100
        Top = 192
        Width = 48
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1050#1077#1084' '#1074#1099#1076#1072#1085
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 24
        Top = 232
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
      end
      object DBText10: TDBText
        Left = 100
        Top = 232
        Width = 55
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 44
        Top = 132
        Width = 49
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1040#1076#1088#1077#1089':'
      end
      object DBText11: TDBText
        Left = 99
        Top = 131
        Width = 54
        Height = 15
        AutoSize = True
        Color = 15263976
        DataField = #1040#1076#1088#1077#1089
        DataSource = DataUnit.DSPassports
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object RxLabel1: TJvLabel
        Left = 0
        Top = 0
        Width = 207
        Height = 24
        Align = alTop
        Alignment = taCenter
        Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1082#1083#1080#1077#1085#1090
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        AutoOpenURL = False
        HotTrackFont.Charset = RUSSIAN_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object Print_to_Word: TBitBtn
        Left = 404
        Top = 309
        Width = 109
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100' '#1074' Word'
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
        TabOrder = 0
        OnClick = Print_to_WordClick
      end
      object BitBtn2: TBitBtn
        Left = 336
        Top = 309
        Width = 69
        Height = 25
        Caption = #1053#1072#1079#1072#1076
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333333333333333333333333333333333FF333333333333
          3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
          E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
          E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
          E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
          000033333373FF77777733333330003333333333333777333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn1: TBitBtn
        Left = 400
        Top = 229
        Width = 129
        Height = 25
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1072'...'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A60004040400080808000C0C0C0011111100161616001C1C1C00222222002929
          2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
          CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
          00000033330000336600003399000033CC000033FF0000660000006633000066
          6600006699000066CC000066FF00009900000099330000996600009999000099
          CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
          660000FF990000FFCC00330000003300330033006600330099003300CC003300
          FF00333300003333330033336600333399003333CC003333FF00336600003366
          330033666600336699003366CC003366FF003399000033993300339966003399
          99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
          FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
          6600660099006600CC006600FF00663300006633330066336600663399006633
          CC006633FF00666600006666330066666600666699006666CC00669900006699
          330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
          CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
          000099339900990099009900CC009900000099333300990066009933CC009900
          FF00996600009966330099336600996699009966CC009933FF00999933009999
          6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
          CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
          000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
          9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
          FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
          3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
          9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
          6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
          CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
          0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
          9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
          A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
          DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00EEEEEEEEEEEE
          EEEEEEEEEEEEC8C8EEEEEEEEEEEEEEEEEEEEEEEEEEC8FED35FEEEEEEEEEEEB12
          121212130FFED35F1212EEEEEEEEEBBCBCBCBCC8FED35F92BC12EEEEEEEEEBF6
          F6F6C8FED35F921BBC12EEEEEEEEEB1B1BC8D3D35F6D92F6BC12EEEEEB130F10
          92F66D5F921B1BF6BC12EEEBE207E2E210925F6D929292F6BC12EBE2F607E292
          920F921B1B1B1BF6BC12EBE2F307E2DFDF0F6D92929292F6BC12EBE2F607E292
          920F921B1B1B1B1BBC12EBE2F307E2DFDF0F6D9292F61BBCBC12EEEBE207E2E2
          0F92BC1B1BF612121313EEEEEBEB0F1092BC1BF6F6F692F6BC6DEEEEEEEEEB1B
          1BF6F6F6F6F692BCEAEEEEEEEEEEEBEBEBEBEBEBEBEBEBEAEEEE}
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object TypeSaleProd: TRadioGroup
        Left = 136
        Top = 269
        Width = 165
        Height = 65
        Caption = #1042#1080#1076' '#1086#1090#1087#1091#1089#1082#1072' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
        ItemIndex = 0
        Items.Strings = (
          #1055#1077#1088#1077#1076#1072#1095#1072' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
          #1054#1090#1087#1091#1089#1082' '#1087#1086' '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1080)
        TabOrder = 3
      end
    end
  end
  object BtnCancel: TBitBtn
    Left = 456
    Top = 352
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
  end
  object Values0: TJvStrHolder
    Macros = <>
    Left = 16
    Top = 272
    InternalVer = 2
  end
  object ListStr0: TJvStrHolder
    Macros = <>
    Left = 56
    Top = 284
    InternalVer = 2
  end
end
