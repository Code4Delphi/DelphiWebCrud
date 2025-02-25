object XDataDM: TXDataDM
  Height = 508
  Width = 615
  object XDataServer1: TXDataServer
    BaseUrl = 'http://+:8000/tms/xdata'
    Dispatcher = SparkleHttpSysDispatcher1
    EntitySetPermissions = <>
    Left = 128
    Top = 120
  end
  object SparkleHttpSysDispatcher1: TSparkleHttpSysDispatcher
    Left = 128
    Top = 48
  end
end
