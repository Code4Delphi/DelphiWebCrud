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
  VCL.TMSFNCDataGrid, WEBLib.ExtCtrls, WEBLib.WebCtrls, VCL.TMSFNCCustomComponent, VCL.TMSFNCDataGridDatabaseAdapter,
  Data.DB, WEBLib.DB, XData.Web.JsonDataset, XData.Web.Dataset, XData.Web.Client, XData.Web.Connection;

type
  TMainView = class(TWebForm)
    aError: TWebLabel;
    aWarning: TWebLabel;
    aInformation: TWebLabel;
    aConfirmation: TWebLabel;
    aCustom: TWebLabel;
    WebResponsiveGridPanel1: TWebResponsiveGridPanel;
    TMSFNCDataGrid1: TTMSFNCDataGrid;
    XDataWebConnection1: TXDataWebConnection;
    XDataWebClient1: TXDataWebClient;
    XDataWebDataSet1: TXDataWebDataSet;
    WebDataSource1: TWebDataSource;
    TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter;
    pnBotoes: TWebPanel;
    btnGetNome: TWebButton;
    WebButton1: TWebButton;
    procedure aWarningClick(Sender: TObject);
    procedure aErrorClick(Sender: TObject);
    procedure aInformationClick(Sender: TObject);
    procedure aConfirmationClick(Sender: TObject);
    procedure aCustomClick(Sender: TObject);
    procedure btnGetNomeClick(Sender: TObject);
    procedure XDataWebClient1Load(Response: TXDataClientResponse);
    procedure XDataWebClient1Error(Error: TXDataClientError);
    procedure WebButton1Click(Sender: TObject);
  private
    procedure SuccessProc(Response: TXDataClientResponse);

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

procedure TMainView.btnGetNomeClick(Sender: TObject);
begin
  XDataWebClient1.RawInvoke('IClientesService.GetNome', [4], @SuccessProc);
end;

procedure TMainView.SuccessProc(Response: TXDataClientResponse);
begin
  btnBuscar.Caption := TJSJson.stringify(Response.Result);
end;

procedure TMainView.XDataWebClient1Load(Response: TXDataClientResponse);
begin
  btnBuscar.Caption := TJSJson.stringify(Response.Result);

//  if Response.RequestId = 'get' then
//    btnBuscar.Caption := TJSJson.stringify(Response.Result);
//  else
//  if Response.RequestId = 'list' then
//    ListMemo.Lines.Text := TJSJson.stringify(Response.Result)
//  else
//  if Response.RequestId = 'post' then
//    ShowInfo(Format('New entity created in %s collection.', [SelectedEntitySet]))
//  else
//  if Response.RequestId = 'put' then
//    ShowInfo(Format('Entity updated in %s collection.', [SelectedEntitySet]))
//  else
//  if Response.RequestId = 'delete' then
//    ShowInfo(Format('Entity removed from %s collection.', [SelectedEntitySet]));
end;

procedure TMainView.XDataWebClient1Error(Error: TXDataClientError);
begin
  MessageDlg(Format('%s. RequestId: %s. Code: %s. Request Url: %s',
    [Error.ErrorMessage, Error.RequestId, Error.ErrorCode, Error.RequestUrl]),
    mtError, []
  );
end;

procedure TMainView.WebButton1Click(Sender: TObject);
begin
  //
end;

end.
