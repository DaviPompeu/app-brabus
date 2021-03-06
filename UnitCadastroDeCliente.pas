unit UnitCadastroDeCliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.ListBox, FMX.Edit, FMX.DateTimeCtrls, uFormat, FMX.ComboEdit;
  //UFormat ? a unit que cria as mascaras no edits

type
  TFrmCadastroCliente = class(TForm)
    ImgTopoOS: TImage;
    LblTituloCadastro: TLabel;
    ImgVoltar: TImage;
    ImgIcone: TImage;
    ListBoxFisico: TListBox;
    FisicoListNome: TListBoxItem;
    Img_FisicoNome: TImage;
    Lyt_Cliente: TLayout;
    Lbl_FisicoNome: TLabel;
    Lbl_FisicoNomeCliente: TLabel;
    Img_FisicoOpcoesCliente: TImage;
    Line1: TLine;
    FisicoListEndereco: TListBoxItem;
    Img_FisicoEndereco: TImage;
    Img_FisicoOpcoesEndereco: TImage;
    Lyt2: TLayout;
    Lbl_FisicoEnderecos: TLabel;
    Lbl_FisicoEnderecosRua: TLabel;
    FisicoListCPF: TListBoxItem;
    Img_FisicoCPF: TImage;
    Img_FisicoOpcoesCPF: TImage;
    Line3: TLine;
    Layout2: TLayout;
    Lbl_FisicoCPF: TLabel;
    Lbl_FisicoCPFCliente: TLabel;
    FisicoListTelefone: TListBoxItem;
    Img_FisicoTelefone: TImage;
    Img_FisicoOpcoesTelefones: TImage;
    Lyt_Informacoes_OS: TLayout;
    Lbl_FisicoTelefone: TLabel;
    Lbl_FisicoTelefoneContato1: TLabel;
    Line4: TLine;
    FisicoListDadosBasicos: TListBoxItem;
    Img_FisicoDados: TImage;
    Img_FisicoOpcoesDados: TImage;
    Line5: TLine;
    Layout3: TLayout;
    Lbl_FisicoDados: TLabel;
    Lbl_FisicoEnderecosEstado: TLabel;
    Lbl_FisicoEnderecosBairro: TLabel;
    FisicoListDataCadastro: TListBoxItem;
    Layout4: TLayout;
    Lbl_FisicoDataCadastro: TLabel;
    Lbl_FisicoDataCadastroMostraData: TLabel;
    Img_FisicoOpcoesDataCadastro: TImage;
    Line2: TLine;
    Img_FisicoDataCadastro: TImage;
    Lbl_FisicoEnderecosNumero: TLabel;
    LytOrganizaEndereco: TLayout;
    Line6: TLine;
    Lbl_FisicoTelefoneContato2: TLabel;
    Layout5: TLayout;
    Lbl_FisicoDadosSexo: TLabel;
    Lbl_FisicoDadosDataNascimento: TLabel;
    Lyt_Seleciona: TLayout;
    Layout1: TLayout;
    ImgFisico: TImage;
    ImgJuridico: TImage;
    Layout6: TLayout;
    Line7: TLine;
    ListBoxJuridico: TListBox;
    ListBoxNome: TListBoxItem;
    Image7: TImage;
    Layout7: TLayout;
    Lbl_JuridicoRazaoEFantasia: TLabel;
    Lbl_JuridicoRazaoEFantasiaRazao: TLabel;
    Image8: TImage;
    Line14: TLine;
    LytMessagemInfor: TLayout;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Layout15: TLayout;
    Image19: TImage;
    ImgInforOK: TImage;
    LblMessagemInfor: TLabel;
    Layout16: TLayout;
    Lbl_FisicoObervacoes: TLabel;
    Lbl_FIsicoObservacaoText: TLabel;
    Img: TImage;
    Line15: TLine;
    Img_FisicoOpcoesObservacoes: TImage;
    FisicoListObservacao: TListBoxItem;
    Lbl_JuridicoRazaoEFantasiaFantasia: TLabel;
    Lbl_FisicoDadosEmail: TLabel;
    Lbl_FisicoEnderecosCidade: TLabel;
    Lbl_FisicoEnderecosCep: TLabel;
    ImgSalvaClienteFisico: TImage;
    ImgSalvaClienteJuridico: TImage;
    Layout18: TLayout;
    LytCadastroFisico: TLayout;
    StyleBook3: TStyleBook;
    LytFundo: TLayout;
    RecFundo: TRectangle;
    ImgFundoCadFisico: TRectangle;
    LblTituloCadastroFisicoNome: TLabel;
    ImgSalvar: TImage;
    Lytgeral: TLayout;
    ImgVoltarCadFisico: TImage;
    StyleBook4: TStyleBook;
    LytCadFisicoNome: TLayout;
    LytCadFisicoCpf: TLayout;
    Image3: TImage;
    Layout25: TLayout;
    EdtCadFisicoCPF: TEdit;
    Layout26: TLayout;
    Image21: TImage;
    Layout19: TLayout;
    Image22: TImage;
    Layout20: TLayout;
    Layout21: TLayout;
    Image23: TImage;
    LytCadFisicoEndereco: TLayout;
    Layout29: TLayout;
    LytRua: TLayout;
    img_rua: TImage;
    Layout22: TLayout;
    EdtCadFisicoRua: TEdit;
    LytBairroCep: TLayout;
    img_bairro: TImage;
    Layout24: TLayout;
    EdtCadFisicoBairro: TEdit;
    org1: TLayout;
    Image5: TImage;
    Image24: TImage;
    Layout23: TLayout;
    img_cep: TImage;
    Image4: TImage;
    Layout27: TLayout;
    EdtCadFisicoCep: TEdit;
    LytEstadoNumero: TLayout;
    Layout30: TLayout;
    Image25: TImage;
    Layout31: TLayout;
    Edit6: TEdit;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Layout32: TLayout;
    EdtCadFisicoNumero: TEdit;
    EdtCadFisicoUf: TComboEdit;
    Layout28: TLayout;
    Layout33: TLayout;
    Image29: TImage;
    Layout34: TLayout;
    EdtCadFisicoCidade: TEdit;
    Image30: TImage;
    LytCadFisicoTelefone: TLayout;
    Layout36: TLayout;
    Layout40: TLayout;
    Layout41: TLayout;
    Image33: TImage;
    Layout42: TLayout;
    EdtCadFisicoFone1: TEdit;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Layout43: TLayout;
    EdtCadFisicoFone2: TEdit;
    LytCadFisicoDadosBasicos: TLayout;
    Layout37: TLayout;
    Layout49: TLayout;
    Layout50: TLayout;
    Image41: TImage;
    Layout51: TLayout;
    Edit14: TEdit;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Layout52: TLayout;
    Layout53: TLayout;
    Layout54: TLayout;
    Image45: TImage;
    Layout55: TLayout;
    EdtCadFisicoEmail: TEdit;
    Image46: TImage;
    EdtCadFisicoSexo: TEdit;
    LytCadFisicoObeservacao: TLayout;
    Image31: TImage;
    Layout38: TLayout;
    EdtCadFisicoObs: TEdit;
    Layout39: TLayout;
    Image32: TImage;
    EdtCadFisicoNome: TEdit;
    EdtCadFisicoDataNascimento: TEdit;
    LytConfirmacaoSair: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    lbl_sairsemsalvar: TLabel;
    Layout35: TLayout;
    Sim_Sair: TImage;
    Nao_Sair: TImage;
    LytCadastroJuridico: TLayout;
    StyleBook1: TStyleBook;
    Layout45: TLayout;
    Rectangle3: TRectangle;
    RecFundoJuridico: TRectangle;
    LblTituloCadastroJuridicoNome: TLabel;
    Image6: TImage;
    Layout46: TLayout;
    LytCadJuridicoNome: TLayout;
    Layout48: TLayout;
    Image20: TImage;
    Layout56: TLayout;
    EdtCadJuridicoNomeJuridico: TEdit;
    Layout57: TLayout;
    Image37: TImage;
    LytCadJuridicoInscricao: TLayout;
    Image38: TImage;
    Layout59: TLayout;
    EdtCadJuridicoInscricao: TEdit;
    Layout60: TLayout;
    Image39: TImage;
    LytCadJuridicoEndereco: TLayout;
    Layout62: TLayout;
    Layout63: TLayout;
    Image40: TImage;
    Layout64: TLayout;
    Layout65: TLayout;
    EdtCadJuridicoRua: TEdit;
    Image47: TImage;
    Layout66: TLayout;
    Layout67: TLayout;
    Image48: TImage;
    Layout68: TLayout;
    EdtCadJuridicoBairro: TEdit;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Layout69: TLayout;
    EdtCadJuridicoCep: TEdit;
    Layout70: TLayout;
    Layout71: TLayout;
    Image52: TImage;
    Layout72: TLayout;
    Edit7: TEdit;
    EdtCadJuridicoUF: TComboEdit;
    Image53: TImage;
    Image54: TImage;
    Image55: TImage;
    Layout73: TLayout;
    EdtCadJuridicoNumero: TEdit;
    Layout74: TLayout;
    Layout75: TLayout;
    Image56: TImage;
    Layout76: TLayout;
    EdtCadJuridicoCidade: TEdit;
    Image57: TImage;
    LytCadJuridicoFones: TLayout;
    Layout78: TLayout;
    Layout79: TLayout;
    Layout80: TLayout;
    Image58: TImage;
    Layout81: TLayout;
    EdtCadJuridicoFone1: TEdit;
    Image59: TImage;
    Image60: TImage;
    Image61: TImage;
    Layout82: TLayout;
    EdtCadJuridicoFone2: TEdit;
    LytCadJuridicoDadosBasicos: TLayout;
    Layout84: TLayout;
    LytEmailJuridico: TLayout;
    Layout90: TLayout;
    LytCadJuridicoObservacoes: TLayout;
    Image68: TImage;
    Layout93: TLayout;
    EdtCadJuridicoObservacoes: TEdit;
    Layout94: TLayout;
    Image69: TImage;
    Image70: TImage;
    StyleBook2: TStyleBook;
    Layout44: TLayout;
    Image71: TImage;
    Layout47: TLayout;
    EdtCadJuridicoNomeFantasia: TEdit;
    Layout58: TLayout;
    Image72: TImage;
    ListBoxEndereco: TListBoxItem;
    Image9: TImage;
    Image10: TImage;
    Layout8: TLayout;
    Label1: TLabel;
    Layout9: TLayout;
    lbl_JuridicoEnderecoRua: TLabel;
    Lbl_JuridicoEnderecoNumero: TLabel;
    Lbl_JuridicoEnderecoCidade: TLabel;
    Layout61: TLayout;
    Lbl_JuridicoEnderecoBairro: TLabel;
    Lbl_JuridicoEnderecoCep: TLabel;
    Lbl_JuridicoEnderecoEstado: TLabel;
    Line8: TLine;
    ListBoxTelefone: TListBoxItem;
    Image1: TImage;
    Image2: TImage;
    Layout10: TLayout;
    Label11: TLabel;
    Lbl_JuridicoCPNJCliente: TLabel;
    Lbl_JuridicoInscricaoEstadual: TLabel;
    ListBoxItem1: TListBoxItem;
    Image11: TImage;
    Image12: TImage;
    Layout11: TLayout;
    Label32: TLabel;
    Lbl_JuridicoTelefonesParaContato1: TLabel;
    Lbl_JuridicoTelefonesParaContato2: TLabel;
    ListBoxItem2: TListBoxItem;
    Image13: TImage;
    Image14: TImage;
    Layout12: TLayout;
    Label35: TLabel;
    Layout13: TLayout;
    Lbl_JuridicoDadosBasicosEmail: TLabel;
    Lbl_JuridicoDadosBasicosSite: TLabel;
    Lbl_JuridicoDadosBasicosFax: TLabel;
    ListBoxItem3: TListBoxItem;
    Layout14: TLayout;
    Label39: TLabel;
    Lbl_JuridicoDataCadastroNow: TLabel;
    Image15: TImage;
    Image16: TImage;
    ListBoxItem4: TListBoxItem;
    Layout17: TLayout;
    Label41: TLabel;
    Lbl_JuridicoObeservacaoCliente: TLabel;
    Image17: TImage;
    Image18: TImage;
    Layout77: TLayout;
    Image73: TImage;
    Layout83: TLayout;
    EdtCadJuridicoCNPJ: TEdit;
    Layout92: TLayout;
    Image74: TImage;
    Image66: TImage;
    Image67: TImage;
    Layout85: TLayout;
    EdtCadJuridicoEmail: TEdit;
    Layout86: TLayout;
    Layout87: TLayout;
    Image62: TImage;
    Image63: TImage;
    Layout88: TLayout;
    EdtCadJuridicoFax: TEdit;
    Layout89: TLayout;
    Layout91: TLayout;
    Image64: TImage;
    Image65: TImage;
    Layout95: TLayout;
    EdtCadJuridicoSite: TEdit;
    procedure ImgJuridicoClick(Sender: TObject);
    procedure ImgFisicoClick(Sender: TObject);
    procedure LblTituloCadastroClick(Sender: TObject);
    procedure ImgInforOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FisicoListNomeClick(Sender: TObject);
    procedure FisicoListEnderecoClick(Sender: TObject);
    procedure FisicoListTelefoneClick(Sender: TObject);
    procedure FisicoListDadosBasicosClick(Sender: TObject);
    procedure FisicoListCPFClick(Sender: TObject);
    procedure FisicoListObservacaoClick(Sender: TObject);
    procedure ImgSalvaClienteFisicoClick(Sender: TObject);
    procedure ImgSalvaClienteJuridicoClick(Sender: TObject);
    procedure ImgVoltarClick(Sender: TObject);
    procedure ImgVoltarCadFisicoClick(Sender: TObject);
    procedure ImgSalvarClick(Sender: TObject);
    procedure EdtCadFisicoCPFTyping(Sender: TObject);
    procedure EdtCadFisicoDataNascimentoTyping(Sender: TObject);
    procedure EdtCadFisicoCepTyping(Sender: TObject);
    procedure RecFundoClick(Sender: TObject);
    procedure Sim_SairClick(Sender: TObject);
    procedure Nao_SairClick(Sender: TObject);
    procedure EdtCadFisicoFone1Typing(Sender: TObject);
    procedure EdtCadFisicoFone2Typing(Sender: TObject);
    procedure ListBoxNomeClick(Sender: TObject);
    procedure ListBoxEnderecoClick(Sender: TObject);
    procedure ListBoxTelefoneClick(Sender: TObject);
    procedure ListBoxItem1Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem4Click(Sender: TObject);
    procedure img_cepClick(Sender: TObject);
    procedure EdtCadJuridicoCepTyping(Sender: TObject);
    procedure EdtCadJuridicoFone1Typing(Sender: TObject);
    procedure EdtCadJuridicoCNPJTyping(Sender: TObject);
    procedure EdtCadJuridicoInscricaoTyping(Sender: TObject);
    procedure EdtCadJuridicoInscricaoClick(Sender: TObject);
    procedure EdtCadJuridicoFone2Typing(Sender: TObject);
  private
    lbl1 : TLabel;
    lbl2 : TLabel;
    lbl3 : TLabel;
    lbl4 : TLabel;
    lbl5 : TLabel;
    lbl6 : TLabel;
    lbl7 : TLabel;
    lbl8 : TLabel;

    procedure CadastroFisicoNome(tipoCampo, titulo: string; lblEdicao1: TLabel);
    procedure FecharEdicaoCadNome(indCancelar4: boolean);
    procedure CadastroFisicoEndereco(tipoCampo, titulo: string; lblEdicao1,
              lblEdicao2, lblEdicao3, lblEdicao4, lblEdicao5, lblEdicao6: TLabel);
    procedure FecharEdicaoCadEndereco(indCancelar5: boolean);
    procedure CadastroFisicoCPF(tipoCampo, titulo: string; lblEdicao1: TLabel);
    procedure FecharEdicaoCadCPF(indCancelar6: boolean);
    procedure CadastroFisicoTelefone(tipoCampo, titulo: string; lblEdicao1,
              lblEdicao2: TLabel);
    procedure FecharEdicaoCadTelefones(indCancelar7: boolean);
    procedure CadastroFisicoDadosBasico(tipoCampo, titulo: string; lblEdicao1,
              lblEdicao2, lblEdicao3: TLabel);
    procedure FecharEdicaoCadDadosBasicos(indCancelar8: boolean);
    procedure CadastroFisicoObservacao(tipoCampo, titulo: string;
              lblEdicao1: TLabel);
    procedure FecharEdicaoCadObservacao(indCancelar9: boolean);
    procedure CadastroJuridicoNomes(tipoCampo, titulo: string; lblEdicao1,
      lblEdicao2: TLabel);
    procedure FecharEdicaoCadNomesJuridico(indCancelar10: boolean);
    procedure CadastroJuridicoEndereco(tipoCampo, titulo: string; lblEdicao1,
      lblEdicao2, lblEdicao3, lblEdicao4, lblEdicao5, lblEdicao6: TLabel);
    procedure FecharEdicaoCadEnderecoJuridico(indCancelar11: boolean);
    procedure CadastroJuridicoCnpjInscricao(tipoCampo, titulo: string;
      lblEdicao1, lblEdicao2: TLabel);
    procedure FecharEdicaoCadCnpjInscricaoJuridico(indCancelar12: boolean);
    procedure CadastroJuridicoTelefone(tipoCampo, titulo: string; lblEdicao1,
      lblEdicao2: TLabel);
    procedure FechaCadastroJuridicoTelefone(indCancelar13: boolean);
    procedure CadastroJuridicoDadosBasicos(tipoCampo, titulo: string;
      lblEdicao1, lblEdicao2, lblEdicao3: TLabel);
    procedure FechaCadastroJuridicoDadosBasicos(indCancelar14: boolean);
    procedure CadastroJuridicoObeservacoes(tipoCampo, titulo: string;
      lblEdicao1: TLabel);
    procedure FechaCadastroJuridicoObservacoes(indCancelar15: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroCliente: TFrmCadastroCliente;

implementation

{$R *.fmx}

uses UnitDataBase, UnitFunctions;

{
procedure TFrmCadastroCliente.FecharEdicaoTESTE(indCancelar4 : boolean);
begin
// procedure fecha edi??o teste
  if not indCancelar4 then
    lbl1.Text := EdtAlteraItem1.Text;
    lbl2.Text := EdtAlteraItem2.Text;
    lbl3.Text := EdtAlteraItem3.Text;
    lbl4.Text := EdtAlteraItem4.Text;
    lbl5.Text := EdtAlteraItem5.Text;
    lbl6.Text := EdtAlteraItem6.Text;
    lbl7.Text := EdtAlteraItem7.Text;
    lbl8.Text := EdtAlteraItem8.Text;
    //lblGenero.Text := ComboGenero.Text;
    Lyt_CadastroClienteAlteraItens.Visible := false;
end;

procedure TFrmCadastroCliente.EdicaoDadosFisicos(tipoCampo, titulo: string;
 lblEdicao1, lblEdicao2, lblEdicao3, lblEdicao4, lblEdicao5,
 lblEdicao6, lblEdicao7, lblEdicao8 :TLabel);
 // EDI??O DOS DADOS DOS CLIENTES
begin

 if tipoCampo = 'Telefone' then          // Parametro que vai definir o que est? sendo alterado, nesse caso s?o os dados do telefone
 begin
 fundo.Height := 265;                    //fundo do rec branco, redimensionar conforme a necessidade de edits
 EdtAlteraItem1.Height := 32;            // ajusta o edit1, pois a propriedade Height ? alterada nas observa??es
// ComboGenero.Visible := false;
 EdtAlteraItem1.Visible := true;         //setando quais os edit iram ficar visivesis
 EdtAlteraItem2.Visible := true;
 EdtAlteraItem1.TextPrompt := 'Digite o primeiro telefone/fone'; //colocando a mensagem para facilitar qual o dado deve ser colocado para o usuario
 EdtAlteraItem2.TextPrompt := 'Digite o segundo telefone/fone';
 EdtAlteraItem3.Visible := false;
 EdtAlteraItem4.Visible := false;
 EdtAlteraItem5.Visible := false;
 EdtAlteraItem6.Visible := false;
 EdtAlteraItem7.Visible := false;
 EdtAlteraItem8.Visible := false;

 LblAlteraTitulo.Text := titulo;         // pegando o parametro de titulo, motivo do cadastro
 EdtAlteraItem1.Text := lblEdicao1.Text;
 EdtAlteraItem2.Text := lblEdicao2.Text;
 EdtAlteraItem3.Text := lblEdicao3.Text;
 EdtAlteraItem4.Text := lblEdicao4.Text;
 EdtAlteraItem5.Text := lblEdicao5.Text;
 EdtAlteraItem6.Text := lblEdicao6.Text; //pegando os parametros passados, e subistituindo nas edis
 EdtAlteraItem7.Text := lblEdicao7.Text; //para quando o usuario for editar puxar os dados automaticos
 EdtAlteraItem8.Text := lblEdicao8.Text;

 lbl1 := lblEdicao1;                     // parametro para puxar os dados da label, para quando o usuario for
 lbl2 := lblEdicao2;                     // fechar a Aba de Edi??o, Puxar os dados que foram colocados nos edits
 lbl3 := lblEdicao3;                     // para as labels.
 lbl4 := lblEdicao4;
 lbl5 := lblEdicao5;
 lbl6 := lblEdicao6;
 lbl7 := lblEdicao7;
 lbl8 := lblEdicao8;

 Lyt_CadastroClienteAlteraItens.Visible := true;
 end;

 }





procedure TFrmCadastroCliente.EdtCadFisicoCepTyping(Sender: TObject);
begin
 // Trazendo a mascara do edit de CEP
 Formatar(EdtCadFisicoCep, TFormato.CEP)
end;

procedure TFrmCadastroCliente.EdtCadFisicoCPFTyping(Sender: TObject);
begin
 // Trazendo a mascara do edit de cpf
 Formatar(EdtCadFisicoCPF, TFormato.CPF)
end;

procedure TFrmCadastroCliente.EdtCadFisicoDataNascimentoTyping(Sender: TObject);
begin
 // Trazendo a mascara do edit de data
 Formatar(EdtCadFisicoDataNascimento, TFormato.Dt)
end;

procedure TFrmCadastroCliente.EdtCadFisicoFone1Typing(Sender: TObject);
begin
// Trazendo a mascara do edit de telefone 1
 Formatar(EdtCadFisicoFone1, TFormato.Celular)
end;

procedure TFrmCadastroCliente.EdtCadFisicoFone2Typing(Sender: TObject);
begin
// Trazendo a mascara do edit de telefone 2
 Formatar(EdtCadFisicoFone2, TFormato.Celular)
end;

procedure TFrmCadastroCliente.EdtCadJuridicoCepTyping(Sender: TObject);
begin
 Formatar(EdtCadJuridicoCep, TFormato.CEP)
end;

procedure TFrmCadastroCliente.EdtCadJuridicoCNPJTyping(Sender: TObject);
begin
 Formatar(EdtCadJuridicoCNPJ, TFormato.CNPJ)
end;

procedure TFrmCadastroCliente.EdtCadJuridicoFone1Typing(Sender: TObject);
begin
 Formatar(EdtCadJuridicoFone1, TFormato.Celular)
end;

procedure TFrmCadastroCliente.EdtCadJuridicoFone2Typing(Sender: TObject);
begin
 Formatar(EdtCadJuridicoFone2, TFormato.Celular)
end;

procedure TFrmCadastroCliente.EdtCadJuridicoInscricaoClick(Sender: TObject);
begin
  if Lbl_JuridicoEnderecoEstado.text = '' then
    begin
     Lbl_JuridicoCPNJCliente.Text := EdtCadJuridicoCNPJ.Text;
     EdtCadJuridicoInscricao.HitTest := false;
     LytCadastroJuridico.Visible := false;
     LytMessagemInfor.Visible := true;
     LblMessagemInfor.Text := 'Informe o Estado do cliente';
     EdtCadJuridicoInscricao.HitTest := true;
    end;
end;

procedure TFrmCadastroCliente.EdtCadJuridicoInscricaoTyping(Sender: TObject);
var
 UF : string;
begin
//Para essa formata??o funcionar o estado no endere?o deve est? informado corretamente
 UF := Lbl_JuridicoEnderecoEstado.Text;
 Formatar(EdtCadJuridicoInscricao, TFormato.InscricaoEstadual, UF);
end;

procedure TFrmCadastroCliente.FisicoListCPFClick(Sender: TObject);
begin
CadastroFisicoCPF('CPF', 'CPF do Cliente' , Lbl_FisicoCPFCliente);
end;

procedure TFrmCadastroCliente.FisicoListDadosBasicosClick(Sender: TObject);
begin
CadastroFisicoDadosBasico('Basicos', 'Dados b?sicos do cliente', Lbl_FisicoDadosSexo, Lbl_FisicoDadosDataNascimento, Lbl_FisicoDadosEmail );
end;

procedure TFrmCadastroCliente.ListBoxNomeClick(Sender: TObject);
begin
CadastroJuridicoNomes('Nome', 'Nome da Empresa', Lbl_JuridicoRazaoEFantasiaFantasia, Lbl_JuridicoRazaoEFantasiaRazao);//
end;


procedure TFrmCadastroCliente.ListBoxTelefoneClick(Sender: TObject);
begin
CadastroJuridicoCnpjInscricao('CNPJ', 'CPNJ e Inscri??o Estadual', Lbl_JuridicoCPNJCliente, Lbl_JuridicoInscricaoEstadual);
end;

procedure TFrmCadastroCliente.ListBoxEnderecoClick(Sender: TObject);
begin
CadastroJuridicoEndereco('Endereco', 'Endere?o do cliente', lbl_JuridicoEnderecoRua, Lbl_JuridicoEnderecoBairro, Lbl_JuridicoEnderecoCep, Lbl_JuridicoEnderecoNumero, Lbl_JuridicoEnderecoEstado, Lbl_JuridicoEnderecoCidade);
end;

procedure TFrmCadastroCliente.ListBoxItem1Click(Sender: TObject);
begin
CadastroJuridicoTelefone('Telefone', 'Telefone do Cliente', Lbl_JuridicoTelefonesParaContato1, Lbl_JuridicoTelefonesParaContato2);
end;

procedure TFrmCadastroCliente.ListBoxItem2Click(Sender: TObject);
begin
CadastroJuridicoDadosBasicos('Dados Basicos', 'Dados B?sicos', Lbl_JuridicoDadosBasicosEmail, Lbl_JuridicoDadosBasicosSite, Lbl_JuridicoDadosBasicosFax);
end;

procedure TFrmCadastroCliente.ListBoxItem4Click(Sender: TObject);
begin
CadastroJuridicoObeservacoes('Observacoes', 'Obeserva??es', Lbl_JuridicoObeservacaoCliente);
end;

procedure TFrmCadastroCliente.FisicoListEnderecoClick(Sender: TObject);
begin
CadastroFisicoEndereco('Endere?o', 'Endere?o do Cliente' ,Lbl_FisicoEnderecosRua, Lbl_FisicoEnderecosBairro, Lbl_FisicoEnderecosCep,  Lbl_FisicoEnderecosNumero,   Lbl_FisicoEnderecosEstado, Lbl_FisicoEnderecosCidade);
end;

procedure TFrmCadastroCliente.FisicoListNomeClick(Sender: TObject);
begin
CadastroFisicoNome('Nome', 'Nome do Cliente', Lbl_FisicoNomeCliente);
end;

procedure TFrmCadastroCliente.FisicoListObservacaoClick(Sender: TObject);
begin
//EdicaoDadosFisicos('Observacao', 'Observa??es do Cliente', Lbl_FIsicoObservacaoText, LblConn, LblConn, LblConn, LblConn, LblConn, LblConn, LblConn);
CadastroFisicoObservacao('Observacao', 'Observa??es do Cliente', Lbl_FIsicoObservacaoText);
end;

procedure TFrmCadastroCliente.FisicoListTelefoneClick(Sender: TObject);
begin
CadastroFisicoTelefone('Telefone', 'Telefones', Lbl_FisicoTelefoneContato1, Lbl_FisicoTelefoneContato2);
end;

procedure TFrmCadastroCliente.FormShow(Sender: TObject);
begin
// ajustando tela de cadastro de cliente fisico e juridico
 ListBoxFisico.Visible := true;
 LytCadastroJuridico.Visible := false;
 LytCadJuridicoNome.Visible := false;
 LytCadJuridicoInscricao.Visible := false;
 LytCadJuridicoEndereco.Visible := false;
 LytCadJuridicoFones.Visible := false;
 LytCadJuridicoDadosBasicos.Visible := false;
 LytCadJuridicoObservacoes.Visible := false;
 ListBoxJuridico.Visible := false;
 LblTituloCadastro.Text := 'Clientes F?sicos';
 ImgFisico.Opacity := 1;
 ImgJuridico.Opacity := 0.6;
 Lbl_FisicoNomeCliente.Text := '';
 Lbl_FisicoEnderecosRua.Text := '';
 Lbl_FisicoEnderecosCidade.Text := '';
 Lbl_FisicoEnderecosBairro.Text := '';
 Lbl_FisicoEnderecosNumero.Text := '';
 Lbl_FisicoCPFCliente.Text := '';
 Lbl_FisicoTelefoneContato1.Text := '';
 Lbl_FisicoTelefoneContato2.Text := '';
 Lbl_FisicoDadosSexo.Text := '';
 Lbl_FisicoDadosDataNascimento.Text := '';
 Lbl_FisicoDadosEmail.Text := '';
 Lbl_FIsicoObservacaoText.Text := '';
 Lbl_FisicoDataCadastroMostraData.Text := FormatDateTime('dd/mm/yyyy HH:nn' , now);
 Lbl_JuridicoRazaoEFantasiaFantasia.Text := '';
 Lbl_JuridicoRazaoEFantasiaRazao.Text := '';
 lbl_JuridicoEnderecoRua.Text := '';
 Lbl_JuridicoEnderecoNumero.Text := '';
 Lbl_JuridicoEnderecoBairro.Text := '';
 Lbl_JuridicoEnderecoCep.Text := '';
 Lbl_JuridicoEnderecoCidade.Text := '';
 Lbl_JuridicoEnderecoEstado.Text := '';
 Lbl_JuridicoCPNJCliente.Text := '';
 Lbl_JuridicoInscricaoEstadual.Text := '';
 Lbl_JuridicoTelefonesParaContato1.Text := '';
 Lbl_JuridicoTelefonesParaContato2.Text := '';
 Lbl_JuridicoDadosBasicosFax.Text := '';
 Lbl_JuridicoDadosBasicosEmail.Text := '';
 Lbl_JuridicoDadosBasicosSite.Text := '';
 Lbl_JuridicoDataCadastroNow.Text := FormatDateTime('dd/mm/yyyy HH:nn' , now);
 Lbl_JuridicoObeservacaoCliente.Text := '';
 Lbl_FisicoEnderecosCep.Text := '';
 Lbl_FisicoEnderecosEstado.Text := '';
 LytCadastroFisico.Visible := false;
 LytCadFisicoTelefone.Visible := false;
 LytCadFisicoNome.Visible := false;
 LytCadFisicoCpf.Visible := false;
 LytCadFisicoEndereco.Visible := false;
 LytCadFisicoDadosBasicos.Visible := false;
 LytCadFisicoObeservacao.Visible := false;
 LytConfirmacaoSair.Visible := false;
end;

procedure TFrmCadastroCliente.ImgFisicoClick(Sender: TObject);
begin
//mudando a opacidade do juridico para o fisico e do fisico para o juridico
 ImgFisico.Opacity := 1;
 ImgJuridico.Opacity := 0.6;
 ListBoxFisico.Visible := true;
 ListBoxJuridico.Visible := false;
 LblTituloCadastro.Text := 'Clientes F?sicos';
 ImgSalvaClienteFisico.Visible := true;
 ImgSalvaClienteJuridico.Visible := false;
end;

procedure TFrmCadastroCliente.ImgInforOKClick(Sender: TObject);
begin
 LytMessagemInfor.Visible := false;
end;

procedure TFrmCadastroCliente.ImgJuridicoClick(Sender: TObject);
begin
//mudando a opacidade do juridico para o fisico e do fisico para o juridico
 ImgFisico.Opacity := 0.6;
 ImgJuridico.Opacity := 1;
 ListBoxFisico.Visible := false;
 ListBoxJuridico.Visible := true;
 LblTituloCadastro.Text := 'Clientes Jur?dicos';
 ImgSalvaClienteFisico.Visible := false;
 ImgSalvaClienteJuridico.Visible := true;
end;

procedure TFrmCadastroCliente.ImgSalvaClienteFisicoClick(Sender: TObject);
var
 Num1,Num2,RealResult : real;
 StringResult : string;
begin
    if (Lbl_FisicoNomeCliente.Text <> '') and (Lbl_FisicoCPFCliente.text <> '') then
    begin
         Num1 := StrToFloat(GeraCodCliente);    //COD_CLIENTE := StringResult; Ou seja ele vai verificar na tab_codigo, qual o ultimo codigo e vai somar + 1, fazendo assim um auto incremento
         Num2 := 1;
         RealResult := (Num1+Num2);
         StringResult := FloatToStr(RealResult);


          with dm.qryConsCliente do
          begin
          //SALVANDO OS DADOS DOS CLIENTE F?SICOS
            Active := false;
            SQL.Clear;
            // SE LBL_FisicoNomeLCiente.txt e Lbl_FisicoCPFCliente.text for <> de vazio, ent?o execulta o procedimento de insert na tab_cliente

             SQL.ADD('INSERT INTO TAB_CLIENTE(COD_CLIENTE, NOME, ENDERECO, NUMERO, BAIRRO, CEP, CNPJ_CPF, FONE, FONE2, SEXO, DATA_NASCIMENTO, DATA_CADASTRO, OBSERVACOES, UF, CIDADE, EMAIL)');
             SQL.ADD('VALUES(:COD_CLIENTE, :NOME, :ENDERECO, :NUMERO, :BAIRRO, :CEP, :CNPJ_CPF, :FONE, :FONE2, :SEXO, :DATA_NASCIMENTO, :DATA_CADASTRO, :OBSERVACOES, :UF, :CIDADE, :EMAIL)');

             ParamByName('COD_CLIENTE').Value := StringResult;
             ParamByName('NOME').Value := Lbl_FisicoNomeCliente.Text;
             ParamByName('ENDERECO').Value := Lbl_FisicoEnderecosRua.Text;
             ParamByName('NUMERO').Value := Lbl_FisicoEnderecosNumero.Text;
             ParamByName('BAIRRO').Value := Lbl_FisicoEnderecosBairro.Text;
             ParamByName('CEP').Value := Lbl_FisicoEnderecosCep.Text;
             ParamByName('CNPJ_CPF').Value := Lbl_FisicoCPFCliente.Text;
             ParamByName('FONE').Value := Lbl_FisicoTelefoneContato1.Text;
             ParamByName('FONE2').Value := Lbl_FisicoTelefoneContato2.Text;
             ParamByName('SEXO').Value := Lbl_FisicoDadosSexo.Text;
             ParamByName('DATA_NASCIMENTO').Value := Lbl_FisicoDadosDataNascimento.Text;
             ParamByName('DATA_CADASTRO').Value := FormataData(Lbl_FisicoDataCadastroMostraData.Text);
             ParamByName('OBSERVACOES').Value := Lbl_FIsicoObservacaoText.Text;
             ParamByName('UF').Value := Lbl_FisicoEnderecosEstado.Text;
             ParamByName('CIDADE').Value := Lbl_FisicoEnderecosCidade.Text;
             ParamByName('EMAIL').Value := Lbl_FisicoDadosEmail.Text;

             ExecSQL;

             if StringResult = '10001' then // Se StringResult = 10001 significa que devemos fazer um insert, pois n?o existe nenhum campo na TAB_CODIGO
             begin
             Sql.Clear;
             //SQL.ADD('INSERT INTO TAB_CLIENTE(COD_CLIENTE,
             SQL.ADD('INSERT INTO TAB_CODIGO(CODIGO_CLIENTE)');
             SQL.ADD('VALUES(:CODIGODOCLIENTE)');
             ParamByName('CODIGODOCLIENTE').Value := StringResult;
             ExecSQL;
             end
             else
             begin
             Sql.Clear;
             SQL.ADD('UPDATE TAB_CODIGO SET CODIGO_CLIENTE=:CODIGODOCLIENTE'); // Se StringResult <> 10001 significa que na TAB_CODIGO tem um codigo j? cadastrado
             ParamByName('CODIGODOCLIENTE').Value := StringResult;
             ExecSQL;
             end;


             //COD_CLIENTE := StringResult; Ou seja ele vai verificar na tab_codigo, qual o ultimo codigo e vai somar + 1, fazendo assim um auto incremento
           end;
    end
    else
    begin
    // Se caso os campos de nome e cpf estiverem em branco, chama tela de erro;
    LytMessagemInfor.Visible := true;
    LblMessagemInfor.Text := 'Preencha os campo de Nome e CPF';
    exit;
    end;

close;

end;

procedure TFrmCadastroCliente.ImgSalvaClienteJuridicoClick(Sender: TObject);
var
 Num1,Num2,RealResult : real;
 StringResult : string;
begin
    if (Lbl_JuridicoRazaoEFantasiaFantasia.Text <> '') and (Lbl_JuridicoCPNJCliente.text <> '') then
    begin
         Num1 := StrToFloat(GeraCodCliente);    //COD_CLIENTE := StringResult; Ou seja ele vai verificar na tab_codigo, qual o ultimo codigo e vai somar + 1, fazendo assim um auto incremento
         Num2 := 1;
         RealResult := (Num1+Num2);
         StringResult := FloatToStr(RealResult);


          with dm.qryConsCliente do
          begin
          //SALVANDO OS DADOS DOS CLIENTE F?SICOS
            Active := false;
            SQL.Clear;
            // SE LBL_FisicoNomeLCiente.txt e Lbl_FisicoCPFCliente.text for <> de vazio, ent?o execulta o procedimento de insert na tab_cliente

             SQL.ADD('INSERT INTO TAB_CLIENTE(COD_CLIENTE, NOME, RAZAO, ENDERECO, NUMERO, BAIRRO, CEP, CNPJ_CPF, INSCRICAO_ESTADUAL, FONE, FONE2, EMAIL, SITE, DATA_CADASTRO, OBSERVACOES, UF, CIDADE, FAX)');
             SQL.ADD('VALUES(:COD_CLIENTE, :NOME, :RAZAO, :ENDERECO, :NUMERO, :BAIRRO, :CEP, :CNPJ_CPF, :INSCRICAO_ESTADUAL, :FONE, :FONE2, :EMAIL, :SITE, :DATA_CADASTRO, :OBSERVACOES, :UF, :CIDADE, :FAX)');

             ParamByName('COD_CLIENTE').Value := StringResult;
             ParamByName('NOME').Value := Lbl_JuridicoRazaoEFantasiaFantasia.Text;
             ParamByName('RAZAO').Value := Lbl_JuridicoRazaoEFantasiaRazao.Text;
             ParamByName('ENDERECO').Value := lbl_JuridicoEnderecoRua.Text;
             ParamByName('NUMERO').Value := Lbl_JuridicoEnderecoNumero.Text;
             ParamByName('BAIRRO').Value := Lbl_JuridicoEnderecoBairro.Text;
             ParamByName('CEP').Value := Lbl_JuridicoEnderecoCep.Text;
             ParamByName('CNPJ_CPF').Value := Lbl_JuridicoCPNJCliente.Text;
             ParamByName('INSCRICAO_ESTADUAL').Value := Lbl_JuridicoInscricaoEstadual.Text;
             ParamByName('FONE').Value := Lbl_JuridicoTelefonesParaContato1.Text;
             ParamByName('FONE2').Value := Lbl_JuridicoTelefonesParaContato2.Text;
             ParamByName('EMAIL').Value := Lbl_JuridicoDadosBasicosEmail.Text;
             ParamByName('SITE').Value := Lbl_JuridicoDadosBasicosSite.Text;
             ParamByName('DATA_CADASTRO').Value := FormataData(Lbl_JuridicoDataCadastroNow.Text);
             ParamByName('OBSERVACOES').Value := Lbl_JuridicoObeservacaoCliente.Text;
             ParamByName('UF').Value := Lbl_JuridicoEnderecoEstado.Text;
             ParamByName('CIDADE').Value := Lbl_JuridicoEnderecoCidade.Text;
             ParamByName('FAX').Value := Lbl_JuridicoDadosBasicosFax.Text;

             ExecSQL;

             if StringResult = '10001' then // Se StringResult = 10001 significa que devemos fazer um insert, pois n?o existe nenhum campo na TAB_CODIGO
             begin
             Sql.Clear;
             //SQL.ADD('INSERT INTO TAB_CLIENTE(COD_CLIENTE,
             SQL.ADD('INSERT INTO TAB_CODIGO(CODIGO_CLIENTE)');
             SQL.ADD('VALUES(:CODIGODOCLIENTE)');
             ParamByName('CODIGODOCLIENTE').Value := StringResult;
             ExecSQL;
             end
             else
             begin
             Sql.Clear;
             SQL.ADD('UPDATE TAB_CODIGO SET CODIGO_CLIENTE=:CODIGODOCLIENTE'); // Se StringResult <> 10001 significa que na TAB_CODIGO tem um codigo j? cadastrado
             ParamByName('CODIGODOCLIENTE').Value := StringResult;
             ExecSQL;
             end;


             //COD_CLIENTE := StringResult; Ou seja ele vai verificar na tab_codigo, qual o ultimo codigo e vai somar + 1, fazendo assim um auto incremento
           end;
    end
    else
    begin
    // Se caso os campos de nome e cpf estiverem em branco, chama tela de erro;
    LytMessagemInfor.Visible := true;
    LblMessagemInfor.Text := 'Preencha os campo de Nome fantasia e CNPJ';
    exit;
    end;
close;
end;

procedure TFrmCadastroCliente.ImgSalvarClick(Sender: TObject);
begin
// verificando qual o Tlayout est? ativo para fazer o fechamento correto
    if LytCadFisicoNome.Visible = true then
    begin
    FecharEdicaoCadNome(false);
    end;

    if LytCadFisicoEndereco.Visible = true then
    begin
    FecharEdicaoCadEndereco(false);
    end;

    if LytCadFisicoCpf.Visible = true then
    begin
    FecharEdicaoCadCPF(false);
    end;

    if LytCadFisicoTelefone.Visible = true then
    begin
    FecharEdicaoCadTelefones(false);
    end;

    if LytCadFisicoDadosBasicos.Visible = true then
    begin
    FecharEdicaoCadDadosBasicos(false);
    end;

    if LytCadFisicoObeservacao.Visible = true then
    begin
    FecharEdicaoCadObservacao(false);
    end;

    if LytCadJuridicoNome.Visible = true then
    begin
    FecharEdicaoCadNomesJuridico(false);
    end;

    if LytCadJuridicoEndereco.Visible = true then
    begin
    FecharEdicaoCadEnderecoJuridico(false);
    end;

    if LytCadJuridicoInscricao.Visible = true then
    begin
    FecharEdicaoCadCnpjInscricaoJuridico(false);
    end;

    if LytCadJuridicoFones.Visible = true then
    begin
    FechaCadastroJuridicoTelefone(false);
    end;

    if LytCadJuridicoDadosBasicos.Visible = true then
    begin
    FechaCadastroJuridicoDadosBasicos(false);
    end;

    if LytCadJuridicoObservacoes.Visible = true then
    begin
    FechaCadastroJuridicoObservacoes(false);
    end;


end;

procedure TFrmCadastroCliente.ImgVoltarCadFisicoClick(Sender: TObject);
begin
// fazendo o fechamento pelo bot?o voltar da tela de cadastro
  if LytCadFisicoNome.Visible = true then
    begin
      FecharEdicaoCadNome(true);
    end;

  if LytCadFisicoEndereco.Visible = true then
    begin
       FecharEdicaoCadEndereco(true);
    end;

  if LytCadFisicoCpf.Visible = true then
    begin
       FecharEdicaoCadCPF(true);
    end;

  if LytCadFisicoTelefone.Visible = true then
    begin
       FecharEdicaoCadTelefones(true);
    end;

  if LytCadFisicoDadosBasicos.Visible = true then
    begin
       FecharEdicaoCadDadosBasicos(true);
    end;


  if LytCadFisicoObeservacao.Visible = true then
    begin
    FecharEdicaoCadObservacao(true);
    end;

  if LytCadJuridicoNome.Visible = true then
    begin
    FecharEdicaoCadNomesJuridico(true);
    end;

  if LytCadJuridicoEndereco.Visible = true then
    begin
    FecharEdicaoCadEnderecoJuridico(true);
    end;


  if LytCadJuridicoInscricao.Visible = true then
    begin
    FecharEdicaoCadCnpjInscricaoJuridico(true);
    end;

  if LytCadJuridicoFones.Visible = true then
    begin
    FechaCadastroJuridicoTelefone(true);
    end;

  if LytCadJuridicoDadosBasicos.Visible = true then
    begin
    FechaCadastroJuridicoDadosBasicos(true);
    end;

  if LytCadJuridicoObservacoes.Visible = true then
    begin
    FechaCadastroJuridicoObservacoes(true);
    end;

end;

procedure TFrmCadastroCliente.ImgVoltarClick(Sender: TObject);
begin
lbl_sairsemsalvar.Text := 'Deseja sair sem salvar?';
LytConfirmacaoSair.Visible := true;
end;







procedure TFrmCadastroCliente.img_cepClick(Sender: TObject);
begin

end;

{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroFisicoNome(tipoCampo, titulo: string;
 lblEdicao1 :TLabel);
 begin
 // CADASTRO DO NOME DO CLIENTE
  LytCadastroFisico.Visible := false;
 LytCadFisicoTelefone.Visible := false;
 LytCadFisicoCpf.Visible := false;
 LytCadFisicoEndereco.Visible := false;
 LytCadFisicoDadosBasicos.Visible := false;
 LytCadFisicoObeservacao.Visible := false;
 ImgFundoCadFisico.Height := 210;
 LytCadFisicoNome.Visible := true;
 EdtCadFisicoNome.TextPrompt := 'Digite o nome do cliente';

 LblTituloCadastroFisicoNome.Text := titulo;
 EdtCadFisicoNome.Text := lblEdicao1.Text;

 lbl1 := lblEdicao1;
 LytCadastroFisico.Visible := true;
 end;

procedure TFrmCadastroCliente.FecharEdicaoCadNome(indCancelar4 : boolean);
begin
 // FECHA CADASTRO DO NOME DO CLIENTE
  if not indCancelar4 then
  lbl1.Text := EdtCadFisicoNome.Text;
  LytCadastroFisico.Visible := false;
end;
{---------------------------------------------------------}



















{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroFisicoEndereco(tipoCampo, titulo: string;
 lblEdicao1,  lblEdicao2,  lblEdicao3,  lblEdicao4,  lblEdicao5, lblEdicao6 :TLabel);
begin
 //CADASTRO DO ENDERE?O DO CLIENTE
 LytCadastroFisico.Visible := false;
 LytCadFisicoTelefone.Visible := false;
 LytCadFisicoNome.Visible := false;
 LytCadFisicoCpf.Visible := false;
 LytCadFisicoEndereco.Visible := true;     //cadastro do endere?o do cliente
 LytCadFisicoDadosBasicos.Visible := false;
 LytCadFisicoObeservacao.Visible := false;
 EdtCadFisicoUf.ItemIndex := 9;
 ImgFundoCadFisico.Height := 377;

 LblTituloCadastroFisicoNome.Text := titulo;
 EdtCadFisicoRua.Text := lblEdicao1.Text;
 EdtCadFisicoBairro.Text := lblEdicao2.Text;
 EdtCadFisicoCep.Text := lblEdicao3.Text;
 EdtCadFisicoNumero.Text := lblEdicao4.Text;
 EdtCadFisicoUf.Text := lblEdicao5.Text;
 EdtCadFisicoCidade.Text := lblEdicao6.Text;


 lbl1 := lblEdicao1;
 lbl2 := lblEdicao2;
 lbl3 := lblEdicao3;
 lbl4 := lblEdicao4;
 lbl5 := lblEdicao5;
 lbl6 := lblEdicao6;

 LytCadastroFisico.Visible := true;
end;

procedure TFrmCadastroCliente.FecharEdicaoCadEndereco(indCancelar5 : boolean);
begin
 // FECHA CADASTRO DO ENDERE?O DO CLIENTE
  if not indCancelar5 then
  lbl1.Text := EdtCadFisicoRua.Text;
  lbl2.Text := EdtCadFisicoBairro.Text;
  lbl3.Text := EdtCadFisicoCep.Text;
  lbl4.Text := EdtCadFisicoNumero.Text;
  lbl5.Text := EdtCadFisicoUf.Text;
  lbl6.Text := EdtCadFisicoCidade.Text;

  LytCadastroFisico.Visible := false;
end;
{---------------------------------------------------------}














{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroFisicoCPF(tipoCampo, titulo: string;
 lblEdicao1 :TLabel);
begin
 // CADASTRO DO CPF DO CLIENTE
 LytCadastroFisico.Visible := false;
 LytCadFisicoTelefone.Visible := false;
 LytCadFisicoEndereco.Visible := false;
 LytCadFisicoNome.Visible := false;
 LytCadFisicoDadosBasicos.Visible := false;
 LytCadFisicoObeservacao.Visible := false;
 ImgFundoCadFisico.Height := 210;
 LytCadFisicoCpf.Visible := true;

 LblTituloCadastroFisicoNome.Text := titulo;
 EdtCadFisicoCPF.Text := lblEdicao1.Text;

 lbl1 := lblEdicao1;
 LytCadastroFisico.Visible := true;
end;

procedure TFrmCadastroCliente.FecharEdicaoCadCPF(indCancelar6 : boolean);
begin
 // FECHA CADASTRO DO CPF DO CLIENTE
  if not indCancelar6 then
  lbl1.Text := EdtCadFisicoCPF.Text;
  LytCadastroFisico.Visible := false;
end;
{---------------------------------------------------------}














{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroFisicoTelefone(tipoCampo, titulo: string;
 lblEdicao1, lblEdicao2 :TLabel);
begin
 // CADASTRO DOS TELEFONES DO CLIENTE
 LytCadastroFisico.Visible := false;
 LytCadFisicoTelefone.Visible := true;
 LytCadFisicoEndereco.Visible := false;
 LytCadFisicoNome.Visible := false;
 LytCadFisicoDadosBasicos.Visible := false;
 LytCadFisicoObeservacao.Visible := false;
 LytCadFisicoCPF.Visible := false;
 ImgFundoCadFisico.Height := 210;

 LblTituloCadastroFisicoNome.Text := titulo;
 EdtCadFisicoFone1.Text := lblEdicao1.Text;
 EdtCadFisicoFone2.Text := lblEdicao2.Text;

 lbl1 := lblEdicao1;
 lbl2 := lblEdicao2;
 LytCadastroFisico.Visible := true;
end;

procedure TFrmCadastroCliente.FecharEdicaoCadTelefones(indCancelar7 : boolean);
begin
 // FECHA CADASTRO DOS TELEFONES DO CLIENTE
  if not indCancelar7 then
  lbl1.Text := EdtCadFisicoFone1.Text;
  lbl2.Text := EdtCadFisicoFone2.Text;
  LytCadastroFisico.Visible := false;
end;
{---------------------------------------------------------}












{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroFisicoDadosBasico(tipoCampo, titulo: string;
 lblEdicao1, lblEdicao2, lblEdicao3 :TLabel);
begin
 // CADASTRO DOS DADOS BASICOS DO CLIENTE
 LytCadastroFisico.Visible := false;
 LytCadFisicoTelefone.Visible := false;
 LytCadFisicoEndereco.Visible := false;
 LytCadFisicoNome.Visible := false;
 LytCadFisicoDadosBasicos.Visible := true;
 LytCadFisicoObeservacao.Visible := false;
 LytCadFisicoCPF.Visible := false;
 ImgFundoCadFisico.Height := 270;

 LblTituloCadastroFisicoNome.Text := titulo;
 EdtCadFisicoSexo.Text := lblEdicao1.Text;
 EdtCadFisicoDataNascimento.Text:= lblEdicao2.Text;
 EdtCadFisicoEmail.Text := lblEdicao3.Text;


 lbl1 := lblEdicao1;
 lbl2 := lblEdicao2;
 lbl3 := lblEdicao3;

 LytCadastroFisico.Visible := true;
end;

procedure TFrmCadastroCliente.FecharEdicaoCadDadosBasicos(indCancelar8 : boolean);
begin
 // FECHA CADASTRO DOS DADOS BASICOS DO CLIENTE
  if not indCancelar8 then
  lbl1.Text := EdtCadFisicoSexo.Text;
  lbl2.Text := EdtCadFisicoDataNascimento.Text;
  lbl3.Text := EdtCadFisicoEmail.Text;


  LytCadastroFisico.Visible := false;
end;
{---------------------------------------------------------}













{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroFisicoObservacao(tipoCampo, titulo: string;
 lblEdicao1 :TLabel);
begin
 // ABRE CADASTRO DAS OBSERVA??ES DO CLIENTE
 LytCadastroFisico.Visible := false;
 LytCadFisicoTelefone.Visible := false;
 LytCadFisicoEndereco.Visible := false;
 LytCadFisicoNome.Visible := false;
 LytCadFisicoDadosBasicos.Visible := false;
 LytCadFisicoObeservacao.Visible := true;
 LytCadFisicoCPF.Visible := false;
 ImgFundoCadFisico.Height := 215;

 LblTituloCadastroFisicoNome.Text := titulo;
 EdtCadFisicoObs.Text := lblEdicao1.Text;

 lbl1 := lblEdicao1;

 LytCadastroFisico.Visible := true;
end;

procedure TFrmCadastroCliente.FecharEdicaoCadObservacao(indCancelar9 : boolean);
begin
 // FECHA CADASTRO DAS OBSERVA??ES DO CLIENTE
  if not indCancelar9 then
  lbl1.Text := EdtCadFisicoObs.Text;

  LytCadastroFisico.Visible := false;
end;
{---------------------------------------------------------}













{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroJuridicoNomes(tipoCampo, titulo: string;
 lblEdicao1, lblEdicao2 :TLabel);
begin
 // CADASTRO DOS NOMES DO CLIENTE JURIDICO
 LytCadastroFisico.Visible := false;
 LytCadastroJuridico.Visible := false;
 LytCadJuridicoNome.Visible := true;
 LytCadJuridicoInscricao.Visible := false;
 LytCadJuridicoEndereco.Visible := false;
 LytCadJuridicoFones.Visible := false;
 LytCadJuridicoDadosBasicos.Visible := false;
 LytCadJuridicoObservacoes.Visible := false;
 RecFundoJuridico.Height := 300;

 LblTituloCadastroJuridicoNome.Text := titulo;
 EdtCadJuridicoNomeFantasia.Text := lblEdicao1.Text;
 EdtCadJuridicoNomeJuridico.Text := lblEdicao2.Text;

 lbl1 := lblEdicao1;
 lbl2 := lblEdicao2;
 LytCadastroJuridico.Visible := true;
end;

procedure TFrmCadastroCliente.FecharEdicaoCadNomesJuridico(indCancelar10 : boolean);
begin
 // FECHA CADASTRO DOS NOMES DO CLIENTE JURIDICO
  if not indCancelar10 then
  lbl1.Text := EdtCadJuridicoNomeFantasia.Text;
  lbl2.Text := EdtCadJuridicoNomeJuridico.Text;
  LytCadastroJuridico.Visible := false;
end;
{---------------------------------------------------------}










procedure TFrmCadastroCliente.CadastroJuridicoEndereco(tipoCampo, titulo: string;
 lblEdicao1,  lblEdicao2,  lblEdicao3,  lblEdicao4,  lblEdicao5, lblEdicao6 :TLabel);
begin
 //CADASTRO DO ENDERE?O DO CLIENTE JURIDICO
 LytCadastroFisico.Visible := false;
 LytCadastroJuridico.Visible := false;
 LytCadJuridicoNome.Visible := false;
 LytCadJuridicoInscricao.Visible := false;
 LytCadJuridicoEndereco.Visible := true;
 LytCadJuridicoFones.Visible := false;
 LytCadJuridicoDadosBasicos.Visible := false;
 LytCadJuridicoObservacoes.Visible := false;
 RecFundoJuridico.Height := 480;
 EdtCadJuridicoUF.ItemIndex := 9;

 LblTituloCadastroJuridicoNome.Text := titulo;
 EdtCadJuridicoRua.Text := lblEdicao1.Text;
 EdtCadJuridicoBairro.Text := lblEdicao2.Text;
 EdtCadJuridicoCep.Text := lblEdicao3.Text;
 EdtCadJuridicoNumero.Text := lblEdicao4.Text;
 EdtCadJuridicoUF.Text := lblEdicao5.Text;
 EdtCadJuridicoCidade.Text := lblEdicao6.Text;


 lbl1 := lblEdicao1;
 lbl2 := lblEdicao2;
 lbl3 := lblEdicao3;
 lbl4 := lblEdicao4;
 lbl5 := lblEdicao5;
 lbl6 := lblEdicao6;

 LytCadastroJuridico.Visible := true;
end;

procedure TFrmCadastroCliente.FecharEdicaoCadEnderecoJuridico(indCancelar11 : boolean);
begin
 // FECHA CADASTRO DO ENDERE?O DO CLIENTE JURIDICO
  if not indCancelar11 then
  lbl1.Text := EdtCadJuridicoRua.Text;
  lbl2.Text := EdtCadJuridicoBairro.Text;
  lbl3.Text := EdtCadJuridicoCep.Text;
  lbl4.Text := EdtCadJuridicoNumero.Text;
  lbl5.Text := EdtCadJuridicoUF.Text;
  lbl6.Text := EdtCadJuridicoCidade.Text;

  LytCadastroJuridico.Visible := false;
end;
{---------------------------------------------------------}






{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroJuridicoCnpjInscricao(tipoCampo, titulo: string;
 lblEdicao1, lblEdicao2 :TLabel);
begin
 // CADASTRO DO CNPJ E INSCRI??O ESTADUAL DO CLIENTE JURIDICO
 LytCadastroFisico.Visible := false;
 LytCadastroJuridico.Visible := false;
 LytCadJuridicoNome.Visible := false;
 LytCadJuridicoInscricao.Visible := true;
 LytCadJuridicoEndereco.Visible := false;
 LytCadJuridicoFones.Visible := false;
 LytCadJuridicoDadosBasicos.Visible := false;
 LytCadJuridicoObservacoes.Visible := false;
 RecFundoJuridico.Height := 300;

 LblTituloCadastroJuridicoNome.Text := titulo;
 EdtCadJuridicoCNPJ.Text := lblEdicao1.Text;
 EdtCadJuridicoInscricao.Text := lblEdicao2.Text;

 lbl1 := lblEdicao1;
 lbl2 := lblEdicao2;
 LytCadastroJuridico.Visible := true;
end;

procedure TFrmCadastroCliente.FecharEdicaoCadCnpjInscricaoJuridico(indCancelar12 : boolean);
begin
 // FECHA CADASTRO DO CNPJ E INSCRI??O ESTADUAL DO CLIENTE JURIDICO
  if not indCancelar12 then
  lbl1.Text := EdtCadJuridicoCNPJ.Text;
  lbl2.Text := EdtCadJuridicoInscricao.Text;
  LytCadastroJuridico.Visible := false;
end;
{---------------------------------------------------------}










{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroJuridicoTelefone(tipoCampo, titulo: string;
 lblEdicao1, lblEdicao2 :TLabel);
begin
 // CADASTRO DOS TELEFONES DO CLIENTE JURIDICO
 LytCadastroFisico.Visible := false;
 LytCadastroJuridico.Visible := false;
 LytCadJuridicoNome.Visible := false;
 LytCadJuridicoInscricao.Visible := false;
 LytCadJuridicoEndereco.Visible := false;
 LytCadJuridicoFones.Visible := true;
 LytCadJuridicoDadosBasicos.Visible := false;
 LytCadJuridicoObservacoes.Visible := false;
 RecFundoJuridico.Height := 300;

 LblTituloCadastroJuridicoNome.Text := titulo;
 Lbl_JuridicoTelefonesParaContato1.Text := lblEdicao1.Text;
 Lbl_JuridicoTelefonesParaContato2.Text := lblEdicao2.Text;

 lbl1 := lblEdicao1;
 lbl2 := lblEdicao2;
 LytCadastroJuridico.Visible := true;
end;

procedure TFrmCadastroCliente.FechaCadastroJuridicoTelefone(indCancelar13 : boolean);
begin
 // FECHA CADASTRO DO CNPJ E INSCRI??O ESTADUAL DO CLIENTE JURIDICO
  if not indCancelar13 then
  lbl1.Text := EdtCadJuridicoFone1.Text;
  lbl2.Text := EdtCadJuridicoFone2.Text;
  LytCadastroJuridico.Visible := false;
end;
{---------------------------------------------------------}










{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroJuridicoDadosBasicos(tipoCampo, titulo: string;
 lblEdicao1, lblEdicao2, lblEdicao3 :TLabel);
begin
 // CADASTRO DOS DADOS BASICOS DO CLIENTE JURIDICO
 LytCadastroFisico.Visible := false;
 LytCadastroJuridico.Visible := false;
 LytCadJuridicoNome.Visible := false;
 LytCadJuridicoInscricao.Visible := false;
 LytCadJuridicoEndereco.Visible := false;
 LytCadJuridicoFones.Visible := false;
 LytCadJuridicoDadosBasicos.Visible := true;
 LytCadJuridicoObservacoes.Visible := false;
 RecFundoJuridico.Height := 320;

 LblTituloCadastroJuridicoNome.Text := titulo;
 Lbl_JuridicoDadosBasicosEmail.Text := lblEdicao1.Text;
 Lbl_JuridicoDadosBasicosSite.Text := lblEdicao2.Text;
 Lbl_JuridicoDadosBasicosFax.Text := lblEdicao3.Text;

 lbl1 := lblEdicao1;
 lbl2 := lblEdicao2;
 lbl3 := lblEdicao3;

 LytCadastroJuridico.Visible := true;
end;

procedure TFrmCadastroCliente.FechaCadastroJuridicoDadosBasicos(indCancelar14 : boolean);
begin
 // FECHA CADASTRO DOS DADOS BASICOS DO CLIENTE JURIDICO
  if not indCancelar14 then
  lbl1.Text := EdtCadJuridicoEmail.Text;
  lbl2.Text := EdtCadJuridicoSite.Text;
  lbl3.Text := EdtCadJuridicoFax.Text;
  LytCadastroJuridico.Visible := false;
end;
{---------------------------------------------------------}










{---------------------------------------------------------}
procedure TFrmCadastroCliente.CadastroJuridicoObeservacoes(tipoCampo, titulo: string;
 lblEdicao1 :TLabel);
begin
 // CADASTRO DA OBSERVA??O DO CLIENTE JURIDICO
 LytCadastroFisico.Visible := false;
 LytCadastroJuridico.Visible := false;
 LytCadJuridicoNome.Visible := false;
 LytCadJuridicoInscricao.Visible := false;
 LytCadJuridicoEndereco.Visible := false;
 LytCadJuridicoFones.Visible := false;
 LytCadJuridicoDadosBasicos.Visible := false;
 LytCadJuridicoObservacoes.Visible := true;
 RecFundoJuridico.Height := 300;

 LblTituloCadastroJuridicoNome.Text := titulo;
 Lbl_JuridicoObeservacaoCliente.Text := lblEdicao1.Text;

 lbl1 := lblEdicao1;
 LytCadastroJuridico.Visible := true;
end;

procedure TFrmCadastroCliente.FechaCadastroJuridicoObservacoes(indCancelar15 : boolean);
begin
 // FECHA CADASTRO DAS OBSERVA??ES DO CLIENTE JURIDICO
  if not indCancelar15 then
  lbl1.Text := EdtCadJuridicoObservacoes.Text;
  LytCadastroJuridico.Visible := false;
end;
{---------------------------------------------------------}






procedure TFrmCadastroCliente.LblTituloCadastroClick(Sender: TObject);
begin
 if LblTituloCadastro.Text = 'Clientes F?sicos' then
 begin
 LytMessagemInfor.Visible := true;
 LblMessagemInfor.Text := 'Aqui voc? pode fazer o cadastro de clientes F?sicos!';
 end
 else
 begin
 LytMessagemInfor.Visible := true;
 LblMessagemInfor.Text := 'Aqui voc? pode fazer o cadastro de clientes Jur?dicos!';
 end;

end;

procedure TFrmCadastroCliente.Nao_SairClick(Sender: TObject);
begin
LytConfirmacaoSair.Visible := false;
end;

procedure TFrmCadastroCliente.RecFundoClick(Sender: TObject);
begin
 LytCadastroFisico.Visible := false;
 LytCadFisicoTelefone.Visible := false;
 LytCadFisicoNome.Visible := false;
 LytCadFisicoCpf.Visible := false;
 LytCadFisicoEndereco.Visible := false;
 LytCadFisicoDadosBasicos.Visible := false;
 LytCadFisicoObeservacao.Visible := false;
end;

procedure TFrmCadastroCliente.Sim_SairClick(Sender: TObject);
begin
close;
LytConfirmacaoSair.Visible := false;
end;

end.
