unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TForm4 = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    SpeedButton11: TSpeedButton;
    Label6: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    Edit1: TEdit;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    FontDialog1: TFontDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Edit1Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses Unit1;

{$R *.dfm}

procedure TForm4.ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin

 if (AnsiUpperCase(Edit1.Text) = AnsiUpperCase(Copy(ADOTable1.FieldByName('Müþteri Adý Soyadý').AsString,1,length(Edit1.Text)))) then
 Accept:=True else Accept:=False;


end;

procedure TForm4.Edit1Change(Sender: TObject);
begin
AdoTable1.Filtered:=false;
AdoTable1.Filtered:=true;
if (Edit1.Text='') then  AdoTable1.Filtered:=false;


end;

procedure TForm4.Edit1Click(Sender: TObject);
begin
Edit1.Text:='';
end;

procedure TForm4.SpeedButton10Click(Sender: TObject);
begin
AdoTable1.Prior;
end;

procedure TForm4.SpeedButton11Click(Sender: TObject);
begin
AdoTable2.Append;
end;

procedure TForm4.SpeedButton12Click(Sender: TObject);
begin
AdoTable2.Delete;
end;

procedure TForm4.SpeedButton13Click(Sender: TObject);
begin
AdoTable2.Refresh;
end;

procedure TForm4.SpeedButton14Click(Sender: TObject);
begin
AdoTable2.Post;
end;

procedure TForm4.SpeedButton15Click(Sender: TObject);
begin
    ADOTable1.Edit;
    if RadioButton1.Checked then ADOTable1.FieldByName('Durumu').AsString:='Baþlanmadý';
    if RadioButton2.Checked then ADOTable1.FieldByName('Durumu').AsString:='Devam Ediyor';
    if RadioButton3.Checked then ADOTable1.FieldByName('Durumu').AsString:='Tamamlandý';
    ADOTable1.Post;
end;

procedure TForm4.SpeedButton16Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm4.SpeedButton17Click(Sender: TObject);
begin
AdoTable1.Append;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
 AdoTable1.Cancel;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
Form1.Show;
Form4.Hide;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
AdoTable1.Last;
end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
begin
AdoTable1.Post;
end;

procedure TForm4.SpeedButton5Click(Sender: TObject);
begin
AdoTable1.Edit;
end;

procedure TForm4.SpeedButton6Click(Sender: TObject);
begin
AdoTable1.Next;
end;

procedure TForm4.SpeedButton7Click(Sender: TObject);
begin
AdoTable1.Cancel;
end;

procedure TForm4.SpeedButton8Click(Sender: TObject);
begin
  AdoTable1.Refresh;
end;

procedure TForm4.SpeedButton9Click(Sender: TObject);
begin
AdoTable1.First;
end;

end.
