unit Mercadolivre4D.Resources.Filters;

interface

uses
  System.SysUtils,
  Mercadolivre4D.Resources.Interfaces;

type
  TFilters<T : IInterface> = class(TInterfacedObject, iFilters<T>)
    private
      [weak]
      FParent : T;
      FCustId : String;
      FUserId : String;
      FListingType : String;
      FCategoryId : String;
      FCategory_Id : String;
      FListingTyprId : String;
      FAppId : String;
      FSiteDomainURL : String;
      FSiteId : String;
      FPrice : String;
      FQ : String;
      FCountryId : String;
      FStateId : String;
      FCityId : String;
      FCurrencyId : String;
      FZipCode : String;
      FZipCodeFrom : String;
      FZipCodeTo : String;
      FNickName : String;
      FSellerId : String;
      FItemId : String;
      FAttribute : String;
      FQuestionId : String;
      FLimit : String;
      FOffset : String;
      FOrderId : String;
      FBuyerId : String;
      FPaymentId : String;
      FId : String;
      FFeedBackId : String;
      FDateFrom : String;
      FDateTo : String;
      FLast : String;
      FUnit : String;
      FEnding : String;
      FShipmentId : String;
      FDimensions : String;
      FQuantity : String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iFilters<T>;
      function CustId(Value : String) : iFilters<T>; overload;
      function CustId : String; overload;
      function UserId(Value : String) : iFilters<T>; overload;
      function UserId : String; overload;
      function ListingType(Value : String) : iFilters<T>; overload;
      function ListingType : String; overload;
      function CategoryId(Value : String) : iFilters<T>; overload;
      function CategoryId : String; overload;
      function Category_Id(Value : String) : iFilters<T>; overload;
      function Category_Id : String; overload;
      function ListingTyprId(Value : String) : iFilters<T>; overload;
      function ListingTyprId : String; overload;
      function AppId(Value : String) : iFilters<T>; overload;
      function AppId : String; overload;
      function SiteDomainURL(Value : String) : iFilters<T>; overload;
      function SiteDomainURL : String; overload;
      function SiteId(Value : String) : iFilters<T>; overload;
      function SiteId : String; overload;
      function Price(Value : String) : iFilters<T>; overload;
      function Price : String; overload;
      function _Q(Value : String) : iFilters<T>; overload;
      function _Q : String; overload;
      function CountryId(Value : String) : iFilters<T>; overload;
      function CountryId : String; overload;
      function StateId(Value : String) : iFilters<T>; overload;
      function StateId : String; overload;
      function CityId(Value : String) : iFilters<T>; overload;
      function CityId : String; overload;
      function CurrencyId(Value : String) : iFilters<T>; overload;
      function CurrencyId : String; overload;
      function ZipCode(Value : String) : iFilters<T>; overload;
      function ZipCode : String; overload;
      function ZipCodeFrom(Value : String) : iFilters<T>; overload;
      function ZipCodeFrom : String; overload;
      function ZipCodeTo(Value : String) : iFilters<T>; overload;
      function ZipCodeTo : String; overload;
      function NickName(Value : String) : iFilters<T>; overload;
      function NickName : String; overload;
      function SellerId(Value : String) : iFilters<T>; overload;
      function SellerId : String; overload;
      function ItemId(Value : String) : iFilters<T>; overload;
      function ItemId : String; overload;
      function Attribute(Value : String) : iFilters<T>; overload;
      function Attribute : String; overload;
      function QuestionId(Value : String) : iFilters<T>; overload;
      function QuestionId : String; overload;
      function Limit(Value : String) : iFilters<T>; overload;
      function Limit : String; overload;
      function Offset(Value : String) : iFilters<T>; overload;
      function Offset : String; overload;
      function OrderId(Value : String) : iFilters<T>; overload;
      function OrderId : String; overload;
      function BuyerId(Value : String) : iFilters<T>; overload;
      function BuyerId : String; overload;
      function PaymentId(Value : String) : iFilters<T>; overload;
      function PaymentId : String; overload;
      function _Id(Value : String) : iFilters<T>; overload;
      function _Id : String; overload;
      function FeedBackId(Value : String) : iFilters<T>; overload;
      function FeedBackId : String; overload;
      function DateFrom(Value : String) : iFilters<T>; overload;
      function DateFrom : String; overload;
      function DateTo(Value : String) : iFilters<T>; overload;
      function DateTo : String; overload;
      function _Last(Value : String) : iFilters<T>; overload;
      function _Last : String; overload;
      function _Unit(Value : String) : iFilters<T>; overload;
      function _Unit : String; overload;
      function _Ending(Value : String) : iFilters<T>; overload;
      function _Ending : String; overload;
      function ShipmentId(Value : String) : iFilters<T>; overload;
      function ShipmentId : String; overload;
      function Dimensions(Value : String) : iFilters<T>; overload;
      function Dimensions : String; overload;
      function Quantity(Value : String) : iFilters<T>; overload;
      function Quantity : String; overload;
      function &End : T;
  end;

implementation

function TFilters<T>.AppId: String;
begin
  Result := FAppId;
end;

function TFilters<T>.AppId(Value: String): iFilters<T>;
begin
  Result := Self;
  FAppId := Value;
end;

function TFilters<T>.Attribute: String;
begin
  Result := FAttribute;
end;

function TFilters<T>.Attribute(Value: String): iFilters<T>;
begin
  Result := Self;
  FAttribute := Value;
end;

function TFilters<T>.BuyerId: String;
begin
  Result := FBuyerId;
end;

function TFilters<T>.BuyerId(Value: String): iFilters<T>;
begin
  Result := Self;
  FBuyerId := Value;
end;

function TFilters<T>.CategoryId(Value: String): iFilters<T>;
begin
  Result := Self;
  FCategoryId := Value;
end;

function TFilters<T>.CategoryId: String;
begin
  Result := FCategoryId;
end;

function TFilters<T>.Category_Id: String;
begin
  Result := FCategory_Id;
end;

function TFilters<T>.Category_Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FCategory_Id := Value;
end;

function TFilters<T>.CityId(Value: String): iFilters<T>;
begin
  Result := Self;
  FCityId := Value;
end;

function TFilters<T>.CityId: String;
begin
  Result := FCityId;
end;

function TFilters<T>.CountryId: String;
begin
  Result := FCountryId;
end;

function TFilters<T>.CountryId(Value: String): iFilters<T>;
begin
  Result := Self;
  FCountryId := Value;
end;

function TFilters<T>.&End: T;
begin
  Result := FParent;
end;

constructor TFilters<T>.Create(Parent : T);
begin
  FParent := Parent;
end;

function TFilters<T>.CurrencyId(Value: String): iFilters<T>;
begin
  Result := Self;
  FCurrencyId := Value;
end;

function TFilters<T>.CurrencyId: String;
begin
  Result := FCurrencyId;
end;

function TFilters<T>.CustId: String;
begin
  Result := FCustId;
end;

function TFilters<T>.CustId(Value: String): iFilters<T>;
begin
  Result := Self;
  FCustId := Value;
end;

function TFilters<T>.DateFrom(Value: String): iFilters<T>;
begin
  Result := Self;
  FDateFrom := Value;
end;

function TFilters<T>.DateFrom: String;
begin
  Result := FDateFrom;
end;

function TFilters<T>.DateTo: String;
begin
  Result := FDateTo;
end;

destructor TFilters<T>.Destroy;
begin

  inherited;
end;

function TFilters<T>.Dimensions: String;
begin
  Result := FDimensions;
end;

function TFilters<T>.Dimensions(Value: String): iFilters<T>;
begin
  Result := Self;
  FDimensions := Value;
end;

function TFilters<T>.FeedBackId(Value: String): iFilters<T>;
begin
  Result := Self;
  FFeedBackId := Value;
end;

function TFilters<T>.FeedBackId: String;
begin
  Result := FFeedBackId;
end;

function TFilters<T>.ItemId: String;
begin
  Result := FItemId;
end;

function TFilters<T>.ItemId(Value: String): iFilters<T>;
begin
  Result := Self;
  FItemId := Value;
end;

function TFilters<T>.Limit: String;
begin
  Result := FLimit;
end;

function TFilters<T>.Limit(Value: String): iFilters<T>;
begin
  Result := Self;
  FLimit := Value;
end;

function TFilters<T>.ListingType: String;
begin
  Result := FListingType;
end;

function TFilters<T>.ListingType(Value: String): iFilters<T>;
begin
  Result := Self;
  FListingType := Value;
end;

function TFilters<T>.ListingTyprId(Value: String): iFilters<T>;
begin
  Result := Self;
  FListingTyprId := Value;
end;

function TFilters<T>.ListingTyprId: String;
begin
  Result := FListingTyprId;
end;

class function TFilters<T>.New(Parent : T) : iFilters<T>;
begin
  Result := Self.Create(Parent);
end;

function TFilters<T>.NickName(Value: String): iFilters<T>;
begin
  Result := Self;
  FNickName := Value;
end;

function TFilters<T>.NickName: String;
begin
  Result := FNickName;
end;

function TFilters<T>.Offset(Value: String): iFilters<T>;
begin
  Result := Self;
  FOffset := Value;
end;

function TFilters<T>.Offset: String;
begin
  Result := FOffset;
end;

function TFilters<T>.OrderId(Value: String): iFilters<T>;
begin
  Result := Self;
  FOrderId := Value;
end;

function TFilters<T>.OrderId: String;
begin
  Result := FOrderId;
end;

function TFilters<T>.PaymentId: String;
begin
  Result := FPaymentId;
end;

function TFilters<T>.PaymentId(Value: String): iFilters<T>;
begin
  Result := Self;
  FPaymentId := Value;
end;

function TFilters<T>.Price: String;
begin
  Result := FPrice;
end;

function TFilters<T>.Price(Value: String): iFilters<T>;
begin
  Result := Self;
  FPrice := Value;
end;

function TFilters<T>.Quantity(Value: String): iFilters<T>;
begin
  Result := Self;
  FQuantity := Value;
end;

function TFilters<T>.Quantity: String;
begin
  Result := FQuantity;
end;

function TFilters<T>.QuestionId: String;
begin
  Result := FQuestionId;
end;

function TFilters<T>.QuestionId(Value: String): iFilters<T>;
begin
  Result := Self;
  FQuestionId := Value;
end;

function TFilters<T>.SellerId: String;
begin
  Result := FSellerId;
end;

function TFilters<T>.SellerId(Value: String): iFilters<T>;
begin
  Result := Self;
  FSellerId := Value;
end;

function TFilters<T>.ShipmentId(Value: String): iFilters<T>;
begin
  Result := Self;
  FShipmentId := Value;
end;

function TFilters<T>.ShipmentId: String;
begin
  Result := FShipmentId;
end;

function TFilters<T>.SiteDomainURL: String;
begin
  Result := FSiteDomainURL;
end;

function TFilters<T>.SiteDomainURL(Value: String): iFilters<T>;
begin
  Result := Self;
  FSiteDomainURL := Value;
end;

function TFilters<T>.SiteId(Value: String): iFilters<T>;
begin
  Result := Self;
  FSiteId := Value;
end;

function TFilters<T>.SiteId: String;
begin
  Result := FSiteId;
end;

function TFilters<T>.StateId(Value: String): iFilters<T>;
begin
  Result := Self;
  FStateId := Value;
end;

function TFilters<T>.StateId: String;
begin
  Result := FStateId;
end;

function TFilters<T>.UserId(Value: String): iFilters<T>;
begin
  Result := Self;
  FUserId := Value;
end;

function TFilters<T>.UserId: String;
begin
  Result := FUserId;
end;

function TFilters<T>.ZipCode: String;
begin
  Result := FZipCode;
end;

function TFilters<T>.ZipCode(Value: String): iFilters<T>;
begin
  Result := Self;
  FZipCode := Value;
end;

function TFilters<T>.ZipCodeFrom: String;
begin
  Result := FZipCodeFrom;
end;

function TFilters<T>.ZipCodeFrom(Value: String): iFilters<T>;
begin
  Result := Self;
  FZipCodeFrom := Value;
end;

function TFilters<T>.ZipCodeTo: String;
begin
  Result := FZipCodeTo;
end;

function TFilters<T>.ZipCodeTo(Value: String): iFilters<T>;
begin
  Result := Self;
  FZipCodeTo := Value;
end;

function TFilters<T>._Ending(Value: String): iFilters<T>;
begin
  Result := Self;
  FEnding := Value;
end;

function TFilters<T>._Ending: String;
begin
  Result := FEnding;
end;

function TFilters<T>._Id: String;
begin
  Result := FID;
end;

function TFilters<T>._Id(Value: String): iFilters<T>;
begin
  Result := Self;
  FId := Value;
end;

function TFilters<T>._Last(Value: String): iFilters<T>;
begin
  Result := Self;
  FLast := Value;
end;

function TFilters<T>._Last: String;
begin
  Result := FLast;
end;

function TFilters<T>._Q(Value: String): iFilters<T>;
begin
  Result := Self;
  FQ := Value;
end;

function TFilters<T>._Q: String;
begin
  Result := FQ;
end;

function TFilters<T>._Unit(Value: String): iFilters<T>;
begin
  Result := Self;
  FUnit := Value;
end;

function TFilters<T>._Unit: String;
begin
  Result := FUnit;
end;

function TFilters<T>.DateTo(Value: String): iFilters<T>;
begin
  Result := Self;
  FDateTo := Value;
end;

end.
