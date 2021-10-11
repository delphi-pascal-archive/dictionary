object Form1: TForm1
  Left = 248
  Top = 134
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Dictionary'
  ClientHeight = 515
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 441
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1083#1086#1074#1072#1088#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 40
    Width = 441
    Height = 9
    TabOrder = 1
  end
  object RichEdit1: TRichEdit
    Left = 8
    Top = 56
    Width = 441
    Height = 449
    PlainText = True
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
  end
end
