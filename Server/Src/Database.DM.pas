unit Database.DM;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Phys.SQLiteWrapper.Stat,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDatabaseDM = class(TDataModule)
    FDConnection1: TFDConnection;
    QClientes: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    QClientesid: TFDAutoIncField;
    QClientesid_cidade: TIntegerField;
    QClientesnome: TWideStringField;
    QClientesprofissao: TWideStringField;
    QClienteslimite: TFloatField;
    QClientesporcentagem: TIntegerField;
    QClientesativo: TWideStringField;
  private

  public

  end;

var
  DatabaseDM: TDatabaseDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
