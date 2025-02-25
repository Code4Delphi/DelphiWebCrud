unit ClientesServiceImplementation;

interface

uses
  System.SysUtils,
  XData.Server.Module,
  XData.Service.Common,
  ClientesService,
  Database.DM;

type
  [ServiceImplementation]
  TClientesService = class(TInterfacedObject, IClientesService)
  private
    FDM: TDatabaseDM;
    function GetNome(Id: Integer): string;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TClientesService.Create;
begin
  FDM := TDatabaseDM.Create(nil);
end;

destructor TClientesService.Destroy;
begin
  FDM.Free;
  inherited;
end;

function TClientesService.GetNome(Id: Integer): string;
begin
  FDM.QClientes.Close;
  FDM.QClientes.SQL.Text := 'select * from clientes where id = :ID';
  FDM.QClientes.ParamByName('ID').AsInteger := Id;
  FDM.QClientes.Open;

  if FDM.QClientes.IsEmpty then
    raise Exception.Create('Cliente não encontrado');

  Result := FDM.QClientesnome.AsString;
end;

initialization
  RegisterServiceType(TClientesService);

end.
