program ClientWeb;

uses
  Vcl.Forms,
  WEBLib.Forms,
  Login.View in 'Src\Login.View.pas' {LoginView: TWebForm} {*.html},
  Main.View in 'Src\Main.View.pas' {MainView: TWebForm} {*.html},
  teste in 'Src\teste.pas' {Form1: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLoginView, LoginView);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
