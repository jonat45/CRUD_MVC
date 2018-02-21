object frmCadClientes: TfrmCadClientes
  Left = 0
  Top = 0
  Caption = ':: Cadastro de clientes ::'
  ClientHeight = 154
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object edtCodigo: TLabeledEdit
    Left = 24
    Top = 32
    Width = 89
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'digo'
    TabOrder = 0
  end
  object edtNome: TLabeledEdit
    Left = 24
    Top = 80
    Width = 329
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 24
    Top = 120
    Width = 75
    Height = 25
    Caption = 'GRAVAR'
    TabOrder = 2
    OnClick = Button1Click
  end
end
