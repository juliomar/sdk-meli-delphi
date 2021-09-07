unit MercadoLivre4D.Model.Item;

interface

uses
  System.Generics.Collections,
  Mercadolivre4D.Maps,
  MercadoLivre4D.Model.Attributes,
  MercadoLivre4D.Model.Variations,
  MercadoLivre4D.Model.ItemPictures,
  MercadoLivre4D.Model.SaleTerms;

type
  TItems = class
  private
    FCondition: String;
    FAttributes: TObjectList<TAttributes>;
    FCategoryId: String;
    FVariations: TObjectList<TVariations>;
    FPrice: Integer;
    FVideoId: String;
    FBuyingMode: String;
    FAvailableQuantity: String;
    FCurrencyId: String;
    FTitle: String;
    FListingTypeId: String;
    FDescription: String;
    FPictures: TObjectList<TPicures>;
    FSaleTerms: TObjectList<TSaleTerms>;
    FTag: TList<String>;
    procedure SetAttributes(const Value: TObjectList<TAttributes>);
    procedure SetAvailableQuantity(const Value: String);
    procedure SetBuyingMode(const Value: String);
    procedure SetCategoryId(const Value: String);
    procedure SetCondition(const Value: String);
    procedure SetCurrencyId(const Value: String);
    procedure SetDescription(const Value: String);
    procedure SetListingTypeId(const Value: String);
    procedure SetPictures(const Value: TObjectList<TPicures>);
    procedure SetPrice(const Value: Integer);
    procedure SetTitle(const Value: String);
    procedure SetVariations(const Value: TObjectList<TVariations>);
    procedure SetVideoId(const Value: String);
    procedure SetSaleTerms(const Value: TObjectList<TSaleTerms>);
    procedure SetTag(const Value: TList<String>);
  public
    [Serialized('title')]
    property Title : String read FTitle write SetTitle;
    [Serialized('category_id')]
    property CategoryId : String read FCategoryId write SetCategoryId;
    [Serialized('price')]
    property Price : Integer read FPrice write SetPrice;
    [Serialized('currency_id')]
    property CurrencyId : String read FCurrencyId write SetCurrencyId;
    [Serialized('available_quantity')]
    property AvailableQuantity : String read FAvailableQuantity write SetAvailableQuantity;
    [Serialized('buying_mode')]
    property BuyingMode : String read FBuyingMode write SetBuyingMode;
    [Serialized('listing_type_id')]
    property ListingTypeId : String read FListingTypeId write SetListingTypeId;
    [Serialized('condition')]
    property Condition : String read FCondition write SetCondition;
    [Serialized('description')]
    property Description : String read FDescription write SetDescription;
    [Serialized('video_id')]
    property VideoId : String read FVideoId write SetVideoId;
    [Serialized('pictures')]
    [OneToMany]
    property Pictures : TObjectList<TPicures> read FPictures write SetPictures;
    [Serialized('attributes')]
    [Default('null')]
    [OneToMany]
    property Attributes : TObjectList<TAttributes> read FAttributes write SetAttributes;
    [Serialized('variations')]
    [Default('null')]
    [OneToMany]
    property Variations : TObjectList<TVariations> read FVariations write SetVariations;
    [Serialized('sale_terms')]
    [Default('null')]
    [OneToMany]
    property SaleTerms : TObjectList<TSaleTerms> read FSaleTerms write SetSaleTerms;
    [Serialized('tag')]
    [IsList]
    property Tag : TList<String> read FTag write SetTag;
  end;

implementation

{ TItems }

procedure TItems.SetAttributes(const Value: TObjectList<TAttributes>);
begin
  FAttributes := Value;
end;

procedure TItems.SetAvailableQuantity(const Value: String);
begin
  FAvailableQuantity := Value;
end;

procedure TItems.SetBuyingMode(const Value: String);
begin
  FBuyingMode := Value;
end;

procedure TItems.SetCategoryId(const Value: String);
begin
  FCategoryId := Value;
end;

procedure TItems.SetCondition(const Value: String);
begin
  FCondition := Value;
end;

procedure TItems.SetCurrencyId(const Value: String);
begin
  FCurrencyId := Value;
end;

procedure TItems.SetDescription(const Value: String);
begin
  FDescription := Value;
end;

procedure TItems.SetListingTypeId(const Value: String);
begin
  FListingTypeId := Value;
end;

procedure TItems.SetPictures(const Value: TObjectList<TPicures>);
begin
  FPictures := Value;
end;

procedure TItems.SetPrice(const Value: Integer);
begin
  FPrice := Value;
end;

procedure TItems.SetSaleTerms(const Value: TObjectList<TSaleTerms>);
begin
  FSaleTerms := Value;
end;

procedure TItems.SetTag(const Value: TList<String>);
begin
  FTag := Value;
end;

procedure TItems.SetTitle(const Value: String);
begin
  FTitle := Value;
end;

procedure TItems.SetVariations(const Value: TObjectList<TVariations>);
begin
  FVariations := Value;
end;

procedure TItems.SetVideoId(const Value: String);
begin
  FVideoId := Value;
end;

end.
