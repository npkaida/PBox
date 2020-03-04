object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #29992#25143#30331#24405
  ClientHeight = 226
  ClientWidth = 461
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 72
    Top = 44
    Width = 75
    Height = 15
    Caption = #29992#25143#21517#31216#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 72
    Top = 76
    Width = 75
    Height = 15
    Caption = #29992#25143#23494#30721#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object imgLogo: TImage
    Left = 16
    Top = 15
    Width = 32
    Height = 32
    AutoSize = True
  end
  object edtUserName: TEdit
    Left = 156
    Top = 41
    Width = 221
    Height = 23
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = edtUserNameKeyDown
  end
  object edtUserPass: TEdit
    Left = 156
    Top = 71
    Width = 221
    Height = 23
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    PasswordChar = 'l'
    TabOrder = 1
    OnKeyDown = edtUserPassKeyDown
  end
  object btnSave: TButton
    Left = 276
    Top = 151
    Width = 101
    Height = 32
    Caption = #30331#24405
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ImageIndex = 0
    Images = ilButton
    ParentFont = False
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object btnCancel: TButton
    Left = 156
    Top = 151
    Width = 105
    Height = 32
    Caption = #21462#28040
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ImageIndex = 1
    Images = ilButton
    ParentFont = False
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object chkUserName: TCheckBox
    Left = 156
    Top = 104
    Width = 97
    Height = 17
    Caption = #35760#20303#29992#25143#21517#31216
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = chkUserNameClick
  end
  object chkAutoLogin: TCheckBox
    Left = 308
    Top = 104
    Width = 69
    Height = 17
    Caption = #33258#21160#30331#24405
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = chkAutoLoginClick
  end
  object ilButton: TImageList
    Left = 20
    Top = 168
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFC9D3F200ABB8EC000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFA8B5EB00C9D3F200000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC9D3F2004968D6004463D800A9B7
      EB00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFA7B5EB004463D8004866D600C9D3F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFA3B3EA004463D8004463D8004463
      D800A9B7EB00000000FF000000FF000000FF000000FF000000FF000000FFA7B5
      EB004463D8004463D8004463D800A4B2EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFDCE1D1009AA87900DEE3D400000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFA0AFEA004463D8004463
      D8004463D800A9B7EB00000000FF000000FF000000FF000000FFA7B5EB004463
      D8004463D8004463D800A1B0EA00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFDCE1D10096A6760097A7760096A67600DFE4D600000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFA0AFEA004463
      D8004463D8004463D800A9B7EB00000000FF000000FFA7B5EB004463D8004463
      D8004463D800A1B0EA00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFDCE1
      D10096A6760097A7760097A7760097A7760098A67800E0E4D600000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFA0AF
      EA004463D8004463D8004463D800A9B7EB00A7B5EB004463D8004463D8004463
      D800A1B0EA00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFDBE0D00096A6
      760097A7760098A67800CBD3BB0098A6780097A7760098A67800E0E4D6000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFA0AFEA004463D8004463D8004463D8004463D8004463D8004463D800A1B0
      EA00000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFA3B1860097A7
      760098A67800E3E7DC00000000FFE0E4D60098A6780097A7760098A67800DFE4
      D600000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFA0AFEA004463D8004463D8004463D8004463D800A1B0EA000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFEFF1EA00A5B2
      8900E3E7DC00000000FF000000FF000000FFE0E4D60098A6780097A7760098A6
      7800DFE4D600000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFA7B5EB004463D8004463D8004463D8004463D800A8B6EB000000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE0E4D60098A6780097A7
      760098A67800DFE4D600000000FF000000FF000000FF000000FF000000FF0000
      00FFA7B5EB004463D8004463D8004463D8004463D8004463D8004463D800A8B6
      EB00000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFE0E4D60098A6
      780097A7760098A67800DFE4D600000000FF000000FF000000FF000000FFA7B5
      EB004463D8004463D8004463D800A1B0EA00A0AFEA004463D8004463D8004463
      D800A8B6EB00000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE0E4
      D60098A6780097A77600ACB89100000000FF000000FF000000FFA7B5EB004463
      D8004463D8004463D800A1B1EA00000000FF000000FFA0AFEA004463D8004463
      D8004463D800A8B6EB00000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFE0E4D600ABB99300000000FF000000FF000000FFA7B5EB004463D8004463
      D8004463D800A1B1EA00000000FF000000FF000000FF000000FFA0AFEA004463
      D8004463D8004463D800A8B6EB00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFA8B5EB004463D8004463D8004463
      D800A1B1EA00000000FF000000FF000000FF000000FF000000FF000000FFA0AF
      EA004463D8004463D8004463D800A9B7EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC6CEF1004665D7004463D800A1B1
      EA00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFA0AFEA004463D8004665D700C5CDF1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFC6CEF100A4B2EA000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFA3B3EA00C6CEF100000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF9FF900000000FFFF0FF000000000
      FFFF07E000000000F8FF83C100000000F07FC18300000000E03FE00700000000
      C01FF00F00000000C20FF81F00000000C707F81F00000000FF83F00F00000000
      FFC1E00700000000FFE1C18300000000FFF383C100000000FFFF07E000000000
      FFFF0FF000000000FFFF9FF90000000000000000000000000000000000000000
      000000000000}
  end
end
