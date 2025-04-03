unit Clientes.Cadastrar.View;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.StdCtrls, Vcl.StdCtrls;

type
  TClientesCadastrarView = class(TWebForm)
    ckAtivo: TWebCheckBox;
    lbNome: TWebLabel;
    btnGravar: TWebButton;
    btnLimpar: TWebButton;
    edtNome: TWebEdit;
    lbCodigo: TWebLabel;
    edtProfissao: TWebEdit;
    lbProfissao: TWebLabel;
    lbIdCidade: TWebLabel;
    edtCodigo: TWebEdit;
    lbLimite: TWebLabel;
    lbPorcentagem: TWebLabel;
    edtPorcentagem: TWebSpinEdit;
    edtLimite: TWebSpinEdit;
    edtIdCidade: TWebSpinEdit;
    lbAtivo: TWebLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure WebFormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    procedure LimparTela;
  public

  end;

var
  ClientesCadastrarView: TClientesCadastrarView;

implementation

{$R *.dfm}

procedure TClientesCadastrarView.WebFormShow(Sender: TObject);
begin
  Self.LimparTela;
end;

procedure TClientesCadastrarView.btnGravarClick(Sender: TObject);
begin
  if Trim(edtIdCidade.Text).IsEmpty then
  begin
    ShowMessage('Campo obrigatorio, id cidade');
    edtIdCidade.SetFocus;
    Exit;
  end;

  if Trim(edtNome.Text).IsEmpty then
  begin
    ShowMessage('Campo obrigatorio, nome');
    edtNome.SetFocus;
    Exit;
  end;

  Self.Close;
end;

procedure TClientesCadastrarView.btnLimparClick(Sender: TObject);
begin
  Self.LimparTela;
end;

procedure TClientesCadastrarView.LimparTela;
begin
  edtNome.Text := '';
  edtProfissao.Text := '';
  edtCodigo.Text := '';
  edtPorcentagem.Value := 0;
  edtLimite.Value := 0;
  edtIdCidade.Value := 0;
  ckAtivo.Checked := False;
end;

end.