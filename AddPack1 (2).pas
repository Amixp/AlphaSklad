Unit AddPack1;

Interface

Uses Forms,
  SysUtils,
  StdCtrls,
  Controls,
  ExtCtrls,

  Classes, Buttons;
Type
  TAddPack = class(TForm)
    BtnCancel: TBitBtn;
    BtnOk: TBitBtn;
    Edit1: TEdit;
    EdNum: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  end;

Var
  AddPack: TAddPack;

Implementation

Uses FormOptions1,
  Data1,
  Datas1;

{$R *.dfm}

{
*********************************** TAddPack ***********************************
}
procedure TAddPack.FormClose(Sender: TObject; Var Action: TCloseAction);
begin
  Action := caHide;
end;

procedure TAddPack.RzDialogButtons1ClickOk(Sender: TObject);
var
  s: string;
  e: Extended;
begin
  Try
    s := Edit1.Text;
    e := StrToFloat(EdNum.text);

    Datas.ADOPacks.Append;
    Datas.ADOPacks.FieldByName('Pack').AsString := s;
    Datas.ADOPacks.FieldByName('Num').AsFloat := e;
    Datas.ADOPacks.Post;
  Except
  End;
end;

End.


