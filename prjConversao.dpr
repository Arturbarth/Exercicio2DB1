program prjConversao;

uses
  Vcl.Forms,
  uConversaoTexto in 'uConversaoTexto.pas' {FConversaoTexto},
  uConversao in 'uConversao.pas',
  uFactoryConversao in 'uFactoryConversao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFConversaoTexto, FConversaoTexto);
  Application.Run;
end.
