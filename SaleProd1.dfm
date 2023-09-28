object SaleProd: TSaleProd
  Left = 357
  Top = 441
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
    ActivePage = TabSheet1
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1088#1086#1076#1091#1082#1094#1080#1103
      TabVisible = False
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
        Left = 483
        Top = 123
        Width = 33
        Height = 13
        Caption = #1042#1089#1077#1075#1086':'
      end
      object LbAllItems: TLabel
        Left = 504
        Top = 142
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
        TabOrder = 19
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
        TabOrder = 20
      end
      object StaticText2: TStaticText
        Left = 392
        Top = 4
        Width = 91
        Height = 17
        Caption = #1058#1077#1082#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100':'
        TabOrder = 21
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
        TabOrder = 22
      end
      object EdDate: TDateTimePicker
        Left = 212
        Top = 212
        Width = 81
        Height = 21
        Date = 37434.086366342600000000
        Time = 37434.086366342600000000
        Color = clInfoBk
        TabOrder = 5
        OnChange = EdDateChange
      end
      object EdComment: TEdit
        Left = 400
        Top = 252
        Width = 133
        Height = 21
        Color = clInfoBk
        TabOrder = 16
      end
      object EdGross_weight: TEdit
        Left = 400
        Top = 216
        Width = 77
        Height = 21
        TabOrder = 15
        OnChange = EdGross_weightChange
      end
      object EdNet_Weight: TEdit
        Left = 400
        Top = 180
        Width = 77
        Height = 21
        TabOrder = 14
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
        TabOrder = 18
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
        TabOrder = 17
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
        TabOrder = 23
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
        TabOrder = 24
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
        TabOrder = 25
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
        TabOrder = 26
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
        TabOrder = 27
      end
      object EdStorage_Date: TDateTimePicker
        Left = 212
        Top = 240
        Width = 81
        Height = 21
        Date = 37434.086366342600000000
        Time = 37434.086366342600000000
        TabOrder = 6
        OnChange = EdStorage_DateChange
      end
      object EdNumLetter: TSpinEdit
        Left = 252
        Top = 267
        Width = 53
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 7
        Value = 0
        OnChange = EdNumLetterChange
      end
      object EdNumAuthority: TSpinEdit
        Left = 252
        Top = 296
        Width = 53
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 8
        Value = 0
        OnChange = EdNumAuthorityChange
      end
      object EdN_Items: TJvSpinEdit
        Left = 400
        Top = 139
        Width = 77
        Height = 21
        ButtonKind = bkStandard
        Thousands = True
        Decimal = 1
        ValueType = vtFloat
        TabOrder = 12
        OnChange = EdN_ItemsChange
      end
      object EdNameProd: TJvComboBox
        Left = 152
        Top = 36
        Width = 145
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object EdProducer: TJvComboBox
        Left = 152
        Top = 72
        Width = 145
        Height = 21
        TabOrder = 1
        Text = ''
      end
      object EdTransport: TJvComboBox
        Left = 152
        Top = 108
        Width = 145
        Height = 21
        TabOrder = 2
        Text = ''
      end
      object EdFridge: TJvComboBox
        Left = 153
        Top = 144
        Width = 145
        Height = 21
        TabOrder = 3
        Text = ''
      end
      object EdSklad: TJvComboBox
        Left = 152
        Top = 180
        Width = 145
        Height = 21
        TabOrder = 4
        Text = ''
      end
      object EdLot: TJvComboBox
        Left = 400
        Top = 36
        Width = 77
        Height = 21
        TabOrder = 9
        Text = 'EdNameProd'
      end
      object EdPacking: TJvComboBox
        Left = 400
        Top = 72
        Width = 77
        Height = 21
        TabOrder = 10
        Text = 'EdNameProd'
        OnChange = EdPackingChange
      end
      object EdWeight_place: TJvComboBox
        Left = 400
        Top = 108
        Width = 77
        Height = 21
        TabOrder = 11
        Text = 'EdNameProd'
        OnChange = EdWeight_placeChange
      end
      object btnSetMaxN_items: TBitBtn
        Left = 483
        Top = 137
        Width = 19
        Height = 25
        Cursor = crHandPoint
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077' '#1084#1077#1089#1090#1072
        Caption = '^^'
        TabOrder = 13
        OnClick = btnSetMaxN_itemsClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      TabVisible = False
      object Label18: TLabel
        Left = 208
        Top = 3
        Width = 132
        Height = 22
        Caption = #1042#1099#1073#1086#1088' '#1082#1083#1080#1077#1085#1090#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object BtnPrintLetter: TBitBtn
        Tag = 1
        Left = 124
        Top = 280
        Width = 141
        Height = 33
        Caption = #1055#1077#1095#1072#1090#1100' '#1087#1080#1089#1100#1084#1072
        Enabled = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF008484840084848400FF00FF00FF00FF00848484008484
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0084848400BDBDBD00B5B5B500848484008484840084848400EFEF
          EF00848484008484840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0084848400E7E7E700B5B5B500B5B5B500B5B5B500525252004A4A4A008484
          8400CECECE00EFEFEF00C6C6C600848484008484840084848400FF00FF008484
          8400DEDEDE00D6D6D600A5A5A500A5A5A500A5A5A50052525200101010001010
          1000181818001010100094949400CECECE0084848400FF00FF0084848400D6D6
          D600D6D6D600A5A5A500E7DEDE00DED6D600CECECE00C6C6C600B5B5B5009C9C
          9C007B737300101010001010100010101000848484008C8C8C0084848400D6D6
          D600A5A5A500F7F7F700FFFFFF00FFFFFF00EFE7EF00E7E7E700E7E7E700DEDE
          DE00CECECE00BDBDBD00A5A5A50073737300949494008C8C8C0084848400A5A5
          A500FFFFFF00FFFFFF00FFFFFF00DEDEDE00ADA5AD00B5ADAD00C6BDBD00D6CE
          CE00E7E7E700E7E7E700D6D6D600C6C6C600A5A5A50084848400FF00FF008484
          840084848400F7F7F700C6BDBD00948C8C00A59C9C00ADADAD00ADA5A500B5AD
          AD00ADADAD00B5ADAD00CECECE00DEDEDE00D6D6D60084848400FF00FF00FF00
          FF00FF00FF0084848400CEA59400BD9C8400A58C7B0094847B008C7B7B00948C
          9400A5A5A500BDB5B500D6D6D600CECECE0084848400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00CE9C9C00FFEFC600FFDEB500EFC69C00D6AD8C00CEA5
          8400CE9C9C009C9494008484840084848400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00CE9C9C00FFE7CE00FFDEBD00FFDEB500FFDEA500FFD6
          9C00CE9C9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00CE9C9C00FFEFDE00FFE7CE00FFE7C600FFDEBD00FFDEAD00CE9C
          9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00CE9C9C00FFF7E700FFEFDE00FFE7CE00FFE7C600FFDEB500CE9C
          9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00CE9C9C00FFFFF700FFFFF700FFF7E700FFEFD600FFEFCE00F7D6BD00CE9C
          9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00CE9C9C00CE9C9C00CE9C9C00FFF7EF00FFEFDE00FFE7D600CE9C9C00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CE9C9C00CE9C9C00CE9C9C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
        OnClick = Print_to_WordClick
      end
      object BtnPrintDoverka: TBitBtn
        Tag = 2
        Left = 279
        Top = 280
        Width = 162
        Height = 33
        Caption = #1055#1077#1095#1072#1090#1100' '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1080
        Enabled = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF008484840084848400FF00FF00FF00FF00848484008484
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0084848400BDBDBD00B5B5B500848484008484840084848400EFEF
          EF00848484008484840084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0084848400E7E7E700B5B5B500B5B5B500B5B5B500525252004A4A4A008484
          8400CECECE00EFEFEF00C6C6C600848484008484840084848400FF00FF008484
          8400DEDEDE00D6D6D600A5A5A500A5A5A500A5A5A50052525200101010001010
          1000181818001010100094949400CECECE0084848400FF00FF0084848400D6D6
          D600D6D6D600A5A5A500E7DEDE00DED6D600CECECE00C6C6C600B5B5B5009C9C
          9C007B737300101010001010100010101000848484008C8C8C0084848400D6D6
          D600A5A5A500F7F7F700FFFFFF00FFFFFF00EFE7EF00E7E7E700E7E7E700DEDE
          DE00CECECE00BDBDBD00A5A5A50073737300949494008C8C8C0084848400A5A5
          A500FFFFFF00FFFFFF00FFFFFF00DEDEDE00ADA5AD00B5ADAD00C6BDBD00D6CE
          CE00E7E7E700E7E7E700D6D6D600C6C6C600A5A5A50084848400FF00FF008484
          840084848400F7F7F700C6BDBD00948C8C00A59C9C00ADADAD00ADA5A500B5AD
          AD00ADADAD00B5ADAD00CECECE00DEDEDE00D6D6D60084848400FF00FF00FF00
          FF00FF00FF0084848400CEA59400BD9C8400A58C7B0094847B008C7B7B00948C
          9400A5A5A500BDB5B500D6D6D600CECECE0084848400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00CE9C9C00FFEFC600FFDEB500EFC69C00D6AD8C00CEA5
          8400CE9C9C009C9494008484840084848400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00CE9C9C00FFE7CE00FFDEBD00FFDEB500FFDEA500FFD6
          9C00CE9C9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00CE9C9C00FFEFDE00FFE7CE00FFE7C600FFDEBD00FFDEAD00CE9C
          9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00CE9C9C00FFF7E700FFEFDE00FFE7CE00FFE7C600FFDEB500CE9C
          9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00CE9C9C00FFFFF700FFFFF700FFF7E700FFEFD600FFEFCE00F7D6BD00CE9C
          9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00CE9C9C00CE9C9C00CE9C9C00FFF7EF00FFEFDE00FFE7D600CE9C9C00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CE9C9C00CE9C9C00CE9C9C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
        OnClick = Print_to_WordClick
      end
      object BitBtn4: TBitBtn
        Left = 24
        Top = 284
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
        TabOrder = 2
        OnClick = BackClick
      end
      object Panel1: TPanel
        Left = 0
        Top = 272
        Width = 538
        Height = 2
        BevelInner = bvLowered
        BevelOuter = bvNone
        TabOrder = 3
      end
      object ListPassports: TJvDBUltimGrid
        Left = 11
        Top = 56
        Width = 516
        Height = 210
        Align = alCustom
        DataSource = DataUnit.DSPassports
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGRidListPassportsSelect
        OnDblClick = ListPassportsDblClick
        TitleArrow = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        ReadOnlyCellColor = clBtnShadow
        SortWith = swClient
        Columns = <
          item
            Expanded = False
            FieldName = #1060#1072#1084#1080#1083#1080#1103
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1048#1084#1103
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1077#1088#1080#1103
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1086#1084#1077#1088
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1077#1084' '#1074#1099#1076#1072#1085
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1060#1080#1088#1084#1072
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1040#1076#1088#1077#1089
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Width = 117
            Visible = True
          end>
      end
      object EdFilterPassport: TEdit
        Left = 11
        Top = 29
        Width = 265
        Height = 21
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TextHint = #1055#1086#1080#1089#1082' '#1087#1086' '#1060#1048#1054', '#1090#1077#1083#1077#1092#1086#1085', '#1092#1080#1088#1084#1072' '#1080#1083#1080' '#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
        OnChange = EdFilterPassportChange
      end
      object BitBtn5: TBitBtn
        Left = 450
        Top = 27
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          F000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
          F000F00000000000F000F0AAAAAAAAA0F000F00000000000F000FFFFFFFFFFFF
          F000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
          F000}
        TabOrder = 6
        OnClick = BitBtn5Click
      end
      object BitBtn1: TBitBtn
        Left = 366
        Top = 27
        Width = 75
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 7
        OnClick = BitBtn1Click
      end
      object BtnAddClient: TBitBtn
        Left = 282
        Top = 27
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          F000FFFFF000FFFFF000FFFFF0A0FFFFF000FFFFF0A0FFFFF000FFFFF0A0FFFF
          F000F00000A00000F000F0AAAAAAAAA0F000F00000A00000F000FFFFF0A0FFFF
          F000FFFFF0A0FFFFF000FFFFF0A0FFFFF000FFFFF000FFFFF000FFFFFFFFFFFF
          F000}
        TabOrder = 8
        OnClick = BtnAddClientClick
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
    Top = 96
    InternalVer = 2
  end
  object ListStr0: TJvStrHolder
    Macros = <>
    Left = 16
    Top = 140
    InternalVer = 2
  end
  object FDQuery1: TFDQuery
    Connection = DataUnit.FDConn
    Left = 300
    Top = 166
  end
  object FDTable1: TFDTable
    Connection = DataUnit.FDConn
    Left = 300
    Top = 118
  end
end
