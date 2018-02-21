unit uFrmCadClientes;

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
     Vcl.ExtCtrls;

type
  TfrmCadClientes = class(TForm)
    edtCodigo: TLabeledEdit;
    edtNome: TLabeledEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function execute: boolean ;
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation
uses
     uModelCliente,
     uBusinessCliente ;
{$R *.dfm}

procedure TfrmCadClientes.Button1Click(Sender: TObject);
var
     loCliente: TCliente ;
     loBllCliente: TBllCliente ;
begin
     loCliente := TCliente.Create ;
     loCliente.Codigo := trim( edtCodigo.Text ) ;
     loCliente.Nome := trim( edtNome.Text ) ;
     loBllCliente := TBllCliente.Create ;
     if loBllCliente.validar( loCliente ) then
          showmessage( 'Registro efetuado com sucesso!' ) ;
     freeAndNil( loBllCliente ) ;
     freeAndNil( loCliente ) ;
end;

class function TfrmCadClientes.execute: boolean;
begin
     if not assigned( frmCadClientes ) then
     begin
          frmCadClientes := TfrmCadClientes.Create( application ) ;
          frmCadClientes.ShowModal ;
          freeAndNil( frmCadClientes ) ;
     end ;
end;

end.
