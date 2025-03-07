unit ClientesService;

interface

uses
  System.Generics.Collections,
  XData.Service.Common,
  Clientes.DTO;

type
  [ServiceContract]
  IClientesService = interface(IInvokable)
    ['{FE08D43F-BE21-4A77-B400-1485A85CB091}']
    [HttpGet]
    function GetNome(Id: Integer): string;
    [HttpGet, Route('{Id}')]
    function Get(const Id: Integer): TCliente;
    [HttpGet, Route('')]
    function List: TList<TCliente>;
    [HttpPost, Route('')]
    function Post(ACliente: TCliente): Integer;
    [HttpPut, Route('{id}')]
    procedure Update(Id: Integer; ACliente: TCliente);
    [HttpDelete, Route('{id}')]
    procedure Delete(Id: Integer);
  end;

implementation

initialization
  RegisterServiceType(TypeInfo(IClientesService));

end.
