unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Dictionary;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ProgressBar1: TProgressBar;
    RichEdit1: TRichEdit;
    procedure Button1Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

uses ComObj;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 SH: TDictionaryFounder;
 S: TStringList;
 M: TMemoryStream;
 i: Integer;
 Start: Cardinal;
begin
 RichEdit1.Lines.SaveToFile('text.txt');
 //
 S:=TStringList.Create;
 try
  S.LoadFromFile('text.txt');
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=S.Count;
  SH:=TDictionaryFounder.Create;
  try
   Start:=GetTickCount;
   for i:=0 to S.Count-1 do
    begin
     SH.AddData(S.Strings[I]);
     ProgressBar1.Position:=i;
    end;
   ShowMessage('Время составления словаря: '+IntToStr(GetTickCount-Start));
   M:=TMemoryStream.Create;
   try
    SH.SaveToStream(M);
    M.SaveToFile('words.txt');
    ProgressBar1.Position:=0;
   finally
    M.Free;
   end;
  finally
   SH.Free;
  end;
 finally
  S.Free;
 end;
 RichEdit1.Lines.LoadFromFile('words.txt');
end;

end.
