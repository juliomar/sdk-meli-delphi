unit Mercadolivre4D.OAuth.Interfaces;

interface

uses
  Data.DB;

type
  iHttpClient = interface
    function Get(Url : String) : ihttpClient;
    function GetAll(Url : String) : ihttpClient;
    function Post(Url : String) : ihttpClient;
    function Put(Url : String) : ihttpClient;
    function Delete(Url : String)  : ihttpClient;
    function Params(aKey: String; aValue : String) : ihttpClient;
    function Body(Value : String) : ihttpClient;
    function DataSet(Value : TDataSet) : ihttpClient;
    function Content(var Value : String) : ihttpClient;
  end;

implementation

end.
