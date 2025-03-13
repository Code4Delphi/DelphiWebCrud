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
  edtLogin.SetFocus ;
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
    MessageDlg('Login inválido', mtWarning, []);
    edtLogin.SetFocus;
    Exit;
  end;

  if edtSenha.Text <> 'admin' then
  begin
    MessageDlg('Senha inválida', mtWarning, []);
    edtSenha.SetFocus;
    Exit;
  end; }

  LMainView := TMainView.CreateNew;
  LMainView.ShowModal;
end;

end.