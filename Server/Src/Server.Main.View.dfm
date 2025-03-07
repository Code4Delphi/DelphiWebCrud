object ServerMainView: TServerMainView
  Left = 0
  Top = 0
  Caption = 'Web com Delphi - CRUD - v1.4.0'
  ClientHeight = 265
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object btnStart: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = btnStartClick
  end
  object btnStop: TButton
    Left = 105
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = btnStopClick
  end
  object mmLog: TMemo
    Left = 24
    Top = 56
    Width = 505
    Height = 185
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
