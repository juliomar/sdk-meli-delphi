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
    procedure SetAvailableQuantity(const Value: String);
    procedure SetBuyingMode(const Value: String);
    procedure SetCategoryId(const Value: String);
    procedure SetCondition(const Value: String);
    procedure SetCurrencyId(const Value: String);
    procedure SetDescription(const Value: String);
    procedure SetListingTypeId(const Value: String);
    procedure SetPrice(const Value: Integer);
    procedure SetTitle(const Value: String);
    procedure SetVideoId(const Value: String);
    function GetPictures: TObjectList<TPicures>;
    function GetAttributes: TObjectList<TAttributes>;
    function GetVariations: TObjectList<TVariations>;
    function GetSaleTerms: TObjectList<TSaleTerms>;
    function GetTag: TList<String>;
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
    property Pictures : TObjectList<TPicures> read GetPictures;
    [Serialized('attributes')]
    [Default('null')]
    [OneToMany]
    property Attributes : TObjectList<TAttributes> read GetAttributes;
    [Serialized('variations')]
    [Default('null')]
    [OneToMany]
    property Variations : TObjectList<TVariations> read GetVariations;
    [Serialized('sale_terms')]
    [Default('null')]
    [OneToMany]
    property SaleTerms : TObjectList<TSaleTerms> read GetSaleTerms;
    [Serialized('tag')]
    [IsList]
    property Tag : TList<String> read GetTag;
  end;

implementation

{ TItems }

function TItems.GetAttributes: TObjectList<TAttributes>;
begin
  if not Assigned(FAttributes) then
    FAttributes := TObjectList<TAttributes>.Create;

  Result := FAttributes;
end;

function TItems.GetPictures: TObjectList<TPicures>;
begin
  if not Assigned(FPictures) then
    FPictures := TObjectList<TPicures>.Create;

  Result := FPictures;
end;

function TItems.GetSaleTerms: TObjectList<TSaleTerms>;
begin
  if not Assigned(FSaleTerms) then
    FSaleTerms := TObjectList<TSaleTerms>.Create;

  Result := FSaleTerms;
end;

function TItems.GetTag: TList<String>;
begin
  if not Assigned(FTag) then
    FTag := TList<String>.Create;

  Result := FTag;
end;

function TItems.GetVariations: TObjectList<TVariations>;
begin
  if not Assigned(FVariations) then
    FVariations := TObjectList<TVariations>.Create;

  Result := FVariations;
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

procedure TItems.SetPrice(const Value: Integer);
begin
  FPrice := Value;
end;

procedure TItems.SetTitle(const Value: String);
begin
  FTitle := Value;
end;

procedure TItems.SetVideoId(const Value: String);
begin
  FVideoId := Value;
end;

end.
