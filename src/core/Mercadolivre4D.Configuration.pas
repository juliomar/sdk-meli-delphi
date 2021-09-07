unit Mercadolivre4D.Configuration;

interface

uses
  Mercadolivre4D.Interfaces;

type
  TConfiguration = class(TInterfacedObject, iConfiguration)
  private
    FClientId : String;
    FClientSecret : String;
    FCode : String;
    FRedirectUri : String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iConfiguration;
    function ClientId(Value: String): iConfiguration; overload;
    function ClientId: String; overload;
    function ClientSecret(Value: String): iConfiguration; overload;
    function ClientSscret: String; overload;
    function Code(Value: String): iConfiguration; overload;
    function Code: String; overload;
    function RedirectUri(Value: String): iConfiguration; overload;
    function RedirectUri: String; overload;
    function GrantType : String;
  end;

implementation

function TConfiguration.ClientId(Value: String): iConfiguration;
begin
  Result := Self;
  FClientId := Value;
end;

function TConfiguration.ClientId: String;
begin
  Result := FClientId;
end;

function TConfiguration.ClientSecret(Value: String): iConfiguration;
begin
  Result := Self;
  FClientSecret := Value;
end;

function TConfiguration.ClientSscret: String;
begin
  Result := FClientSecret;
end;

function TConfiguration.Code(Value: String): iConfiguration;
begin
  Result := Self;
  FCode := Value;
end;

function TConfiguration.Code: String;
begin
  Result := FCode;
end;

constructor TConfiguration.Create;
begin

end;

destructor TConfiguration.Destroy;
begin

  inherited;
end;

function TConfiguration.GrantType: String;
begin
  Result := 'authorization_code';
end;

class function TConfiguration.New: iConfiguration;
begin
  Result := Self.Create;
end;

function TConfiguration.RedirectUri(Value: String): iConfiguration;
begin
  Result := Self;
  FRedirectUri := Value;
end;

function TConfiguration.RedirectUri: String;
begin
  Result := FRedirectUri;
end;

end.
