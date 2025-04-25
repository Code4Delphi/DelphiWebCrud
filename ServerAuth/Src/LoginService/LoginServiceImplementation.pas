unit LoginServiceImplementation;

interface

uses
  System.SysUtils,
  XData.Server.Module,
  XData.Service.Common,
  LoginService,
  Bcl.JOSE.Core.Builder,
  Bcl.Jose.Core.JWA,
  Bcl.JOSE.Core.JWT,
  Bcl.JOSE.Core.JWK;

type
  [ServiceImplementation]
  TLoginService = class(TInterfacedObject, ILoginService)
  private
    function Login(const User, Password: string): string;
  end;

implementation

function TLoginService.Login(const User, Password: string): string;
var
  JWT: TJWT;
begin
  if (User <> 'admin') or (Password <> 'admin') then
    raise Exception.Create('Usuário ou senha inválidos');

  JWT := TJWT.Create;
  try
    //CLAIMS RESERVADAS
    JWT.Claims.Issuer := 'Code4Delphi';
    JWT.Claims.Subject := '123';
    JWT.Claims.Expiration := Now + 100;

    //MINHAS CLAIMS
    JWT.Claims.SetClaimOfType<string>('usuario', User);
    JWT.Claims.SetClaimOfType<Boolean>('admin', True);
    JWT.Claims.SetClaimOfType<string>('teste', 'asdf');

    Result := TJOSE.SHA256CompactToken('sua-chave-secreta', JWT);
  finally
    JWT.Free;
  end;
end;

initialization
  RegisterServiceType(TLoginService);

end.
