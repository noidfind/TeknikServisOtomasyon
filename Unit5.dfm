object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Bilgisayar Teknik Servis'
  ClientHeight = 330
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 51
    Top = 24
    Width = 238
    Height = 33
    Caption = 'Yetkili Giri'#351':'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Fira Code'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 51
    Top = 301
    Width = 232
    Height = 16
    Caption = 'Kullan'#305'c'#305' Ad'#305': YBS '#351'ifre: 123'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Fira Code'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 70
    Top = 128
    Width = 167
    Height = 32
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Fira Code'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    Text = 'Edit1'
    OnClick = Edit1Click
  end
  object Kullanıcılar: TComboBox
    Left = 51
    Top = 72
    Width = 227
    Height = 32
    Cursor = crHandPoint
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Fira Code'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'Kullan'#305'c'#305'lar'
    OnChange = KullanıcılarChange
    Items.Strings = (
      'YBS')
  end
  object Button1: TButton
    Left = 94
    Top = 184
    Width = 113
    Height = 33
    Caption = 'Giri'#351' Yap'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Fira Code'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 78
    Top = 223
    Width = 167
    Height = 33
    Caption = 'Yeni Kullan'#305'c'#305
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Fira Code'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 94
    Top = 262
    Width = 113
    Height = 33
    Caption = 'Ana Men'#252
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Fira Code'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Yetkililer'
    Left = 296
    Top = 32
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Tekni' +
      'kServisDataBase.mdb;Mode=Share Deny None;Persist Security Info=F' +
      'alse;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet' +
      ' OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Da' +
      'tabase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OL' +
      'EDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="' +
      '";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Datab' +
      'ase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB' +
      ':Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 296
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 296
    Top = 208
  end
end
