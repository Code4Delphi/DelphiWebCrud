unit Server.Main.View;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  XData.DM;

type
  TServerMainView = class(TForm)
    btnStart: TButton;
    btnStop: TButton;
    mmLog: TMemo;
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure AtualizarTela;
    function GetServerBaseUrl: string;

  public

  end;

var
  ServerMainView: TServerMainView;

implementation

{$R *.dfm}

procedure TServerMainView.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  Self.AtualizarTela;
end;

procedure TServerMainView.btnStartClick(Sender: TObject);
begin
  XDataDM.SparkleHttpSysDispatcher1.Start;
  Self.AtualizarTela;
end;

procedure TServerMainView.btnStopClick(Sender: TObject);
begin
  XDataDM.SparkleHttpSysDispatcher1.Stop;
  Self.AtualizarTela;
end;

function TServerMainView.GetServerBaseUrl: string;
const
  HTTP = 'http://+';
  HTTP_LOCALHOST = 'http://localhost';
begin
  Result := XDataDM.XDataServer1.BaseUrl.Replace(HTTP, HTTP_LOCALHOST, [rfIgnoreCase]);
end;

procedure TServerMainView.AtualizarTela;
begin
  btnStop.Enabled := XDataDM.SparkleHttpSysDispatcher1.Active;
  btnStart.Enabled := not btnStop.Enabled;

  if XDataDM.SparkleHttpSysDispatcher1.Active then
  begin
    mmLog.Lines.Add('Servidor iniciado em:');
    mmLog.Lines.Add(Self.GetServerBaseUrl);
    mmLog.Lines.Add(Self.GetServerBaseUrl + '/ClientesService/');
  end
  else
    mmLog.Lines.Add('Servidor parado');
end;

end.
