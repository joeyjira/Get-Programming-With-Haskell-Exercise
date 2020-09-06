-- lesson09.hs --
import           Data.Char

mymap fn []       = []
mymap fn (x : xs) = (fn x) : mymap fn xs

add3ToAll []       = []
add3ToAll (x : xs) = x + 3 : add3ToAll xs

mult3ToAll [] = []
mult3ToAll xs = (* 3) (head xs) : tail xs

myfilter :: (a -> Bool) -> [a] -> [a]
myfilter _ []               = []
myfilter predicate (x : xs) = if predicate x
                              then x : myfilter predicate xs
                              else myfilter predicate xs

myremove _ []               = []
myremove predicate (x : xs) = if predicate x
                              then myremove predicate xs
                              else x : myremove predicate xs

myfoldl _ init []      = init
myfoldl op init (x:xs) = myfoldl op (op init x) xs

myfoldr _ init []        = init
myfoldr op init (x : xs) = op x (myfoldr op init xs)

-- q1 --
myelem val xs = length filteredList /= 0
  where filteredList = filter (== val) xs

-- q2 --
myIsPalindrome phrase = formattedPhrase == (reverse formattedPhrase)
  where formattedPhrase = map toLower $ filter (/= ' ') phrase

harmonicSum 1 = 1
harmonicSum n = (1 / n) + harmonicSum (n - 1)

harmonic n = sum (take n seriesValues)
  where seriesPairs = zip (cycle [1.0])  [1.0,2.0 .. ]
        seriesValues = map
                       (\pair -> (fst pair)/(snd pair))
                       seriesPairs
