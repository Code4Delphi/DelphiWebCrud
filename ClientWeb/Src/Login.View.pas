unit Login.View;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  Main.View;

type
  TLoginView = class(TWebForm)
    WebLabel1: TWebLabel;
    edtLogin: TWebEdit;
    edtSenha: TWebEdit;
    WebButton1: TWebButton;
    ckLembrarMe: TWebCheckBox;
    procedure WebButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginView: TLoginView;

implementation

{$R *.dfm}

procedure TLoginView.WebButton1Click(Sender: TObject);
begin
  if edtLogin.Text <> 'admin' then
  begin
    ShowMessage('Login inválido');
    edtLogin.SetFocus;
    Exit;
  end;

  if edtSenha.Text <> 'admin' then
  begin
    ShowMessage('Senha inválido');
    edtSenha.SetFocus;
    Exit;
  end;

  MainView := TMainView.CreateNew;
  MainView.ShowModal;
end;

end.