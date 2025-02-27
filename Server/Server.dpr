program Server;

uses
  Vcl.Forms,
  Server.Main.View in 'Src\Server.Main.View.pas' {ServerMainView},
  XData.DM in 'Src\XData.DM.pas' {XDataDM: TDataModule},
  ClientesService in 'Src\Clientes\ClientesService.pas',
  ClientesServiceImplementation in 'Src\Clientes\ClientesServiceImplementation.pas',
  Database.DM in 'Src\Database.DM.pas' {DatabaseDM: TDataModule},
  Clientes.Entity in 'Src\Clientes\Clientes.Entity.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TXDataDM, XDataDM);
  Application.CreateForm(TDatabaseDM, DatabaseDM);
  Application.CreateForm(TServerMainView, ServerMainView);
  Application.Run;
end.
