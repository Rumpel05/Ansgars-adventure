unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Objects;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);

  private
    { Private-Deklarationen }


  public
    { Public-Deklarationen }
      procedure split(Del : Char; Str: String; list : tstringlist);
      function getText(filename: String): tstringlist;
      procedure waitForInput();
      procedure closeAll();
      procedure StoryAblauf(player: TPlayer);
  end;
  var
  Form1: TForm1;

implementation
  uses Unit3, Unit2;

  var

  myStory: TextFile;
  ButtonSelec : integer;
  Pause : boolean;
  selecs : Array[0..3] of selec;
  player: Tplayer;
  data : String;
  dir : String;




{$R *.dfm}


procedure TForm1.closeAll();
Begin
  Form3.Close;
  Form2.Close;
  Form1.Close;
End;

procedure TForm1.waitForInput;
begin
 Pause := true;
  ButtonSelec := 0;
  while Pause do
  Begin
    sleep(100);
    Application.ProcessMessages;
  End;
  if not(selecs[ButtonSelec - 1].checkForCondition(player)) then
  Begin
    Memo1.Lines.Append('Du hast nicht die Vorraussetzungen um das auszuf�hren ! W�hle was anderes!');
    waitForInput();
  End;





end;

function TForm1.getText(filename : String) : tstringlist;
begin
  result := TStringList.Create;
  if (FileExists(filename)) then
  begin

    result.Loadfromfile(filename);
  end;

end;

procedure TForm1.split(Del : Char; Str: String;list : tstringlist );
Begin
    list.clear;
    list.Delimiter       := Del;
    list.StrictDelimiter := True; // Requires D2006 or newer.
    list.DelimitedText   := Str;
End;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ButtonSelec := 1;
  Pause := false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ButtonSelec := 2;
  Pause := false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ButtonSelec := 3;
  Pause := false;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  //dlg:=TForm2.Create(self);
  //dlg.Show;
  Form1.Hide;
  Form2.Show;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  player := Tplayer.create(0, 0, 30, 10);
  data:= 'Part1.str';
  StoryAblauf(player);

end;

procedure TForm1.StoryAblauf(player: TPlayer);
var subs: tstringlist;
  sub, lauf : String;
  j: Integer;
  i: Integer;
var l : Integer;
Begin
 while true do
  Begin
    subs := getText(data);
    sub := subs[5];
    for j := 1 to strtoint(subs[0]) do
      Begin
       Memo1.Lines.Append(subs[j]);
       Memo1.Lines.Append('');
      End;
   // for i := strtoint(subs[0]) + 2 to strtoint(subs[0])+2 + strtoint(subs[strtoint(subs[0])+1])  do
    //Begin

    //End;

  //Selections erstellen
  for l := 0 to strtoint(subs[strtoint(subs[0])+1])-1 do
  Begin
    lauf:= subs[strtoint(subs[strtoint(subs[0])+1]) + strtoint(subs[0])+ l];
    selecs[l] := selec.create(lauf);
  End;

    case strtoint(subs[strtoint(subs[0])+1]) of
      1:Begin
          Button1.Visible := true;
          Button2.Visible := false;
          Button3.Visible := false;
          Button1.Caption := selecs[0].getText;
        End;
      2:Begin
        Button2.Visible := true;
        Button1.Visible := true;
        Button3.Visible := false;
        Button1.Caption := selecs[0].getText;
        Button2.Caption := selecs[1].getText;
      End;
      3:Begin
        Button3.Visible := true;
        Button2.Visible := true;
        Button1.Visible := true;
        Button1.Caption := selecs[0].getText;
        Button2.Caption := selecs[1].getText;
        Button3.Caption := selecs[2].getText;
      End;
    end;
  //Alle Auswahlen durchgehen

  //Auf Button warten
  waitForInput();
  if (selecs[ButtonSelec -1].getState = 2) or (selecs[ButtonSelec -1].getState = 3) THEN
    player.setEffect(selecs[ButtonSelec -1].getEffect);
  //wenn die n�chste URL leer ist dann aufh�ren
  if selecs[ButtonSelec - 1].getURL = '' then
  Begin
   //n�chste Datei einlesen
   dir := ExtractFileDir('Part1.str');
   data := dir + selecs[ButtonSelec -1].getURL;
   continue;
  End
  else
  Begin

    break;
  End;

  break;

  End;
//Ende while
//reset
player.free;
for i := 0 to 2 do
  selecs[l].free;

subs.free;
CloseFile(myStory);

End;


end.
