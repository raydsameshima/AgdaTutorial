-- Mutual.agda

module Mutual where

open import Enumerated using (Bool; true; false)
open import Decimal_Naturals using (ℕ; zero; suc)

-- Mutual definitions
{-
To allow mutual definitions we should declare any set BEFORE using it.
-}

data L : Set
data M : Set

data L where
  nil : L
  _::_ : ℕ → M → L

data M where
  _::_ : Bool → L → M


