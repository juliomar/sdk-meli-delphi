unit Mercadolivre4D.OAuth.RestClient;

interface

uses
  Mercadolivre4D.OAuth.Interfaces,
  Mercadolivre4D.Interfaces,
  RestRequest4D,
  Data.DB, Mercadolivre4D.Types;

type
  TRestClient = class(TInterfacedObject, ihttpClient)
  private
    FReq : IRequest;
    FResp : IResponse;
    FContent : String;
    FBaseUrl : TBasePath;

    const
        CONTENT_TYPE = 'Content-Type';
        APPLICATION_JSON = 'application/json';
  public
    constructor Create;
    destructor Destroy; override;
    class function New: ihttpClient;
    function Token(Value : String) : iHttpClient;
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
  FReq.AddBody(Value);
end;

function TRestClient.Content(var Value: String): ihttpClient;
begin
  Result := Self;
  Value := FContent;
end;

constructor TRestClient.Create;
begin
  FReq.BaseURL(FBaseUrl.GetValue);
end;

function TRestClient.DataSet(Value: TDataSet): ihttpClient;
begin
  Result := Self;
  FReq.DataSetAdapter(Value);
end;

function TRestClient.Delete(Url: String): ihttpClient;
begin
  Result := Self;

  FContent :=
    FReq
      .Resource(url)
      .Delete.Content;
end;

destructor TRestClient.Destroy;
begin

  inherited;
end;

function TRestClient.Get(Url: String): ihttpClient;
begin
  Result := Self;

  FContent :=
    FReq
      .Resource(url)
      .Get.Content;
end;

function TRestClient.GetAll(Url: String): ihttpClient;
begin
  Result := Self;

  FContent :=
    FReq
      .Resource(url)
      .Get.Content;
end;

class function TRestClient.New: ihttpClient;
begin
  Result := Self.Create;
end;

function TRestClient.Params(aKey, aValue: String): ihttpClient;
begin
  Result := Self;
  FReq.AddUrlSegment(aKey, aValue);
end;

function TRestClient.Post(Url: String): ihttpClient;
begin
  Result := Self;

  FContent :=
    FReq
      .Resource(url)
      .AddHeader(CONTENT_TYPE,APPLICATION_JSON)
      .Post.Content;
end;

function TRestClient.Put(Url: String): ihttpClient;
begin
  Result := Self;

  FContent :=
    FReq
      .Resource(url)
      .AddHeader(CONTENT_TYPE,APPLICATION_JSON)
      .Post.Content;
end;

function TRestClient.Token(Value: String): iHttpClient;
begin
  Result := Self;
  FReq.Token('Bearer ' + Value);
end;

end.
