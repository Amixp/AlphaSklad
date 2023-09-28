object ChangeValue: TChangeValue
  Left = 466
  Top = 484
  ActiveControl = EdValue
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1079#1085#1072#1095#1077#1085#1080#1103
  ClientHeight = 88
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  DesignSize = (
    261
    88)
  PixelsPerInch = 96
  TextHeight = 13
  object EdL1: TLabel
    Left = 32
    Top = 16
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = #1047#1085#1072#1095#1077#1085#1080#1077':'
  end
  object EdValue: TEdit
    Left = 92
    Top = 14
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = EdValueChange
  end
  object BtnOk: TBitBtn
    Left = 96
    Top = 51
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object BtnCancel: TBitBtn
    Left = 174
    Top = 51
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
end
