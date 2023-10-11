object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Bilgisayar Teknik Servis'
  ClientHeight = 200
  ClientWidth = 200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 10
    Top = 112
    Width = 182
    Height = 28
    Caption = 'Y'#252'kleniyor...'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Fira Code Light'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object ActivityIndicator1: TActivityIndicator
    Left = 72
    Top = 32
    Cursor = crHourGlass
    Animate = True
    IndicatorColor = aicWhite
    IndicatorSize = aisLarge
  end
  object Timer1: TTimer
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 224
    Top = 168
  end
end
