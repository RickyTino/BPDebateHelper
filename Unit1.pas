unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, mmSystem, Vcl.ExtCtrls, DateUtils,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Timer1: TTimer;
    Button3: TButton;
    Button4: TButton;
    Label2: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Button11: TButton;
    ListView1: TListView;
    Label4: TLabel;
    Label5: TLabel;
    Timer2: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  SpkStr: array[1..8] of string = ('PM', 'LO', 'DPM', 'DLO', 'GM', 'OM', 'GW', 'OW');

var
  Form1: TForm1;
  Root: String;
  CurTime: TTime;
  isPOI: boolean;
  POINum: longint;
  CurSpk: longint;

implementation

{$R *.dfm}


procedure TForm1.Button10Click(Sender: TObject);
begin
  Button3.Click;
  CurSpk := 1;
  Label5.Caption := SpkStr[CurSpk];
  Label3.Caption := '15:00';
  Timer2.Enabled := false;
  Timer1.Enabled := false;
  Button3.Enabled := true;
  POINum := 0;
  ListView1.Clear;

end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Label3.Caption := '15:00';
  Timer2.Enabled := true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Label1.Caption = '7:15' then begin
    Timer1.Enabled := false;
    Button3.Enabled := true;
    Button9.Enabled := true;
    exit;
  end;
  Timer1.Enabled := not Timer1.Enabled;
  Button3.Enabled := not Button3.Enabled;
  Button9.Enabled := not Button9.Enabled;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Label1.Caption := '0:00';
  CurTime := StrToTime('0:00:00');
  Button4.Enabled := false;
  isPOI := false;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if not isPOI then begin
    isPOI := true;
    Label2.Visible := true;
    Label2.Caption := '15';
    inc(POINum);
  end
  else begin
    Timer2.Enabled := false;
    Label2.Visible := false;
    isPOI := false;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  CurTime := StrToTime('0:00:58');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  CurTime := StrToTime('0:05:58');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  CurTime := StrToTime('0:06:58');
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  CurTime := StrToTime('0:07:13');
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  ListView1.Items.Add;
  ListView1.Items[CurSpk - 1].Caption := SpkStr[CurSpk];
  ListView1.Items[CurSpk - 1].SubItems.Add(FormatDateTime('nn:ss', CurTime));
  ListView1.Items[CurSpk - 1].SubItems.Add(IntToStr(POINum));
  if CurSpk < 8 then begin
    inc(CurSpk);
    Label5.Caption := SpkStr[CurSpk];
  end;
  Button3.Click;
  POINum := 0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Root := ExtractFileDir(Application.ExeName);
  //PlaySound(PChar(Root + '/6005.wav'), 0, SND_ASYNC);
  Button3.Click;
  CurSpk := 1;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Label1.Font.Size := ((Height + 10) * 100) div 350;
  Label2.Font.Size := (Height * 28 ) div 350;
  Label4.Font.Size := (Height * 11 ) div 350;
  Label5.Font.Size := (Height * 28 ) div 350;

  Label4.Left := Label1.Left + Label1.Width  + 40;
  Label5.Left := Label1.Left + Label1.Width  + 65;
  Label4.Top  := Label1.Top  + 60;
  Label5.Top  := Label1.Top  + 90;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  t: longint;
begin
  CurTime := IncSecond(CurTime, 1);
  Label1.Caption := FormatDateTime('n:ss', CurTime);
  if isPOI then begin
    t := StrToInt(Label2.Caption);
    dec(t);
    Label2.Caption := IntToStr(t);
    if t = 0 then begin
      //PlaySound(PChar(Root + '/1.wav'), 0, SND_ASYNC);
      isPOI := false;
    end;
  end else Label2.Visible := false;

  if Label1.Caption = '1:00' then begin
    PlaySound(PChar(Root + '/1.wav'), 0, SND_ASYNC);
    Button4.Enabled := true;
  end
  else  if Label1.Caption = '6:00' then begin
    PlaySound(PChar(Root + '/1.wav'), 0, SND_ASYNC);
    Button4.Enabled := false;
  end
  else if Label1.Caption = '7:00' then
    PlaySound(PChar(Root + '/2.wav'), 0, SND_ASYNC)
  else if Label1.Caption = '7:15' then begin
    PlaySound(PChar(Root + '/7.wav'), 0, SND_ASYNC);
    Button1.Click;
  end;

  //Label1.Caption := Label1.Caption + '.' + IntToStr(MilliSecondOf(CurTime) div 100);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  t: TTime;
  s: string;
begin
  s := '00:' + Label3.Caption;
  t := StrToTime(s);
  t := IncSecond(t, -1);
  Label3.Caption := FormatDateTime('nn:ss', t);
  if Label3.Caption = '00:00' then begin
    Timer2.Enabled := false;
    PlaySound(PChar(Root + '/1.wav'), 0, SND_ASYNC);
  end;
end;

end.
