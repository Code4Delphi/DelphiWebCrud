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
  XData.Comp.Server,
  Sparkle.Comp.CompressMiddleware,
  Sparkle.Comp.CorsMiddleware, Sparkle.Comp.JwtMiddleware;

type
  TXDataDM = class(TDataModule)
    XDataServer1: TXDataServer;
    SparkleHttpSysDispatcher1: TSparkleHttpSysDispatcher;
    XDataServer1CORS: TSparkleCorsMiddleware;
    XDataServer1Compress: TSparkleCompressMiddleware;
    XDataServer1JWT: TSparkleJwtMiddleware;
    procedure XDataServer1JWTGetSecretEx(Sender: TObject; const JWT: TJWT; Context: THttpServerContext;
      var Secret: TBytes);
  private

  public

  end;

var
  XDataDM: TXDataDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TXDataDM.XDataServer1JWTGetSecretEx(Sender: TObject; const JWT: TJWT; Context: THttpServerContext;
  var Secret: TBytes);
begin
  Secret := TEncoding.UTF8.GetBytes('sua-chave-secreta-1234567890-12345');
end;

end.
