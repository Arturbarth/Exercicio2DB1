unit uConversao;

interface

uses Classes, System.StrUtils;

type
  IConversao = interface
    ['{B8BD738D-1A0B-4CF2-8256-8BB71A6FC9B7}']
    function Converter: String;
  end;

  TConversao = class(TInterfacedObject, IConversao)
    private
    public
      function Converter(AcTexto: String): String; abstract;
  end;

  TConverteTexto = class(TConversao)
    private
      FTexto: String;
      procedure SetTexto(const Value: String);
    public
      function Converter: String; abstract;
      property Texto: String read FTexto write SetTexto;
  end;

  TConverteInvertido = class(TConverteTexto)
    private

    public
      function Converter: String;

  end;

  TConvertePrimeiraMaiuscula = class(TConverteTexto)
    private
    public
      function Converter: String;
  end;

  TConverteOrdenado = class(TConverteTexto)
    private
    public
      function Converter: String;
  end;

implementation

uses
  System.SysUtils;


{ TConverteTexto }

procedure TConverteTexto.SetTexto(const Value: String);
begin
  if (Trim(Value) = EmptyStr) then
    raise Exception.Create('O Texto está vazio');
  FTexto := Value;
end;

{ TConverteInvertido }

function TConverteInvertido.Converter: String;
begin
  Exit(ReverseString(FTexto));
end;

{ TConvertePrimeiraMaiuscula }

function TConvertePrimeiraMaiuscula.Converter: String;
var
  I : integer;
begin
  Result := Uppercase(Self.FTexto[1]);
  for I := 2 to Length(Self.FTexto) do
    if (Self.FTexto[i - 1] = ' ') then
      Result := Result + Uppercase(Self.FTexto[i])
    else
      Result := Result + Lowercase(Self.FTexto[i]);
end;

{ TConverteOrdenado }

function TConverteOrdenado.Converter: String;
begin
  Result := FTexto;
end;


end.
