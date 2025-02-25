unit ClientesService;

interface

uses
  XData.Service.Common;

type
  [ServiceContract]
  IClientesService = interface(IInvokable)
    ['{FE08D43F-BE21-4A77-B400-1485A85CB091}']
    [HttpGet]
    function GetNome(Id: Integer): string;
  end;

implementation

initialization
  RegisterServiceType(TypeInfo(IClientesService));

end.
