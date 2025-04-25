object ServerAuthXDataDM: TServerAuthXDataDM
  Height = 480
  Width = 640
  object SparkleHttpSysDispatcher1: TSparkleHttpSysDispatcher
    Active = True
    Left = 136
    Top = 80
  end
  object XDataServer1: TXDataServer
    BaseUrl = 'http://+:2001/tms/auth'
    Dispatcher = SparkleHttpSysDispatcher1
    EntitySetPermissions = <>
    Left = 136
    Top = 144
  end
end
