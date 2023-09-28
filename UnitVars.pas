unit UnitVars;


interface

uses sysutils,graphics;

 Type
  TSklad = Record
    ID: integer;
    NameProd,
      Producer,
      Supplier,
      Transport,
      Fridge,
      SkladSvid,
      Comment: String[255];
    Lot,
      Pack,
      WeightPlace: String[50];
    LogDateTime, StorageDate: TDateTime;
    NumPlaces: integer;
    Color: TColor;
    NetWeight,
      GrossWeight: Extended;
    StorageFee: Currency;
    Client: String[255];
    ClientID,
      NumberLetter: integer;
  End;
Type
  TClient = Record
    ID: integer;
    Surname,
      Name,
      Patronymic: String[255];
    PassSeries,
      PassNumber: String[50];
    PassWhoGive: String[255];
    PassDateGive: TDateTime;
    Firm: String[255];
    Address: String;
    Phone: String[100];
    Comment: String[255];
    Color: TColor;
  End;
Type
  TDocPath = Record
    Name, Path: String;
    NumberDoc: integer;
  End;
Type
  TFormFont = Record
    Color: TColor;
    Name: String;
    Size: integer;
  End;
Type
  TOptions = Record
    Letters,
      Authority,
      Reports: TDocPath;
    DropDownCount: integer;
    MainFormFont, StartPageFont: TFormFont;
    FillBackgr: Boolean;
    ShowIndicator: boolean;
    SmallIcons: Boolean;
    ShowLog: Boolean;
    ColorBeginPage: TColor;
    ShowBackground: Boolean;
    ShowLogo, ShowLogoBack: Boolean;
  End;
Type
  TSelectedSum = Record
    SelSumRecords, SelSumNumPlaces: integer;
    SelSumNetWeight, SelSumGrossWeight: Extended;
    SelSumRecordsIncom, SelSumNumPlacesIncom: integer;
    SelSumNetWeightIncom, SelSumGrossWeightIncom: Extended;
    SelSumRecordsSale, SelSumNumPlacesSale: integer;
    SelSumNetWeightSale, SelSumGrossWeightSale: Extended;
    SelSumStorageFee: Currency;
    SelSumRecordsClients: integer;
  End;
Type
  TPack = Record
    ID: integer;
    TypePack: String[50];
    Index: Extended;
  End;
Type
  TPeriod = Record
    ID: integer;
    Fridge: String[255];
    NumPeriod: integer;
    Period: integer;
    Rate: Currency;
  End;
  function DateForSQL(const date : TDate) : string;
   function DateTimeForSQL(const dateTime : TDateTime) : string;
implementation


function DateTimeForSQL(const dateTime : TDateTime) : string;
var
y, m, d : word;
hour, min, sec, msec : word;
begin
DecodeDate(dateTime, y, m, d) ;
DecodeTime(dateTime, hour, min, sec, msec) ;

result := Format('%.*d-%.*d-%.*d %.*d.%.*d.%.*d',[4, y, 2, m, 2, d, 2, hour, 2, min, 2, sec]) ;
end;

function DateForSQL(const date : TDate) : string;
var
y, m, d : word;
hour, min, sec, msec : word;
begin
DecodeDate(date, y, m, d) ;

result := Format('%.*d/%.*d/%.*d ',[4, y, 2, m, 2, d, 2]) ;
end;

end.
