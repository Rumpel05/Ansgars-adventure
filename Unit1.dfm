object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biMinimize]
  Caption = 'Form1'
  ClientHeight = 608
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Courier'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Memo1: TMemo
    Left = 16
    Top = 8
    Width = 777
    Height = 473
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Courier'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 504
    Width = 193
    Height = 81
    Caption = 'Mgl1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    WordWrap = True
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 504
    Width = 193
    Height = 81
    Caption = 'Mgl2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    WordWrap = True
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 600
    Top = 503
    Width = 193
    Height = 82
    Caption = 'Mgl3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    WordWrap = True
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 799
    Top = 416
    Width = 103
    Height = 65
    Caption = 'Stats'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 799
    Top = 8
    Width = 103
    Height = 65
    Caption = 'Menu'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 799
    Top = 79
    Width = 103
    Height = 66
    Caption = 'Save'
    TabOrder = 6
  end
  object Button7: TButton
    Left = 799
    Top = 151
    Width = 103
    Height = 66
    Caption = 'Load'
    TabOrder = 7
  end
  object Button8: TButton
    Left = 799
    Top = 223
    Width = 103
    Height = 66
    Caption = 'New'
    TabOrder = 8
    OnClick = Button8Click
  end
end
