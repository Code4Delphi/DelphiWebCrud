unit XData.DM;

interface

uses
  System.SysUtils,
  System.Classes,
  Sparkle.HttpServer.Module,
  Sparkle.HttpServer.Context,
  XData.Server.Module,
  Sparkle.Comp.Server,
  Sparkle.Comp.HttpSysDispatcher,
  XData.Comp.Server, Sparkle.Comp.CompressMiddleware, Sparkle.Comp.CorsMiddleware;

type
  TXDataDM = class(TDataModule)
    XDataServer1: TXDataServer;
    SparkleHttpSysDispatcher1: TSparkleHttpSysDispatcher;
    XDataServer1CORS: TSparkleCorsMiddleware;
    XDataServer1Compress: TSparkleCompressMiddleware;
  private

  public

  end;

var
  XDataDM: TXDataDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
