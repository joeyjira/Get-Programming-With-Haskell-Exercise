-- lesson04.hs --
import           Data.List

ifEvenInc n = if even n
              then n + 1
              else n

ifEvenDouble n = if even n
                 then n * 2
                 else n

ifEvenSquare n = if even n
                 then n ^ 2
                 else n

ifEvenDo fn n = if even n
                then fn n
                else n

inc n = n + 1
double n = n * 2
square n = n ^ 2

ifEvenCube = ifEvenDo (\x -> x ^ 3)

-- names --
names = [("Ian", "Curtis"),
         ("Bernard", "Sumner"),
         ("Peter", "Hook"),
         ("Stephen", "Morris")]

compareLastNames name1 name2 =  if lastName1 > lastName2
                                then GT
                                else if lastName1 < lastName2
                                then LT
                                else
                                EQ
 where lastName1 = snd name1
       lastName2 = snd name2
