unit Mercadolivre4D.DTO.Interfaces;

interface

type
  iAttributesValues<T> = interface;
  iAttributeValueStruct<T> = interface;

  iAttributes = interface
    function Id(Value : String) : iAttributes;
    function Name(Value : String) : iAttributes;
    function ValueId(Value : String) : iAttributes;
    function ValueName(Value : String) : iAttributes;
    function ValueStruct : iAttributeValueStruct<iAttributes>;
    function Values : iAttributesValues<iAttributes>;
    function AttributeGroupName(Value : String) : iAttributes;
    function AttributeGroupID(Value : String) : iAttributes;
  end;

  iAttributesValues<T> = interface
    function Id(Value : String) : iAttributesValues<T>;
    function Name(Value : String) : iAttributesValues<T>;
    function Struct : iAttributeValueStruct<iAttributesValues<T>>;
    function &End : T;
  end;

  iAttributeValueStruct<T> = interface
    function Number(Value : Currency) : iAttributeValueStruct<T>;
    function _Unit(Value : String) : iAttributeValueStruct<T>;
    function &End : T;
  end;

implementation

end.
