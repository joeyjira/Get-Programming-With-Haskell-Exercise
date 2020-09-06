-- lesson05.hs --
-- flipBinary fn = \x y -> fn y x
flipBinary :: (a -> b -> c) -> b -> a -> c
flipBinary fn x y = fn y x
