-- lesson06.hs --
teams :: [String]
teams = ["red", "yellow", "orange", "blue", "purple"]

assignToGroups n aList = zip groups aList
  where groups = cycle [1..n]

files =
  ["file1.txt", "file2.txt", "file3.txt", "file4.txt", "file5.txt"]


-- q1 --
myRepeat n = cycle [n]

-- q2 --
subseq start end xs = take difference (drop start xs)
  where difference = end - start

-- q3 --
inFirstHalf e xs = elem e (take (length xs `div` 2) xs)

inFirstHalf2 e xs = elem e firstHalf
 where midpoint = length xs `div` 2
       firstHalf = take midpoint xs
