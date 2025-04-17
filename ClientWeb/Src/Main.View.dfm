object MainView: TMainView
  Width = 1237
  Height = 743
  Caption = 'Delphi Web - Home'
  OnCreate = WebFormCreate
  object WebLabel1: TWebLabel
    Left = 1055
    Top = 152
    Width = 119
    Height = 15
    Caption = 'C'#233'sar Cardoso Logado'
    ElementID = 'lbUsuarioLogado'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lbImportant: TWebLabel
    Left = 24
    Top = 280
    Width = 63
    Height = 15
    Caption = 'lbImportant'
    ElementID = 'lbImportant'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = lbImportantClick
  end
  object lbWarning: TWebLabel
    Left = 32
    Top = 320
    Width = 55
    Height = 15
    Caption = 'lbWarning'
    ElementID = 'lbWarning'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = lbWarningClick
  end
  object lbInformational: TWebLabel
    Left = 24
    Top = 360
    Width = 82
    Height = 15
    Caption = 'lbInformational'
    ElementID = 'lbInformational'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = lbInformationalClick
  end
  object WebMessageDlg1: TWebMessageDlg
    Left = 584
    Top = 31
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
    Left = 270
    Top = 304
    Width = 916
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
      ExplicitTop = 1
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
      OnClick = btnGetClick
    end
    object btnListar: TWebButton
      Left = 355
      Top = 0
      Width = 96
      Height = 33
      Align = alLeft
      Caption = 'Listar'
      ChildOrder = 4
      ElementID = 'btnListar'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnListarClick
    end
    object btnPost: TWebButton
      Left = 451
      Top = 0
      Width = 136
      Height = 33
      Align = alLeft
      Caption = 'Cadastrar / Post '
      ChildOrder = 1
      ElementID = 'btnPost'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnPostClick
    end
    object btnAlterar: TWebButton
      Left = 587
      Top = 0
      Width = 136
      Height = 33
      Align = alLeft
      Caption = 'Alterar / PUT'
      ChildOrder = 1
      ElementID = 'btnAlterar'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnAlterarClick
    end
    object btnDelete: TWebButton
      Left = 723
      Top = 0
      Width = 136
      Height = 33
      Align = alLeft
      Caption = 'Delete'
      ChildOrder = 1
      ElementID = 'btnDelete'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = btnDeleteClick
    end
  end
  object mmTeste: TWebMemo
    Left = 270
    Top = 340
    Width = 321
    Height = 132
    ElementID = 'mmTeste'
    HeightPercent = 100.000000000000000000
    SelLength = 0
    SelStart = 0
    WidthPercent = 100.000000000000000000
  end
  object XDataWebConnection1: TXDataWebConnection
    URL = 'http://localhost:8000/tms/xdata'
    Left = 96
    Top = 16
  end
  object XDataWebClient1: TXDataWebClient
    Connection = XDataWebConnection1
    OnError = XDataWebClient1Error
    Left = 240
    Top = 16
  end
  object XDataWebDataSet1: TXDataWebDataSet
    Connection = XDataWebConnection1
    Left = 360
    Top = 16
    object XDataWebDataSet1Id: TIntegerField
      FieldName = 'Id'
    end
    object XDataWebDataSet1IdCidade: TIntegerField
      FieldName = 'IdCidade'
    end
    object XDataWebDataSet1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object XDataWebDataSet1Profissao: TStringField
      FieldName = 'Profissao'
      Size = 50
    end
    object XDataWebDataSet1Limite: TFloatField
      FieldName = 'Limite'
    end
    object XDataWebDataSet1Porcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object XDataWebDataSet1Ativo: TBooleanField
      FieldName = 'Ativo'
    end
  end
  object WebDataSource1: TWebDataSource
    DataSet = XDataWebDataSet1
    Left = 488
    Top = 16
  end
end
