unit Login.View;

interface

uses
  System.SysUtils,
  System.Classes,
  JS,
  Web,
  WEBLib.Graphics,
  WEBLib.Controls,
  WEBLib.Forms,
  WEBLib.Dialogs,
  Vcl.StdCtrls,
  WEBLib.StdCtrls,
  Vcl.Controls,
  Main.View;

type
  TLoginView = class(TWebForm)
    WebLabel1: TWebLabel;
    btnEntrar: TWebButton;
    edtLogin: TWebEdit;
    edtSenha: TWebEdit;
    ckLembreMe: TWebCheckBox;
    procedure edtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btnEntrarClick(Sender: TObject);
    procedure WebFormShow(Sender: TObject);
  private

  public

  end;

var
  LoginView: TLoginView;

implementation

{$R *.dfm}

procedure TLoginView.WebFormShow(Sender: TObject);
begin
  edtLogin.SetFocus
end;

procedure TLoginView.edtLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtSenha.SetFocus;
end;

procedure TLoginView.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnEntrar.Click;
end;

procedure TLoginView.btnEntrarClick(Sender: TObject);
var
  LMainView: TMainView;
begin
 { if edtLogin.Text <> 'admin' then
  begin
    ShowMessage('Login inválido');
    edtLogin.SetFocus;
    Exit;
  end;

  if edtSenha.Text <> 'admin' then
  begin
    ShowMessage('Senha inválida');
    edtSenha.SetFocus;
    Exit;
  end;    }

  LMainView := TMainView.CreateNew;
  LMainView.ShowModal;
end;

end.