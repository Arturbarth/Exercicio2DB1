unit uConversaoTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type

  TFConversaoTexto = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    btnConverter: TButton;
    mmTextoOriginal: TMemo;
    mmTextoConvertido: TMemo;
    rgTipoConversao: TRadioGroup;
    procedure btnConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConversaoTexto: TFConversaoTexto;

implementation

uses
  uFactoryConversao, uConversao;

{$R *.dfm}

procedure TFConversaoTexto.btnConverterClick(Sender: TObject);
var
  oConversao: IConversao;
begin
  oConversao := TConverteFactory.New.GetConversao(rgTipoConversao.ItemIndex);
  oConversao.AdicionarTexto(mmTextoOriginal.Text);
  mmTextoConvertido.Text := oConversao.Converter;
end;

end.
