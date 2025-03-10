object LoginView: TLoginView
  Width = 640
  Height = 480
  object WebLabel1: TWebLabel
    Left = 144
    Top = 67
    Width = 83
    Height = 15
    Caption = 'Acessar sistema'
    ElementID = 'pTitulo'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel2: TWebLabel
    Left = 144
    Top = 119
    Width = 30
    Height = 15
    Caption = 'Login'
    ElementID = 'lbLogin'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel3: TWebLabel
    Left = 144
    Top = 172
    Width = 32
    Height = 15
    Caption = 'Senha'
    ElementID = 'lbSenha'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object btnEntrar: TWebButton
    Left = 144
    Top = 240
    Width = 96
    Height = 25
    Caption = 'Entrar'
    ChildOrder = 3
    ElementID = 'btnEntrar'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnEntrarClick
  end
  object edtUsuario: TWebEdit
    Left = 144
    Top = 136
    Width = 121
    Height = 22
    ChildOrder = 1
    ElementID = 'edtUsuario'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object edtSenha: TWebEdit
    Left = 144
    Top = 188
    Width = 121
    Height = 22
    ChildOrder = 2
    ElementID = 'edtSenha'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
end
