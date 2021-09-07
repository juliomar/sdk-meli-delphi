unit MercadoLivre4D.Model.OAuth2;

interface

uses
  Mercadolivre4D.Maps;

type
  TOAuth2 = class
  private
    FRefreshToken: String;
    FTokenType: string;
    FUserId: Integer;
    FAccessToken: String;
    FScope: String;
    FExpiresIn: Integer;
    procedure SetAccessToken(const Value: String);
    procedure SetExpiresIn(const Value: Integer);
    procedure SetRefreshToken(const Value: String);
    procedure SetScope(const Value: String);
    procedure SetTokenType(const Value: string);
    procedure SetUserId(const Value: Integer);
  public
    [Serialized('access_token')]
    property AccessToken : String read FAccessToken write SetAccessToken;
    [Serialized('token_type')]
    property TokenType : string read FTokenType write SetTokenType;
    [Serialized('expires_in')]
    property ExpiresIn : Integer read FExpiresIn write SetExpiresIn;
    [Serialized('scope')]
    property Scope : String read FScope write SetScope;
    [Serialized('user_id')]
    property UserId : Integer read FUserId write SetUserId;
    [Serialized('refresh_token')]
    property RefreshToken : String read FRefreshToken write SetRefreshToken;
  end;

implementation

{ TOAuth2 }

procedure TOAuth2.SetAccessToken(const Value: String);
begin
  FAccessToken := Value;
end;

procedure TOAuth2.SetExpiresIn(const Value: Integer);
begin
  FExpiresIn := Value;
end;

procedure TOAuth2.SetRefreshToken(const Value: String);
begin
  FRefreshToken := Value;
end;

procedure TOAuth2.SetScope(const Value: String);
begin
  FScope := Value;
end;

procedure TOAuth2.SetTokenType(const Value: string);
begin
  FTokenType := Value;
end;

procedure TOAuth2.SetUserId(const Value: Integer);
begin
  FUserId := Value;
end;

end.
