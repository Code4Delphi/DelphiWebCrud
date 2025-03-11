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
  Login.View;

type
  TMainView = class(TWebForm)
    procedure WebFormCreate(Sender: TObject);
    procedure WebFormShow(Sender: TObject);
  private
    FLogado: Boolean;
    [Async]
    procedure ChamarLogin;
  public

  end;

var
  MainView: TMainView;

implementation

{$R *.dfm}

procedure TMainView.WebFormCreate(Sender: TObject);
begin
  FLogado := False;
end;

procedure TMainView.WebFormShow(Sender: TObject);
begin
  //if not FLogado then
  //  Self.ChamarLogin;
end;

procedure TMainView.ChamarLogin;
var
  LLoginView: TLoginView;
begin
  LLoginView := TLoginView.Create(Self);
  LLoginView.Popup := False;
  // used to manage Back button handling to close subform
  //window.location.hash := 'subform';

  // load file HTML template + controls
  TAwait.ExecP<TLoginView>(LLoginView.Load());
  try
    // excute form and wait for close
    TAwait.ExecP<TModalResult>(LLoginView.Execute);
  finally
    LLoginView.Free;
  end;
end;

end.