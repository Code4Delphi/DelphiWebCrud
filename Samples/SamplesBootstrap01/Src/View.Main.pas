unit View.Main;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.StdCtrls, WEBLib.StdCtrls, Vcl.Controls;

type
  TForm1 = class(TWebForm)
    ativo: TWebCheckBox;
    sexo: TWebComboBox;
    salario: TWebSpinEdit;
    btnNome: TWebEdit;
    btnSalvar: TWebButton;
    lbTitulo: TWebLabel;
    WebLabel1: TWebLabel;
    procedure ativoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ativoClick(Sender: TObject);
begin
  ShowMessage('Click');
end;

procedure TForm1.btnSalvarClick(Sender: TObject);
begin
  if btnNome.Text = '' then
  begin
    ShowMessage('Preencha o nome');
    Exit;
  end;

  ShowMessage('ok');
end;

end.
