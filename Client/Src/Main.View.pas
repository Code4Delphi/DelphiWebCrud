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
    procedure TMSFNCDataGrid1SelectCell(Sender: TObject; AStartCell, AEndCell: TTMSFNCDataGridCellCoord);
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
var
  i: Integer;
begin
  //SE LINHA OU COLUNA FIXADA
  if (ACell.Row < TMSFNCDataGrid1.FixedRowCount) or (ACell.Column < TMSFNCDataGrid1.FixedColumnCount) then
  begin
    ACell.Layout.Font.Color := $00D9BD9B;
    ACell.Layout.Font.Style := [TFontStyle.fsBold];
    ACell.Layout.Fill.Color := $00544847;
    Exit;
  end;

//  if ACell.Row = TMSFNCDataGrid1.SelectedRow then
//  begin
//    // Personalize o layout para a linha selecionada
//    ACell.Layout.Fill.Color := gcRed;
//    ACell.Layout.Stroke.Color := gcBlack;
//  end;

//  for i := 0 to TMSFNCDataGrid1.RowSelectionCount - 1 do
//  begin
//     TMSFNCDataGrid1.SelectedRow[i];
//    // do something with the selected row rowindex here
//  end;

end;

procedure TMainView.TMSFNCDataGrid1SelectCell(Sender: TObject; AStartCell, AEndCell: TTMSFNCDataGridCellCoord);
var
  rc,rr: integer;
begin
  rc := TMSFNCDataGrid1.FocusedCell.Column;
  rr := TMSFNCDataGrid1.FocusedCell.Row;



//  TMSFNCColorPicker1.SelectedColor :=  TMSFNCDataGrid1.Colors[rc, rr];
//  TMSFNCColorPicker2.SelectedColor :=  TMSFNCDataGrid1.FontColors[rc, rr];
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
