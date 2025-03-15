program DelphiWebSample01;

uses
  Vcl.Forms,
  WEBLib.Forms,
  View.Main in 'Src\View.Main.pas' {Form1: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
