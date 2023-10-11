unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TForm3 = class(TForm)
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
        uses Unit1;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Form1.Show;
Form3.Close;
end;

end.
