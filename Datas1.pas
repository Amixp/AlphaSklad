Unit Datas1;

Interface

Uses DB,
  Classes,
  Data.Win.ADODB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    FDNameProds: TFDTable;
    FDProducers: TFDTable;
    FDTransports: TFDTable;
    FDFridges: TFDTable;
    FDSklads: TFDTable;
    FDLots: TFDTable;
    FDPacks: TFDTable;
    FDPeriods: TFDTable;
    FDWeight_places: TFDTable;
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

Uses Data1, DataUnit1;

{$R *.dfm}

{
  ************************************ TDatas ************************************
}
procedure TDatas.DataModuleCreate(Sender: TObject);
begin
  fdNameProds.Open;
  fdProducers.Open;
  fdTransports.Open;
  fdFridges.Open;
  fdSklads.Open;
  fdLots.Open;
  fdPacks.Open;
  fdPeriods.Open;
  fdWeight_places.Open;

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
  // NameProds.CommitUpdates;
end;

procedure TDatas.PacksAfterClose(DataSet: TDataSet);
begin
  // Packs.CommitUpdates;
end;

procedure TDatas.PeriodsAfterClose(DataSet: TDataSet);
begin
  // Periods.CommitUpdates;
end;

procedure TDatas.ProducersAfterClose(DataSet: TDataSet);
begin
  // Producers.CommitUpdates;
end;

procedure TDatas.SkladsAfterClose(DataSet: TDataSet);
begin
  // Sklads.CommitUpdates;
end;

procedure TDatas.TransportsAfterClose(DataSet: TDataSet);
begin
  // Transports.CommitUpdates;
end;

procedure TDatas.Weight_placesAfterClose(DataSet: TDataSet);
begin
  /// Weight_places.CommitUpdates;
end;

End.
