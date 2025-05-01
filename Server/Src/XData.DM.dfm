object XDataDM: TXDataDM
  Height = 242
  Width = 303
  object XDataServer1: TXDataServer
    BaseUrl = 'http://+:8000/tms/xdata'
    Dispatcher = SparkleHttpSysDispatcher1
    EntitySetPermissions = <>
    SwaggerOptions.Enabled = True
    SwaggerUIOptions.Enabled = True
    Left = 128
    Top = 120
    object XDataServer1CORS: TSparkleCorsMiddleware
    end
    object XDataServer1Compress: TSparkleCompressMiddleware
    end
    object XDataServer1JWT: TSparkleJwtMiddleware
      ForbidAnonymousAccess = True
      OnGetSecretEx = XDataServer1JWTGetSecretEx
    end
  end
  object SparkleHttpSysDispatcher1: TSparkleHttpSysDispatcher
    Left = 128
    Top = 48
  end
end
