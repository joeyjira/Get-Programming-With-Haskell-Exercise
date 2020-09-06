-- greet.hs --
greet :: String -> IO ()
greet name =
  print ("Hello " ++ name ++ "!")
