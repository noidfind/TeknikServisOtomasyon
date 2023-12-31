unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm5 = class(TForm)
    Edit1: TEdit;
    Kullanıcılar: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure KullanıcılarChange(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
          uses Unit4,Unit1;
{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
if (Edit1.Text = ADOTable1.FieldByName('UserPass').AsString) then
begin
  Form5.Hide;
  Form4.Show;
    end
    else
    ShowMessage('Hatalı Giriş');
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
AdoTable1.Insert;
AdoTable1.FieldByName('UserName').AsString := Kullanıcılar.Text;
AdoTable1.FieldByName('UserPass').AsString := Edit1.Text;
AdoTable1.Post;

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
Form1.Show;
Form5.Hide;
end;

procedure TForm5.Edit1Click(Sender: TObject);
begin
Edit1.Text:= '';
end;

procedure TForm5.FormShow(Sender: TObject);
begin
AdoTable1.First;
Kullanıcılar.Items.Clear;
 repeat
   Kullanıcılar.Items.Add(ADOTable1.FieldByName('UserName').AsString);
    ADOTable1.Next;
 until(ADOTable1.Eof) ;
end;

procedure TForm5.KullanıcılarChange(Sender: TObject);
begin
AdoTable1.Locate('UserName',Kullanıcılar.Text,[]);
end;

end.
