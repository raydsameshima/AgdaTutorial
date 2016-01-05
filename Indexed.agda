-- Indexed.agda

module Indexed where

open import Data.Empty using (⊥)
open import Data.Unit  using (⊤; tt)
open import Data.Sum   using (_⊎_; inj₁; inj₂)
open import Data.Bool  using (Bool; true; false)
open import Data.Nat   using (ℕ; zero; suc)

-- Fin, family of finite sets

data Fin : ℕ → Set where
  zero : (n : ℕ) → Fin (suc n)
  suc : (n : ℕ) → Fin n → Fin (suc n)

-- Vec A n ~ Aⁿ

data Vec (A : Set) : ℕ → Set where
  [] : Vec A zero
  cons : (n : ℕ) → A → Vec A n → Vec A (suc n)
  
