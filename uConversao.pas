unit uConversao;

interface

uses Classes, System.StrUtils, System.Generics.Defaults;

type
  IConversao = interface
    ['{B8BD738D-1A0B-4CF2-8256-8BB71A6FC9B7}']
    function Converter: String;
    function AdicionarTexto(const Value: String): IConversao;
  end;

  TConversao = class(TInterfacedObject, IConversao)
  private
  public
    function Converter: String; virtual; abstract;
    function AdicionarTexto(const Value: String): IConversao; virtual; abstract;
  end;

  TConverteTexto = class(TConversao)
  private
    FTexto: String;
    procedure SetTexto(const Value: String);
  public
    function Converter: String; override;
    function AdicionarTexto(const Value: String): IConversao; override;
    property Texto: String read FTexto write SetTexto;
  end;

  TConverteInvertido = class(TConverteTexto)
  private
  public
    function Converter: String; override;
    function AdicionarTexto(const Value: String): IConversao; override;
  end;

  TConvertePrimeiraMaiuscula = class(TConverteTexto)
  private
  public
    function Converter: String; override;
    function AdicionarTexto(const Value: String): IConversao; override;
  end;

  TConverteOrdenado = class(TConverteTexto)
  private
  public
    function Converter: String; override;
    function AdicionarTexto(const Value: String): IConversao; override;
  end;


implementation

uses
  System.SysUtils, System.Generics.Collections;


{ TConverteTexto }

function TConverteTexto.AdicionarTexto(const Value: String): IConversao;
begin
  Self.SetTexto(Value);
  Result := Self;
end;

function TConverteTexto.Converter: String;
begin
  inherited;
end;

procedure TConverteTexto.SetTexto(const Value: String);
begin
  if (Trim(Value) = EmptyStr) then
    raise Exception.Create('O Texto está vazio');
  FTexto := Value;
end;

{ TConverteInvertido }

function TConverteInvertido.AdicionarTexto(const Value: String): IConversao;
begin
  inherited;
end;

function TConverteInvertido.Converter: String;
begin
  Exit(ReverseString(FTexto));
end;

{ TConvertePrimeiraMaiuscula }

function TConvertePrimeiraMaiuscula.AdicionarTexto(
  const Value: String): IConversao;
begin
  inherited;
end;

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

function TConverteOrdenado.AdicionarTexto(const Value: String): IConversao;
begin
  inherited;
end;

function TConverteOrdenado.Converter: String;
var
  cTexto: String;
  caractere: array of String;
  i: Integer;
begin
  cTexto := FTexto.Trim;
  SetLength(caractere, Length(cTexto)+1);
  for I := 1 to Length(cTexto) do
    caractere[i] := cTexto[i];
  TArray.Sort<String>(caractere, TStringComparer.Ordinal);
  for I := 0 to High(caractere) do
    if caractere[i] <> ' ' then
      Result := Result + caractere[i];
end;


end.
