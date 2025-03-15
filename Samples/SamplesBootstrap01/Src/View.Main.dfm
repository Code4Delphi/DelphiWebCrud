object Form1: TForm1
  Width = 640
  Height = 480
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  object lbTitulo: TWebLabel
    Left = 168
    Top = 56
    Width = 174
    Height = 18
    Caption = 'Informe o nome do cliente'
    ElementID = 'lbTitulo'
    ElementFont = efCSS
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel1: TWebLabel
    Left = 168
    Top = 88
    Width = 39
    Height = 18
    Caption = 'Nome'
    ElementID = 'lbNome'
    ElementFont = efCSS
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object ativo: TWebCheckBox
    Left = 168
    Top = 160
    Width = 96
    Height = 25
    Caption = 'ativo'
    ElementButtonClassName = 'custom-control-input'
    ElementLabelClassName = 'custom-control-label'
    ElementID = 'ckAtivo'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
    OnClick = ativoClick
  end
  object sexo: TWebComboBox
    Left = 168
    Top = 272
    Width = 96
    Height = 26
    ElementID = 'cBoxSexo'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    Text = 'sexo'
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
    ItemIndex = -1
    Items.Strings = (
      'Masculino'
      'Femenmino'
      'Outros'
      'Op'#231#227'o 4')
  end
  object salario: TWebSpinEdit
    Left = 168
    Top = 216
    Width = 96
    Height = 24
    ElementID = 'edtSalario'
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    AutoSize = False
    BorderStyle = bsSingle
    ChildOrder = 2
    Color = clWhite
    ElementFont = efCSS
    ElementPosition = epIgnore
    Increment = 1
    MaxValue = 100
    MinValue = 0
    Role = ''
    Value = 0
  end
  object btnNome: TWebEdit
    Left = 168
    Top = 112
    Width = 185
    Height = 26
    ChildOrder = 3
    ElementID = 'edtNome'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
  object btnSalvar: TWebButton
    Left = 168
    Top = 328
    Width = 96
    Height = 25
    Caption = 'Salvar'
    ChildOrder = 4
    ElementClassName = 'btn btn-success'
    ElementID = 'btnEnviar'
    ElementFont = efCSS
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnSalvarClick
  end
end
