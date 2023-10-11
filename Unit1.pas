unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  uses Unit4,Unit2,Unit6,Unit5,Unit3;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
Form5.Show;
Form1.Hide;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Form6.Show;
Form1.Hide;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
Form3.Show;
Form1.Hide;
end;

end.
