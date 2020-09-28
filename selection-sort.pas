program selection;

type vetor = array[0..1000000] of longint;

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

procedure troca (var w: vetor; m, i: longint);
var temp: longint;
begin
    temp:= w[m];
    w[m]:= w[i];
    w[i]:= temp;
end;

procedure imprime (var w: vetor; t: longint);
var i: longint;
begin
    for i:=1 to t do
    begin
        write(w[i],' ');
    end;
end;

procedure selection (var w: vetor; t: longint);
var i, j, menor, count: longint;
begin
    count:= 0;
    for i:=1 to t-1 do
    begin
        menor:= i;
        for j:=i+1 to t do
        begin
            count:= count + 1;
            if w[j]<w[menor] then
                menor := j;
        end;
        troca(w, menor, i);
        imprime(w, t);
        writeln;
    end;
    //writeln(count);
end;

var w: vetor;
    t: longint;

begin
    t:= ler(w);
    selection(w, t);
end.


