unit uFrmMain;

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
     Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
uses
     uFrmCadClientes ;
{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
begin
     TfrmCadClientes.execute ;
end;

end.
