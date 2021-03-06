unit UnitLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, FMX.TabControl,
  System.Actions, FMX.ActnList, u99Permissions, FMX.MediaLibrary.Actions,
  FMX.StdActns, FMX.VirtualKeyboard, FMX.Platform;

type
  TFrmLogin = class(TForm)
    LAYOUT_P: TLayout;
    fundoazul: TImage;
    StyleBook1: TStyleBook;
    TabControl1: TTabControl;
    TabLogin: TTabItem;
    TabResgister: TTabItem;
    Layout2: TLayout;
    Lembrardemin: TImage;
    Layout1: TLayout;
    BotLembrar: TRectangle;
    userlogin: TImage;
    NOME: TImage;
    EdtNome: TEdit;
    SENHA: TImage;
    EdtSenha: TEdit;
    Entrar: TLayout;
    ImgEntrar: TImage;
    Layout3: TLayout;
    Image1: TImage;
    Layout4: TLayout;
    Image3: TImage;
    Image4: TImage;
    EdtNome_NovoLogin: TEdit;
    Image5: TImage;
    EdtSenha_NovoLogin: TEdit;
    Image7: TImage;
    Image2: TImage;
    EdtEmail_NovoLogin: TEdit;
    TabFoto: TTabItem;
    Layout5: TLayout;
    fundofoto: TImage;
    Toqueaqui: TLayout;
    principal: TLayout;
    Layout6: TLayout;
    Image6: TImage;
    LoginLbl: TLabel;
    CriarContaLbl: TLabel;
    LYBotom: TLayout;
    organizadorLyBottom: TLayout;
    Rectangle1: TRectangle;
    ActLogin: TChangeTabAction;
    ActResgister: TChangeTabAction;
    ActFoto: TChangeTabAction;
    Act: TActionList;
    Layout7: TLayout;
    Layout8: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    LytopVoltar: TLayout;
    LYVoltar: TLayout;
    Voltar: TImage;
    TabEscolher: TTabItem;
    ImgFundo: TImage;
    LayoutPrincipal: TLayout;
    LayoutCamera: TLayout;
    LayoutBiblioteca: TLayout;
    ImgGaleria: TImage;
    imgTirarFoto: TImage;
    Layout9: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ActLibrary: TTakePhotoFromLibraryAction;
    ActCamera: TTakePhotoFromCameraAction;
    Layout10: TLayout;
    Image8: TImage;
    ImageUser2: TCircle;
    LytMessagemErro: TLayout;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Layout13: TLayout;
    ImgErroOK: TImage;
    LblMessagemErro: TLabel;
    LytMessagemInfor: TLayout;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Layout12: TLayout;
    ImgInforOK: TImage;
    LblMessagemInfor: TLabel;
    Image9: TImage;
    Image10: TImage;
    LytDesejaSair: TLayout;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Layout15: TLayout;
    Layout16: TLayout;
    ImgVoltarNovo: TImage;
    Image15: TImage;
    lblDesejaSair: TLabel;
    ImgSim: TImage;
    ImgNao: TImage;
    procedure BotLembrarClick(Sender: TObject);
    procedure ImgEntrarClick(Sender: TObject);
    procedure LembrardeminClick(Sender: TObject);
    procedure MudarAba(Image: TImage);
    procedure RegisterClick(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure CriarContaLblClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure VoltarClick(Sender: TObject);
    procedure imagemuserClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TrataErroPermissao(Sender: TObject);
    procedure Layout10Click(Sender: TObject);
    procedure imgTirarFotoClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure ImgGaleriaClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActLibraryDidFinishTaking(Image: TBitmap);
    procedure ActCameraDidFinishTaking(Image: TBitmap);
    procedure Image6Click(Sender: TObject);
    procedure ImageUser2Click(Sender: TObject);
    procedure ImgErroOKClick(Sender: TObject);
    procedure ImgInforOKClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure ImgNaoClick(Sender: TObject);
    procedure ImgSimClick(Sender: TObject);
  private
    { Private declarations }
    permissao: T99Permissions;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.fmx}

uses UnitPrincipal, UnitDataBase;

procedure TFrmLogin.CriarContaLblClick(Sender: TObject);
begin
  ActResgister.Execute;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  permissao := T99Permissions.Create;
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
  permissao.DisposeOf;
end;

procedure TFrmLogin.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);

  {$IFDEF ANDROID}
// criando a variav?l apenas se o cliente for android
var
  Fservice : IFMXVirtualkeyboardService;
  {$ENDIF}

begin
// perguntando se o cliente deseja fechar a aplica??o mobile
  {$IFDEF ANDROID}

  if (key = vkHardwareBack) then
  begin
    TplatformServices.Current.SupportsPlatformService(IFMXVirtualkeyboardService, IInterface(FService));

    if (FService <> nil) and (TVirtualKeyboardState.Visible in FService.VirtualKeyBoardState) then
      begin
          // Botao back pressionado e teclado vis?vel... (Apenas fecha o teclado virtual)
      end
    else
    begin
          // Botao back pressionado e o teclado NAO vis?vel...
            if TabControl1.Activetab <> TabLogin then
            begin
              TabControl1.ActiveTab := TabLogin;
              // "Cancela" o efeito do botao back para nao fechar o app...
              // E faz o aplitivo voltar para a tab 1
              Key := 0;
            end
            else
            begin
              Key := 0;
              LytDesejaSair.Visible := true;
              lblDesejaSair.Text := 'Deseja sair?';
            end;
      end;
  end;
  {$ENDIF}
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  LytMessagemErro.Visible := false;
  LytMessagemInfor.Visible := false;
  LytDesejaSair.Visible := false;
  TabControl1.ActiveTab := TabLogin;
end;

procedure TFrmLogin.Image6Click(Sender: TObject);
begin
  LytMessagemInfor.Visible := true;
  LblMessagemInfor.Text := 'Seja bem vindo ' +EdtNome_NovoLogin.Text+ '. Sua conta foi criada, voc? j? pode fazer login !';
  EdtNome_NovoLogin.Text := '';
  EdtSenha_NovoLogin.Text := '';
  EdtEmail_NovoLogin.Text := '';
  MudarAba(TImage(Sender));
end;

procedure TFrmLogin.Image7Click(Sender: TObject);
var
  id : string;
  codigo : string;
begin
// PROCEDURE PUXANDO OS DADOS NA HORA DA CRIA??O DO NOVO USUARIO NAS EDITS E SALVANDO NO BANCO DE DADOS
  if (EdtNome_NovoLogin.Text <> '') and (EdtSenha_NovoLogin.Text <> '') and (EdtEmail_NovoLogin.Text <> '')  then
    begin
      // select na TAB_CODIGO para ver qual o numero do ultimo id_login

      with dm.qryLogin do
        begin
                Active := false;
                SQL.Clear;
                SQL.Add('SELECT CODIGO_LOGIN FROM TAB_CODIGO');
                Active := true;
                id := FieldByName('CODIGO_LOGIN').AsString;

        end;


      // insert na TAB_LOGIN
      with dm.qryLogin do
        begin
                Active := false;
                SQL.Clear;
                SQL.Add('INSERT INTO TAB_LOGIN(LOGIN_NOME, LOGIN_SENHA, LOGIN_EMAIL)');
                SQL.Add('VALUES(:NOME, :SENHA, :EMAIL)');
               // ParamByName('LOGIN').Value :=  StrToFloat(id) + 1;
                ParamByName('NOME').Value := EdtNome_NovoLogin.Text;
                ParamByName('SENHA').Value := EdtSenha_NovoLogin.Text;
                ParamByName('EMAIL').Value := EdtEmail_NovoLogin.Text;
                ExecSQL;
        end;


    // AO FINALIZAR O INSERT, CHAMA O MUDAR ABA, APRA IR PARA A PROXIMA ABA
    MudarAba(TImage(Sender));
    end
    else
    begin
    // CASO OS EDITS ESTEJAM VAZIES CHAMA TELA DE ERRO
           LytMessagemErro.Visible := true;
           LblMessagemErro.Text := 'Por favor, preencha todos os campos !!';
    end;







end;

procedure TFrmLogin.imagemuserClick(Sender: TObject);
begin
  MudarAba(TImage(Sender));
end;

procedure TFrmLogin.ImageUser2Click(Sender: TObject);
begin
  MudarAba(TImage(Sender));
end;

procedure TFrmLogin.ImgEntrarClick(Sender: TObject);
//VERIFICANDO NO BANCO DE DADOS SE O USUARIO ? VALIDO
var
  login_ok: STRING;
begin

   if (EdtNome.Text <> '') and (EdtSenha.Text <> '') then
    begin
           with dm.qryLogin do
             begin
                 Active := false;
                 Sql.Clear;
                 Sql.Add('SELECT * FROM TAB_LOGIN');
                 Sql.Add('WHERE LOGIN_NOME =:P_NOME and LOGIN_SENHA =:P_SENHA');
                 ParamByName('P_NOME').Value := EdtNome.Text;
                 ParamByName('P_SENHA').Value := EdtSenha.Text;
                 Active := true;
             end;

         if dm.qryLogin.FieldByName('LOGIN_NOME').AsString = EdtNome.Text then
             begin
               if dm.qryLogin.FieldByName('LOGIN_SENHA').AsString = EdtSenha.Text then
                     begin
                       login_ok := 'S';
                     end;

             end;

         if login_OK = 'S' then
         begin

            Application.CreateForm(Tfrmprincipal, Frmprincipal);
            Application.MainForm := FrmPrincipal;
            FrmPrincipal.Show;
            FrmLogin.Close;

         end
         else
         begin
           LytMessagemErro.Visible := true;
           LblMessagemErro.Text := 'Usu?rio e/ou senha inv?lido(s)';
         end;

    end
    else
    begin
           LytMessagemErro.Visible := true;
           LblMessagemErro.Text := 'Usu?rio e/ou senha inv?lido(s)';
    end;


end;

procedure TFrmLogin.ImgErroOKClick(Sender: TObject);
begin
  LytMessagemErro.Visible := false;
end;

//Procedure para abrir minha galeria
procedure TFrmLogin.ImgGaleriaClick(Sender: TObject);
begin
   permissao.PhotoLibrary(ActLibrary, TrataErroPermissao);
end;

procedure TFrmLogin.ImgInforOKClick(Sender: TObject);
begin
LytMessagemInfor.Visible := false;
end;

procedure TFrmLogin.ImgNaoClick(Sender: TObject);
begin
 LytDesejaSair.Visible := false;
end;

procedure TFrmLogin.ImgSimClick(Sender: TObject);
begin
 Application.Terminate;
end;

//Procedure para abri minha camera e para chamar o erro na tela, quando n?o tiver a permiss?o para abrir
procedure TFrmLogin.imgTirarFotoClick(Sender: TObject);
begin
  permissao.Camera(ActCamera, TrataErroPermissao);
end;

procedure TFrmLogin.Label1Click(Sender: TObject);
begin
  ActLogin.Execute;
end;

//Procedure para abrir minha galeria
procedure TFrmLogin.Label4Click(Sender: TObject);
begin
  permissao.PhotoLibrary(ActLibrary, TrataErroPermissao);
end;

//Procedure para abri a camera e para chamar o erro na tela, quando n?o tiver a permiss?o para abrir
procedure TFrmLogin.Label5Click(Sender: TObject);
begin
  permissao.Camera(ActCamera, TrataErroPermissao);
end;


//mensagem de erro quando n?o tenho permiss?o para acessar a camera
procedure TFrmLogin.TrataErroPermissao(Sender: TObject);
begin
  showmessage('Voc? n?o possui permiss?o de acesso para esse recurso')
end;

procedure TFrmLogin.Layout10Click(Sender: TObject);
begin
  MudarAba(TImage(Sender));
end;

procedure TFrmLogin.LembrardeminClick(Sender: TObject);
begin
  if BotLembrar.Opacity = 1 then
    begin
      BotLembrar.Opacity := 0;
    end

  else
    begin
      BotLembrar.Opacity := 1;
    end
end;

procedure TFrmLogin.ActCameraDidFinishTaking(Image: TBitmap);
begin
  ImageUser2.Fill.Bitmap.Bitmap := Image;
  ActFoto.Execute;
end;

procedure TFrmLogin.ActLibraryDidFinishTaking(Image: TBitmap);
begin
  ImageUser2.Fill.Bitmap.Bitmap := Image;
  ActFoto.Execute;
end;

procedure TFrmLogin.BotLembrarClick(Sender: TObject);
begin
  if BotLembrar.Opacity = 1 then
    begin
      BotLembrar.Opacity := 0;
    end

  else
    begin
      BotLembrar.Opacity := 1;
    end

end;

{fazendo uma imagem mudar de abas na tab contro.... primeiro devemos cirar uma
 procedure para toda vez em que eu clicar em uma imagem para mudar de aba
 o mesmo puxar a procedure....
 o comando tabControl1.GotoVisibleTab(Image.Tag) faz como que ao clicar em uma
 imagem o sistema puxe a tab dela
 quando come?ado por TAG = 0 siginifica a aba principal.. TAG = 1 // Aba 2   TAG = 2 aba 3}

procedure TFrmLogin.MudarAba(Image: TImage);
begin
  TabControl1.GotoVisibleTab(Image.Tag);
end;


procedure TFrmLogin.RegisterClick(Sender: TObject);
begin
  MudarAba(TImage(Sender));
end;

procedure TFrmLogin.VoltarClick(Sender: TObject);
begin
  MudarAba(TImage(Sender));
end;

end.


