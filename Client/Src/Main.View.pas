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
  WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls;

type
  TMainView = class(TWebForm)
    aError: TWebLabel;
    aWarning: TWebLabel;
    aInformation: TWebLabel;
    aConfirmation: TWebLabel;
    aCustom: TWebLabel;
    procedure aWarningClick(Sender: TObject);
    procedure aErrorClick(Sender: TObject);
    procedure aInformationClick(Sender: TObject);
    procedure aConfirmationClick(Sender: TObject);
    procedure aCustomClick(Sender: TObject);
  private
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

end.
