program ServerAuth;

uses
  Vcl.Forms,
  ServerAuth.Main.View in 'Src\ServerAuth.Main.View.pas' {ServerAuthMainView},
  ServerAuth.XData.DM in 'Src\ServerAuth.XData.DM.pas' {ServerAuthXDataDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServerAuthXDataDM, ServerAuthXDataDM);
  Application.CreateForm(TServerAuthMainView, ServerAuthMainView);
  Application.Run;
end.
