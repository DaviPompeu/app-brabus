unit UnitBuscaCliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView;

type
TCallbackCliente = procedure(codCliente: string) of Object;

  TFrmBuscaCliente = class(TForm)
    TopUser: TLayout;
    Image2: TImage;
    Nome_Cliente: TLabel;
    Icone_cliente: TImage;
    ImgVoltar: TImage;
    Pesquisar: TLayout;
    Image1: TImage;
    Image5: TImage;
    EdtPesquisarCliente: TEdit;
    LVBuscaCliente: TListView;
    ImgFundoCliente: TImage;
    ImgMaisCliente: TImage;
    CirculoCliente: TCircle;
    ImgGps: TImage;
    ImgLine: TImage;
    procedure LVBuscaClienteItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Image5Click(Sender: TObject);
    procedure ImgVoltarClick(Sender: TObject);
  private
    procedure AddCliente(codCliente, nome, endereco, cidade, uf: string);
    procedure ConsultarCliente(filtro: string);
    { Private declarations }
  public
    executeOnClose: TCallbackCliente;
    { Public declarations }
  end;

var
  FrmBuscaCliente: TFrmBuscaCliente;

implementation

{$R *.fmx}

uses UnitDataBase, UnitPrincipal;

procedure TFrmBuscaCliente.AddCliente(codCliente, nome, endereco, cidade, uf: string);
//  ADICIONANDO OS CLIENTES NA LIST VIEWER
var
    item : TListViewItem;
      begin
          item := lvBuscaCliente.Items.Add;

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


procedure TFrmBuscaCliente.ConsultarCliente(filtro: string);
// FAZENDO O SELECT NA TAB_CLIENTE
begin
    lvBuscaCliente.Items.Clear;

    dm.qryConsCliente.Active := false;
    dm.qryConsCliente.SQL.Clear;
    dm.qryConsCliente.SQL.Add('SELECT C.*');
    dm.qryConsCliente.SQL.Add('FROM TAB_CLIENTE C');

     //if para fazer o filtro dos cliente puxando pelo nome do cliente
     if FrmPrincipal.combobox_filtro_cliente.ItemIndex = 0 then
     begin
              if filtro <> '' then
                begin
                    dm.qryConsCliente.SQL.Add('WHERE C.NOME LIKE :NOME');
                    dm.qryConsCliente.ParamByName('NOME').Value := '%' + filtro + '%';

                end;
     end;

     //if para fazer o filtro dos cliente puxando pelo endere?o do cliente
         if FrmPrincipal.combobox_filtro_cliente.ItemIndex = 1 then
         begin
              if filtro <> '' then
            begin
                dm.qryConsCliente.SQL.Add('WHERE C.ENDERECO LIKE :ENDERECO');
                dm.qryConsCliente.ParamByName('ENDERECO').Value := '%' + filtro + '%';

            end;
         end;

    //if para fazer o filtro dos cliente puxando pelo email do cliente
         if FrmPrincipal.combobox_filtro_cliente.ItemIndex = 2 then
         begin
              if filtro <> '' then
            begin
                dm.qryConsCliente.SQL.Add('WHERE C.EMAIL LIKE :EMAIL');
                dm.qryConsCliente.ParamByName('EMAIL').Value := '%' + filtro + '%';

            end;
         end;

    dm.qryConsCliente.SQL.Add('ORDER BY C.NOME');
    dm.qryConsCliente.Active := true;

    while NOT dm.qryConsCliente.Eof do
    begin
        AddCliente(dm.qryConsCliente.FieldByName('COD_CLIENTE').AsString,
                   dm.qryConsCliente.FieldByName('NOME').AsString,
                   dm.qryConsCliente.FieldByName('ENDERECO').AsString,
                   dm.qryConsCliente.FieldByName('CIDADE').AsString,
                   dm.qryConsCliente.FieldByName('UF').AsString);

        dm.qryConsCliente.Next;
    end;

end;


procedure TFrmBuscaCliente.Image5Click(Sender: TObject);
begin
  ConsultarCliente(EdtPesquisarCliente.Text);
end;

procedure TFrmBuscaCliente.ImgVoltarClick(Sender: TObject);
begin
FrmBuscaCliente.Close;
end;

procedure TFrmBuscaCliente.LVBuscaClienteItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
    if Assigned(executeOnClose) then
    begin
        executeOnClose(AItem.TagString);
        close;
    end;
end;

end.
