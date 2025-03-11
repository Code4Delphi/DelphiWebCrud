unit Login.View;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  Main.View;

type
  TLoginView = class(TWebForm)
    WebLabel1: TWebLabel;
    btnEntrar: TWebButton;
    edtUsuario: TWebEdit;
    edtSenha: TWebEdit;
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginView: TLoginView;

implementation

{$R *.dfm}

procedure TLoginView.btnEntrarClick(Sender: TObject);
begin
  if edtUsuario.Text <> 'admin' then
  begin
    ShowMessage('Login inválido');
    edtUsuario.SetFocus;
    Exit;
  end;

  if edtSenha.Text <> 'admin' then
  begin
    ShowMessage('Senha inválida');
    edtSenha.SetFocus;
    Exit;
  end;

  MainView := TMainView.CreateNew;
  MainView.ShowModal;
end;

end.
