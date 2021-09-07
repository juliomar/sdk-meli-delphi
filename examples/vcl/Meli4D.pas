unit Meli4D;

interface

uses
  Mercadolivre4D;

var
  _Mercadolivre4D : iMercadolivre4D;
  AuthURL : String;

implementation

const
  ClientId = '123456789';
  ClientSecret = 'abc123';
  Code = 'TAP-1324';
  RedirectUri = 'http://localhost/redirect';
  APP_ID = '987654321';

initialization
  _Mercadolivre4D := TMercadolivre4D.New;

  _Mercadolivre4D
    .Configuration
      .ClientId(ClientId)
      .ClientSecret(ClientSecret)
      .Code(Code)
      .RedirectUri(RedirectUri)
      .APP_ID(APP_ID)
      .Autenticacao(AuthURL);
end.
