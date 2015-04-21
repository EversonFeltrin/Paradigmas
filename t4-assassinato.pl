% localização
segunda(caren, poa).
segunda(alice, apt).
segunda(bia, apt).
segunda(maria, apt).
segunda(henrique, sm).
segunda(adriano, apt).
segunda(bernardo, sm).
segunda(pedro, sm).
terca(caren, poa).
terca(alice, poa).
terca(bia, poa).
terca(maria, sm).
terca(henrique, poa).
terca(adriano, apt).
terca(bernardo, sm).
terca(pedro, sm).
quarta(caren, poa).
quarta(alice, poa).
quarta(bia, poa).
quarta(maria, sm).
quarta(henrique, apt).
quarta(adriano, sm).
quarta(bernardo, poa).
quarta(pedro, poa).
quinta(caren, sm).
quinta(alice, apt).
quinta(bia, sm).
quinta(maria, sm).
quinta(henrique, apt).
quinta(adriano, apt).
quinta(bernardo, sm).
quinta(pedro, sm).
sexta(caren, apt).
sexta(alice, apt).
sexta(bia, apt).
sexta(maria, apt).
sexta(henrique, apt).
sexta(adriano, apt).
sexta(bernardo, apt).
sexta(pedro, apt).


% questão financeira

pobre(bia).
pobre(maria).
pobre(bernardo).
pobre(pedro).

% insanidade

insano(adriano).
insano(maria).

% relações

relac(anita, bernardo).
relac(bernardo, anita).

relac(anita, pedro).
relac(pedro, anita).

relac(bernardo, caren).
relac(caren, bernardo).

relac(pedro, alice).
relac(alice, pedro).

relac(alice, henrique).
relac(henrique, alice).

relac(henrique, maria).
relac(maria, henrique).

relac(maria, adriano).
relac(adriano, maria).


relac(adriano, caren).
relac(caren, adriano).


% Vitima
vitima(anita).

% verifica acessos especificos
rouba_arma(X):- quarta(X,sm); quinta(X,poa); quarta(X,apt ); quinta(X,apt).
rouba_chave(X):- segunda(X,sm); terca(X,poa).
presente_local(X):- quinta(X,apt); sexta(X,apt).

% verifica relacionamentos especificos
relacionamento(X,Y):- relac(X,Y).
relacionamento(X,Y) :- relac(Y,X).
ciumes(X,Y):- relacionamento(Z,X), relacionamento(Y,Z).


% motivações
dinheiro(X) :- pobre(X).
insanidade(X) :- insano(X).
ciumes_vitima(X) :- ciumes(X,Y) , vitima(Y).

% cruza dados do crime achando motivo e verificando acesso
acesso(X) :- rouba_arma(X) , rouba_chave(X) , presente_local(X).
motivo(X) :- ciumes_vitima(X) ; insanidade(X); dinheiro(X).

% verifica assassino
assassino(X) :- motivo(X), acesso(X).
