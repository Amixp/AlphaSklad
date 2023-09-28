Unit Datas1;

Interface

Uses DB,
  Classes,
  DBTables, Data.Win.ADODB;

Type
  TDatas = class(TDataModule)
    DSFridges: TDataSource;
    DSLots: TDataSource;
    DSNameProds: TDataSource;
    DSPacks: TDataSource;
    DSPeriods: TDataSource;
    DSProducers: TDataSource;
    DSSklads: TDataSource;
    DSTransports: TDataSource;
    DSWeight_places: TDataSource;
    ADONameProds: TADOTable;
    ADOProducers: TADOTable;
    ADOTransports: TADOTable;
    ADOFridges: TADOTable;
    ADOSklads: TADOTable;
    ADOLots: TADOTable;
    ADOPacks: TADOTable;
    ADOPeriods: TADOTable;
    ADOWeight_places: TADOTable;
    procedure DataModuleCreate(Sender: TObject);
    procedure DSPacksDataChange(Sender: TObject; Field: TField);
    procedure FridgesAfterClose(DataSet: TDataSet);
    procedure LotsAfterClose(DataSet: TDataSet);
    procedure NameProdsAfterClose(DataSet: TDataSet);
    procedure PacksAfterClose(DataSet: TDataSet);
    procedure PeriodsAfterClose(DataSet: TDataSet);
    procedure ProducersAfterClose(DataSet: TDataSet);
    procedure SkladsAfterClose(DataSet: TDataSet);
    procedure TransportsAfterClose(DataSet: TDataSet);
    procedure Weight_placesAfterClose(DataSet: TDataSet);
  end;

Var
  Datas: TDatas;

Implementation

Uses Data1;

{$R *.dfm}

{
************************************ TDatas ************************************
}
procedure TDatas.DataModuleCreate(Sender: TObject);
begin
  ADONameProds.Open;
  ADOProducers.Open;
  ADOTransports.Open;
  ADOFridges.Open;
  ADOSklads.Open;
  ADOLots.Open;
  ADOPacks.Open;
  ADOPeriods.Open;
  ADOWeight_places.Open;

end;

procedure TDatas.DSPacksDataChange(Sender: TObject; Field: TField);
begin
  FlagChangeDB := True;
end;

procedure TDatas.FridgesAfterClose(DataSet: TDataSet);
begin
 // ADOFridges.CommitUpdates;  { TODO : Commit updates!!! }
end;

procedure TDatas.LotsAfterClose(DataSet: TDataSet);
begin
 /// Lots.CommitUpdates;
end;

procedure TDatas.NameProdsAfterClose(DataSet: TDataSet);
begin
  //NameProds.CommitUpdates;
end;

procedure TDatas.PacksAfterClose(DataSet: TDataSet);
begin
 // Packs.CommitUpdates;
end;

procedure TDatas.PeriodsAfterClose(DataSet: TDataSet);
begin
  //Periods.CommitUpdates;
end;

procedure TDatas.ProducersAfterClose(DataSet: TDataSet);
begin
 // Producers.CommitUpdates;
end;

procedure TDatas.SkladsAfterClose(DataSet: TDataSet);
begin
  //Sklads.CommitUpdates;
end;

procedure TDatas.TransportsAfterClose(DataSet: TDataSet);
begin
  //Transports.CommitUpdates;
end;

procedure TDatas.Weight_placesAfterClose(DataSet: TDataSet);
begin
/// Weight_places.CommitUpdates;
end;

End.


