-- Enumerated.agda

module Enumerated where

data Bool : Set where
  true false : Bool

-- Exercises

data Answer : Set where
  yes : Answer
  no  : Answer
  mybe : Answer

data Quarter : Set where
  east west north south : Quarter

-- emptyset
data ⊥ : Set where

-- singleton
data ⊤ : Set where
  tt : ⊤
