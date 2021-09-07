unit MercadoLivre4D.Model.InlineObject;

interface

uses
  Mercadolivre4D.Maps;

type
  TInlineObject = class
  private
    FRefreshToken: String;
    FGrantType: String;
    FCode: String;
    FClientId: String;
    FRedirectUri: String;
    FClientScret: String;
    procedure SetClientId(const Value: String);
    procedure SetClientScret(const Value: String);
    procedure SetCode(const Value: String);
    procedure SetGrantType(const Value: String);
    procedure SetRedirectUri(const Value: String);
    procedure SetRefreshToken(const Value: String);
  public
    [Serialized('grant_type')]
    property GrantType : String read FGrantType write SetGrantType;
    [Serialized('client_id')]
    property ClientId : String read FClientId write SetClientId;
    [Serialized('client_secret')]
    property ClientScret : String read FClientScret write SetClientScret;
    [Serialized('redirect_uri')]
    property RedirectUri : String read FRedirectUri write SetRedirectUri;
    [Serialized('code')]
    property Code : String read FCode write SetCode;
    [Serialized('refresh_token')]
    property RefreshToken : String read FRefreshToken write SetRefreshToken;
  end;

implementation

{ TInlineObject }

procedure TInlineObject.SetClientId(const Value: String);
begin
  FClientId := Value;
end;

procedure TInlineObject.SetClientScret(const Value: String);
begin
  FClientScret := Value;
end;

procedure TInlineObject.SetCode(const Value: String);
begin
  FCode := Value;
end;

procedure TInlineObject.SetGrantType(const Value: String);
begin
  FGrantType := Value;
end;

procedure TInlineObject.SetRedirectUri(const Value: String);
begin
  FRedirectUri := Value;
end;

procedure TInlineObject.SetRefreshToken(const Value: String);
begin
  FRefreshToken := Value;
end;

end.
