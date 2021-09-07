unit MercadoLivre4D.Model.ItemPictures;

interface

uses
  Mercadolivre4D.Maps;

type
  TPicures = class
  private
    FSource: String;
    procedure SetSource(const Value: String);
  public
    [Serialized('source')]
    property Source : String read FSource write SetSource;
  end;

implementation

{ TPicures }

procedure TPicures.SetSource(const Value: String);
begin
  FSource := Value;
end;

end.
