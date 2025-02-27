unit ClientesServiceImplementation;

interface

uses
  System.SysUtils,
  XData.Server.Module,
  XData.Service.Common,
  ClientesService,
  Database.DM,
  Clientes.Entity;

type
  [ServiceImplementation]
  TClientesService = class(TInterfacedObject, IClientesService)
  private
    FDM: TDatabaseDM;
    function GetNome(Id: Integer): string;
    function Get(const AId: Integer): TCliente;
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

function TClientesService.Get(const AId: Integer): TCliente;
begin
  FDM.QClientes.Close;
  FDM.QClientes.SQL.Text := 'select * from clientes where id = :ID';
  FDM.QClientes.ParamByName('ID').AsInteger := AId;
  FDM.QClientes.Open;

  if FDM.QClientes.IsEmpty then
    raise Exception.Create('Cliente não encontrado');

  Result := TCliente.Create;
  Result.Id := FDM.QClientesid.AsInteger;
  Result.IdCidade := FDM.QClientesid_cidade.AsInteger;
  Result.Nome := FDM.QClientesnome.AsString;
  Result.Profissao := FDM.QClientesprofissao.AsString;
  Result.Limite := FDM.QClienteslimite.AsFloat;
  Result.Porcentagem := FDM.QClientesporcentagem.AsInteger;
  Result.Ativo := FDM.QClientesativo.AsString = 'S';
end;

initialization
  RegisterServiceType(TClientesService);

end.
