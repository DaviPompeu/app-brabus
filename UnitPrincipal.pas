unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.ListBox, FMX.Menus, FMX.VirtualKeyboard, FMX.Platform;

type
  TFrmPrincipal = class(TForm)
    StyleBook1: TStyleBook;
    Lyt_APP: TLayout;
    TabControl1: TTabControl;
    TabOs: TTabItem;
    GABIARRA: TLayout;
    azul_baixo: TImage;
    ImgOS: TImage;
    ImgUser: TImage;
    AbreOS: TImage;
    Pesquisa_Layout: TLayout;
    barra_pesquisa_azul: TImage;
    LupaOS: TImage;
    EdtPesquisar: TEdit;
    LVOS: TListView;
    ImgPontos: TImage;
    ImgData: TImage;
    ImgHora: TImage;
    TabCliente: TTabItem;
    LVCliente: TListView;
    TopUser: TLayout;
    Image2: TImage;
    Nome_Cliente: TLabel;
    Icone_cliente: TImage;
    Menu_cliente: TImage;
    Pesquisar: TLayout;
    Image1: TImage;
    Image5: TImage;
    EdtPesquisarCliente: TEdit;
    ImgFundo: TImage;
    TabConfiguracoes: TTabItem;
    filtro_cliente: TLabel;
    combobox_filtro_cliente: TComboBox;
    Label2: TLabel;
    combobox_filtro_os: TComboBox;
    lytMenuOS: TLayout;
    RecFundoMenuOS: TRectangle;
    LY_REABRIR_OS: TLayout;
    Image6: TImage;
    LY_CANCELAR_OS: TLayout;
    Image7: TImage;
    LY_ENCERRAR_OS: TLayout;
    Image8: TImage;
    LY_COLETA_ASSINATURA: TLayout;
    Image9: TImage;
    LY_EXCLUIR_OS: TLayout;
    Image10: TImage;
    Label3: TLabel;
    Image11: TImage;
    LY_MOSTRA_OS_CLICADA: TLayout;
    lyt_Tela_Tem_Certeza_EncerrarOS: TLayout;
    Rectangle1: TRectangle;
    Lbl_EncerrarOS: TLabel;
    Layout2: TLayout;
    Image12: TImage;
    Image13: TImage;
    lyt_Tela_Tem_Certeza_ReabrirOS: TLayout;
    Rectangle2: TRectangle;
    LBL_ReabrirOS: TLabel;
    Layout4: TLayout;
    Sim_AbrirOS: TImage;
    Nao_abrirOS: TImage;
    lyt_Tela_Tem_Certeza_ExcluirOS: TLayout;
    Rectangle3: TRectangle;
    Label4: TLabel;
    Layout5: TLayout;
    SIM_ExcluirOS: TImage;
    Nao_ExcluirOS: TImage;
    Lbl_temp: TLabel;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Image14: TImage;
    Label5: TLabel;
    Lyt_FiltroCliente: TLayout;
    Line1: TLine;
    Lyt_FiltroOS: TLayout;
    Line2: TLine;
    ImgFechada: TImage;
    ImgAberta: TImage;
    ImgFundoCliente: TImage;
    ImgMaisCliente: TImage;
    CirculoCliente: TCircle;
    ImgGps: TImage;
    ImgLine: TImage;
    ImgTopoOS: TImage;
    Layout1: TLayout;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    LytMessagemInfor: TLayout;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Layout12: TLayout;
    LblMessagemInfor: TLabel;
    Image15: TImage;
    Layout3: TLayout;
    ImgNovaOS: TImage;
    ImgNovoCliente: TImage;
    ImgVoltarNovo: TImage;
    Layout6: TLayout;
    LytMessagem: TLayout;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Layout8: TLayout;
    Image16: TImage;
    ImgMensagemOK: TImage;
    LblMessagem: TLabel;
    LytDesejaSair: TLayout;
    Rectangle11: TRectangle;
    Rectangle12: TRectangle;
    Layout15: TLayout;
    ImgSim: TImage;
    ImgNao: TImage;
    Layout16: TLayout;
    Image17: TImage;
    Image18: TImage;
    lblDesejaSair: TLabel;
    procedure ImgOSClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure LupaOSClick(Sender: TObject);
    procedure Menu_clienteClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure LVOSItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure LY_CANCELAR_OSClick(Sender: TObject);
    procedure RecFundoMenuOSClick(Sender: TObject);
    procedure Layout2Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Nao_abrirOSClick(Sender: TObject);
    procedure Sim_AbrirOSClick(Sender: TObject);
    procedure SIM_ExcluirOSClick(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure AbreOSClick(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LVClienteItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure ImgNovaOSClick(Sender: TObject);
    procedure ImgNovoClienteClick(Sender: TObject);
    procedure ImgVoltarNovoClick(Sender: TObject);
    procedure Rectangle6Click(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure ImgMensagemOKClick(Sender: TObject);
    procedure Rectangle9Click(Sender: TObject);
    procedure Rectangle10Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    procedure MudarAba(Image: TImage);
    procedure ConsultaOS(filtro: string);
    procedure AddCliente(codCliente, nome, endereco, cidade, fone, uf, email: string);
    procedure ConsultarCliente(filtro: string);
    procedure AddOS(codOS, cliente, dt, hora, status, assunto: string);
    procedure AlterarStatusOS(codOS, status: string);
    procedure OpenCadOs(OS: string);
    procedure RefreshListaOS;

  public

    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses UnitLogin, UnitDataBase, u99Permissions, UnitAssinatura, UnitOS,
  UnitCadastroDeCliente;


//PROCEDURE PARA PUXAR QUAL A IMAGEM FOI CLICADA (O.S. OU CLIENTE)
procedure TFrmPrincipal.ImgOSClick(Sender: TObject);
  begin
    MudarAba(TImage(Sender));
  end;

procedure TFrmPrincipal.ImgVoltarNovoClick(Sender: TObject);
begin
     LytMessagemInfor.Visible := false;
end;

procedure TFrmPrincipal.Menu_clienteClick(Sender: TObject);
begin
    MudarAba(TImage(Sender));
end;

procedure Tfrmprincipal.MudarAba(Image: TImage);
  begin
    ImgUser.Opacity := 0.4;
    ImgOS.Opacity := 0.4;

    image.Opacity := 1;
    TabControl1.GotoVisibleTab(Image.Tag);
  end;



procedure TFrmPrincipal.Nao_abrirOSClick(Sender: TObject);
begin
  lyt_Tela_Tem_Certeza_ExcluirOS.Visible := false;
  lyt_Tela_Tem_Certeza_ReabrirOS.Visible := false;
  lytMenuOS.Visible := false;
end;

procedure TFrmPrincipal.RecFundoMenuOSClick(Sender: TObject);
begin
 lytMenuOS.Visible := false;
 lyt_Tela_Tem_Certeza_EncerrarOS.Visible := false;
 lyt_Tela_Tem_Certeza_ExcluirOS.Visible := false;
 lyt_Tela_Tem_Certeza_ReabrirOS.Visible := false;
end;

procedure TFrmPrincipal.Rectangle10Click(Sender: TObject);
begin
LytMessagem.Visible := false;
end;

procedure TFrmPrincipal.Rectangle4Click(Sender: TObject);
begin
lyt_Tela_Tem_Certeza_EncerrarOS.Visible := false;
end;

procedure TFrmPrincipal.Rectangle5Click(Sender: TObject);
begin
lyt_Tela_Tem_Certeza_ExcluirOS.Visible := false;
end;

procedure TFrmPrincipal.Rectangle6Click(Sender: TObject);
begin
lyt_Tela_Tem_Certeza_ReabrirOS.Visible := false;
end;

procedure TFrmPrincipal.Rectangle9Click(Sender: TObject);
begin
LytMessagem.Visible := false;
end;

procedure TFrmPrincipal.Sim_AbrirOSClick(Sender: TObject);
begin
        if Label3.Text <> '' then
          begin


           with dm do
              begin

                qryGeral.Active := false;
                qryGeral.SQL.Clear;
                qryGeral.SQL.Add('SELECT STATUS');
                qryGeral.SQL.Add('FROM TAB_OS');
                qryGeral.SQL.Add('WHERE COD_OS = :COD_OS');
                qryGeral.ParamByName('COD_OS').VALUE := Label3.Text;
                qryGeral.Active := true;

                Lbl_temp.text := dm.qryGeral.FieldByName('STATUS').AsString;


              end;
          end;
   if Lbl_temp.Text <> 'A' then
    begin
         AlterarStatusOS(lytMenuOS.TagString, 'A');
         lyt_Tela_Tem_Certeza_ReabrirOS.Visible := false;
    end

    else
    begin
      LytMessagem.Visible := true;
      LblMessagem.Text := 'OPS! a ordem de servi?o ' + Label3.Text +  ' j? est? aberta!';
      lyt_Tela_Tem_Certeza_ReabrirOS.Visible := false;
      lytMenuOS.Visible := false;
    end;

end;

procedure TFrmPrincipal.Image10Click(Sender: TObject);
begin
  lyt_Tela_Tem_Certeza_ExcluirOS.Visible := true;
end;

procedure TFrmPrincipal.Image12Click(Sender: TObject);
begin
   if Label3.Text <> '' then
          begin


           with dm do
              begin

                qryGeral.Active := false;
                qryGeral.SQL.Clear;
                qryGeral.SQL.Add('SELECT STATUS');
                qryGeral.SQL.Add('FROM TAB_OS');
                qryGeral.SQL.Add('WHERE COD_OS = :COD_OS');
                qryGeral.ParamByName('COD_OS').VALUE := Label3.Text;
                qryGeral.Active := true;

                Lbl_temp.text := dm.qryGeral.FieldByName('STATUS').AsString;


              end;
          end;

if Lbl_temp.Text <> 'F' then
     begin
        AlterarStatusOS(lytMenuOS.TagString, 'F');
        lyt_Tela_Tem_Certeza_EncerrarOS.Visible := false;
     end
  else
      begin
      LytMessagem.Visible := true;
      LblMessagem.Text := 'OPS! a ordem de servi?o ' + Label3.Text +  ' j? est? fechada!';
      lyt_Tela_Tem_Certeza_EncerrarOS.Visible := false;
      lytMenuOS.Visible := false;
      end;
end;

procedure TFrmPrincipal.Image13Click(Sender: TObject);
begin
 lyt_Tela_Tem_Certeza_EncerrarOS.Visible := false;
 lytMenuOS.Visible := false;
end;

procedure TFrmPrincipal.ImgMensagemOKClick(Sender: TObject);
begin
 LytMessagem.Visible := false;
 LytMessagemInfor.Visible := false;
end;

procedure TFrmPrincipal.ImgNovaOSClick(Sender: TObject);
begin
  OpenCadOS('');
  LytMessagemInfor.Visible := false;
end;

procedure TFrmPrincipal.ImgNovoClienteClick(Sender: TObject);
begin
   // abrindo formulario para cadastrar um novo cliente

   if not Assigned(FrmCadastroCliente) then
        application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);

        LytMessagemInfor.Visible := false;
        FrmCadastroCliente.Show;
end;

procedure TFrmPrincipal.SIM_ExcluirOSClick(Sender: TObject);
begin
  try
              dm.qryGeral.Active := false;
              dm.qryGeral.SQL.Clear;
              dm.qryGeral.SQL.Add('DELETE FROM TAB_OS_FOTO WHERE COD_OS=:COD_OS');
              dm.qryGeral.ParamByName('COD_OS').VALUE := lytMenuOS.TagString;
              dm.qryGeral.ExecSQL;

              dm.qryGeral.Active := false;
              dm.qryGeral.SQL.Clear;
              dm.qryGeral.SQL.Add('DELETE FROM TAB_OS WHERE COD_OS=:COD_OS');
              dm.qryGeral.ParamByName('COD_OS').VALUE := lytMenuOS.TagString;
              dm.qryGeral.ExecSQL;

              lytMenuOS.Visible := false;
              ConsultaOS(EdtPesquisar.Text);

            except on ex:exception do
              showmessage ('Erro ao excluir da OS...      ' + ex.Message);

  end;

 lytMenuOS.Visible := false;
 lyt_Tela_Tem_Certeza_ExcluirOS.Visible := false;
end;

procedure TFrmPrincipal.Image3Click(Sender: TObject);
begin
  MudarAba(TImage(Sender));
end;

procedure TFrmPrincipal.Image5Click(Sender: TObject);
  begin
    ConsultarCliente (EdtPesquisarCliente.Text);
  end;




// PREDURE CRIADA PARA ALTERAR O CODIGO DA OS ENTRE (A E F
procedure TFrmPrincipal.AlterarStatusOS(codOS, status: string);
  begin
    try
            dm.qryGeral.Active := false;
            dm.qryGeral.SQL.Clear;
            dm.qryGeral.SQL.Add('UPDATE TAB_OS SET STATUS=:STATUS');
            dm.qryGeral.SQL.Add('WHERE COD_OS=:COD_OS');
            dm.qryGeral.ParamByName('STATUS').VALUE := status;
            dm.qryGeral.ParamByName('COD_OS').VALUE := codOS;
            dm.qryGeral.ExecSQL;

            lytMenuOS.Visible := false;
            ConsultaOS(EdtPesquisar.Text);

          except on ex:exception do
            showmessage ('Erro ao alterar o status da OS...      ' + ex.Message);

    end;
  end;


//PROCEDURE PARA ALTERAR O STATUS DA OS PARA "A" QUANDO FOR CLICADO EM CIMA DO BOT?O
procedure TFrmPrincipal.Image6Click(Sender: TObject);
begin
  lyt_Tela_Tem_Certeza_ReabrirOS.Visible := true;
end;




procedure TFrmPrincipal.Image7Click(Sender: TObject);
begin
  lytMenuOS.Visible := false;
end;




//PROCEDURE PARA ALTERAR O STATUS DA OS PARA "F" QUANDO FOR CLICADO EM CIMA DO BOT?O
procedure TFrmPrincipal.Image8Click(Sender: TObject);
  begin
  lyt_Tela_Tem_Certeza_EncerrarOS.Visible := True;
  end;

procedure TFrmPrincipal.Image9Click(Sender: TObject);
begin
  if NOT assigned(FrmAssinatura) then
    application.CreateForm(TFrmAssinatura, FrmAssinatura);

    FrmAssinatura.codOS := lytMenuOS.TagString;
    FrmAssinatura.Show;

    lytMenuOS.Visible := false;
end;

// procedure que vai criar os icones na tela de OS...

procedure Tfrmprincipal.AddOS(codOS, cliente, dt, hora, status, assunto: string);
var
  item : TListViewItem;

  begin
    item := lvOS.Items.Add;

    with item do
      begin
        Height := 130;
        TagString := codOS;

        TlistItemText(Objects.FindDrawable('TxtOs')).Text := codOS;
        TlistItemText(Objects.FindDrawable('TxtCliente')).Text := cliente;
        TlistItemText(Objects.FindDrawable('TxtData')).Text := dt;
        TlistItemText(Objects.FindDrawable('TxtHora')).Text := hora;
        TlistItemText(Objects.FindDrawable('TxtAssunto')).Text := assunto;

        TlistItemImage(Objects.FindDrawable('ImgData')).bitmap := ImgData.Bitmap;
        TlistItemImage(Objects.FindDrawable('ImgHora')).bitmap := Imghora.Bitmap;
        TlistItemImage(Objects.FindDrawable('ImgPontos')).bitmap := ImgPontos.Bitmap;
        TlistItemImage(Objects.FindDrawable('Imagem_fundo')).bitmap := ImgFundo.Bitmap;
        TlistItemImage(Objects.FindDrawable('ImgMov')).bitmap := ImgAberta.Bitmap;



        // DEFINE O STATUS ( SE A O.S. ? FECHADA OU ABERTA... DEFINIR FUTURAMENTE, EM #PRODU??O#)

        if status = 'A' then
          begin
          TlistItemImage(Objects.FindDrawable('ImgMov')).bitmap := ImgAberta.Bitmap;
          end

        else
          begin
          TlistItemImage(Objects.FindDrawable('ImgMov')).bitmap := ImgFechada.Bitmap;
          end;
      end;

   end;


//PROCEDURE QUE CRIA CLIENTES NA ABA;

procedure TFrmPrincipal.ConsultarCliente(filtro: string);
  begin
    lvCliente.items.clear;

     begin

          dm.qryConsCliente.Active := false;
          dm.qryConsCliente.SQL.Clear;
          dm.qryConsCliente.SQL.Add('SELECT C.*');
          dm.qryConsCliente.SQL.Add('FROM TAB_CLIENTE C');

         //if para fazer o filtro dos cliente puxando pelo nome do cliente
         if combobox_filtro_cliente.ItemIndex = 0 then
         begin
              if filtro <> '' then
            begin
                dm.qryConsCliente.SQL.Add('WHERE C.NOME LIKE :NOME');
                dm.qryConsCliente.ParamByName('NOME').Value := '%' + filtro + '%';

            end;
         end;

         //if para fazer o filtro dos cliente puxando pelo endere?o do cliente
         if combobox_filtro_cliente.ItemIndex = 1 then
         begin
              if filtro <> '' then
            begin
                dm.qryConsCliente.SQL.Add('WHERE C.ENDERECO LIKE :ENDERECO');
                dm.qryConsCliente.ParamByName('ENDERECO').Value := '%' + filtro + '%';

            end;
         end;

         //if para fazer o filtro dos cliente puxando pelo email do cliente
         if combobox_filtro_cliente.ItemIndex = 2 then
         begin
              if filtro <> '' then
            begin
                dm.qryConsCliente.SQL.Add('WHERE C.EMAIL LIKE :EMAIL');
                dm.qryConsCliente.ParamByName('EMAIL').Value := '%' + filtro + '%';

            end;
         end;



          dm.qryConsCliente.SQL.Add('ORDER BY C.NOME');
          dm.qryConsCliente.Active := true;

          while NOT DM.qryConsCliente.Eof do
            begin
                AddCliente(dm.qryConsCliente.FieldByName('COD_CLIENTE').AsString,
                dm.qryConsCliente.FieldByName('NOME').AsString,
                dm.qryConsCliente.FieldByName('ENDERECO').AsString,
                dm.qryConsCliente.FieldByName('CIDADE').AsString,
                dm.qryConsCliente.FieldByName('FONE').AsString,
                dm.qryConsCliente.FieldByName('UF').AsString,
                dm.qryConsCliente.FieldByName('EMAIL').AsString);
                dm.qryConsCliente.Next;
            end;
       end;

    // AddCliente('002', 'Samylla Pompeu Queiroz Correa','Rua Imperatriz N? 359','A?ail?ndia');
    // AddCliente('003', 'Edinaldo Queiroz Correa','Rua Imperatriz N? 359','A?ail?ndia');
    // AddCliente('004', 'Jo?o Pompeu Queiroz','Rua Imperatriz N? 359','Imperatriz');
  end;


procedure TFrmPrincipal.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin

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
            if TabControl1.Activetab <> TabCliente then
            begin
              TabControl1.ActiveTab := TabCliente;
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
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
 MudarAba(ImgOS);
 LytDesejaSair.Visible := false;
 lytMenuOS.Visible := false;
 lyt_Tela_Tem_Certeza_EncerrarOS.Visible := false;
 lyt_Tela_Tem_Certeza_ExcluirOS.Visible := false;
 lyt_Tela_Tem_Certeza_ReabrirOS.Visible := false;
 LytMessagem.Visible := false;
 LytMessagemInfor.Visible := false;
 azul_baixo.Height := 152;
 ConsultaOS(EdtPesquisar.Text);
end;

//PROCEDURE CRIADA PARA CRIAR A TELA DE OS, CASO A MESMA N?O ESTAVA CRIADA, E ALTERA O TITULO DA LABEL, IDENTIFICANDO SE A
// MESMA ? UMA O.S NOVA OU EST? APENAS FAZENDO UMA ALTERA??O NA OS

procedure TFrmPrincipal.OpenCadOS(OS: string);
begin
    if not Assigned(FrmOS) then
        application.CreateForm(TFrmOS, FrmOS);


        FrmOs.codOS := OS;
        FrmOS.executeOnClose := RefreshListaOS;
        FrmOS.Show;

      if OS.IsEmpty then
          begin
              FrmOS.Lbl_Titulo.Text := 'Nova O.S.';
          end
      else
          begin
              FrmOS.Lbl_Titulo.Text := 'Editar O.S.';
          end;
end;

procedure TFrmPrincipal.RefreshListaOS;
begin
    ConsultaOS(EdtPesquisar.Text);
end;


//PROCEDURE PARA ABRI O FORMULARIO DE CADASTRO DE OS OU NOVO CLIENTE
procedure TFrmPrincipal.AbreOSClick(Sender: TObject);
begin
  LytMessagemInfor.Visible := true;
  LblMessagemInfor.Text := 'Deseja fazer uma nova O.S. ou cadastrar um cliente?';
end;




//REFERENCIANDO OS TXT's DA LIST VIWER PARA OS CAMPOS...
procedure Tfrmprincipal.AddCliente(codCliente, nome, endereco, cidade, fone, uf, email: string);
var
  item : TListViewItem;

  begin
    item := lvCliente.Items.Add;

    with item do
      begin
          Height := 90;
          TagString := codCliente;

          TlistItemText(Objects.FindDrawable('txtNome')).Text := nome;
          TlistItemText(Objects.FindDrawable('txtEndereco')).Text := endereco;
          TlistItemText(Objects.FindDrawable('txtCidade')).Text := cidade + ' - ' + uf;

          TlistItemImage(Objects.FindDrawable('ImgCliente')).bitmap := CirculoCliente.Fill.Bitmap.Bitmap;
          TlistItemImage(Objects.FindDrawable('ImgFundoCliente')).bitmap := ImgFundoCliente.Bitmap;
          TlistItemImage(Objects.FindDrawable('ImgMaisCliente')).bitmap := ImgMaisCliente.Bitmap;
          TlistItemImage(Objects.FindDrawable('ImgGps')).bitmap := ImgGps.Bitmap;
          TlistItemImage(Objects.FindDrawable('ImgLine')).bitmap := ImgLine.Bitmap;

     end;

  end;

//PROCEDURE PARA LISTAR AS O.S.


procedure TFrmPrincipal.Layout2Click(Sender: TObject);
begin
  lytMenuOS.Visible := false;
  lyt_Tela_Tem_Certeza_EncerrarOS.Visible := false;
  lyt_Tela_Tem_Certeza_ExcluirOS.Visible := false;
  lyt_Tela_Tem_Certeza_ReabrirOS.Visible := false;
end;

procedure TFrmPrincipal.LupaOSClick(Sender: TObject);
  begin
    ConsultaOS(Edtpesquisar.Text);
  end;


// PROCEDURE PARA SABER QUAL O ICONE FOI CLICADO NA LIST VIWER, PARA ABRIR TLAYOUT DE OP??ES

procedure TFrmPrincipal.LVClienteItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  if assigned (itemObject) then
    begin
        if itemObject.Name = 'ImgMaisCliente' then
           begin
            //ALTERAR INFORMA??ES CLIENTE

           end;
    end;

end;

procedure TFrmPrincipal.LVOSItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
// VARIAVEL CRIADA PARA PEGAR APENAS A OS QUE FOI CLICADA
  var
    codOS: string;
  begin
    codOS := LVOS.Items[ItemIndex].TagString;
    if assigned(ItemObject) then
        if ItemObject.Name = 'ImgPontos' then
        begin
            label3.Text := codOS;
            lytMenuOS.TagString := codOS;
            lytMenuOS.Visible := true;
            exit;
        end;

        //CHAMA A PROCEDURE DA OPENCADOS NA UNIT OS
        openCadOS (codOS);
  end;




procedure TFrmPrincipal.LY_CANCELAR_OSClick(Sender: TObject);
begin
  lytMenuOS.Visible := false;
end;

procedure tfrmprincipal.ConsultaOS(filtro: string);

        begin
         LVOS.items.Clear;

          dm.qryOS.Active := false;
          dm.qryOS.SQL.Clear;
          dm.qryOS.SQL.Add('SELECT O.*, C.NOME');
          dm.qryOS.SQL.Add('FROM TAB_OS O');
          dm.qryOS.SQL.Add('JOIN TAB_CLIENTE C ON (C.COD_CLIENTE = O.COD_CLIENTE)');

              //filtro para burcas o cliente na os pelo nome
            if combobox_filtro_os.ItemIndex = 0 then
              begin
                   if filtro <> '' then
                  begin
                      dm.qryOS.SQL.Add('WHERE C.NOME LIKE :NOME');
                      dm.qryOS.ParamByName('NOME').Value := '%' + filtro + '%';
                  end;
              end;

                //filtro para burcas o cliente na os pelo numero da OS
              if combobox_filtro_os.ItemIndex = 1 then
              begin
                   if filtro <> '' then
                  begin
                      dm.qryOS.SQL.Add('WHERE O.COD_OS LIKE :CODIGO_OS');
                      dm.qryOS.ParamByName('CODIGO_OS').Value := '%' + filtro + '%';
                  end;
              end;

                //filtro para burcas o cliente na os pela data da OS
              if combobox_filtro_os.ItemIndex = 2 then
              begin
                   if filtro <> '' then
                  begin
                      dm.qryOS.SQL.Add('WHERE O.DATA_OS LIKE :DATA');
                      dm.qryOS.ParamByName('DATA').Value := '%' + filtro + '%';
                  end;
              end;


              dm.qryOS.SQL.Add('ORDER BY O.COD_OS DESC');
              dm.qryOS.Active := true;

          while NOT DM.qryOS.Eof do
            begin
              AddOS(dm.qryOS.FieldByName('COD_OS').AsString,
                    dm.qryOS.FieldByName('NOME').AsString,
                    FormatDateTime('dd/mm/yyyy', dm.qryOS.FieldByName('DATA_OS').AsDateTime),
                    FormatDateTime('HH:nn', dm.qryOS.FieldByName('DATA_OS').AsDateTime),
                   dm.qryOS.FieldByName('STATUS').AsString,
                  dm.qryOS.FieldByName('ASSUNTO').AsString);

                  dm.qryOS.Next;
            end;
       end;

end.
