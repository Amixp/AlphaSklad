Unit UnitViewForm;

Interface

Uses
  Windows, IOUtils,
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
  WordXP,
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
  DataUnit1,
  DB,
  Progressform1,
  FormOptions1, JvDBGrid, DBGrids;

{$R *.dfm}

{
  ********************************** TViewForm ***********************************
}
procedure TViewForm.ExportToWord_0;
var
  BookName, SMon, Sday, SYear, Text, s1, s2: string;
  nYear, nMonth, nDay: Word;
  // WordAp: Variant;
  FileNameDoc: string;
  WordDoc: WordDocument;
  WordAp: TWordApplication;
  i: Integer;
  Now_Date: TDateTime;
begin
  Try
    /// ///WordAp := 0; // не забудьте инициализировать переменную
    ///

    ProgressForm := TProgressForm.Create(Application);
    ProgressForm.Label1.Caption := 'Вставка выбранной продукции в Word';
    ProgressForm.Show;
    ProgressForm.Update;
    ProgressForm.PrBar.Position := 0;
    ProgressForm.PrBar.Maximum := 11 * c;
    // ProgressForm.PrBar.Percent := 0;
    // V := CreateOLEObject('Word.Application'); // Basic
    WordAp := TWordApplication.Create(self);
    Text := ExtractFilePath(Application.ExeName); // +'\Письмо.doc';

    WordAp.ChangeFileOpenDirectory(Text);
    WordDoc := WordAp.Documents.Open(Text + ViewFormDoc, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, False, EmptyParam, EmptyParam, EmptyParam);
    { WordAp.Documents.Open(FileName := CurDir + ViewFormDoc, ConfirmConversions :=
      True, ReadOnly := False, AddToRecentFiles := False, PasswordDocument :=
      '', PasswordTemplate := '', Revert := False, WritePasswordDocument :=
      '', WritePasswordTemplate := '', Format := wdOpenFormatAuto); }
    Now_Date := Date;
    DecodeDate(Now_Date, nYear, nMonth, nDay);

    BookName := 'Day';
    if WordDoc.Bookmarks.Exists(BookName) then
      WordDoc.Bookmarks.Item(BookName).Range.Text := IntToStr(nDay);

    DateTimeToString(SMon, 'mmmm', Now_Date);
    BookName := 'Month';
    if WordDoc.Bookmarks.Exists(BookName) then
      WordDoc.Bookmarks.Item(BookName).Range.Text := SMon;

    BookName := 'Year';
    if WordDoc.Bookmarks.Exists(BookName) then
      WordDoc.Bookmarks.Item(BookName).Range.Text := IntToStr(nYear);

    BookName := 'NameProd';
    if WordDoc.Bookmarks.Exists(BookName) then
      WordDoc.Bookmarks.Item(BookName).Select;
    For idx := 1 To c Do
    Begin
      Application.ProcessMessages;
      ReadToVars_0;
      with WordAp do
      begin
        ActiveWindow.Selection.Text := NameProd;
        Run('NextCell');
        ProgressForm.PrBar.StepIt;
        ActiveWindow.Selection.Text := Producer;
        Run('NextCell');
        ActiveWindow.Selection.Text := (Transport);
        ProgressForm.PrBar.StepIt;
        Run('NextCell');
        ActiveWindow.Selection.Text := (Fridge);
        ProgressForm.PrBar.StepIt;
        Run('NextCell');
        ActiveWindow.Selection.Text := (Sklad);
        ProgressForm.PrBar.StepIt;
        Run('NextCell');
        ActiveWindow.Selection.Text := (SDate);
        ProgressForm.PrBar.StepIt;
        Run('NextCell');
        ActiveWindow.Selection.Text := (Lot);
        ProgressForm.PrBar.StepIt;
        Run('NextCell');
        ActiveWindow.Selection.Text := (Weight_place);
        ProgressForm.PrBar.StepIt;
        // Run('NextCell');
        ProgressForm.PrBar.StepIt;
        If idx <> c Then
          // Selection.InsertRowsBelow(1);
          Run('NextCell');
        ProgressForm.PrBar.StepIt;
      end;
    End;
    Text := FormOptions.DirLetters.Text + '\';

    if not DirectoryExists(Text) then
      ForceDirectories(Text);
    WordAp.ChangeFileOpenDirectory(Text);
    DateTimeToString(Sday, 'dd', Now_Date);
    DateTimeToString(SMon, 'mm', Now_Date);
    DateTimeToString(SYear, 'yy', Now_Date);
    Try
      i := 1;
      s1 := TPath.GetFileNameWithoutExtension(ViewFormDoc);
      s2 := ExtractFileExt(ViewFormDoc);
      FileNameDoc := Text + s1 + '_' + Sday + SMon + SYear + s2;
      While FileExists(FileNameDoc) Do
      Begin
        FileNameDoc := Text + s1 + '_' + Sday + SMon + SYear + '_' +
          IntToStr(i) + s2;
        Inc(i);
      End;
      // i := FormOptions.FormStorage1.StoredValues.Values['NumLetter'].value;
      { s := ExtractFileName(FileNameDoc) + '_' + Sday + SMon + SYear + '_' +
        IntToStr(i) + '.' + ExtractFileExt(FileNameDoc); }
      mainform.SaveWordDoc(FileNameDoc, WordAp);
      // mainform.SaveWordDoc(FileNameDoc, FWordDocp);
      { V.ActiveDocument.SaveAs(FileName:=,
        FileFormat:=wdFormatDocument,LockComments:=False, Password:='', AddToRecentFiles:=False,
        WritePassword:='', ReadOnlyRecommended:=False, EmbedTrueTypeFonts:=False,
        SaveNativePictureFormat:=False, SaveFormsData:=False, SaveAsAOCELetter:=False);
      } Finally
    End;

  Finally
    ProgressForm.Free;
    WordAp.Visible := true; // .AppShow;
    WordAp.Disconnect;
    WordAp.Free;
    // Worddoc.Windows.Item(0).Activate;
    mainform.BringToFront;
  End;
end;

procedure TViewForm.FormClose(Sender: TObject; Var Action: TCloseAction);
begin
  // Action:=caHide;
end;

procedure TViewForm.FormShow(Sender: TObject);
var
  NewNode: TListItem;
  AColumn: TListColumn;
begin
  mainform.CopySelectedToStrings(Values, ListStr, mainform.JvDBUltimGrid1);
  c := mainform.JvDBUltimGrid1.SelCount;
  jListProds.Items.Clear;
  AColumn := jListProds.Columns.Add;
  AColumn.Caption := mainform.GetFldCaption('NameProd');
  AColumn := jListProds.Columns.Add;
  AColumn.Caption := mainform.GetFldCaption('Producer');
  AColumn := jListProds.Columns.Add;
  AColumn.Caption := mainform.GetFldCaption('Transport');
  AColumn := jListProds.Columns.Add;
  AColumn.Caption := mainform.GetFldCaption('Fridge');
  AColumn := jListProds.Columns.Add;
  AColumn.Caption := mainform.GetFldCaption('Sklad');
  AColumn := jListProds.Columns.Add;
  AColumn.Caption := mainform.GetFldCaption('SDate');
  AColumn := jListProds.Columns.Add;
  AColumn.Caption := mainform.GetFldCaption('Lot');
  AColumn := jListProds.Columns.Add;
  AColumn.Caption := mainform.GetFldCaption('Packing');
  AColumn := jListProds.Columns.Add;
  AColumn.Caption := mainform.GetFldCaption('Weight_place');
  For idx := 1 To c Do
  Begin

    ReadToVars_0;

    NewNode := jListProds.Items.Add;
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
