unit ClientesServiceImplementation;

interface

uses
  System.SysUtils,
  System.StrUtils,
  System.Generics.Collections,
  Data.DB,
  FireDAC.Stan.Param,
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
    function List: TList<TCliente>;
    function Post(ACliente: TCliente): Integer;
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

function TClientesService.List: TList<TCliente>;
var
  LClienteObj: TCliente;
begin
  Result := TList<TCliente>.Create;

  FDM.QClientes.Close;
  FDM.QClientes.SQL.Text := 'select * from clientes';
  FDM.QClientes.Open;

  if FDM.QClientes.IsEmpty then
    Exit;

  FDM.QClientes.First;
  while not FDM.QClientes.Eof do
  begin
    LClienteObj := TCliente.Create;
    LClienteObj.Id := FDM.QClientesid.AsInteger;
    LClienteObj.IdCidade := FDM.QClientesid_cidade.AsInteger;
    LClienteObj.Nome := FDM.QClientesnome.AsString;
    LClienteObj.Profissao := FDM.QClientesprofissao.AsString;
    LClienteObj.Limite := FDM.QClienteslimite.AsFloat;
    LClienteObj.Porcentagem := FDM.QClientesporcentagem.AsInteger;
    LClienteObj.Ativo := FDM.QClientesativo.AsString = 'S';

    Result.Add(LClienteObj);

    FDM.QClientes.Next;
  end;
end;

function TClientesService.Post(ACliente: TCliente): Integer;
begin
  FDM.QClientes.SQL.Text := 'select * from clientes where 1 = 2';
  FDM.QClientes.Open;

  FDM.QClientes.Append;
  FDM.QClientesid_cidade.AsInteger := ACliente.IdCidade;
  FDM.QClientesnome.AsString := ACliente.Nome;
  FDM.QClientesprofissao.AsString := ACliente.Profissao;
  FDM.QClienteslimite.AsFloat := ACliente.Limite;
  FDM.QClientesporcentagem.AsInteger := ACliente.Porcentagem;
  FDM.QClientesativo.AsString := IfThen(ACliente.Ativo, 'S', 'N');
  FDM.QClientes.Post;

  Result := FDM.QClientesid.AsInteger;
end;

initialization
  RegisterServiceType(TClientesService);

end.
