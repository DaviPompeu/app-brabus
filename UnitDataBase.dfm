object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 421
  Width = 626
  object conn: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = connAfterConnect
    BeforeConnect = connBeforeConnect
    Left = 280
    Top = 56
  end
  object qryOS: TFDQuery
    Connection = conn
    Left = 200
    Top = 128
  end
  object qryConsCliente: TFDQuery
    Connection = conn
    Left = 352
    Top = 128
  end
  object qryGeral: TFDQuery
    Connection = conn
    Left = 200
    Top = 208
  end
  object qryFoto: TFDQuery
    Connection = conn
    Left = 344
    Top = 216
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 464
    Top = 296
  end
  object qryLogin: TFDQuery
    Connection = conn
    Left = 200
    Top = 288
  end
end
