unit Mercadolivre4D.DTO.AttributesDTO;

interface

uses
  Mercadolivre4D.DTO.Interfaces,
  MercadoLivre4D.Model.Attributes, Mercadolivre4D.DTO.AttributesValuesDTO;

type
  TAttributesDTO = class(TInterfacedObject, iAttributes)
    private
      FEntity : TAttributes;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iAttributes;
      function Id(Value : String) : iAttributes;
      function Name(Value : String) : iAttributes;
      function ValueId(Value : String) : iAttributes;
      function ValueName(Value : String) : iAttributes;
      function ValueStruct : iAttributeValueStruct<iAttributes>;
      function Values : iAttributesValues<iAttributes>;
      function AttributeGroupName(Value : String) : iAttributes;
      function AttributeGroupID(Value : String) : iAttributes;
  end;

implementation

function TAttributesDTO.AttributeGroupID(Value: String): iAttributes;
begin
  Result := Self;
  FEntity.AttributeGroupID := Value;
end;

function TAttributesDTO.AttributeGroupName(Value: String): iAttributes;
begin
  Result := Self;
  FEntity.AttributeGroupName := Value;
end;

constructor TAttributesDTO.Create;
begin
  FEntity := TAttributes.Create;
end;

destructor TAttributesDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TAttributesDTO.Id(Value: String): iAttributes;
begin
  Result := Self;
  FEntity.Id := Value;
end;

function TAttributesDTO.Name(Value: String): iAttributes;
begin
  Result := Self;
  FEntity.Name := Value;
end;

class function TAttributesDTO.New : iAttributes;
begin
  Result := Self.Create;
end;

function TAttributesDTO.ValueId(Value: String): iAttributes;
begin
  Result := Self;
  FEntity.ValueId := Value;
end;

function TAttributesDTO.ValueName(Value: String): iAttributes;
begin
  Result := Self;
  FEntity.ValueName := Value;
end;

function TAttributesDTO.Values: iAttributesValues<iAttributes>;
begin
  Result := TAttributesValuesDTO<iAttributes>.New(self,FEntity);
end;

function TAttributesDTO.ValueStruct: iAttributeValueStruct<iAttributes>;
begin
  //Result := TAttributeValueStruct<iAttributes>.New(Self,FEntity);
end;

end.
