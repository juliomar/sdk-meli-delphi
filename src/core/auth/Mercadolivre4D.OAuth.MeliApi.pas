unit Mercadolivre4D.OAuth.MeliApi;

interface

uses
  Mercadolivre4D.OAuth.Interfaces,
  Mercadolivre4D.Interfaces,
  Mercadolivre4D.Types,
  Data.DB,
  Mercadolivre4D.OAuth.RestClient;

type
  TMeliApi = class(TInterfacedObject, iMeliApi)
  private
    [weak]
    FParent: iConfiguration;

    FHttpClient: iHttpClient;
  public
    constructor Create(Parent: iConfiguration);
    destructor Destroy; override;
    class function New(Parent: iConfiguration): iMeliApi;
    function List(Resource: String): iMeliApi;
    function ToCreate(Resource: String): iMeliApi;
    function Update(Resource: String): iMeliApi;
    function Delete(Resource: String): iMeliApi;
    function Params(aKey: String; aValue: String): iMeliApi;
    function Body(Value: String): iMeliApi;
    function DataSet(aDataSet: TDataSet): iMeliApi;
    function Content(var Value: String): iMeliApi;
  end;

implementation

function TMeliApi.Body(Value: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Body(Value);
end;

function TMeliApi.Content(var Value: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Content(Value);
end;

constructor TMeliApi.Create(Parent: iConfiguration);
begin
  FParent := Parent;
  FHttpClient := TRestClient.New;
  FHttpClient.Token(FParent.Code);
end;

function TMeliApi.DataSet(aDataSet: TDataSet): iMeliApi;
begin
  Result := Self;
  FHttpClient.DataSet(aDataSet);
end;

function TMeliApi.Delete(Resource: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Delete(Resource)
end;

destructor TMeliApi.Destroy;
begin

  inherited;
end;

function TMeliApi.List(Resource: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Get(Resource);
end;

class function TMeliApi.New(Parent: iConfiguration): iMeliApi;
begin
  Result := Self.Create(Parent);
end;

function TMeliApi.Params(aKey, aValue: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Params(aKey,aValue);
end;

function TMeliApi.ToCreate(Resource: String): iMeliApi;
begin
  Result := Self;
  FHttpClient.Post(Resource);
end;

function TMeliApi.Update(Resource: String): iMeliApi;
begin
  FHttpClient.Put(Resource);
end;

end.
