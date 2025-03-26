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
  object WebPanel1: TWebPanel
    Left = 112
    Top = 160
    Width = 489
    Height = 33
    ElementID = 'divContainerBotoes01'
    ChildOrder = 5
    TabOrder = 1
    object lbCodigo: TWebLabel
      Left = 0
      Top = 0
      Width = 42
      Height = 33
      Align = alLeft
      Caption = 'C'#243'digo:'
      ElementID = 'lbLabel'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      ExplicitLeft = -6
    end
    object edtCodigo: TWebEdit
      Left = 42
      Top = 0
      Width = 121
      Height = 33
      Align = alLeft
      ChildOrder = 1
      ElementID = 'edtId'
      HeightPercent = 100.000000000000000000
      Text = '50'
      WidthPercent = 100.000000000000000000
      ExplicitLeft = 48
    end
    object btnGetNome: TWebButton
      Left = 163
      Top = 0
      Width = 96
      Height = 33
      Align = alLeft
      Caption = 'GetNome'
      ChildOrder = 2
      ElementID = 'btnGetNome'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnGetNomeClick
      ExplicitLeft = 157
    end
    object btnGet: TWebButton
      Left = 259
      Top = 0
      Width = 96
      Height = 33
      Align = alLeft
      Caption = 'Get'
      ChildOrder = 3
      ElementID = 'btnGet'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      ExplicitLeft = 265
    end
  end
  object mmTeste: TWebMemo
    Left = 232
    Top = 229
    Width = 321
    Height = 132
    ElementID = 'mmTeste'
    HeightPercent = 100.000000000000000000
    Lines.Strings = (
      'mmTeste')
    SelLength = 0
    SelStart = 0
    WidthPercent = 100.000000000000000000
  end
  object XDataWebConnection1: TXDataWebConnection
    URL = 'http://localhost:8000/tms/xdata'
    Connected = True
    Left = 96
    Top = 16
  end
  object XDataWebClient1: TXDataWebClient
    Connection = XDataWebConnection1
    Left = 240
    Top = 16
  end
  object XDataWebDataSet1: TXDataWebDataSet
    Connection = XDataWebConnection1
    Left = 360
    Top = 16
  end
  object WebDataSource1: TWebDataSource
    DataSet = XDataWebDataSet1
    Left = 488
    Top = 16
  end
end
