import Data.Char
import System.IO

main :: IO ()
main = do
    strcontent <- readFile "nomes.csv"
    let strlist = lines strcontent
        strnew = map (userName) strlist
    writeFile "logins.csv" (unlines  (zipWith (++) strlist strnew ) )


firstName :: String -> String 
firstName [] = []
firstName str = takeWhile ( /=' ') str	

lastName :: String -> String
lastName [] = [] 
lastName str
	|head str == ' ' = []
	|head str /= ' ' =  reverse (firstName (reverse str))

userName :: String -> String
userName [] = [] 
userName str = (toLower) (head str) : map (toLower) (lastName(str))
