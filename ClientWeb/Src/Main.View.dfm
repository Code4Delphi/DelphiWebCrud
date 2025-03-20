object MainView: TMainView
  Width = 640
  Height = 480
  object WebLabel1: TWebLabel
    Left = 144
    Top = 80
    Width = 119
    Height = 15
    Caption = 'C'#233'sar Cardoso Logado'
    ElementID = 'lbUsuarioLogado'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lbImportant: TWebLabel
    Left = 64
    Top = 248
    Width = 63
    Height = 15
    Caption = 'lbImportant'
    ElementID = 'lbImportant'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = lbImportantClick
  end
  object lbWarning: TWebLabel
    Left = 72
    Top = 288
    Width = 55
    Height = 15
    Caption = 'lbWarning'
    ElementID = 'lbWarning'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = lbWarningClick
  end
  object lbInformational: TWebLabel
    Left = 64
    Top = 328
    Width = 82
    Height = 15
    Caption = 'lbInformational'
    ElementID = 'lbInformational'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = lbInformationalClick
  end
end
