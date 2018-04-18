:- initialization(input(P)).

perm([X|Y], Z) :- perm(Y, W), takeout(X, Z, W).
perm([], []).

takeout(X, [X|R], R).
takeout(X, [F|R], [F|S]) :- takeout(X, R, S).

input(P) :-
     read_integer(A),
     read_integer(B),
     solve(P, B, A).

solve(P, A, B) :-
     perm([1, 2, 3, 4, 5, 6, 7, 8], P),
     check(P, [1, 2, 3, 4, 5, 6, 7, 8], A, B),
     combine([1, 2, 3, 4, 5, 6, 7, 8], P, S, D),
     all_diff(S),
     all_diff(D),
     write_in_format(P),
     !.

check([X1|Y1], [X2|Y2], A, B) :-
     X2 =:= A,
     X1 =:= B.
check([X1|Y1], [X2|Y2], A, B) :-
     X2 < A,
     check(Y1, Y2, A, B).

combine([X1|X], [Y1|Y], [S1|S], [D1|D]) :-
     S1 is X1 + Y1,
     D1 is X1 - Y1,
     combine(X, Y, S, D).
combine([], [], [], []).

all_diff([X|Y]) :-  \+member(X, Y), all_diff(Y).
all_diff([X]).

write_in_format([X|Y]) :-
     write_in_line(X, [1, 2, 3, 4, 5, 6, 7, 8]),
     write_in_format(Y).
write_in_format([]).

write_in_line(X, [A|B]) :-
   X =:= A,
   write('1 '),
   write_in_line(X, B);
   X \= A,
   write('0 '),
   write_in_line(X, B).
write_in_line(X, []) :- write('\n').
