unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    ActivityIndicator1: TActivityIndicator;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
        uses Unit1,unit4;
{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
begin
timer1.Enabled := false;
form1.Show;
form2.hide;
end;


end.
