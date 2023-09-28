object EditProd: TEditProd
  Left = 706
  Top = 559
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
  ClientHeight = 312
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    514
    312)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 20
    Width = 117
    Height = 13
    Alignment = taRightJustify
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072':'
  end
  object Label2: TLabel
    Left = 73
    Top = 56
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = #1048#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100':'
  end
  object Label3: TLabel
    Left = 90
    Top = 92
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090':'
  end
  object Label4: TLabel
    Left = 77
    Top = 128
    Width = 70
    Height = 13
    Alignment = taRightJustify
    Caption = #1061#1086#1083#1086#1076#1080#1083#1100#1085#1080#1082':'
  end
  object Label5: TLabel
    Left = 10
    Top = 164
    Width = 137
    Height = 13
    Alignment = taRightJustify
    Caption = #1057#1082#1083#1072#1076#1089#1082#1086#1077' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086':'
  end
  object Label6: TLabel
    Left = 118
    Top = 200
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = #1044#1072#1090#1072':'
  end
  object Label7: TLabel
    Left = 355
    Top = 20
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = #1055#1072#1088#1090#1080#1103':'
  end
  object Label8: TLabel
    Left = 323
    Top = 56
    Width = 72
    Height = 13
    Alignment = taRightJustify
    Caption = #1056#1086#1076' '#1091#1087#1072#1082#1086#1074#1082#1080':'
  end
  object Label9: TLabel
    Left = 339
    Top = 92
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = #1042#1077#1089' '#1084#1077#1089#1090#1072':'
  end
  object Label10: TLabel
    Left = 330
    Top = 128
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = #1050#1086#1083'-'#1074#1086' '#1084#1077#1089#1090':'
  end
  object Label11: TLabel
    Left = 342
    Top = 164
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = #1042#1077#1089' '#1085#1077#1090#1090#1086':'
  end
  object Label12: TLabel
    Left = 337
    Top = 200
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086':'
  end
  object Label13: TLabel
    Left = 261
    Top = 236
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
  end
  object Label14: TLabel
    Left = 116
    Top = 236
    Width = 28
    Height = 13
    Caption = #1062#1074#1077#1090':'
  end
  object Label20: TLabel
    Left = 480
    Top = 164
    Width = 14
    Height = 13
    Caption = #1082#1075'.'
  end
  object Label21: TLabel
    Left = 480
    Top = 200
    Width = 14
    Height = 13
    Caption = #1082#1075'.'
  end
  object BtnOk: TBitBtn
    Left = 344
    Top = 276
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = RzDialogButtons1ClickOk
  end
  object BtnCancel: TBitBtn
    Left = 428
    Top = 276
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = RzDialogButtons1ClickCancel
  end
  object EdTransport: TJvComboBox
    Left = 152
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 2
    Text = ''
  end
  object EdProducer: TJvComboBox
    Left = 152
    Top = 52
    Width = 145
    Height = 21
    TabOrder = 3
    Text = ''
  end
  object EdNameProd: TJvComboBox
    Left = 152
    Top = 16
    Width = 145
    Height = 21
    TabOrder = 4
    Text = ''
  end
  object EdFridge: TJvComboBox
    Left = 152
    Top = 124
    Width = 145
    Height = 21
    TabOrder = 5
    Text = ''
  end
  object EdSklad: TJvComboBox
    Left = 152
    Top = 160
    Width = 145
    Height = 21
    TabOrder = 6
    Text = ''
  end
  object EdDate: TDateTimePicker
    Left = 152
    Top = 198
    Width = 81
    Height = 21
    Date = 37434.086366342600000000
    Time = 37434.086366342600000000
    TabOrder = 7
  end
  object EdColor: TJvColorComboBox
    Left = 152
    Top = 232
    Width = 81
    Height = 20
    ColorNameMap.Strings = (
      'clBlack=Black'
      'clMaroon=Maroon'
      'clGreen=Green'
      'clOlive=Olive green'
      'clNavy=Navy blue'
      'clPurple=Purple'
      'clTeal=Teal'
      'clGray=Gray'
      'clSilver=Silver'
      'clRed=Red'
      'clLime=Lime'
      'clYellow=Yellow'
      'clBlue=Blue'
      'clFuchsia=Fuchsia'
      'clAqua=Aqua'
      'clWhite=White'
      'clMoneyGreen=Money green'
      'clSkyBlue=Sky blue'
      'clCream=Cream'
      'clMedGray=Medium gray'
      'clScrollBar=Scrollbar'
      'clBackground=Desktop background'
      'clActiveCaption=Active window title bar'
      'clInactiveCaption=Inactive window title bar'
      'clMenu=Menu background'
      'clWindow=Window background'
      'clWindowFrame=Window frame'
      'clMenuText=Menu text'
      'clWindowText=Window text'
      'clCaptionText=Active window title bar text'
      'clActiveBorder=Active window border'
      'clInactiveBorder=Inactive window border'
      'clAppWorkSpace=Application workspace'
      'clHighlight=Selection background'
      'clHighlightText=Selection text'
      'clBtnFace=Button face'
      'clBtnShadow=Button shadow'
      'clGrayText=Dimmed text'
      'clBtnText=Button text'
      'clInactiveCaptionText=Inactive window title bar text'
      'clBtnHighlight=Button highlight'
      'cl3DDkShadow=Dark shadow 3D elements'
      'cl3DLight=Highlight 3D elements'
      'clInfoText=Tooltip text'
      'clInfoBk=Tooltip background')
    ColorDialogText = 'Custom...'
    DroppedDownWidth = 81
    NewColorText = 'Custom'
    Options = [coText, coSysColors]
    TabOrder = 8
  end
  object EdLot: TJvComboBox
    Left = 400
    Top = 16
    Width = 77
    Height = 21
    TabOrder = 9
    Text = ''
  end
  object EdPacking: TJvComboBox
    Left = 400
    Top = 52
    Width = 77
    Height = 21
    TabOrder = 10
    Text = ''
  end
  object EdWeight_place: TJvComboBox
    Left = 400
    Top = 88
    Width = 77
    Height = 21
    TabOrder = 11
    Text = ''
  end
  object EdN_Items: TJvSpinEdit
    Left = 400
    Top = 124
    Width = 77
    Height = 21
    ButtonKind = bkStandard
    Thousands = True
    Decimal = 1
    ValueType = vtFloat
    TabOrder = 12
    OnChange = EdN_ItemsChange
  end
  object EdNet_Weight: TEdit
    Left = 400
    Top = 160
    Width = 77
    Height = 21
    TabOrder = 13
    OnChange = EdNet_WeightChange
  end
  object EdGross_weight: TEdit
    Left = 400
    Top = 196
    Width = 77
    Height = 21
    TabOrder = 14
  end
  object EdComment: TEdit
    Left = 332
    Top = 232
    Width = 145
    Height = 21
    MaxLength = 150
    TabOrder = 15
  end
  object Str: TJvStrHolder
    Macros = <>
    Sorted = True
    Left = 8
    Top = 196
    InternalVer = 2
  end
  object Values: TJvStrHolder
    Macros = <>
    Left = 48
    Top = 196
    InternalVer = 2
  end
end
