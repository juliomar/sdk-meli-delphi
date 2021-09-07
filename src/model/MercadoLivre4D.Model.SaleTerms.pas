unit MercadoLivre4D.Model.SaleTerms;

interface

uses
  Mercadolivre4D.Maps;

type
  TSaleTerms = class
  private
    FId: String;
    FValueName: String;
    procedure SetId(const Value: String);
    procedure SetValueName(const Value: String);
  public
    [Serialized('id')]
    property Id : String read FId write SetId;
    [Serialized('value_name')]
    property ValueName : String read FValueName write SetValueName;
  end;

implementation

{ TSaleTerms }

procedure TSaleTerms.SetId(const Value: String);
begin
  FId := Value;
end;

procedure TSaleTerms.SetValueName(const Value: String);
begin
  FValueName := Value;
end;

end.
