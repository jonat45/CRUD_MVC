program prj.crud_update_create;

uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {frmMain},
  uFrmCadClientes in 'uFrmCadClientes.pas' {frmCadClientes},
  uModelCliente in 'uModelCliente.pas',
  uBusinessCliente in 'uBusinessCliente.pas',
  uDalCliente in 'uDalCliente.pas',
  uSchema in 'uSchema.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
