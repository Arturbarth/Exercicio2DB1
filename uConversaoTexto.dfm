object FConversaoTexto: TFConversaoTexto
  Left = 0
  Top = 0
  Caption = 'FConversaoTexto'
  ClientHeight = 391
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 289
    Height = 391
    Align = alLeft
    Caption = 'Texto Original'
    TabOrder = 0
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 285
      Height = 374
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 14
    end
  end
  object GroupBox2: TGroupBox
    Left = 289
    Top = 0
    Width = 326
    Height = 391
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 295
    ExplicitWidth = 289
    DesignSize = (
      326
      391)
    object btnConverter: TButton
      Left = 2
      Top = 336
      Width = 322
      Height = 53
      Align = alBottom
      Caption = 'Converter'
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 40
      Top = 40
      Width = 249
      Height = 209
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Op'#231#245'es de Convers'#227'o'
      Items.Strings = (
        'Invertido'
        'Primeira mai'#250'scula'
        'Ordem alfab'#233'tica')
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 615
    Top = 0
    Width = 289
    Height = 391
    Align = alRight
    Caption = 'Texto Convertido'
    TabOrder = 2
    ExplicitLeft = 619
    object Memo2: TMemo
      Left = 2
      Top = 15
      Width = 285
      Height = 374
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 4
    end
  end
end
