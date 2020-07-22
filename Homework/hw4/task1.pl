hasDirectConn(newOrleans, chicago).
hasDirectConn(philadelphia, newOrleans).
hasDirectConn(columbus, philadelphia).
hasDirectConn(sanFrancisco, columbus).
hasDirectConn(detroit, sanFrancisco).
hasDirectConn(toledo, detroit).
hasDirectConn(houston, sanFrancisco).


findRoute(X,Y):-hasDirectConn(X,Y),write(X), write('-'),write(Y).
findRoute(X,Y):-write(X),write('-'),hasDirectConn(X,Z),findRoute(Z,Y).




