Unit UnitViewForm;

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
  Buttons,
  ComCtrls,
  Grids,
  comobj,
  Word2000,
  ExtCtrls, JvStringHolder, JvExGrids,
  JvStringGrid, JvExComCtrls, JvListView;

Type
  TViewForm = class(TForm)
    BtnOk: TBitBtn;
    ListStr: TJvStrHolder;
    Values: TJvStrHolder;
    jListProds: TJvListView;
    procedure ExportToWord_0;
    procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ReadToVars_0;
    procedure RzDialogButtons1ClickOk(Sender: TObject);
  end;

Var
  c, idx: Integer;
  ViewForm: TViewForm;

Implementation

Uses UnitSklad1,
  IncomingUnit,
  Data1,
  DB,
  Progressform1,
  FormOptions1, JvDBGrid, DBGrids;

{$R *.dfm}

{
********************************** TViewForm ***********************************
}
procedure TViewForm.ExportToWord_0;
var
   SMon, Sday, SYear, Text: string;
  Year, Month, Day: Word;
  V: Variant;
  FileNameDoc: string;
  i: Integer;
  Now_Date: TDateTime;
begin
  Try
    V := 0; // не забудьте инициализировать переменную
    If V = 0 Then
    Begin

      ProgressForm := TProgressForm.Create(Application);
      ProgressForm.Label1.Caption := 'Вставка выбранной продукции в Word';
      ProgressForm.Show;
      ProgressForm.Update;
      ProgressForm.PrBar.Position := 0;
      ProgressForm.PrBar.Maximum := 11 * c;
      //ProgressForm.PrBar.Percent := 0;
      V := CreateOLEObject('Word.Application'); //Basic
      Text := ExtractFilePath(Application.ExeName); //+'\Письмо.doc';

      V.ChangeFileOpenDirectory(Text);
      V.Documents.Open(FileName := Text + ViewFormDoc, ConfirmConversions := True,
        ReadOnly := True, AddToRecentFiles := False, PasswordDocument := '',
        PasswordTemplate := '', Revert := False, WritePasswordDocument := '',
        WritePasswordTemplate := '', Format := wdOpenFormatAuto);
      Now_Date := Date;
      DecodeDate(Now_Date, year, Month, day);

      V.WordBasic.EditBookmark('Day', 0, 0, 0, 1);
      V.WordBasic.Insert(IntToStr(Day));

      DateTimeToString(SMon, 'mmmm', Now_Date);
      V.WordBasic.EditBookmark('Month', 0, 0, 0, 1);
      V.WordBasic.Insert(SMon);

      V.WordBasic.EditBookmark('Year', 0, 0, 0, 1);
      V.WordBasic.Insert(IntToStr(Year));

      V.WordBasic.EditBookmark('NameProd', 0, 0, 0, 1);
      For idx := 1 To c Do
      Begin
        Application.ProcessMessages;
        ReadToVars_0;
        V.WordBasic.Insert(NameProd);
        V.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        V.WordBasic.Insert(Producer);
        V.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        V.WordBasic.Insert(Transport);
        V.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        V.WordBasic.Insert(Fridge);
        V.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        V.WordBasic.Insert(Sklad);
        V.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        V.WordBasic.Insert(SDate);
        V.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        V.WordBasic.Insert(Lot);
        V.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
        V.WordBasic.Insert(Weight_place);
        If idx <> c Then
          V.WordBasic.nextcell;
        ProgressForm.PrBar.StepIt;
      End;
      Text := FormOptions.DirLetters.Text + '\';
      V.ChangeFileOpenDirectory(Text);
      DateTimeToString(SDay, 'dd', Now_Date);
      DateTimeToString(SMon, 'mm', Now_Date);
      DateTimeToString(SYear, 'yy', Now_Date);
      Try
        i := 1;
        FileNameDoc := Text + 'Осмотр_' + SDay + SMon + SYear + '.doc';
        While FileExists(FileNameDoc) Do
        Begin
          FileNameDoc := Text + 'Осмотр_' + SDay + SMon + SYear + '_' + IntToStr(i) + '.doc';
          Inc(i);
        End;
       // mainform.SaveWordDoc(FileNameDoc, FWordApp);
        { V.ActiveDocument.SaveAs(FileName:=,
            FileFormat:=wdFormatDocument,LockComments:=False, Password:='', AddToRecentFiles:=False,
             WritePassword:='', ReadOnlyRecommended:=False, EmbedTrueTypeFonts:=False,
               SaveNativePictureFormat:=False, SaveFormsData:=False, SaveAsAOCELetter:=False);
      } Finally
      End;

    End;
  Finally
    ProgressForm.Free;
    V.WordBasic.AppShow;
    V := unAssigned;
    MainForm.BringToFront;
  End;
end;

procedure TViewForm.FormClose(Sender: TObject; Var Action: TCloseAction);
begin
  //Action:=caHide;
end;

procedure TViewForm.FormShow(Sender: TObject);
var
   NewNode: TListItem;
  AColumn: TListColumn;
begin
 MainForm.CopySelectedToStrings(Values,ListStr,MainForm.JvDBUltimGrid1);
  c := Mainform.JvDBUltimGrid1.SelCount;
  jListProds.Items.Clear;
  AColumn:= jListProds.Columns.Add;
 AColumn.Caption:=Mainform.GetFldCaption('NameProd');
    AColumn:= jListProds.Columns.Add;
 AColumn.Caption:=Mainform.GetFldCaption('Producer');
    AColumn:= jListProds.Columns.Add;
 AColumn.Caption:=Mainform.GetFldCaption('Transport');
    AColumn:= jListProds.Columns.Add;
 AColumn.Caption:=Mainform.GetFldCaption('Fridge');
    AColumn:= jListProds.Columns.Add;
 AColumn.Caption:=Mainform.GetFldCaption('Sklad');
    AColumn:= jListProds.Columns.Add;
 AColumn.Caption:=Mainform.GetFldCaption('SDate');
    AColumn:= jListProds.Columns.Add;
 AColumn.Caption:=Mainform.GetFldCaption('Lot');
    AColumn:= jListProds.Columns.Add;
 AColumn.Caption:=Mainform.GetFldCaption('Packing');
    AColumn:= jListProds.Columns.Add;
 AColumn.Caption:=Mainform.GetFldCaption('Weight_place');
  For idx := 1 To c Do
  Begin

    ReadToVars_0;

  
    NewNode :=     jListProds.Items.Add;
   NewNode.Caption := NameProd;
    NewNode.SubItems.Add(Producer);
    NewNode.SubItems.Add(Transport);
    NewNode.SubItems.Add(Fridge);
    NewNode.SubItems.Add(Sklad);
    NewNode.SubItems.Add(SDate);
    NewNode.SubItems.Add(Lot);
    NewNode.SubItems.Add(Packing);
    NewNode.SubItems.Add(Weight_place);
  End;
end;

procedure TViewForm.ReadToVars_0;
begin
  Try
    NameProd := Trim(Values.Strings.Values['NameProd' + IntToStr(idx)]);
    Producer := Trim(Values.Strings.Values['Producer' + IntToStr(idx)]);
    Transport := Trim(Values.Strings.Values['Transport' + IntToStr(idx)]);
    Fridge := Trim(Values.Strings.Values['Fridge' + IntToStr(idx)]);
    Sklad := Trim(Values.Strings.Values['Sklad' + IntToStr(idx)]);
    SDate := Trim(Values.Strings.Values['Date' + IntToStr(idx)]);
    Lot := Trim(Values.Strings.Values['Lot' + IntToStr(idx)]);
    Packing := Trim(Values.Strings.Values['Packing' + IntToStr(idx)]);
    Weight_place := Trim(Values.Strings.Values['Weight_place' + IntToStr(idx)]);
  Except
  End;
end;

procedure TViewForm.RzDialogButtons1ClickOk(Sender: TObject);
begin
  ExportToWord_0;
end;

End.


