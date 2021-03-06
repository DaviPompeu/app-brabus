unit UnitFunctions;

interface
  uses FMX.ListView.Appearances, FMX.ListView, FMX.ListView.Types, FireDAC.Comp.Client,
  System.SysUtils, FMX.Graphics, Data.DB, System.Classes;


procedure LoadBitmapFromBlob(Bitmap: TBitmap; Blob: TBlobField);

function GeraCodFoto: String;
function GeraCodOS: String;
function FormataData(dt:string) : string;
function GeraCodCliente : string;
function PreencheZero(variavel:string; quant,posicao:integer):String;

var
cod_clienteConsulta : string;
cod_osConsulta : string;

implementation

uses UnitDataBase;

procedure LoadBitmapFromBlob(Bitmap: TBitmap; Blob: TBlobField);
var
  ms: TMemoryStream;
begin
  ms := TMemoryStream.Create;
    try
      Blob.SaveToStream(ms);
      ms.Position := 0;
      Bitmap.LoadFromStream(ms);
    finally
      ms.Free;
    end;
end;


function FormataData(dt:string) : string;
//ENTRADA : DD/MM/YYYY HH:NN
//SAIDA : YYYY-MM-DD HH:NN

begin
  Result := Copy(dt, 7,4) + '-' + Copy(dt, 4, 2) + '-' + Copy(dt, 1, 2) + ' ' +Copy(dt, 12, 5) + ':00';
end;



function GeraCodFoto: String;
begin
  Result := FormatDateTime('yymmddHHnnsszzz', now);
end;


// fuction que gera CODIGO da OS
function GeraCodOS: String;
begin
  //Result := FormatDateTime('yymmddHHnnsszzz', now);  pegando a hora e data

   with dm.qryGeral do
    begin
      //PUXANDO QUAL O ULTIMO CODIGO GERADO DA TABELA OS
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT CODIGO_OS FROM TAB_CODIGO');
        SQL.Add('ORDER BY CODIGO_OS DESC LIMIT 1');
        active := true;
        cod_osConsulta := dm.qryGeral.FieldByName('CODIGO_OS').AsString;
        active := false;
    end;
    if cod_osConsulta = '' then
    begin
    result := '0';
    end
    else
    begin
    result := cod_osConsulta;
    end;

end;



function GeraCodCliente :string;
begin
  with dm.qryConsCliente do
    begin
      //PUXANDO QUAL O ULTIMO CODIGO GERADO
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT CODIGO_CLIENTE FROM TAB_CODIGO');
        SQL.Add('ORDER BY CODIGO_CLIENTE DESC LIMIT 1');
        active := true;
        cod_clienteConsulta := dm.qryConsCliente.FieldByName('CODIGO_CLIENTE').AsString;
        active := false;
    end;
    if cod_clienteConsulta = '' then
    begin
    result := '10000';
    end
    else
    begin
    result := cod_clienteConsulta;
    end;
end;




// function para gerar um label com 0 a esquerda ou a direita
function PreencheZero(variavel:string; quant,posicao:integer):String;
var
  i,tamanho:integer;
  aux: string;
begin
  aux := Variavel;
  tamanho := length(Variavel);
  Variavel := '';
  for i:=1 to quant-tamanho do Variavel := Variavel + '0';
  if Posicao = 2 then aux := aux + Variavel; // esquerda
  if Posicao = 1 then aux := Variavel + aux; // direita
  Result := aux;
end;


end.
