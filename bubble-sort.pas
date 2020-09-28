program bubble;

type vetor = array [1..1000000] of longint;

function ler (var w: vetor): longint;
var i, x: longint;
begin
    i:= 0;
    read(x);
    while (x <> 0) do
    begin
        i:= i + 1;
        w[i]:= x;
        read(x);
    end;
    ler:= i;
end;

procedure imprime (var w: vetor; t: longint);
var i: longint;
begin
    for i:= 1 to t do
    begin
        write(w[i],' ');
    end;
end;

procedure troca (var w: vetor; m, i: longint);
var temp: longint;
begin
    temp:= w[m];
    w[m]:= w[i];
    w[i]:= temp;
end;

procedure bubble (var w: vetor; t: longint);
var i, j, ctr, count: longint;
begin
    i:= 1;
    ctr:=1;
    count:= 0;
    while (i<=t) and (ctr<>0) do
    begin
        ctr:=0;
        for j:=1 to t-i do
        begin
            count:= count + 1;
            if w[j] > w[j+1] then
            begin
                troca (w, j, (j+1));
                ctr := ctr + 1;
            end;        
        end;
        //imprime(w,t);
        //writeln;
    end;
    writeln(count);
end;

var w: vetor;
    t: longint;

begin
    t:= ler(w);
    bubble(w,t);
end.
