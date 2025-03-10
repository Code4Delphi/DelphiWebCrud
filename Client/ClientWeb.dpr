program ClientWeb;

uses
  Vcl.Forms,
  WEBLib.Forms,
  Login.View in 'Src\Login.View.pas' {LoginView: TWebForm} {*.html},
  Main.View in 'Src\Main.View.pas' {MainView: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLoginView, LoginView);
  Application.Run;
end.
