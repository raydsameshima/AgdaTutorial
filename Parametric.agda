-- Parametric.agda

module Parametric where

-- Import List

open import Data.Nat
open import Enumerated using (
                             Bool; true; false;
                             ⊥;
                             ⊤; tt
                             )

-- Definition of List

data List (A : Set) : Set where
  [] : List A
  _::_ : A → List A → List A

infixr 5 _::_

{-
We can interpret above as
  List A ∈ Set, where A ∈ Set.
We call A a parameter of List and we can refer to A in the definition of the set elements.

E.g., we can get under C-c C-d 
  true :: [] : List Bool
-}

-- _×_ : Cartesian Product

data _×_ (A B : Set) : Set where
  _,_ : A → B → A × B

infixr 4 _,_
infixr 2 _×_

-- _⊎_ : Disjoint Union (Sum)

data _⊎_ (A B : Set) : Set where
  inj₁ : A → A ⊎ B
  inj₂ : B → A ⊎ B

infixr 1 _⊎_

-- Mutually recursive sets

data List₁ (A B : Set) : Set
data List₂ (A B : Set) : Set

data List₁ (A B : Set) where
  [] : List₁ A B
  _::_ : A → List₂ A B → List₁ A B

data List₂ (A B : Set) where
  _::_ : B → List₁ A B → List₂ A B

-- Non-regular recursive set

data AlterList (A B : Set) : Set where
  [] : AlterList A B
  _::_ : A → AlterList B A → AlterList A B

-- Nested set; I don't understand anything.

data T4 (A : Set) : Set where
  quad : A → A → A → A → T4 A

data Square (A : Set) : Set where
  zero : A → Square A
  suc : Square (T4 A) → Square A

