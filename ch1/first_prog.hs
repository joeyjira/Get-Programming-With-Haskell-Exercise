-- first_prog.hs --
toPart :: String -> String
toPart recipient = "Dear " ++ recipient ++ ",\n"

bodyPart :: String -> String
bodyPart bookTitle = "Thanks for buying " ++ bookTitle

fromPart :: String -> String
fromPart author = "Thanks,\n" ++ author

createEmail :: String -> String -> String -> String
createEmail recipient bookTitle author =
  toPart recipient ++ bodyPart bookTitle ++ fromPart author

main = do
  print "Who is the email for?"
  recipient <- getLine
  print "What is the Title?"
  title <- getLine
  print "Whos is the Author?"
  author <- getLine
  print (createEmail recipient title author)
