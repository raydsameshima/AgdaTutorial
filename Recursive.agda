-- Recursive.agda

module Recursive where

open import Enumerated using (Bool; true; false)

{-
Peano rep.
0 ~ zero
1 ~ suc (zero)

n+1 ~ suc n
-}

data ℕ : Set where
  zero : ℕ
  suc : ℕ → ℕ  

{-
With the Emacs command C-c C-d one can get Agda to type-check a given expression (d stands for deduce).

Example: C-c C-d 
  suc (suc zero) : ℕ
-}

-- Binary representation of ℕ

data ℕ⁺ : Set where
  one : ℕ⁺
  double : ℕ⁺ → ℕ⁺
  double+1 : ℕ⁺ → ℕ⁺
  
data ℕ₂ : Set where
  zero : ℕ₂
  id : ℕ⁺ → ℕ₂

{-
We'll prove in Agda that ℕ and ℕ₂ are isomorphic.
-}

data ℤ : Set where
  positive : ℕ → ℤ
  negative : ℕ → ℤ

-- Binary trees

data BinTree : Set where
  leaf : BinTree
  node : BinTree → BinTree → BinTree

data NatList : Set where
  cons : ℕ → NatList → NatList
  -- nums : ℕ → NatList
  empty : NatList
