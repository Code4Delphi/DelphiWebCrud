unit Clientes.Entity;

interface

type
  TCliente = class
  private
    FId: Integer;
    FIdCidade: Integer;
    FNome: string;
    FProfissao: string;
    FLimite: Double;
    FPorcentagem: Integer;
    FAtivo: Boolean;
  public
    property Id: Integer read FId write FId;
    property IdCidade: Integer read FIdCidade write FIdCidade;
    property Nome: string read FNome write FNome;
    property Profissao: string read FProfissao write FProfissao;
    property Limite: Double read FLimite write FLimite;
    property Porcentagem: Integer read FPorcentagem write FPorcentagem;
    property Ativo: Boolean read FAtivo write FAtivo;
  end;

implementation

end.
