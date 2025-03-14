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
  WEBLib.StdCtrls,
  VCL.TMSFNCTypes,
  VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes,
  System.Rtti,
  VCL.TMSFNCDataGridCell,
  VCL.TMSFNCDataGridData,
  VCL.TMSFNCDataGridBase,
  VCL.TMSFNCDataGridCore,
  VCL.TMSFNCDataGridRenderer,
  VCL.TMSFNCCustomControl,
  VCL.TMSFNCDataGrid,
  WEBLib.ExtCtrls,
  WEBLib.WebCtrls,
  VCL.TMSFNCCustomComponent,
  VCL.TMSFNCDataGridDatabaseAdapter,
  Data.DB,
  WEBLib.DB,
  XData.Web.JsonDataset,
  XData.Web.Dataset,
  XData.Web.Client,
  XData.Web.Connection;

type
  TMainView = class(TWebForm)
    aError: TWebLabel;
    aWarning: TWebLabel;
    aInformation: TWebLabel;
    aConfirmation: TWebLabel;
    aCustom: TWebLabel;
    XDataWebConnection1: TXDataWebConnection;
    XDataWebClient1: TXDataWebClient;
    XDataWebDataSet1: TXDataWebDataSet;
    WebDataSource1: TWebDataSource;
    TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter;
    pnBotoes: TWebPanel;
    btnGetNome: TWebButton;
    btnList01: TWebButton;
    btnList02: TWebButton;
    btnList03: TWebButton;
    XDataWebDataSet1Id: TIntegerField;
    XDataWebDataSet1Nome: TStringField;
    XDataWebDataSet1Profissao: TStringField;
    XDataWebDataSet1Limite: TFloatField;
    XDataWebDataSet1Porcentagem: TIntegerField;
    XDataWebDataSet1Ativo: TStringField;
    TMSFNCDataGrid1: TTMSFNCDataGrid;
    procedure aWarningClick(Sender: TObject);
    procedure aErrorClick(Sender: TObject);
    procedure aInformationClick(Sender: TObject);
    procedure aConfirmationClick(Sender: TObject);
    procedure aCustomClick(Sender: TObject);
    procedure btnGetNomeClick(Sender: TObject);
    procedure XDataWebClient1Error(Error: TXDataClientError);
    procedure btnList01Click(Sender: TObject);
     [Async]
    procedure btnList02Click(Sender: TObject);
    procedure TMSFNCDataGrid1GetCellLayout(Sender: TObject; ACell: TTMSFNCDataGridCell);
  private
    procedure SuccessProcGetNome(Response: TXDataClientResponse);
  public

  end;

var
  MainView: TMainView;

implementation

{$R *.dfm}

procedure TMainView.aWarningClick(Sender: TObject);
begin
  MessageDlg('Mensagem mtWarning', mtWarning, []);
end;

procedure TMainView.aErrorClick(Sender: TObject);
begin
  MessageDlg('Mensagem mtError', mtError, []);
end;

procedure TMainView.aInformationClick(Sender: TObject);
begin
  MessageDlg('Mensagem mtInformation', mtInformation, []);
end;

procedure TMainView.aConfirmationClick(Sender: TObject);
begin
  MessageDlg('Mensagem mtConfirmation', mtConfirmation, [mbYes, mbNo, mbCancel]);
end;

procedure TMainView.aCustomClick(Sender: TObject);
begin
  MessageDlg('Mensagem mtCustom', mtCustom, [mbAbort, mbRetry, mbClose]);
end;

procedure TMainView.TMSFNCDataGrid1GetCellLayout(Sender: TObject; ACell: TTMSFNCDataGridCell);
begin
  ACell.Layout.Font.Color := clWindow;
  ACell.Layout.Fill.Color := $0035302B;
  if (ACell.Row mod 2) = 0 then
    ACell.Layout.Fill.Color := $00403A34;

  //SE LINHA OU COLUNA FIXADA
  if (ACell.Row < TMSFNCDataGrid1.FixedRowCount) or (ACell.Column < TMSFNCDataGrid1.FixedColumnCount) then
  begin
    ACell.Layout.Font.Color := clBlack; //clHotLight
    ACell.Layout.Font.Style := [TFontStyle.fsBold];
  end;
end;


procedure TMainView.btnGetNomeClick(Sender: TObject);
begin
  XDataWebClient1.RawInvoke('IClientesService.GetNome', [4],
    procedure(Response: TXDataClientResponse)
    begin
      btnGetNome.Caption := TJSJson.stringify(Response.Result);
    end
  );
end;

procedure TMainView.SuccessProcGetNome(Response: TXDataClientResponse);
begin
  btnGetNome.Caption := TJSJson.stringify(Response.Result);
end;
procedure TMainView.XDataWebClient1Error(Error: TXDataClientError);
begin
  MessageDlg(Format('%s. RequestId: %s. Code: %s. Request Url: %s',
    [Error.ErrorMessage, Error.RequestId, Error.ErrorCode, Error.RequestUrl]),  mtError, []);
end;

procedure TMainView.btnList01Click(Sender: TObject);
  procedure OnSuccess(Response: TXDataClientResponse);
  begin
    XDataWebDataset1.Close;
    XDataWebDataset1.SetJsonData(TJSObject(Response.Result)['value']);
    XDataWebDataset1.Open;
  end;
begin
  XDataWebClient1.RawInvoke('IClientesService.List', [], @OnSuccess);
end;

procedure TMainView.btnList02Click(Sender: TObject);
var
  LResponse: TXDataClientResponse;
begin
  LResponse := await(XDataWebClient1.RawInvokeAsync('IClientesService.List', []));
  XDataWebDataSet1.Close;
  XDataWebDataset1.SetJsonData(TJSObject(LResponse.Result)['value']);
  XDataWebDataset1.Open;
end;

end.
