unit uBusinessCliente;

interface
uses
     Classes,
     SysUtils,
     StrUtils,

     // this
     uModelCliente ;

type
     TBllCliente = class
     public
          function validar( pCliente: TCliente ): boolean  ;
     end ;
implementation
uses
     uDalCliente ;
{ TBllCliente }

function TBllCliente.validar(pCliente: TCliente): boolean;
var
     loDalCliente: TDalCliente ;
begin
     result := true ;
     if trim( pCliente.Codigo ) = EMPTYSTR then
     begin
          result := false ;
          exit ;
     end ;

     if trim( pCliente.Nome ) = EMPTYSTR then
     begin
          result := false ;
          exit ;
     end ;

     if length( trim( pCliente.Nome ) ) < 10 then
     begin
          result := false ;
          exit ;
     end ;

     loDalCliente := TDalCliente.Create ;
     result := loDalCliente.salvar( pCliente ) ;
end;

end.
