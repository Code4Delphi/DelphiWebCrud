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
  WEBLib.StdCtrls;

type
  TMainView = class(TWebForm)
    WebLabel1: TWebLabel;
  private

  public

  end;

var
  MainView: TMainView;

implementation

{$R *.dfm}

end.