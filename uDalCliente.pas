unit uDalCliente;

interface
uses
     Classes,
     SysUtils,
     StrUtils,

     // banco de dados
     DB,
     ADODB,

     // this
     uModelCliente ;

type

     TDalCliente = class
     public
          function salvar( pCliente: TCliente ): boolean ;
     end ;

const
     stringConnection = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Isaac\Documents\Arquivos importantes\ESTUDOS\DELPHI\CRUD Camadas\CRUD_Camadas_BD.mdb;Mode=ReadWrite;Persist Security Info=False' ;

implementation
uses
     uSchema ;
{ TDalCliente }

function TDalCliente.salvar(pCliente: TCliente): boolean;
var
     loConn: TADOConnection ;
     loQry: TADOQuery ;
     loOleVariant: OleVariant ;
     loTbCliente: TTBCliente ;
     iCT, iCT2: integer ;
begin
     result := true ;

     // objeto de conexão com o banco de dados
     loConn := TADOConnection.Create( nil ) ;
     loConn.ConnectionString := stringConnection ;
     loConn.Mode := cmReadWrite ;

     // objeto de acesso a tabela
     loQry := TADOQuery.Create( nil ) ;
     loQry.Connection := loConn ;
     loQry.SQL.Add( 'INSERT INTO tbClientes ( Codigo, Nome) ' ) ;
     loQry.SQL.Add( 'VALUES (:CODIGO, :NOME)' ) ;
     loQry.Parameters.ParamByName( 'CODIGO' ).Value := pCliente.Codigo ;
     loQry.Parameters.ParamByName( 'NOME' ).Value := pCliente.Nome ;
     loQry.ExecSQL ;

     loQry.SQL.Clear ;
     loQry.SQL.Add( 'SELECT * FROM tbClientes' ) ;
     loQry.Open ;

     loTbCliente := TTBCliente.create( nil ) ;
     loTbCliente.CreateDataSet ;

     for iCT := 0 to pred( loQry.RecordCount ) do
     begin
          loTbCliente.Append ;
          for iCT2 := 0 to pred( loQry.FieldCount ) do
          begin
               if loQry.Fields[ iCT2 ].FieldName = loTbCliente.Fields[ iCT2 ].FieldName then
                    loTbCliente.Fields[ iCT2 ].Value := loQry.Fields[ iCT2 ].Value ;
          end ;
          loTbCliente.Post ;
          loQry.Next ;
     end ;

     loQry.Close ;
     loTbCliente.Close ;

     // destruição dos objetos de acesso ao banco de dados
     freeAndNil( loQry ) ;
     freeAndNil( loConn ) ;
end;

end.
