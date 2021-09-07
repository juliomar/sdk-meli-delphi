<br>
<h1 align="center">
  <a href="https://developers.mercadolibre.com">
    <img src="https://user-images.githubusercontent.com/1153516/29861072-689ec57e-8d3e-11e7-8368-dd923543258f.jpg" alt="Mercado Libre Developers" width="230"></a>
  </a>
  <br><br>
  MercadoLivre4D
  <br>
</h1>

<h4 align="center">This is the Delphi Framework for the Mercado Livre platform.</h4>

## Requirements

Building the API client library requires:

1. [RestRequest4D](https://github.com/viniciussanchez/RESTRequest4Delphi)

## Installation

To install the API client library to your local repository, simply execute:

```shell
boss install
```
## Usage

```delphi

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
```

The AuthURL variable will give you the url to redirect the user. You need to specify a callback url that will be redirected to the user after a successful authorization process.

Once the user is redirected to the callback url, you will receive a parameter named code in the query string. You will need this for authentication.

## Examples for OAuth - get token

```delphi


```

## Example using the RestClient with a POST Item

```delphi

```

## Documentation & Important notes

##### The URIs are relative to https://api.mercadolibre.com

##### The Authorization URLs (set the correct country domain): https://auth.mercadolibre.{country_domain}

##### All docs for the library are located [here](https://github.com/alepmedeiros/Mercadolivre4D/tree/master/docs)

##### Check out our examples codes in the folder [examples](https://github.com/alepmedeiros/Mercadolivre4D/tree/master/examples)

##### Don’t forget to check out our [developer site](https://developers.mercadolibre.com/)
