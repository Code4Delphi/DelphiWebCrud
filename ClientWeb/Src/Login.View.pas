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
  Vcl.Controls,
  Vcl.StdCtrls,
  WEBLib.StdCtrls,
  Main.View;

type
  TLoginView = class(TWebForm)
    WebLabel1: TWebLabel;
    edtLogin: TWebEdit;
    edtSenha: TWebEdit;
    btnEntrar: TWebButton;
    ckLembrarMe: TWebCheckBox;
    procedure btnEntrarClick(Sender: TObject);
    procedure WebFormShow(Sender: TObject);
    procedure edtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure WebFormCreate(Sender: TObject);
  private

  public

  end;

var
  LoginView: TLoginView;

implementation

{$R *.dfm}

procedure TLoginView.WebFormCreate(Sender: TObject);
begin
  Application.ThemeColor := clGrayText;
  Application.Themed := True;
end;

procedure TLoginView.WebFormShow(Sender: TObject);
begin
  edtLogin.SetFocus;
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