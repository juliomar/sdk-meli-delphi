unit Mercadolivre4D.Resources.Interfaces;

interface

type
  iUsers = interface;
  iCategories = interface;
  iPublications = interface;
  iLocalization = interface;
  iCoins = interface;
  iItems = interface;
  iSearches = interface;
  iQuestions = interface;
  iAnswers = interface;
  iRequests = interface;
  iOpinions = interface;
  iMetrics = interface;
  iShipments = interface;
  iNotifications = interface;
  iFilters<T> = interface;
  iServices<T> = interface;

  iResources = interface
    function Users : iUsers;
    function Categories : iCategories;
    function Publications : iPublications;
    function Localization : iLocalization;
    function Coins : iCoins;
    function Items : iItems;
    function Searches : iSearches;
    function Questions : iQuestions;
    function Answers : iAnswers;
    function Requests : iRequests;
    function Opinions : iOpinions;
    function Metrics : iMetrics;
    function Shipments : iShipments;
    function Notifications : iNotifications;
  end;

  iUsers = interface
    function Sertvices : iServices<iUsers>;
    function Filters : iFilters<iUsers>;
    function &End : iResources;
  end;

  iCategories = interface
    function Services : iServices<iCategories>;
    function Filters : iFilters<iCategories>;
    function &End : iResources;
  end;

  iPublications = interface
    function Services : iServices<iPublications>;
    function Filters : iFilters<iPublications>;
    function &End : iResources;
  end;

  iLocalization = interface
    function Services : iServices<iLocalization>;
    function Filters : iFilters<iLocalization>;
    function &End : iResources;
  end;

  iCoins = interface
    function Services : iServices<iCoins>;
    function Filters : iFilters<iCoins>;
    function &End : iResources;
  end;

  iItems = interface
    function Services : iServices<iItems>;
    function Filters : iFilters<iItems>;
    function &End : iResources;
  end;

  iSearches = interface
    function Services : iServices<iSearches>;
    function Filters : iFilters<iSearches>;
    function &End : iResources;
  end;

  iQuestions = interface
    function Services : iServices<iQuestions>;
    function Filters : iFilters<iQuestions>;
    function &End : iResources;
  end;

  iAnswers = interface
    function Services : iServices<iAnswers>;
    function Filters : iFilters<iAnswers>;
    function &End : iResources;
  end;

  iRequests = interface
    function Services : iServices<iRequests>;
    function Filters : iFilters<iRequests>;
    function &End : iResources;
  end;

  iOpinions = interface
    function Services : iServices<iOpinions>;
    function Filters : iFilters<iOpinions>;
    function &End : iResources;
  end;

  iMetrics = interface
    function Services : iServices<iMetrics>;
    function Filters : iFilters<iMetrics>;
    function &End : iResources;
  end;

  iShipments = interface
    function Services : iServices<iShipments>;
    function Filters : iFilters<iShipments>;
    function &End : iResources;
  end;

  iNotifications = interface
    function Services : iServices<iNotifications>;
    function Filters : iFilters<iNotifications>;
    function &End : iResources;
  end;

  iFilters<T> = interface
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

  iServices<T> = interface
    function List : iServices<T>;
    function Update : iServices<T>;
    function toCreate : iServices<T>;
    function Delete : iServices<T>;
    function &End : T;
  end;

implementation

end.
