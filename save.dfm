object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Select Save Profile'
  ClientHeight = 417
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 32
    Width = 649
    Height = 89
    Caption = 'Empty Save Place'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 152
    Width = 649
    Height = 89
    Caption = 'Empty Save Place'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 272
    Width = 649
    Height = 89
    Caption = 'Empty Save Place'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 632
    Top = 376
    Width = 107
    Height = 33
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = Button4Click
  end
end
