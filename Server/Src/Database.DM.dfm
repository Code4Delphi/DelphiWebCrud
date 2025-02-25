object DatabaseDM: TDatabaseDM
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Code4D\Cursos\DelphiWebCrud\DB\Code4DTeste.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 144
    Top = 72
  end
  object QClientes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select *from clientes')
    Left = 272
    Top = 72
    object QClientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object QClientesid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      Required = True
    end
    object QClientesnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object QClientesprofissao: TWideStringField
      FieldName = 'profissao'
      Origin = 'profissao'
      Size = 60
    end
    object QClienteslimite: TFloatField
      FieldName = 'limite'
      Origin = 'limite'
    end
    object QClientesporcentagem: TIntegerField
      FieldName = 'porcentagem'
      Origin = 'porcentagem'
    end
    object QClientesativo: TWideStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      Size = 1
    end
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 152
    Top = 176
  end
end
