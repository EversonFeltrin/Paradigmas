-- any e all
-- any aplica um teste a cada elemento de uma estrutura, 
-- caso satisfaça a condição retorna:
-- True (dentro da estrutura existe pelo menos um caso que satisfaz a condição) 
-- senão retorna False (dentro da estrutura nehum dos casos satisfaz a condição)

teste1 :: Int -> [Int] -> Bool 
teste1 _ [] = False
teste1 x lis = any (==x) lis

teste2 :: String -> Bool 
teste2 [] = False
teste2 str = any (=='a') str

-- all aplica um teste a cada elemento de uma estrutura, 
-- caso satisfaça a condição para todos os elemtos retorna:
-- True (dentro da estrutura todos os elementos satisfazem a condição) 
-- senão retorna False (dentro da estrutura ao menos um dos elementos não satisfaz a condição)

teste3 :: String -> Bool 
teste3 [] = False
teste3 str = all (/='5') str

teste4 :: [Int] -> Bool
teste4 [] = False
teste4 lis = all odd lis

-- símbolo '$'
-- Função: Se trata de um aplicador de função, é uma função de baixa precedência
-- pode-se considerar o $ como uma equivalência para substituição de parênteses nas declarações de expressões

simb1 :: String -> Int 
simb1 [] = 0 
simb1 str =
	let sub x
		|x == 'a'  = 1
		|otherwise = 0
	in sum $ map sub str

simb2 :: [Int] -> Int 
simb2 [] = 0 
simb2 lis = product $ map (+1) lis

-- Composição de Funções
-- Meio para dividir um problema em várias partes menores, aplica funções sobre funções
-- a composição de duas funções cria uma nova função

compFunc1 :: Int -> Int 
compFunc1 x = sum . map (^2) $ [1..x]

compFunc2 :: [Int] -> Int
compFunc2 lis = negate . maximum . map (+2) $ take 5 lis



--Referências:
--http://hackage.haskell.org/package/base-4.8.0.0/docs/Prelude.html
--http://haskell.tailorfontela.com.br/
--Programação Funcional com a Linguagem haskell - André Rauber Du Bois 
--http://www.inf.ufpr.br/andrey/ci062/ProgramacaoHaskell.pdf
