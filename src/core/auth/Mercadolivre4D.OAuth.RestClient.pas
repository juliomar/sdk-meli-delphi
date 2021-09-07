unit Mercadolivre4D.OAuth.RestClient;

interface

uses
  Mercadolivre4D.OAuth.Interfaces,
  Mercadolivre4D.Interfaces,
  Data.DB;

type
  TRestClient = class(TInterfacedObject, ihttpClient)
  private
    [weak]
    FParent: iConfiguration;
  public
    constructor Create(Parent: iConfiguration);
    destructor Destroy; override;
    class function New(Parent: iConfiguration): ihttpClient;
    function Get(Url: String): ihttpClient;
    function GetAll(Url: String): ihttpClient;
    function Post(Url: String): ihttpClient;
    function Put(Url: String): ihttpClient;
    function Delete(Url: String): ihttpClient;
    function Params(aKey: String; aValue: String): ihttpClient;
    function Body(Value: String): ihttpClient;
    function DataSet(Value: TDataSet): ihttpClient;
    function Content(var Value: String): ihttpClient;
  end;

implementation

function TRestClient.Body(Value: String): ihttpClient;
begin
  Result := Self;
end;

function TRestClient.Content(var Value: String): ihttpClient;
begin
  Result := Self;
end;

constructor TRestClient.Create(Parent: iConfiguration);
begin
  FParent := Parent;
end;

function TRestClient.DataSet(Value: TDataSet): ihttpClient;
begin
  Result := Self;
end;

function TRestClient.Delete(Url: String): ihttpClient;
begin
  Result := Self;
end;

destructor TRestClient.Destroy;
begin

  inherited;
end;

function TRestClient.Get(Url: String): ihttpClient;
begin
  Result := Self;
end;

function TRestClient.GetAll(Url: String): ihttpClient;
begin
  Result := Self;
end;

class function TRestClient.New(Parent: iConfiguration): ihttpClient;
begin
  Result := Self.Create(Parent);
end;

function TRestClient.Params(aKey, aValue: String): ihttpClient;
begin
  Result := Self;
end;

function TRestClient.Post(Url: String): ihttpClient;
begin
  Result := Self;
end;

function TRestClient.Put(Url: String): ihttpClient;
begin
  Result := Self;
end;

end.
