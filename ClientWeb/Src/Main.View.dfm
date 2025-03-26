object MainView: TMainView
  Width = 640
  Height = 480
  Caption = 'Delphi Web - Home'
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
  object WebMessageDlg1: TWebMessageDlg
    Left = 232
    Top = 279
    Width = 24
    Height = 24
    Buttons = []
    CustomButtons = <
      item
        Caption = 'Sim'
        ElementClassName = 'text-warning'
      end
      item
        Caption = 'N'#227'o'
        ElementClassName = 'text-info'
      end>
    Opacity = 0.200000000000000000
    ElementButtonClassName = 'bg-black'
    ElementDialogClassName = 'bg-dark-subtle'
    ElementTitleClassName = 'bg-black'
  end
end
