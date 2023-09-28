unit UnitService;

interface
uses Controls, graphics,SysUtils,StdCtrls,DBTables,Variants,Classes;
type
  TNumItem = class(TObject)
  private
    function GetMaxValue: Extended;
    function GetValue: Extended;
    procedure SetMaxValue(NewValue: Extended);
    procedure SetValue(Value: Extended);
  public
    property MaxValue: Extended read GetMaxValue write SetMaxValue;
    property Value: Extended read GetValue write SetValue;
  end;

type
  TNumItems = record
    Value: Integer;
    MaxValue: Integer;
  end;

  TSaleProdEdit = class(TObject)
  private
    function GetComment: string;
    function GetFridge: string;
    function GetGrossWeight: Extended;
    function GetInDate: TDate;
    function GetLot: string;
    function GetNameProduct: string;
    function GetNetWeight: Extended;
    function GetNumAuthority: Integer;
    function GetNumItems: TNumItem;
    function GetNumLetter: Integer;
    function GetOutDate: TDate;
    function GetProducer: string;
    function GetSklad: string;
    function GetTransport: string;
    function GetTypePack: string;
    function GetWeightPlace: string;
    procedure SetComment(const Value: string);
    procedure SetFridge(const Value: string);
    procedure SetGrossWeight(Value: Extended);
    procedure SetInDate(Value: TDate);
    procedure SetLot(const Value: string);
    procedure SetNameProduct(const Value: string);
    procedure SetNetWeight(Value: Extended);
    procedure SetNumAuthority(Value: Integer);
    procedure SetNumItems(Value: TNumItem);
    procedure SetNumLetter(Value: Integer);
    procedure SetOutDate(Value: TDate);
    procedure SetProducer(const Value: string);
    procedure SetSklad(const Value: string);
    procedure SetTransport(const Value: string);
    procedure SetTypePack(const Value: string);
    procedure SetWeightPlace(const Value: string);
  public
    property Comment: string read GetComment write SetComment;
    property Fridge: string read GetFridge write SetFridge;
    property GrossWeight: Extended read GetGrossWeight write SetGrossWeight;
    property InDate: TDate read GetInDate write SetInDate;
    property Lot: string read GetLot write SetLot;
    property NameProduct: string read GetNameProduct write SetNameProduct;
    property NetWeight: Extended read GetNetWeight write SetNetWeight;
    property NumAuthority: Integer read GetNumAuthority write SetNumAuthority;
    property NumItems: TNumItem read GetNumItems write SetNumItems;
    property NumLetter: Integer read GetNumLetter write SetNumLetter;
    property OutDate: TDate read GetOutDate write SetOutDate;
    property Producer: string read GetProducer write SetProducer;
    property Sklad: string read GetSklad write SetSklad;
    property Transport: string read GetTransport write SetTransport;
    property TypePack: string read GetTypePack write SetTypePack;
    property WeightPlace: string read GetWeightPlace write SetWeightPlace;
  end;

  TIncomProdEdit = class(TObject)
  private
    function GetColor: TColor;
    function GetComment: string;
    function GetFridge: string;
    function GetGrossWeight: Extended;
    function GetInDate: TDate;
    function GetLot: string;
    function GetNameProduct: string;
    function GetNetWeight: Extended;
    function GetNumAuthority: Integer;
    function GetNumItems: TNumItem;
    function GetNumLetter: Integer;
    function GetProducer: string;
    function GetSklad: string;
    function GetTransport: string;
    function GetTypePack: string;
    function GetWeightPlace: string;
    procedure SetColor(Value: TColor);
    procedure SetComment(const Value: string);
    procedure SetFridge(const Value: string);
    procedure SetGrossWeight(Value: Extended);
    procedure SetInDate(Value: TDate);
    procedure SetLot(const Value: string);
    procedure SetNameProduct(const Value: string);
    procedure SetNetWeight(Value: Extended);
    procedure SetNumAuthority(Value: Integer);
    procedure SetNumItems(Value: TNumItem);
    procedure SetNumLetter(Value: Integer);
    procedure SetProducer(const Value: string);
    procedure SetSklad(const Value: string);
    procedure SetTransport(const Value: string);
    procedure SetTypePack(const Value: string);
    procedure SetWeightPlace(const Value: string);
  public
    property Color: TColor read GetColor write SetColor;
    property Comment: string read GetComment write SetComment;
    property Fridge: string read GetFridge write SetFridge;
    property GrossWeight: Extended read GetGrossWeight write SetGrossWeight;
    property InDate: TDate read GetInDate write SetInDate;
    property Lot: string read GetLot write SetLot;
    property NameProduct: string read GetNameProduct write SetNameProduct;
    property NetWeight: Extended read GetNetWeight write SetNetWeight;
    property NumAuthority: Integer read GetNumAuthority write SetNumAuthority;
    property NumItems: TNumItem read GetNumItems write SetNumItems;
    property NumLetter: Integer read GetNumLetter write SetNumLetter;
    property Producer: string read GetProducer write SetProducer;
    property Sklad: string read GetSklad write SetSklad;
    property Transport: string read GetTransport write SetTransport;
    property TypePack: string read GetTypePack write SetTypePack;
    property WeightPlace: string read GetWeightPlace write SetWeightPlace;
  end;

function GetVarsStr( tmp : array of TVarRec): string;

implementation

uses SaleProd1, IncomingUnit, DB;

{
*********************************** TNumItem ***********************************
}
function TNumItem.GetMaxValue: Extended;
begin
end;

function TNumItem.GetValue: Extended;
begin
end;

procedure TNumItem.SetMaxValue(NewValue: Extended);
begin
end;

procedure TNumItem.SetValue(Value: Extended);
begin
end;

{
******************************** TSaleProdEdit *********************************
}
function TSaleProdEdit.GetComment: string;
begin
end;

function TSaleProdEdit.GetFridge: string;
begin
end;

function TSaleProdEdit.GetGrossWeight: Extended;
begin
end;

function TSaleProdEdit.GetInDate: TDate;
begin
end;

function TSaleProdEdit.GetLot: string;
begin
end;

function TSaleProdEdit.GetNameProduct: string;
begin
 // Result:=SaleProd.EdNameProd.Text;
end;

function TSaleProdEdit.GetNetWeight: Extended;
begin
//  Result:=StrToFloat( SaleProd.EdNet_Weight.Text);
end;

function TSaleProdEdit.GetNumAuthority: Integer;
begin
end;

function TSaleProdEdit.GetNumItems: TNumItem;
begin
end;

function TSaleProdEdit.GetNumLetter: Integer;
begin
end;

function TSaleProdEdit.GetOutDate: TDate;
begin
end;

function TSaleProdEdit.GetProducer: string;
begin
  //Result:=SaleProd.EdProducer.Text;
end;

function TSaleProdEdit.GetSklad: string;
begin
end;

function TSaleProdEdit.GetTransport: string;
begin
end;

function TSaleProdEdit.GetTypePack: string;
begin
end;

function TSaleProdEdit.GetWeightPlace: string;
begin
end;

procedure TSaleProdEdit.SetComment(const Value: string);
begin
end;

procedure TSaleProdEdit.SetFridge(const Value: string);
begin
end;

procedure TSaleProdEdit.SetGrossWeight(Value: Extended);
begin
end;

procedure TSaleProdEdit.SetInDate(Value: TDate);
begin
end;

procedure TSaleProdEdit.SetLot(const Value: string);
begin
end;

procedure TSaleProdEdit.SetNameProduct(const Value: string);
begin
 // SaleProd.EdNameProd.Text:=  Value;
end;

procedure TSaleProdEdit.SetNetWeight(Value: Extended);
begin
 // SaleProd.EdNet_Weight.Text:=FloatToStr(Value);
end;

procedure TSaleProdEdit.SetNumAuthority(Value: Integer);
begin
end;

procedure TSaleProdEdit.SetNumItems(Value: TNumItem);
begin
end;

procedure TSaleProdEdit.SetNumLetter(Value: Integer);
begin
end;

procedure TSaleProdEdit.SetOutDate(Value: TDate);
begin
end;

procedure TSaleProdEdit.SetProducer(const Value: string);
begin
 // SaleProd.EdProducer.Text:=  Value;
end;

procedure TSaleProdEdit.SetSklad(const Value: string);
begin
end;

procedure TSaleProdEdit.SetTransport(const Value: string);
begin
end;

procedure TSaleProdEdit.SetTypePack(const Value: string);
begin
end;

procedure TSaleProdEdit.SetWeightPlace(const Value: string);
begin
end;

{
******************************** TIncomProdEdit ********************************
}
function TIncomProdEdit.GetColor: TColor;
begin
 Result:= IncomingProd.EdColor.ColorValue;
end;

function TIncomProdEdit.GetComment: string;
begin
end;

function TIncomProdEdit.GetFridge: string;
begin
end;

function TIncomProdEdit.GetGrossWeight: Extended;
begin
end;

function TIncomProdEdit.GetInDate: TDate;
begin
end;

function TIncomProdEdit.GetLot: string;
begin
end;

function TIncomProdEdit.GetNameProduct: string;
begin
 // Result:=SaleProd.EdNameProd.Text;
end;

function TIncomProdEdit.GetNetWeight: Extended;
begin
//  Result:=StrToFloat( SaleProd.EdNet_Weight.Text);
end;

function TIncomProdEdit.GetNumAuthority: Integer;
begin
end;

function TIncomProdEdit.GetNumItems: TNumItem;
begin
end;

function TIncomProdEdit.GetNumLetter: Integer;
begin
end;

function TIncomProdEdit.GetProducer: string;
begin
 // Result:=SaleProd.EdProducer.Text;
end;

function TIncomProdEdit.GetSklad: string;
begin
end;

function TIncomProdEdit.GetTransport: string;
begin
end;

function TIncomProdEdit.GetTypePack: string;
begin
end;

function TIncomProdEdit.GetWeightPlace: string;
begin
end;

procedure TIncomProdEdit.SetColor(Value: TColor);
begin
 IncomingProd.EdColor.ColorValue:=Value;
end;

procedure TIncomProdEdit.SetComment(const Value: string);
begin
end;

procedure TIncomProdEdit.SetFridge(const Value: string);
begin
end;

procedure TIncomProdEdit.SetGrossWeight(Value: Extended);
begin
end;

procedure TIncomProdEdit.SetInDate(Value: TDate);
begin
end;

procedure TIncomProdEdit.SetLot(const Value: string);
begin
end;

procedure TIncomProdEdit.SetNameProduct(const Value: string);
begin
 // SaleProd.EdNameProd.Text:=  Value;
end;

procedure TIncomProdEdit.SetNetWeight(Value: Extended);
begin
 // SaleProd.EdNet_Weight.Text:=FloatToStr(Value);
end;

procedure TIncomProdEdit.SetNumAuthority(Value: Integer);
begin
end;

procedure TIncomProdEdit.SetNumItems(Value: TNumItem);
begin
end;

procedure TIncomProdEdit.SetNumLetter(Value: Integer);
begin
end;

procedure TIncomProdEdit.SetProducer(const Value: string);
begin
  //SaleProd.EdProducer.Text:=  Value;
end;

procedure TIncomProdEdit.SetSklad(const Value: string);
begin
end;

procedure TIncomProdEdit.SetTransport(const Value: string);
begin
end;

procedure TIncomProdEdit.SetTypePack(const Value: string);
begin
end;

procedure TIncomProdEdit.SetWeightPlace(const Value: string);
begin
end;

function GetVarsStr( tmp : array of TVarRec): string;
var
I: integer;
s: string;
begin
   for I := Low(tmp) to High(tmp) do
  begin
  s:=s+tmp[I].VString^;
  if High(tmp)<i then s:=s+', ';
  end;
  Result:=s;
end;

end.
