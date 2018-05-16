object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'BPDebateHelper'
  ClientHeight = 361
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  DesignSize = (
    714
    361)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 233
    Top = 105
    Width = 280
    Height = 186
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = '0:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -133
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 262
  end
  object Label2: TLabel
    Left = 633
    Top = 238
    Width = 40
    Height = 45
    Anchors = [akRight, akBottom]
    Caption = '15'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 554
    Top = 169
    Width = 105
    Height = 17
    Anchors = [akRight]
    Caption = 'Current Speaker:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 536
  end
  object Label5: TLabel
    Left = 578
    Top = 195
    Width = 49
    Height = 45
    Anchors = [akRight]
    Caption = 'PM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 560
  end
  object Button1: TButton
    Left = 231
    Top = 306
    Width = 115
    Height = 41
    Anchors = [akRight, akBottom]
    Caption = 'Start / Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
    ExplicitLeft = 217
    ExplicitTop = 280
  end
  object Button3: TButton
    Left = 352
    Top = 306
    Width = 115
    Height = 41
    Anchors = [akRight, akBottom]
    Caption = 'Reset Timer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button3Click
    ExplicitLeft = 338
    ExplicitTop = 280
  end
  object Button4: TButton
    Left = 594
    Top = 306
    Width = 113
    Height = 41
    Anchors = [akRight, akBottom]
    Caption = 'POI Start/Stop'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button4Click
    ExplicitLeft = 580
    ExplicitTop = 280
  end
  object Button5: TButton
    Left = 737
    Top = 43
    Width = 75
    Height = 25
    Caption = 'To 1'#39
    TabOrder = 3
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 737
    Top = 74
    Width = 75
    Height = 25
    Caption = 'To 6'#39
    TabOrder = 4
    Visible = False
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 737
    Top = 105
    Width = 75
    Height = 25
    Caption = 'To 7'#39
    TabOrder = 5
    Visible = False
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 737
    Top = 136
    Width = 75
    Height = 25
    Caption = 'To 7'#39'15"'
    TabOrder = 6
    Visible = False
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 473
    Top = 306
    Width = 115
    Height = 41
    Anchors = [akRight, akBottom]
    Caption = 'Next Speaker'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button9Click
    ExplicitLeft = 459
    ExplicitTop = 280
  end
  object Button10: TButton
    Left = 8
    Top = 21
    Width = 193
    Height = 33
    Caption = 'Reset the whole debate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button10Click
  end
  object GroupBox1: TGroupBox
    Left = 217
    Top = 8
    Width = 476
    Height = 81
    Caption = 'Preparing Timer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    object Label3: TLabel
      Left = 242
      Top = 24
      Width = 93
      Height = 45
      Caption = '15:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button11: TButton
      Left = 16
      Top = 24
      Width = 75
      Height = 45
      Caption = 'Start'
      TabOrder = 0
      OnClick = Button11Click
    end
  end
  object ListView1: TListView
    Left = 8
    Top = 86
    Width = 193
    Height = 262
    Anchors = [akLeft, akTop, akBottom]
    Columns = <
      item
        Caption = 'Speaker'
        Width = 65
      end
      item
        Caption = 'Time'
        Width = 70
      end
      item
        Caption = 'POI'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    ViewStyle = vsReport
    ExplicitHeight = 235
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 776
    Top = 176
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 776
    Top = 232
  end
end
