object LoginPromptForm: TLoginPromptForm
  Left = 0
  Top = 0
  Caption = 'LoginPromptForm'
  ClientHeight = 180
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    397
    180)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 139
    Width = 397
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 141
    ExplicitWidth = 319
    object BitBtn1: TBitBtn
      Left = 128
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 224
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object edtUser: TLabeledEdit
    Left = 16
    Top = 32
    Width = 359
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 51
    EditLabel.Height = 13
    EditLabel.Caption = 'User name'
    MaxLength = 31
    TabOrder = 1
    ExplicitWidth = 465
  end
  object edtPassword: TLabeledEdit
    Left = 16
    Top = 80
    Width = 359
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Password'
    MaxLength = 31
    PasswordChar = '*'
    TabOrder = 2
    ExplicitWidth = 465
  end
end
