unit UnitOptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvComponentBase,
  JvFormPlacement;

type
  TFormOptions = class(TForm)
    ChAutoLogin: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    JvFormStorage1: TJvFormStorage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOptions: TFormOptions;

implementation

{$R *.dfm}

uses UnitMainView;

procedure TFormOptions.Button1Click(Sender: TObject);
begin
  Autologin := ChAutoLogin.Checked;
  Self.Hide;
end;

procedure TFormOptions.Button2Click(Sender: TObject);
begin
  Self.Hide;
end;

procedure TFormOptions.FormShow(Sender: TObject);
begin
  ChAutoLogin.Checked := Autologin;
end;

end.
