unit uSchemas ;

interface
uses
     Classes,
     Sysutils,
     StrUtils,
     DBClient,
     DB ;

type
     TTBClientes = class( TClientDataSet )
     public
          ID_Cliente: TIntegerField ;
          Codigo: TStringField ;
          Nome: TStringField ;
          
          constructor create( AOwner: TComponent ) ; override ;
     end ;
     
implementation

constructor TTBClientes.create( AOwner: TComponent ) ;
begin
     inherited create( AOwner ) ;
     FID_Cliente := TIntegerField.Create( self );
     FID_Cliente.FieldName := 'ID_Cliente' ;
     FID_Cliente.Required := false ;
     FID_Cliente.DataSet := self ;

     FCodigo := TStringField.Create( self ) ;
     FCodigo.FieldName := 'Codigo' ;
     FCodigo.Required := false ;
     FCodigo.DataSet := self ;

     FNome := TStringField.Create( self ) ;
     FNome.FieldName := 'Nome' ;
     FNome.Required := true ;
     FNome.DataSet := self ;
end ;

end ;
