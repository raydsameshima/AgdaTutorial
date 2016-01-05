-- Infix.agda

module Infix where

open import Enumerated using (Bool; true; false)

-- Infix notation

data BinTree' : Set where
  x : BinTree'
  _+_ : BinTree' → BinTree' → BinTree'

-- right precedence, i.e. x + x + x == x + (x + x)
infixr 3 _+_

{-
We can give the precedence with infix, infixl or infixr.
-}


