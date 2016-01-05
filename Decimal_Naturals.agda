-- Decimal_Naturals.agda

module Decimal_Naturals where

-- open import Recursive using (ℕ; zero; suc)

{-
Agda has the decimal notation for Peano rep, but it has already built in.
We can not make another Peano representation of naturals with decimal notation.
-}

open import Data.Nat public using (ℕ; zero; suc)
