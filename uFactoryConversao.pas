unit uFactoryConversao;

interface

uses
  uConversao;

type
  TTipoConversao = (enInvertido = 0, enMaiusculo = 1, enAlfabetica = 2);

  IFactoryConversao = interface
    ['{9D22BC99-D81A-4D79-960E-278849318302}']
    function GetConversao(AnTipo: Integer): IConversao;
  end;

  TConverteFactory = class(TInterfacedObject, IFactoryConversao)
   private
   public
     function GetConversao(AnTipo: Integer): IConversao;
     class function New: IFactoryConversao;
  end;


implementation

{ TConverteFactory }

function TConverteFactory.GetConversao(
  AnTipo: Integer): IConversao;
begin
  case AnTipo of
    Ord(enInvertido) : Result := TConverteInvertido.Create;
    Ord(enMaiusculo) : Result := TConvertePrimeiraMaiuscula.Create;
    Ord(enAlfabetica): Result := TConverteOrdenado.Create
  else
    Result := Nil;
  end;
end;

class function TConverteFactory.New: IFactoryConversao;
begin
  Result := TConverteFactory.Create;
end;

end.
