Unit UnitChangePack;

Interface

Uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ExtCtrls,
   Buttons;

Type
  TChangePack = class(TForm)
    BtnCancel: TBitBtn;
    BtnOk: TBitBtn;
    EdPack: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LbOldPack: TLabel;
    Panel1: TPanel;
    procedure EdPackChange(Sender: TObject);
    procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  end;

Var
  ChangePack: TChangePack;

Implementation

Uses Data1,
  Datas1;

{$R *.dfm}

{
********************************* TChangePack **********************************
}
procedure TChangePack.EdPackChange(Sender: TObject);
begin
  BtnOk.Enabled := (EdPack.Text <> '') Or (EdPack.Text <> LbOldPack.Caption);
end;

procedure TChangePack.FormClose(Sender: TObject; Var Action: TCloseAction);
begin
  Action := caHide;
end;

procedure TChangePack.RzDialogButtons1ClickOk(Sender: TObject);
begin
  Datas.ADOPacks.Edit;
  Datas.ADOPacks.FieldByName('Pack').AsString := EdPack.Text;
  Datas.ADOPacks.post;
  With DataUnit.ADOCommand1 Do  // { TODO : замена упаковки во всей таблице - оптимизировать? }
  Begin
     CommandText:='UPDATE Sklad SET Packing=' + QuotedStr(EdPack.Text)+
    ' WHERE Packing=' + QuotedStr(LbOldPack.Caption);
    Execute;
  End;
end;

End.


