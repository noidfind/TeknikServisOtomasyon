object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Kullan'#305'c'#305'lar'
  ClientHeight = 366
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 294
    Height = 28
    Caption = 'Kay'#305'tl'#305' Kullan'#305'c'#305'lar:'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Fira Code SemiBold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 80
    Width = 302
    Height = 233
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Kimlik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserName'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserPass'
        Width = 120
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 32
    Top = 319
    Width = 302
    Height = 25
    Caption = 'Ana Men'#252
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Fira Code Light'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Yetkililer'
    Left = 320
    Top = 256
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
    Left = 160
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 256
    Top = 296
  end
end
