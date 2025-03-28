unit Main.View;

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
  WEBLib.StdCtrls, WEBLib.ExtCtrls, Data.DB, XData.Web.JsonDataset, XData.Web.Dataset, XData.Web.Client,
  XData.Web.Connection, WEBLib.DB;

type
  TMainView = class(TWebForm)
    WebLabel1: TWebLabel;
    lbImportant: TWebLabel;
    lbWarning: TWebLabel;
    lbInformational: TWebLabel;
    WebMessageDlg1: TWebMessageDlg;
    WebPanel1: TWebPanel;
    lbCodigo: TWebLabel;
    edtCodigo: TWebEdit;
    btnGetNome: TWebButton;
    btnGet: TWebButton;
    XDataWebConnection1: TXDataWebConnection;
    XDataWebClient1: TXDataWebClient;
    XDataWebDataSet1: TXDataWebDataSet;
    mmTeste: TWebMemo;
    WebDataSource1: TWebDataSource;
    XDataWebDataSet1Id: TIntegerField;
    XDataWebDataSet1IdCidade: TIntegerField;
    XDataWebDataSet1Nome: TStringField;
    XDataWebDataSet1Profissao: TStringField;
    XDataWebDataSet1Limite: TFloatField;
    XDataWebDataSet1Porcentagem: TFloatField;
    XDataWebDataSet1Ativo: TStringField;
    procedure lbImportantClick(Sender: TObject);
    [Async]
    procedure lbWarningClick(Sender: TObject);
    procedure lbInformationalClick(Sender: TObject);
    [Async]
    procedure btnGetNomeClick(Sender: TObject);
    procedure WebFormCreate(Sender: TObject);
    [Async]
    procedure btnGetClick(Sender: TObject);
  private

  public

  end;

var
  MainView: TMainView;

implementation

{$R *.dfm}

procedure TMainView.lbImportantClick(Sender: TObject);
begin
  //MessageDlg('Minha mensagem', mtError, []);

  WebMessageDlg1.ShowDialog('Minha menagem componente', mtWarning, []);
end;

procedure TMainView.lbWarningClick(Sender: TObject);
var
  LResult: TModalResult;
begin
  LResult := await(TModalResult, MessageDlgAsync('Pergunta com await?', mtConfirmation, [mbYes, mbNo]));

  if LResult = mrYes then
    ShowMessage('Respondeu sim')
  else
    ShowMessage('Respondeu não');
end;

procedure TMainView.WebFormCreate(Sender: TObject);
begin
  XDataWebConnection1.Open;
end;

procedure TMainView.lbInformationalClick(Sender: TObject);
begin
  MessageDlg('Minha pergunta?', mtConfirmation, [mbYes, mbNo],
    procedure(AValue: TModalResult)
    begin
      if AValue = mrYes then
        ShowMessage('Clicou em sim')
      else
        ShowMessage('Clicou em não');
    end);
end;

procedure TMainView.btnGetNomeClick(Sender: TObject);
var
  LResponse: TXDataClientResponse;
begin
  LResponse := TAwait.Exec<TXDataClientResponse>(
    XDataWebClient1.RawInvokeAsync('IClientesService.GetNome', [StrToIntDef(edtCodigo.Text, 0)]));

  mmTeste.Lines.Add(LResponse.ResponseText);
end;

procedure TMainView.btnGetClick(Sender: TObject);
var
  LResponse: TXDataClientResponse;
begin
  LResponse := TAwait.Exec<TXDataClientResponse>(
    XDataWebClient1.RawInvokeAsync('IClientesService.Get', [StrToIntDef(edtCodigo.Text, 0)]));

  XDataWebDataSet1.Close;
  XDataWebDataSet1.SetJsonData(LResponse.Result);
  XDataWebDataSet1.Open;

  mmTeste.Lines.Add(XDataWebDataSet1Id.AsString + ' - ' +
    XDataWebDataSet1Nome.AsString + ' - ' + XDataWebDataSet1Profissao.AsString);
end;


end.
