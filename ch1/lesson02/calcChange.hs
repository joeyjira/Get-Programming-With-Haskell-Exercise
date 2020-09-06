-- calcChange.hs --

calcChange :: (Num a, Ord a) => a -> a -> a
calcChange owed given =
  if given - owed > 0
  then given - owed
  else 0

calcChange2 :: (Num a, Ord a) => a -> a -> a
calcChange2 owed given =
  if change > 0
  then change
  else 0
    where change = given - owed

-- Q1 --
doublePlusTwo :: (Num a) => a -> a
doublePlusTwo x = doubleX + 2
  where doubleX = x * 2

-- Q2 --
inc :: (Num a) => a -> a
inc = (+1)

double :: (Num a) => a -> a
double = (*2)

square :: (Num a) => a -> a
square = (^2)

-- q3 --
fn :: (Integral a) => a -> a
fn n = if mod n 2 == 0
       then n - 2
       else 3 * n + 1
