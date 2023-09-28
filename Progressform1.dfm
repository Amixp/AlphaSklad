object ProgressForm: TProgressForm
  Left = 674
  Top = 685
  AlphaBlendValue = 230
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'ProgressForm'
  ClientHeight = 79
  ClientWidth = 296
  Color = clBtnFace
  TransparentColorValue = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 298
    Height = 81
    Color = 15850737
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 12
      Width = 279
      Height = 19
      Caption = #1042#1089#1090#1072#1074#1082#1072' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1087#1088#1086#1076#1091#1082#1094#1080#1080' '#1074' Word'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PrBar: TJvSpecialProgress
      Left = 12
      Top = 40
      Width = 273
      Height = 29
      Caption = 'PrBar'
      GradientBlocks = True
      TextCentered = True
      TextOption = toPercent
    end
  end
end
