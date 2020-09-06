-- lesson08.hs --

mydrop 0 xs       = xs
mydrop n (x : xs) = mydrop (n - 1) xs

length' []       = 0
length' (x : xs) = 1 + length xs

finiteCycle (first:rest) = first:rest ++ [first]
myCycle (first : rest) = first : myCycle (rest ++ [first])

-- :set +s see crazy run time as calls get higher
ackermann 0 n = n + 1
ackermann m 0 = ackermann (m - 1) 1
ackermann m n = ackermann (m - 1) (ackermann m (n - 1))

-- The Collatz conjecture
collatz 1 = 1
collatz n = if even n
            then 1 + collatz (n `div` 2)
            else 1 + collatz (n * 3 + 1)

myreverse []       = []
myreverse (x : []) = [x]
myreverse (x : xs) = (myreverse xs) ++ [x]

fib _ _ 0 = 0
fib _ _ 1 = 1
fib _ _ 2 = 1
fib x y 3 = x + y
fib x y c = fib (x + y) x (c - 1)
