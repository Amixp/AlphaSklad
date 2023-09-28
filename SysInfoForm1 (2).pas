Unit SysInfoForm1;

Interface

Uses Forms,

  StdCtrls,
  Buttons,
  Controls,
  Classes;
Type
  TSysInfoForm = class(TForm)
    acLabel1: TLabel;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
  end;

Var
  SysInfoForm: TSysInfoForm;

Implementation

{$R *.dfm}

{
********************************* TSysInfoForm *********************************
}
procedure TSysInfoForm.FormShow(Sender: TObject);
begin
  { With Memo1.Lines Do
   Begin
     Add('Описание: ' + acSystemInfo1.ComputerDescription);
     Add('Имя копьютера: ' + acSystemInfo1.ComputerName);
     Add('Рабочая группа: ' + acSystemInfo1.ComputerWorkgroup);
     Add('Имя пользователя: ' + acSystemInfo1.CurrentUserName);
     Add('Версия DirectX: ' + acSystemInfo1.WinDirectXVersion);
     Add('Браузер: ' + acSystemInfo1.DefaultBrowser);
     Add('Системные папки:');
     Add(acSystemInfo1.DirAppData);
     Add(acSystemInfo1.DirCache);
     Add(acSystemInfo1.DirCookies);
     Add(acSystemInfo1.DirCommonFiles);
     Add(acSystemInfo1.DirDesktop);
     Add(acSystemInfo1.DirFavorites);
     Add(acSystemInfo1.DirFonts);
     Add(acSystemInfo1.DirHistory);
     Add(acSystemInfo1.DirMedia);
     Add(acSystemInfo1.DirMyPictures);
     Add(acSystemInfo1.DirNetHood);
     Add(acSystemInfo1.DirPersonal);
     Add(acSystemInfo1.DirPrintHood);
     Add(acSystemInfo1.DirProgramFiles);
     Add(acSystemInfo1.DirPrograms);
     Add(acSystemInfo1.DirRecent);
     Add(acSystemInfo1.DirSendTo);
     Add(acSystemInfo1.DirStartMenu);
     Add(acSystemInfo1.DirStartup);
     Add(acSystemInfo1.DirSystem);
     Add(acSystemInfo1.DirTemp);
     Add(acSystemInfo1.DirTemplates);
     Add(acSystemInfo1.DirWindows);
     //  acSystemInfo1.
   End;     }
end;

End.
{var
  acLabel1: TLabel;

  acLabel1 := TLabel.Create(Self);
  with acLabel1 do
  begin
    Name := 'acLabel1';
    Parent := Self;
    Left := 12;
    Top := 8;
    Width := 126;
    Height := 13;
    WordWrap := False;
    Caption := #1057#1080#1089#1090#1077#1084#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103':';
    Blinking.Enabled := False;
    CursorClick := crDefault;
    FontHover.Style := [];
    FontHover.Used := False;
    FontClick.Style := [];
    FontClick.Used := False;
    Highlight.Enabled := True;
    Highlight.Color := clHighlightText;
    Highlight.ColorHover := clHighlightText;
    Highlight.ColorClick := clHighlightText;
    Highlight.Depth := 1;
    Highlight.Direction := edUpLeft;
    Shadow.Enabled := True;
    Shadow.Color := clGrayText;
    Shadow.ColorHover := clGrayText;
    Shadow.ColorClick := clGrayText;
    Shadow.Depth := 1;
    Shadow.Direction := edDownRight;
    Options := [];
  end;
}

