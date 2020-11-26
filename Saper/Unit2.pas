unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Label2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  a, b, c, d: longint;
  I:Boolean;

implementation

{$R *.dfm}

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If i=true then begin
     case key of
     vk_left : Label1.Left:=label1.Left-4;
     vk_right : Label1.Left:=label1.Left+4;
     vk_up : Label1.Top:=label1.Top-4;
     vk_down : Label1.Top:=label1.Top+4;
     end;
     c:=label1.Left-a;
     d:=label1.Top-b;
     if sqrt(c*c+d*d)<100 then label4.Caption:='Опасно'
                    else label4.Caption:='Чисто';
     if sqrt(c*c+d*d)<20 then begin
                    label4.Caption:='Взрыв!!!';
                    label3.Visible:=true;
                    label5.Visible:=true;
                    i:=false;
     end;
     if (label1.Top>175) and (label1.Left>290) then
     label4.Caption:='Дошёл!!!';
     end;
end;

procedure TForm2.Label2Click(Sender: TObject);
begin
     i:=true;
     image1.Picture.LoadFromFile('sz_raudona.bmp');
     randomize;
     a:=random(250);
     b:=random(150);
     label3.Left:=a;
     label3.Top:=b;
     label5.Left:=a;
     label5.Top:=b;
end;

end.
