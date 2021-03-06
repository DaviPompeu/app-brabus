unit UnitOS;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Layouts,
  FMX.ListBox, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, Data.DB, FMX.Edit, System.Actions,
  FMX.ActnList, FMX.StdActns, u99Permissions, FMX.MediaLibrary.Actions, FMX.DialogService;

type
TCallbackOS = procedure of Object;

  TFrmOS = class(TForm)
    Lbl_Titulo: TLabel;
    Img_MalaOS: TImage;
    Img_Voltar_OS: TImage;
    Img_fundo_azul_topo: TImage;
    Img_Salvar_OS: TImage;
    Lyt_Informacoes: TLayout;
    Lbl_Titulo_Status: TLabel;
    Img_CaixaDeTexto_Status: TImage;
    Lbl_StatusOS: TLabel;
    Lbl_Titulo_OS: TLabel;
    Img_CaixaDeTexto_OS: TImage;
    LblNumeroOS: TLabel;
    Lyt_RedeSocial: TLayout;
    Img_Email: TImage;
    Img_Whats: TImage;
    TabControl: TTabControl;
    TabOS: TTabItem;
    TabFoto: TTabItem;
    TabAssinatura: TTabItem;
    ListBox1: TListBox;
    Lbl_Cliente: TListBoxItem;
    Image1: TImage;
    Lyt_Cliente: TLayout;
    Lbl_1: TLabel;
    Lbl_NomeClienteOS: TLabel;
    Img_Opcoes_Cliente: TImage;
    Lbl_Endereco: TListBoxItem;
    Lbl_Data: TListBoxItem;
    Lbl_Assunto: TListBoxItem;
    Lbl_Problema: TListBoxItem;
    Line1: TLine;
    Img_endereco: TImage;
    Img_Opcoes_Endereco: TImage;
    Lyt_Endereco: TLayout;
    Lbl_2: TLabel;
    Lbl_EnderecoOS: TLabel;
    Line2: TLine;
    Img_Data: TImage;
    Img_Opcoes_Data: TImage;
    Line3: TLine;
    Layout1: TLayout;
    Label1: TLabel;
    Lbl_DataHoraOS: TLabel;
    Img_Informacoes: TImage;
    Img_Opcoes_Informacoes: TImage;
    Lyt_Informacoes_OS: TLayout;
    Label2: TLabel;
    Lbl_AssuntoOS: TLabel;
    Line4: TLine;
    Image2: TImage;
    Img_Opcoes_Problema: TImage;
    Line5: TLine;
    Layout2: TLayout;
    Label4: TLabel;
    Lbl_ProblemaOS: TLabel;
    LVOS: TListView;
    lytCamera: TLayout;
    imgCamera: TImage;
    Label3: TLabel;
    Img_Assinatura: TImage;
    Lyt_BotoesEmBaixo: TLayout;
    azul_baixo: TImage;
    Img_OS_Icone: TImage;
    Img_Foto_Icone: TImage;
    Img_Assinatura_Icone: TImage;
    imgExcluir: TImage;
    lytCampos: TLayout;
    RecFundoCampos: TRectangle;
    RecCampos: TRectangle;
    ImgVoltar: TImage;
    lblTituloCad: TLabel;
    edtCadTexto: TEdit;
    ImgSalvar: TImage;
    RecFoto: TRectangle;
    Image4: TImage;
    LblTituloFoto: TLabel;
    Layout3: TLayout;
    Layout4: TLayout;
    Image3: TImage;
    Image5: TImage;
    edtFoto: TEdit;
    imgFoto: TImage;
    ActionList1: TActionList;
    ActCamera: TTakePhotoFromCameraAction;
    OpenDialog: TOpenDialog;
    Lyt_ExibeFoto: TLayout;
    Rectangle5: TRectangle;
    Rectangle3: TRectangle;
    Layout5: TLayout;
    ImgFotoRec: TImage;
    Label5: TLabel;
    LytConfirmarSairSemSalvar: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    lbl_sairsemsalvar: TLabel;
    Layout35: TLayout;
    Sim_Sair: TImage;
    Nao_Sair: TImage;
    procedure FormShow(Sender: TObject);
    procedure Img_OS_IconeClick(Sender: TObject);
    procedure Lbl_EnderecoClick(Sender: TObject);
    procedure ImgSalvarClick(Sender: TObject);
    procedure ImgVoltarClick(Sender: TObject);
    procedure Img_WhatsClick(Sender: TObject);
    procedure Img_EmailClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure ActCameraDidFinishTaking(Image: TBitmap);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure imgCameraClick(Sender: TObject);
    procedure LVOSItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure Img_Salvar_OSClick(Sender: TObject);
    procedure Lbl_DataClick(Sender: TObject);
    procedure Lbl_AssuntoClick(Sender: TObject);
    procedure Lbl_ProblemaClick(Sender: TObject);
    procedure Lbl_ClienteClick(Sender: TObject);
    procedure Img_Voltar_OSClick(Sender: TObject);
    procedure Sim_SairClick(Sender: TObject);
    procedure Nao_SairClick(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
  private
    lbl : TLabel;
    permissao : T99Permissions;
    procedure MudarAba(Image: TImage);
    procedure CarregarFotos;
    procedure AddFoto(CodFoto, descricao: string; foto: TBitmap);
    procedure AbrirEdicaoItem(tipoCampo, titulo: string; lblEdicao: TLabel);
    procedure FecharEdicaoItem(indCancelar: boolean);
    procedure ErroPermissao(Sender: TObject);
    procedure SelecionarCliente(codCliente: string);
    procedure VerificaSimOuNao(Verifica : boolean);
    { Private declarations }
  public
    executeOnClose: TCallbackOS;
    codOS: string;
  end;

var
  FrmOS: TFrmOS;

implementation

{$R *.fmx}

uses UnitDataBase, UnitAssinatura, UnitLogin, UnitFunctions, UnitBuscaCliente;


procedure TFrmOS.Image3Click(Sender: TObject);
var
  foto : TBitmap;
begin
   foto := TBitmap.Create;
   foto.Assign(imgFoto.Bitmap);


   AddFoto(GeraCodFoto, edtFoto.Text, foto);

   RecFoto.Visible := false;
end;

procedure TFrmOS.Image5Click(Sender: TObject);
begin
  recFoto.Visible := False;
end;


procedure TFrmOS.ErroPermissao(Sender: TObject);
begin
   ShowMessage('Voc? n?o possui acesso ao recurso de foto do aparelho');
end;



//PROCEDURE PARA IDENTICAR SE ESTOU USANDO O WINDOWS OU O CELULAR PARA PUXAR AS IMAGENS E TXT PARA DENTRO DA LISTVIWER
procedure TFrmOS.imgCameraClick(Sender: TObject);
begin
      {$IFDEF MSWINDOWS}
     if OpenDialog.Execute then
         begin
           imgFoto.Bitmap.LoadFromFile(OpenDialog.FileName);
           edtFoto.Text := '';
           RecFoto.Visible := true;
         end;
          {$ELSE}
       permissao.Camera(ActCamera, ErroPermissao);
          {$ENDIF}
end;

procedure TFrmOS.ImgSalvarClick(Sender: TObject);
begin
    FecharEdicaoItem(false);

end;

procedure TFrmOS.ImgVoltarClick(Sender: TObject);
begin
  FecharEdicaoItem(true);
end;

procedure TFrmOS.FecharEdicaoItem(indCancelar : boolean);
begin
  if not indCancelar then
    lbl.Text := edtCadTexto.Text;
    lytCampos.Visible := false;

end;



procedure TFrmOS.Img_EmailClick(Sender: TObject);
begin
   showmessage('Enviar email para : ' + Img_Email.TagString);
end;



//PROCEDURE PARA MUDAR DE ABA NA TAB CONTROL
procedure TFrmOS.Img_OS_IconeClick(Sender: TObject);
begin
  MudarAba(TImage(Sender));
end;



procedure TFrmOS.Img_Salvar_OSClick(Sender: TObject);
var

  i : integer;
  Num1,Num2,RealResult : real;
  formataResult :string;
  recebeCodOS : string;
begin
    Num1 := StrToFloat(GeraCodOS);
    Num2 := 1;
    RealResult := (Num1+Num2);
    recebeCodOS := FloatToStr(RealResult); // recebendo o valor real com a soma feita


    formataResult := PreencheZero(recebeCodOS, 6, 1);   // chamando uma function para trar os "0" a esquerda


  with dm.qryGeral do
    begin
      //SALVANDO OS
        Active := false;
        SQL.Clear;


        if codOS = '' then
        begin
        // SE O CODOS ESTIVER VAZIO, SIGNIFICA QUE ESTAMOS CRIANDO UMA NOVA O.S.
         SQL.ADD('INSERT INTO TAB_OS(COD_OS, COD_CLIENTE, ENDERECO, DATA_OS, ASSUNTO, PROBLEMA, STATUS)');
         SQL.ADD('VALUES(:COD_OS, :COD_CLIENTE, :ENDERECO, :DATA_OS, :ASSUNTO, :PROBLEMA, :STATUS)');


        codOS := formataResult;

        end
        else
        // SE O CODOS ESTIVER PREENCHIDO, SIGNIFICA QUE IREMOS TER QUE ATUALIZAR A O.S. COMO OS DADOS PREENCHIDOS
        begin

        SQL.ADD('UPDATE TAB_OS SET COD_CLIENTE=:COD_CLIENTE, ENDERECO=:ENDERECO, DATA_OS=:DATA_OS,');
        SQL.ADD('ASSUNTO=:ASSUNTO, PROBLEMA=:PROBLEMA, STATUS=:STATUS WHERE COD_OS=:COD_OS');

        end;

        ParamByName('COD_OS').Value := codOS;
        ParamByName('COD_CLIENTE').Value := Lbl_NomeClienteOS.TagString;
        ParamByName('ENDERECO').Value := Lbl_EnderecoOS.Text;
        ParamByName('DATA_OS').Value := FormataData(Lbl_DataHoraOS.Text);
        ParamByName('ASSUNTO').Value := Lbl_AssuntoOS.Text;
        ParamByName('PROBLEMA').Value := Lbl_ProblemaOS.Text;

        if Lbl_StatusOS.Text = 'ABERTA' then
        begin
        ParamByName('STATUS').Value := 'A'
        end

        else
        begin
        ParamByName('STATUS').Value := 'F'
        end;

        ExecSQL;

         // Tratamento das fotos...
        Active := false;
        SQL.Clear;
        SQL.Add('DELETE FROM TAB_OS_FOTO WHERE COD_OS=:COD_OS');
        ParamByName('COD_OS').Value := codOS;
        ExecSQL;

        for i := 0 to LVOS.ItemCount - 1 do
        begin
            Active := false;
            SQL.Clear;
            SQL.Add('INSERT INTO TAB_OS_FOTO(COD_FOTO, COD_OS, FOTO, DESCRICAO, DT_FOTO)');
            SQL.Add('VALUES(:COD_FOTO, :COD_OS, :FOTO, :DESCRICAO, current_timestamp)');
            ParamByName('COD_FOTO').Value := GeraCodFoto;
            ParamByName('COD_OS').Value := codOS;
            ParamByName('FOTO').Assign(TListItemImage(LVOS.Items[i].Objects.FindDrawable('imgFoto')).Bitmap);
            ParamByName('DESCRICAO').Value := TListItemText(LVOS.Items[i].Objects.FindDrawable('txtDescricao')).Text;
            ExecSQL;
        end;

        // Se formataResult = '000001' significa que devemos fazer um insert, pois n?o existe nenhum campo na TAB_CODIGO
        if formataResult = '000001' then
        begin
             Active := false;
             Sql.Clear;
             SQL.ADD('INSERT INTO TAB_CODIGO(CODIGO_OS)');
             SQL.ADD('VALUES(:CODIGO_OS)');
             ParamByName('CODIGO_OS').Value := formataResult;
             ExecSQL;
        end
        else
        begin
             Active := false;
             Sql.Clear;
             SQL.ADD('UPDATE TAB_CODIGO SET CODIGO_OS=:CODIGO_OS'); // Se formataResult <> 00001 significa que na TAB_CODIGO tem um codigo j? cadastrado
             ParamByName('CODIGO_OS').Value := formataResult;
             ExecSQL;
        end;

    end;

    //ATUALIZAR A LISTAGEM DAS O.S. NO FORM PRINCIPAL

    // Atualizar a listagem das OSs no form principal...
    if Assigned(executeOnClose) then
        executeOnClose;

    close;


end;

procedure TFrmOS.Img_Voltar_OSClick(Sender: TObject);
begin
lbl_sairsemsalvar.Text := 'Deseja sair sem finalizar a O.S. ?';
LytConfirmarSairSemSalvar.Visible := true;
end;

procedure TFrmOS.Img_WhatsClick(Sender: TObject);
begin
  showmessage('Abrir whatsapp no fone : ' + Img_Whats.TagString);
end;

procedure TFrmOS.AbrirEdicaoItem(tipoCampo, titulo: string;
                                 lblEdicao : TLabel);
begin
   lblTituloCad.Text := titulo;
   edtCadTexto.Text := lblEdicao.Text;
   lbl := lblEdicao;



  // CASO TIVESSE MAIS CAMPOS SEM SER O EDIT, PODIAMOS ESCONDER O EDIT E LAN?AR OUTROS TIPOS DE CAMPOS PARA OS CLIENTES ESCOLHEREM

      // if tipoCampo = 'edit' then
     // edtCadTexto.Visible := true;




   lytCampos.Visible := true;



  //
end;





procedure TFrmOS.Lbl_AssuntoClick(Sender: TObject);
begin
   AbrirEdicaoItem('edit', 'Assunto da O.S.', Lbl_AssuntoOS);
end;


procedure TFrmOS.SelecionarCliente(codCliente: string);
begin
    if codCliente.IsEmpty then
        exit;

    try
        with dm.qryConsCliente do
        begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT * FROM TAB_CLIENTE WHERE COD_CLIENTE = :COD_CLIENTE');
            ParamByName('COD_CLIENTE').Value := codCliente;
            Active := true;

            Lbl_NomeClienteOS.Text := FieldByName('NOME').AsString;
            Lbl_NomeClienteOS.TagString := FieldByName('COD_CLIENTE').AsString;
            Lbl_EnderecoOS.Text := FieldByName('ENDERECO').AsString;
            Img_Whats.TagString := FieldByName('FONE').AsString;
            Img_Email.TagString := FieldByName('EMAIL').AsString;

            Active := false;
        end;
    except
        showmessage('Erro ao buscar dados do cliente');
    end;
end;

procedure TFrmOS.Sim_SairClick(Sender: TObject);
begin
close;
end;

procedure TFrmOS.Lbl_ClienteClick(Sender: TObject);
begin
  //ABRIR BUSCA DE CLIENTES
    if NOT Assigned(FrmBuscaCliente) then
        Application.CreateForm(TFrmBuscaCliente, FrmBuscaCliente);

    FrmBuscaCliente.executeOnClose := SelecionarCliente;
    FrmBuscaCliente.Show;

end;

procedure TFrmOS.Lbl_DataClick(Sender: TObject);
begin
   AbrirEdicaoItem('edit', 'Data da O.S.', Lbl_DataHoraOS);
end;

procedure TFrmOS.Lbl_EnderecoClick(Sender: TObject);
begin
  AbrirEdicaoItem('edit', 'Endere?o do Cliente', Lbl_EnderecoOS);
end;

procedure TFrmOS.Lbl_ProblemaClick(Sender: TObject);
begin
   AbrirEdicaoItem('edit', 'Problema da O.S.', Lbl_ProblemaOS);
end;


procedure TFrmOS.VerificaSimOuNao(Verifica : boolean);
begin

end;

procedure TFrmOS.LVOSItemClickEx(const Sender: TObject; ItemIndex: Integer;
  const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
begin

//  PROCEDURE FEITA PARA QUANDO CLICAR NA IMAGEM DE EXCLUIR DENTRO DA LIST VIWER, EXCLUIR A FOTO ADICIONADA
  if assigned (itemObject) then
    if itemObject.Name = 'imgExcluir' then
     begin
            TDialogService.MessageDialog('Confirma exclus?o da foto?',
                     TMsgDlgType.mtConfirmation,
                     [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],
                     TMsgDlgBtn.mbNo,
                     0,
                     procedure(const AResult: TModalResult)
                     begin
                        if AResult = mrYes then
                            lvOS.Items.Delete(ItemIndex);
                     end);

        end;

end;

procedure  TFrmOS.MudarAba(Image: TImage);
  begin
    Img_OS_Icone.Opacity := 0.6;
    Img_Foto_Icone.Opacity := 0.6;
    Img_Assinatura_Icone.Opacity := 0.6;

    image.Opacity := 1;

    TabControl.GotoVisibleTab(Image.Tag);
  end;









procedure TFrmOS.Nao_SairClick(Sender: TObject);
begin
LytConfirmarSairSemSalvar.Visible := false;
end;

procedure TFrmOS.Rectangle1Click(Sender: TObject);
begin
LytConfirmarSairSemSalvar.Visible := false;
end;

procedure TFrmOS.AddFoto(codFoto, descricao: string;
                          foto: TBitmap);
var
  item: TListViewItem;

//procedure que joga as imagens e txt para dentro da list viwer
    begin

      item := LVOS.Items.Add;


          with item do
          begin
             Height := 90;
             TagString := codFoto;

             TListItemText(Objects.FindDrawable('txtDescricao')).Text := descricao;
             TListItemImage(Objects.FindDrawable('imgExcluir')).Bitmap := imgExcluir.Bitmap;

             if Assigned (foto) then
                 begin
                    TListItemImage(Objects.FindDrawable('imgFoto')).OwnsBitmap := true;
                    TListItemImage(Objects.FindDrawable('imgFoto')).Bitmap := foto;
                 end;



          end;





    end;


//PROCEDURE FEITA PARA FAZER A BUSCA DA MESMA NO BANCO DE DADOS E RETORNAR COMO FOTO DO TIPO BLOB
procedure TFrmOS.CarregarFotos;
var
  foto : TBitmap;


begin
  ///
     LVOS.Items.Clear;


     with dm.qryFoto  do
         begin
             Active := false;
             Sql.Clear;
             Sql.Add('SELECT * FROM TAB_OS_FOTO');
             Sql.Add('WHERE COD_OS = :COD_OS');
             ParamByName('COD_OS').Value := codOS;
             Active := true;

             while Not eof do
                 begin
                     foto := TBitmap.Create;
                     LoadBitmapFromBlob(foto, TBlobField(FieldByName('FOTO')));

                     AddFoto(FieldByName('COD_FOTO').AsString,
                             FieldByName('DESCRICAO').AsString,
                             foto);


                     Next;



                 end;



            Active := False;
         end;

  ///
end;





//PEGANDO A FOTO QUANDO FOR TIRADA NO DELPHI E COLOCANDO EM UMA TIMAGEM
procedure TFrmOS.ActCameraDidFinishTaking(Image: TBitmap);
begin
  imgFoto.Bitmap := Image;
  edtFoto.Text := '';
  RecFoto.Visible := true;

end;



procedure TFrmOS.FormCreate(Sender: TObject);
begin
    permissao := T99Permissions.Create;
end;

procedure TFrmOS.FormDestroy(Sender: TObject);
begin
    permissao.DisposeOf;
end;

procedure TFrmOS.FormShow(Sender: TObject);
begin
    lytCampos.Visible := false;
    LytConfirmarSairSemSalvar.Visible := false;
    RecFoto.Visible := false;
    FecharEdicaoItem(true);
    Lbl_NomeClienteOS.Text := '';
    Lbl_NomeClienteOS.TagString := '';
    Lbl_EnderecoOS.Text := '';
    Lbl_DataHoraOS.Text := FormatDateTime('dd/mm/yyyy HH:nn' , now);
    Lbl_AssuntoOS.Text := '';
    Lbl_ProblemaOS.Text := '';
    Lbl_StatusOS.Text := 'ABERTA';
    LblNumeroOS.Text := '-----';
    Img_Whats.TagString := '';
    Img_Email.TagString := '';
    azul_baixo.Height := 152;


 // ABRINDO O MODE DE EDI??O DA OS

    if codOS <> '' then
    begin
       with dm do
       begin
          qryGeral.Active := false;
          qryGeral.SQL.Clear;
          qryGeral.SQL.Add('SELECT O.*, C.NOME, C.FONE, C.EMAIL');
          qryGeral.SQL.Add('FROM TAB_OS O');
          qryGeral.SQL.Add('JOIN TAB_CLIENTE C ON (C.COD_CLIENTE = O.COD_CLIENTE)');
          qryGeral.SQL.Add('WHERE O.COD_OS = :COD_OS');
          qryGeral.ParamByName('COD_OS').Value := codOS;
          qryGeral.Active := true;

          Lbl_NomeClienteOS.Text := qryGeral.FieldByName('NOME').AsString;
          Lbl_NomeClienteOS.TagString := qryGeral.FieldByName('COD_CLIENTE').AsString;
          Lbl_EnderecoOS.Text := qryGeral.FieldByName('ENDERECO').AsString;
          Lbl_DataHoraOS.Text := FormatDateTime('dd/mm/yyyy HH:nn', qryGeral.FieldByName('DATA_OS').AsDateTime);
          Lbl_AssuntoOS.Text := qryGeral.FieldByName('ASSUNTO').AsString;
          Lbl_ProblemaOS.Text := qryGeral.FieldByName('PROBLEMA').AsString;
          LblNumeroOS.text := codOS;



          if qryGeral.FieldByName('STATUS').AsString = 'F' then
           Lbl_StatusOS.Text := 'Fechada';

          Img_Whats.TagString := qryGeral.FieldByName('FONE').AsString;
          Img_Email.TagString := qryGeral.FieldByName('EMAIL').AsString;

          //ASSINATURA CARREGANDO...
         LoadBitmapFromBlob(Img_Assinatura.Bitmap, TBlobField(qryGeral.FieldByName('ASSINATURA')));

       end;

    end;

   MudarAba(Img_OS_Icone);
   CarregarFotos;
end;



end.
