unit MercadoLivre4D.Model.Variations;

interface

uses
  System.Generics.Collections,
  Mercadolivre4D.Maps,
  MercadoLivre4D.Model.VariationsAttributeCombinations;

type
  TVariations = class
  private
    FSoldQuantity: Integer;
    FPrice: Integer;
    FpictureIds: TList<String>;
    FAvailableQuantity: Integer;
    FAttributeCombinations: TObjectList<TVariationsAttributeCombinations>;
    procedure SetAttributeCombinations(
      const Value: TObjectList<TVariationsAttributeCombinations>);
    procedure SetAvailableQuantity(const Value: Integer);
    procedure SetpictureIds(const Value: TList<String>);
    procedure SetPrice(const Value: Integer);
    procedure SetSoldQuantity(const Value: Integer);
  public
    [Serialized('price')]
    property Price : Integer read FPrice write SetPrice;
    [Serialized('attribute_combinations')]
    [Default('null')]
    [OneToMany]
    property AttributeCombinations : TObjectList<TVariationsAttributeCombinations> read FAttributeCombinations write SetAttributeCombinations;
    [Serialized('available_quantity')]
    property AvailableQuantity : Integer read FAvailableQuantity write SetAvailableQuantity;
    [Serialized('sold_quantity')]
    property SoldQuantity : Integer read FSoldQuantity write SetSoldQuantity;
    [Serialized('picture_ids')]
    [Default('null')]
    [IsList]
    property pictureIds : TList<String> read FpictureIds write SetpictureIds;
  end;

implementation

{ TVariations }

procedure TVariations.SetAttributeCombinations(
  const Value: TObjectList<TVariationsAttributeCombinations>);
begin
  FAttributeCombinations := Value;
end;

procedure TVariations.SetAvailableQuantity(const Value: Integer);
begin
  FAvailableQuantity := Value;
end;

procedure TVariations.SetpictureIds(const Value: TList<String>);
begin
  FpictureIds := Value;
end;

procedure TVariations.SetPrice(const Value: Integer);
begin
  FPrice := Value;
end;

procedure TVariations.SetSoldQuantity(const Value: Integer);
begin
  FSoldQuantity := Value;
end;

end.
