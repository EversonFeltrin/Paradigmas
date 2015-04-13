import Data.Char

--1.dado o nome completo de uma pessoa, obtenha seu primeiro nome

firstName :: String -> String
firstName [] = []
firstName str 
	|head str /= ' ' = (head str) : firstName (tail str)
	|head str == ' ' = []

--2.dado o nome completo de uma pessoa, obtenha seu primeiro nome (Não Recursiva)

firstName' :: String -> String 
firstName' [] = []
firstName' str = takeWhile ( /=' ') str	

--3.dado o nome completo de uma pessoa, obtenha seu último sobrenome

lastName :: String -> String
lastName [] = [] 
lastName str
	|head str == ' ' = []
	|head str /= ' ' =  reverse (firstName (reverse str))

--4.dado o nome completo de uma pessoa, crie um nome de usuário (login) da pessoa

userName :: String -> String
userName [] = [] 
userName str = toLower (head str) : map  (toLower) (lastName(str))


--5.substitua vogais em uma string

encodeName :: String -> String
encodeName [] = [] 
encodeName str =
	let substitui x
		|x == 'a' || x == 'A' = "4"		
		|x == 'e' || x == 'E' = "3"		
		|x == 'i' || x == 'I' = "1"		
		|x == 'o' || x == 'O' = "1"		
		|x == 'u' || x == 'U' = "00"		
		|otherwise = [x]
	in concatMap (substitui) str

--6.verifique se um dado elemento pertence a uma lista

isElem :: Int -> [Int] -> Bool
isElem _ [] = False
isElem x lis = any ( == x) lis 

--7.função recursiva que retorne o número de vogais em uma string

numVogais :: String -> Int
numVogais [] = 0
numVogais str = 
	let compara x
		|x == 'a' || x == 'A' = 1		
		|x == 'e' || x == 'E' = 1		
		|x == 'i' || x == 'I' = 1		
		|x == 'o' || x == 'O' = 1		
		|x == 'u' || x == 'U' = 1	
		|otherwise = 0
	in (compara (head str)) + (numVogais (tail str))	
	
--8.função não-recursiva que retorne o número de consoantes em uma string.

numCons :: String -> Int
numCons [] = 0 
numCons str = 
	let compara x
		|x == 'a' || x == 'A' = 0		
		|x == 'e' || x == 'E' = 0		
		|x == 'i' || x == 'I' = 0		
		|x == 'o' || x == 'O' = 0		
		|x == 'u' || x == 'U' = 0
		|x == ' ' 	      = 0
		|otherwise 	      = 1
	in sum (map (compara) str)

--9.função que verifique se uma dada string só contém dígitos (0 a 9)

isInt :: String -> Bool
isInt [] = False
isInt str = 
	let testa x
		|x=='0' || x=='1' || x=='2' || x=='3' = True
		|x=='4' || x=='5' || x=='6' || x=='7' = True
		|x=='8' || x=='9' 		      = True
		|otherwise 			      = False
	in all ( ==True)(map (testa) str)

--10.converta uma string em um número inteiro

strToInt :: String -> Int
strToInt [] = 0 
strToInt str 
	|isInt str == True = read str :: Int
	|otherwise     = 0	
	
