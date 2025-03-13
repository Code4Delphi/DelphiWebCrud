object MainView: TMainView
  Width = 586
  Height = 453
  Caption = 'DelphiWeb - Home'
  object aError: TWebLabel
    Left = 8
    Top = 339
    Width = 31
    Height = 15
    Caption = 'aError'
    ElementID = 'aError'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = aErrorClick
  end
  object aWarning: TWebLabel
    Left = 8
    Top = 318
    Width = 51
    Height = 15
    Caption = 'aWarning'
    ElementID = 'aWarning'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = aWarningClick
  end
  object aInformation: TWebLabel
    Left = 8
    Top = 360
    Width = 69
    Height = 15
    Caption = 'aInformation'
    ElementID = 'aInformation'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = aInformationClick
  end
  object aConfirmation: TWebLabel
    Left = 8
    Top = 381
    Width = 77
    Height = 15
    Caption = 'aConfirmation'
    ElementID = 'aConfirmation'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = aConfirmationClick
  end
  object aCustom: TWebLabel
    Left = 8
    Top = 402
    Width = 48
    Height = 15
    Caption = 'aCustom'
    ElementID = 'aCustom'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = aCustomClick
  end
end
