unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);


  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  ListBox1.Items.Add('Not');
  Listbox1.Items.Add('In');
  ListBox1.Items.Add('Alphabetical');
  ListBox1.Items.Add('Order');
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var ItemIndex,quantity:integer;
  ItemIndexText,value:string;
begin
  if((ListBox1.Items.count>0) AND (ListBox1.ItemIndex > -1)) then
  begin
  ItemIndex := ListBox1.ItemIndex;
  ItemIndexText:=ListBox1.Items[ListBox1.ItemIndex];
  value := inputbox('Test program', 'Please type your mnozstvo', '0');
  quantity:=StrToInt(value);
  Memo1.append('Slovo: '+ItemIndexText+',Index: '+IntToStr(ItemIndex)+',mnozstvo: '+IntToStr(quantity));
  ListBox1.ItemIndex:=-1;
  end;
end;






end.

