-- Soma os quadrados de 2 numeros
doubleUs :: Int -> Int -> Int   
doubleUs x y = x^2 + y^2
  
-- Verifica se um numero eh par (mod retorna resto da divisao inteira)
isEven :: Int -> Bool
isEven n = if mod n 2 == 0 then True else False
  
-- Gera um numero a partir de um caracter
encodeMe :: Char -> Int
encodeMe c 
  | c == 'S'  = 0
  | c == 'N'  = 1
  | otherwise = 2
  
-- Calcula o quadrado do primeiro elemento da lista
doubleFirst :: [Int] -> Int
doubleFirst lis = (head lis)^2

--Verifica se os primeiros elementos de duas listas são iguais

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y 
	|(head x)==(head y)	= True
	|otherwise 		= False




--Adiciona a constante 10 a cada elemento da lista, gerando uma nova

add10 :: [Int] -> [Int]
add10 [] = []
add10 x= (head x)+10 : add10 (tail x)

--Adiciona virgula no fim de cada string numa lista 

addComma :: [String] -> [String]
addComma [] = []
addComma x = ((head x)++",") : addComma (tail x)


--Refazer anteriores usando map 

add10m :: [Int] -> [Int]
add10m [] = []
add10m x= map (+10) x


addCommam :: [String] -> [String]
addCommam [] = []
addCommam x = map (++",") x


--Recebe lista de strings e formata como lista HTML

htmlListItems :: [String] -> [String]
htmlListItems [] = []
htmlListItems x = map ("<LI>"++) (map (++"</LI>") x)

--Verifica se caracter esta contido em uma string

charFound :: Char -> String -> Bool
charFound c str
	|c == (head str)	= True
	|str == []		= False
	|(head str) /= c 	= charFound c (tail str)
	|otherwise 		= False
	
 
--escrever função anterior sem recursão 

charFounds :: Char -> String -> Bool
charFounds c str 
	| (filter (==c) str) /= [] 	= True
	|otherwise 			= False

--diferença entre listas (par a par)

parapar :: [Int] -> [Int] -> [Int]
parapar x y = zipWith ( - ) x y 


--calcular 2*n+1 para cada número n contido na lista

calc :: [Int] -> [Int]
calc x = map(+1)(map (2*) x)

--calcular 4*x+2*y+1 para cada par de números x e y

calc2 :: [Int] -> [Int] -> [Int]
calc2 x y = zipWith (\x y -> 4*x+2*y+1) x y 

--produzir lista de strings de 10 caracteres

func :: [String] -> [String]
func x = map (take 10) (map (++ repeat '.') x)


--calcular o ano de nascimento correspondente (aproximado, considerando o ano atual)

idade :: [Int] -> [Int]
idade x = map (2015 - )(filter (>20) x) 
	
