unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  ExtCtrls, pngimage, Objects;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    procedure onUpdate(player : Tplayer);
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.onUpdate(player: Tplayer);
var items : tstringlist;
    i : integer;
begin
  Label5.Caption := 'Gold: ' + inttostr(player.getGold);
  Label6.Caption := 'Leben: ' + inttostr(player.getHealth) + '/100';
  Label7.Caption := 'R�stung: ' + inttostr(player.getArmor) + '/100';
  Label8.Caption := 'St�rke: ' + inttostr(player.getStrength);
  items := player.getItems;
  //writeln(items[0]);
  if items.Count > 0 then
  Begin
    for i := 0 to items.Count -1 do
    Begin
      if i = 0 then
        Label4.Caption := items[i]
      else
        Label4.Caption := Label4.Caption + ', ' + items[i];
    End;
  End
  else
    Label4.Caption := '';

end;

end.
