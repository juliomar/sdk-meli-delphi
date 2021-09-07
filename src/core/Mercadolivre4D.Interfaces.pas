unit Mercadolivre4D.Interfaces;

interface

type
  iConfiguration = interface
    function ClientId(Value : String) : iConfiguration; overload;
    function ClientId : String; overload;
    function ClientSecret(Value : String) : iConfiguration; overload;
    function ClientSscret : String; overload;
    function Code(Value : String) : iConfiguration; overload;
    function Code : String; overload;
    function RedirectUri(Value : String) : iConfiguration; overload;
    function RedirectUri : String; overload;
    function APP_ID(Value : String) : iConfiguration; overload;
    function APP_ID : String; overload;
    function GrantType : String;
    function Autenticacao(var AuthMeli : String) : iConfiguration;
  end;

  iRecursos = interface

  end;

implementation

end.
