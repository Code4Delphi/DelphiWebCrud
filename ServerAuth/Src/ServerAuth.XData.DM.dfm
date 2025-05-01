object ServerAuthXDataDM: TServerAuthXDataDM
  Height = 480
  Width = 640
  object SparkleHttpSysDispatcher1: TSparkleHttpSysDispatcher
    Left = 136
    Top = 80
  end
  object XDataServer1: TXDataServer
    BaseUrl = 'http://+:2001/tms/auth'
    Dispatcher = SparkleHttpSysDispatcher1
    EntitySetPermissions = <>
    SwaggerOptions.Enabled = True
    SwaggerUIOptions.Enabled = True
    Left = 136
    Top = 144
  end
end
