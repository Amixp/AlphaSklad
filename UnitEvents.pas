unit UnitEvents;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormEvents = class(TForm)
    pnl1: TPanel;
    mmo1: TMemo;
    procedure MonitorEvent(Txt: string; params: array of string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEvents: TFormEvents;

implementation

{$R *.dfm}

procedure TFormEvents.MonitorEvent(Txt: string; params: array of string);
begin
  mmo1.Lines.Add(Txt);
end;

end.
