module Main where


--- factorial
--- if < 0 then -1 "error"
fac :: Int -> Int
fac a = 
  if a < 0
    then - 1
    else 
    let
      stop a = a == 1

      go res a = if stop a
	  	  then res
		  else let res' = res * a
			   a' = a - 1
		       in go res' a'
    in go 1 a
main = print (fac 3)
