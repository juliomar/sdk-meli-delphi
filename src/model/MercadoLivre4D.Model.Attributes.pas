unit MercadoLivre4D.Model.Attributes;

interface

uses
  System.Generics.Collections,
  MercadoLivre4D.Model.AttributesValues,
  MercadoLivre4D.Model.AttributesValueStruct,
  MercadoLivre4D.Maps;

type
  TAttributes = class
  private
    FName: String;
    FValueStruct: TAttributeValueStruct;
    FValueId: String;
    FAttributeGroupName: String;
    FValues: TObjectList<TAttributesValues>;
    FId: String;
    FValueName: String;
    FAttributeGroupID: String;
    procedure SetAttributeGroupID(const Value: String);
    procedure SetAttributeGroupName(const Value: String);
    procedure SetName(const Value: String);
    procedure SetValueId(const Value: String);
    procedure SetValueName(const Value: String);
    procedure SetValues(const Value: TObjectList<TAttributesValues>);
    procedure SetValueStruct(const Value: TAttributeValueStruct);
    procedure SetId(const Value: String);
  public
    [Serialized('id')]
    property Id: String read FId write SetId;
    [Serialized('name')]
    property Name: String read FName write SetName;
    [Serialized('value_id')]
    property ValueId: String read FValueId write SetValueId;
    [Serialized('value_name')]
    property ValueName: String read FValueName write SetValueName;
    [Serialized('value_struct')]
    [OneToOne]
    property ValueStruct: TAttributeValueStruct read FValueStruct
      write SetValueStruct;
    [Serialized('values')]
    [Default ('null')]
    [OneToMany]
    property Values: TObjectList<TAttributesValues> read FValues
      write SetValues;
    [Serialized('attribute_group_name')]
    property AttributeGroupName: String read FAttributeGroupName
      write SetAttributeGroupName;
    [Serialized('attribute_group_id')]
    property AttributeGroupID: String read FAttributeGroupID
      write SetAttributeGroupID;
  end;

implementation

{ TAttributes }

procedure TAttributes.SetAttributeGroupID(const Value: String);
begin
  FAttributeGroupID := Value;
end;

procedure TAttributes.SetAttributeGroupName(const Value: String);
begin
  FAttributeGroupName := Value;
end;

procedure TAttributes.SetId(const Value: String);
begin
  FId := Value;
end;

procedure TAttributes.SetName(const Value: String);
begin
  FName := Value;
end;

procedure TAttributes.SetValueId(const Value: String);
begin
  FValueId := Value;
end;

procedure TAttributes.SetValueName(const Value: String);
begin
  FValueName := Value;
end;

procedure TAttributes.SetValues(const Value: TObjectList<TAttributesValues>);
begin
  FValues := Value;
end;

procedure TAttributes.SetValueStruct(const Value: TAttributeValueStruct);
begin
  FValueStruct := Value;
end;

end.
