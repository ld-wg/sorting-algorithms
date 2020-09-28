program insertion;

type vetor = array [0..1000000] of longint;

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

procedure insertion (var w: vetor; t: longint);
var i, j, aux, count: longint;
begin
    count:= 0;
    for i:=2 to t do
    begin
        j:= i;
        aux:= w[i];
        while (j>1) and (w[j-1] > aux) do
        begin
            count:= count + 1;
            w[j]:= w[j-1];
            j:= j-1;
        end;
        w[j]:= aux;
        imprime(w,t);
        writeln;
    end;
    //writeln(count);
end;

var w: vetor;
    t: longint;

begin
    t:= ler(w);
    insertion(w,t);
end.
