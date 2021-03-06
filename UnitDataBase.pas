unit UnitDataBase;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB,
  FireDAC.Comp.Client, System.IOUtils, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.SQLiteWrapper.Stat;
  // FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL;

type
  Tdm = class(TDataModule)
    conn: TFDConnection;
    qryOS: TFDQuery;
    qryConsCliente: TFDQuery;
    qryGeral: TFDQuery;
    qryFoto: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    qryLogin: TFDQuery;
    procedure connBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure connAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure Tdm.connAfterConnect(Sender: TObject);
  begin
  // TABELA CLIENTE
    conn.ExecSQL('CREATE TABLE IF NOT EXISTS TAB_CLIENTE(' +
    'COD_CLIENTE VARCHAR(5)PRIMARY KEY,' +
   // 'COD_CLIENTE VARCHAR(5),' +
    'NOME VARCHAR (100),' +
    'RAZAO VARCHAR (100),' +
    'CNPJ_CPF VARCHAR (20),' +
    'INSCRICAO_ESTADUAL VARCHAR (20),' +
    'INSCRICAO_MUNICIPAL VARCHAR (20),' +
    'SITE VARCHAR (30),' +
    'FAX VARCHAR (20),' +
    'ENDERECO VARCHAR(100),' +
    'NUMERO VARCHAR(5),' +
    'BAIRRO VARCHAR(50),' +
    'CEP VARCHAR(12),' +
    'FONE VARCHAR (20),'+
    'FONE2 VARCHAR (20),'+
    'SEXO VARCHAR(20),' +
    'DATA_NASCIMENTO VARCHAR(15),' +
    'DATA_CADASTRO VARCHAR(25),' +
    'OBSERVACOES VARCHAR(150),' +
    'UF VARCHAR (2), '+
    'CIDADE VARCHAR (50),' +
    'EMAIL VARCHAR (100)' +
    ')');

  // TABELA DE OS
    conn.ExecSQL('CREATE TABLE IF NOT EXISTS TAB_OS(' +
    'COD_OS VARCHAR(20)PRIMARY KEY,' +
    'COD_CLIENTE VARCHAR (20),' +
    'ENDERECO VARCHAR(100),' +
    'DATA_OS DATETIME, '+
    'ASSUNTO VARCHAR (100),'+
    'PROBLEMA VARCHAR (1000),' +
    'STATUS CHAR (1),' +
    'ASSINATURA BLOB' +
    ')');

   // TABELA DE FOTOS
    conn.ExecSQL('CREATE TABLE IF NOT EXISTS TAB_OS_FOTO(' +
    'COD_FOTO VARCHAR(20)PRIMARY KEY,' +
    'COD_OS VARCHAR (20),' +
    'FOTO BLOB,' +
    'DESCRICAO VARCHAR(50), '+
    'DT_FOTO DATATIME' +
    ')');

   // TABELA LOGIN
   conn.ExecSQL('CREATE TABLE IF NOT EXISTS TAB_LOGIN(' +
    'LOGIN_ID CHAR(4)PRIMARY KEY,' +
    'LOGIN_NOME VARCHAR(100),' +
    'LOGIN_SENHA VARCHAR(20),' +
    'LOGIN_FOTO BLOB,' +
    'LOGIN_LEMBRARDEMIN VARCHAR(1), '+
    'LOGIN_EMAIL VARCHAR(100)' +
    ')');

    //TABELA CODIGOS
    conn.ExecSQL('CREATE TABLE IF NOT EXISTS TAB_CODIGO(' +
    'CODIGO_OS VARCHAR(10),' +
    'CODIGO_CLIENTE VARCHAR (5),' +
    'CODIGO_LOGIN VARCHAR(5)' +
    ')');


   //CARGA DE CLIENTE, REMOVER E CRIAR OP??O PARA CRIAR CLIENTES NO APP

   { try
    conn.ExecSQL('INSERT INTO TAB_CLIENTE(COD_CLIENTE, NOME, ENDERECO, CIDADE, UF, FONE, EMAIL) ' +
                 'VALUES(''10001'', ''NALDINHO CORREA'', ''RUA ESMERALDA, 800'', ''IMPERATRIZ'', ''GO'', ''(99) 99115-1515'', ''davipompeu@dtech.com'')');
    except
    end;
    }

   //CARGA DE USUARIO, REMOVER E CRIAR OP??O ADICIONAR USUARIO NO APP
   {
    try
    conn.ExecSQL('INSERT INTO TAB_LOGIN(LOGIN_ID, LOGIN_NOME, LOGIN_SENHA, LOGIN_FOTO, LOGIN_LEMBRARDEMIN, LOGIN_EMAIL) ' +
                 'VALUES(''0001'', ''DAVI POMPEU'', ''1234'', '' '', ''S'', ''davipompeu@dtech.com'')');
    except
    end;
    }
   end;




procedure Tdm.connBeforeConnect(Sender: TObject);

  begin
    conn.DriverName:= 'SQLite';
    {$IFDEF MSWINDOWS}
      conn.Params.Values['Database'] := System.SysUtils.GetCurrentDir + '\Brabus.db';
    {$ELSE}
      conn.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'Brabus.db');
    {$ENDIF}
  end;


procedure Tdm.DataModuleCreate(Sender: TObject);
  begin

    conn.Connected := true;

  end;


end.
