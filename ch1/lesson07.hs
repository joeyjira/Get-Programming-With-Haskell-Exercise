-- lesson07.hs --
mytake _ []       =[]
mytake 0 _        = []
mytake n (x : xs) = x : mytake (n - 1) xs

-- Greatest Common Divisor : Euclid --
mygcd1 a b = if remainder == 0
          then b
          else mygcd b remainder
  where remainder = a `mod` b

mygcd2 a 0 = a
mygcd2 a b = mygcd2 b (a `mod` b)

mehSayAmount n = case n of
  1 -> "one"
  2 -> "two"
  3 -> "a bunch"

isEmpty :: [a] -> Bool
isEmpty [] = True
isEmpty _  = False
