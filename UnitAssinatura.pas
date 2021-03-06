unit UnitAssinatura;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,

// user para assinatura
  System.Generics.Collections
  ;
type

{ CRIADO UM RECORD PARA MANIPULAR A ASSINATURA, CONFORME O DEDO OU O MOUSE PASSA PELA TELA O PONTO INCIAL VAI FAZENDO
 TRACEJADO DA ASSINATURA}

    TAssinatura = Record
      PosicaoCursor: TPointF;
      PosState : Byte;
    End;


  TFrmAssinatura = class(TForm)
    Image4: TImage;
    Label1: TLabel;
    topoUser: TImage;
    lyt_Alinhar_Esquerda: TLayout;
    rect_assinatura: TRectangle;
    img_salvar_ass: TImage;
    Image3: TImage;
    lyt_Limpar: TLayout;
    Image2: TImage;
    img_temp: TImage;
    lyt_Tela_Tem_Certeza_D_Voltar: TLayout;
    Rectangle3: TRectangle;
    Label4: TLabel;
    Layout5: TLayout;
    SIM_ExcluirOS: TImage;
    Nao_ExcluirOS: TImage;
    procedure img_tempClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure SIM_ExcluirOSClick(Sender: TObject);
    procedure Nao_ExcluirOSClick(Sender: TObject);
    procedure img_salvar_assClick(Sender: TObject);
    procedure rect_assinaturaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
    procedure rect_assinaturaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rect_assinaturaPaint(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure img_assClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Assina : Tlist<TAssinatura>;
    botao : boolean;
    codOS: string;
    procedure AddPoint(const x, y : single; const state: byte);
  end;

var
  FrmAssinatura: TFrmAssinatura;

implementation

{$R *.fmx}

uses UnitDataBase, UnitPrincipal;

procedure TFrmAssinatura.AddPoint(const x, y: single; const state: byte);
var
  p : TAssinatura;

begin

  p.PosicaoCursor := PointF(x, y);
  p.PosState := state;

  if Assina.Count - 1 < 0 then
      p.PosState := 0;


  if p.PosState <> 1 then
      Assina.add(p)
  else
  if p.PosicaoCursor.Distance(Assina.Last.PosicaoCursor) > 0.8 then
      Assina.Add(p);


  rect_assinatura.Repaint;



end;

procedure TFrmAssinatura.FormCreate(Sender: TObject);
begin
  Assina := TList<TAssinatura>.create;
end;

procedure TFrmAssinatura.FormDestroy(Sender: TObject);
begin
  FreeAndNil (Assina);
end;

procedure TFrmAssinatura.FormShow(Sender: TObject);
begin
  Assina.clear;
end;





//## PROCEDURE QUE SALVA A IMAGAM DA ASSINATURA NO BANCO DE DADOE ##
procedure TFrmAssinatura.img_salvar_assClick(Sender: TObject);
var

  assinatura : TBitmap;
begin
  //rotacionar a assinatura ....
  img_temp.RotationAngle := 0;
  img_temp.Bitmap := rect_assinatura.MakeScreenshot;
  img_temp.Bitmap.Rotate(90);

{ AQUI ENTRARIA O IMAGE QUE RECEBERIA A ASSINATURA

  Form1.img_assinatura.Bitmap.Assing(img_temp.MakeScreenshot);

  close;}

   try
     assinatura := rect_assinatura.MakeScreenshot;
     assinatura.Rotate(90);

     img_temp.RotationAngle := 0;
     img_temp.Bitmap := rect_assinatura.MakeScreenshot;
     img_temp.Bitmap.Rotate(90);


     // Atualizo a tabela de OS, com a nova assinatura
     dm.qryGeral.Active := false;
     dm.qryGeral.sql.Clear;
     dm.qryGeral.SQL.Add('UPDATE TAB_OS SET ASSINATURA=:ASSINATURA WHERE COD_OS=:COD_OS');
     dm.qryGeral.ParamByName('ASSINATURA').Assign(ASSINATURA);
     dm.qryGeral.ParamByName('COD_OS').Value := codOS;
     dm.qryGeral.ExecSQL;
   finally
     assinatura.DisposeOf;
   end;
     close;

end;

procedure TFrmAssinatura.Image2Click(Sender: TObject);
begin
  Assina.clear;
  rect_assinatura.Repaint;
end;


//PROCEDURE QUE CHAMAR A CAIXANHA PARA SELECIONAR A OP??O PARA VOLTAR
procedure TFrmAssinatura.Image3Click(Sender: TObject);
begin
  lyt_Tela_Tem_Certeza_D_Voltar.Visible := true;
end;


procedure TFrmAssinatura.img_assClick(Sender: TObject);
begin

end;

{ PROCEDURE CRIADA PARA PEGAR AS DIMENSOES DO FORMULARIA E SUBTITUIR NA IMG_TEMP CRIADA PARA DEIXAR
  A FOTO DA ASSINATURA EM 0? GRAU }
procedure TFrmAssinatura.img_tempClick(Sender: TObject);
begin
  img_temp.Width := FrmAssinatura.Height;
  img_temp.Height := FrmAssinatura.Width;
end;

//PROCEDURE PARA VOLTAR E ESCONDER A CAXINHA DE PERGUNTA... SE DESEJA SAIR
procedure TFrmAssinatura.Nao_ExcluirOSClick(Sender: TObject);
begin
lyt_Tela_Tem_Certeza_D_Voltar.Visible := false;
end;

procedure TFrmAssinatura.rect_assinaturaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Single);
begin
  // Se bot?o precionado..
  if ssLeft in Shift then
  begin
      if NOT botao then
      begin
          // Desenha o inicio do tra?o
          AddPoint (x, Y, 0);
          botao := true;
      end

      else
          AddPoint (x, y, 1);
  end;
end;

//PROCEDURA QUE FINALIZA A ASSINATURA QUANDO PARA O CLICK DO TOUCHER OU DO MOUSE NO REC_ASSINATURA
procedure TFrmAssinatura.rect_assinaturaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  botao := false;
  AddPoint (x, y, 2);
end;

procedure TFrmAssinatura.rect_assinaturaPaint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
var
    P : TAssinatura;
    p1, p2 : TPointF;

begin
  if not (Assina.Count - 1 > 0) then
    exit;

     //criando as configura??es da caneta e tambem a cor dela

     Canvas.Stroke.Kind := TBrushKind.Solid;
     Canvas.Stroke.Dash := TStrokeDash.Solid;
     Canvas.Stroke.Thickness := 4;
     Canvas.Stroke.Color := TAlphaColorRec.Darkblue;

      for p in Assina do
      begin

        case p.PosState of
          0 : p1 := p.PosicaoCursor;
          1 : begin
                p2 := p.PosicaoCursor;
                Canvas.DrawLine(p1, p2, 1, Canvas.Stroke);
                p1 := p.PosicaoCursor;
              end;
          2 : begin
                p2 := p.PosicaoCursor;
                Canvas.DrawLine(p1, p2, 1, Canvas.Stroke);
              end;
        end;

      end;

end;

//PROCEDURE PARA APAGAR A ASSINATURA E FECHAR O FORMULARIO
procedure TFrmAssinatura.SIM_ExcluirOSClick(Sender: TObject);
begin
   Assina.Clear;
   lyt_Tela_Tem_Certeza_D_Voltar.Visible := false;
   Close;
end;

end.
