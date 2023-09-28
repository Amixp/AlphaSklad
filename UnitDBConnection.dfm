object FormDBConnection: TFormDBConnection
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1073#1072#1079#1077
  ClientHeight = 171
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edDBFile: TJvFilenameEdit
    Left = 24
    Top = 24
    Width = 399
    Height = 21
    Filter = 
      'Access DB files (*.mdb)|*.mdb|Access 2007 DB files (*.mdb)|*.acc' +
      'db'
    TabOrder = 0
    Text = 'edDBFile'
    OnClick = edDBFileClick
  end
  object edt1: TEdit
    Left = 24
    Top = 72
    Width = 305
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 273
    Top = 128
    Width = 75
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 354
    Top = 128
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 335
    Top = 70
    Width = 88
    Height = 25
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100'...'
    TabOrder = 2
    OnClick = btn3Click
  end
  object OpenDialog1: TOpenDialog
    Left = 200
    Top = 104
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=asklad;Data Source=server;I' +
      'nitial File Name="";Server SPN=""'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 112
    Top = 104
  end
end
