object LoginView: TLoginView
  Width = 618
  Height = 467
  OnCreate = WebFormCreate
  OnShow = WebFormShow
  object WebLabel1: TWebLabel
    Left = 224
    Top = 59
    Width = 123
    Height = 15
    Caption = 'Usu'#225'rio e senha: admin'
    ElementID = 'pTitulo'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object btnEntrar: TWebButton
    Left = 240
    Top = 248
    Width = 96
    Height = 25
    Caption = 'Entrar'
    ChildOrder = 3
    ElementID = 'btnEntrar'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnEntrarClick
  end
  object edtLogin: TWebEdit
    Left = 224
    Top = 128
    Width = 121
    Height = 22
    ChildOrder = 1
    ElementID = 'edtLogin'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnKeyPress = edtLoginKeyPress
  end
  object edtSenha: TWebEdit
    Left = 224
    Top = 180
    Width = 121
    Height = 22
    ChildOrder = 2
    ElementID = 'edtSenha'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnKeyPress = edtSenhaKeyPress
  end
  object ckLembreMe: TWebCheckBox
    Left = 240
    Top = 208
    Width = 113
    Height = 22
    Caption = 'Lembrar'
    ChildOrder = 4
    ElementID = 'flexCheckDefault'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
end
