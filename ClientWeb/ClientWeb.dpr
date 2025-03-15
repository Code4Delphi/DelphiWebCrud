program ClientWeb;



{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  Main.View in 'Src\Main.View.pas' {MainView: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainView, MainView);
  Application.Run;
end.
