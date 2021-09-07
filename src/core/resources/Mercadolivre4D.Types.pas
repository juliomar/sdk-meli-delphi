unit Mercadolivre4D.Types;

interface

uses
  System.SysUtils,
  System.TypInfo;

type
  TBasePath = (MELI);

  TEndPointType = (USER_TEST, AUTHORIZATION, OAUTH_TOKEN, USERS, ME, ADDRESSES,
    ACCEPTED_PAYMENT_METHODS, APPLICATIONS, BRANDS, CLASSIFIEDS_PROMOTION_PACKS,
    AVAILABLE_LISTING_TYPES, MYFEEDS, SITES, SITE_DOMAINS, LISTING_TYPES,
    LISTING_EXPOSURES, LISTING_PRICES, CATEGORIES, ATTRIBUTES, DOMAIN_DISCOVERY,
    CLASSIFIED_LOCATIONS, COUNTRIES, STATES, CITIES, CURRENCIES,
    CURRENCY_CONVERSIONS, SEARCH, ZIP_CODES, COUNTRY, SEARCH_BETWEEN, ITEMS,
    QUESTIONS, ANSWERS, QUESTIONS_BLACKLIST, RECEIVED_QUESTIONS, ORDERS,
    PAYMENTS, PAYMENTS_METHODS, FEEDBACKS, REPLY, ORDERS_BLACKLIST, PRODUCT,
    ITEMS_VISITS, TIME_WINDOW, CONTACTS, PHONE_VIEWS, SHIPMENTS,
    SHIPPING_OPTIONS, SHIPPING_METHODS, SHIPPING_MODES, SHIPPING_PREFERENCES,
    SHIPMENT_LABELS, COLLETIONS, MESSAGES, QUOTATIONS, MISSED_FEEDS,
    COMMUNICATIONS, NOTICES);

  TEndPOintTypeHelper = record helper for TEndPointType
    function GetValue : String;
  end;

  TBasePathHelper = record helper for TBasePath
    function GetValue : String;
  end;

implementation

{ TEndPOintTypeHelper }

function TEndPOintTypeHelper.GetValue: String;
begin
  Result := LowerCase(GetEnumName(TypeInfo(TEndPointType), Integer(Self)));
end;

{ TBasePathHelper }

function TBasePathHelper.GetValue: String;
begin
  case Self of
    MELI: Result := 'https://api.mercadolibre.com';
  end;
end;

end.
