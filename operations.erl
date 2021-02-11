-module(operations).

-export([soma/2, sub/2, area/3, area/1, perimetro/4]).

soma(X, Y) -> %Head
    X + Y.   %Body
    
sub(X, Y) ->
    X - Y.
    
area(Tipo, N, M)->
    case Tipo of
        quadrado -> N * N;
        triangulo -> 0.5 * N * M
    end.
    
%Pattern Mathing {}
area({quadrado, N}) ->
        N * N;
area(_) ->
    {erro, objetoInvalido}.
    
perimetro(X, Y, Z, W) ->
    X + Y + Z + W.
    
    
