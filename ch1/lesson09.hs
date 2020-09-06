-- lesson09.hs --
mymap fn []       = []
mymap fn (x : xs) = (fn x) : mymap fn xs
