-- sumSquareOrSquareSum.hs --
sumSquareOrSquareSum0 :: (Num a, Ord a) => a -> a -> a
sumSquareOrSquareSum0 x y = if sumSquare > squareSum
                           then sumSquare
                           else squareSum
 where sumSquare = x ^ 2 + y ^ 2
       squareSum =(x + y) ^ 2

body sumSquare squareSum = if sumSquare > squareSum
                           then sumSquare
                           else squareSum

sumSquareOrSquareSum1 x y = body (x ^ 2 + y ^ 2) ((x + y) ^ 2)

sumSquareOrSquareSum x y = (\sumSquare squareSum ->
                              if sumSquare > squareSum
                              then sumSquare
                              else squareSum) (x ^ 2 + y ^ 2) ((x + y) ^ 2)

-- Q1 --
doubleDouble x = dubs * 2
  where dubs = x * 2

doubleDoubleLamda x = (\dubs -> dubs  * 2) (x * 2)

overwrite x = (\x ->
                (\x ->
                    (\x -> x) 4
                  ) 3
                )2
