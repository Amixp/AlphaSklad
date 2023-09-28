unit UnitClientForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TClientForm = class(TForm)
    Label1: TLabel;
    EdLastName: TEdit;
    Label2: TLabel;
    EdName: TEdit;
    Label3: TLabel;
    EdSurName: TEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    EdPassSeries: TEdit;
    Label5: TLabel;
    EdPassNumber: TEdit;
    Label6: TLabel;
    EdPassWhoGive: TEdit;
    EdDate: TDateTimePicker;
    Label7: TLabel;
    Label8: TLabel;
    EdFirm: TEdit;
    Label9: TLabel;
    EdAddr: TEdit;
    Label10: TLabel;
    EdPhone: TEdit;
    Label11: TLabel;
    EdComment: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientForm: TClientForm;

implementation

uses FormPassportsUnit;

{$R *.dfm}

end.
