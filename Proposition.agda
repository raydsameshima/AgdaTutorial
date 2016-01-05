-- Propositions.agda

module Proposition where

open import Data.Nat using (ℕ; zero; suc)

-- Proof as data
{-
It is beneficial to represent proofs as ordinary data; we can manipulate them like natural numbers.
The proof of each proposition will have a distinct type.

We represent the proof of the true proposition by the type ⊤.
The true proposition has a trivial proof: tt (trivially true).
  data ⊤ : Set where
    tt : ⊤
We represent the proof of the false proposition by the type ⊥.
The false proposition has no proof, i.e., it can not be proven.
  data ⊥ : Set where
We represent the proofs of the conjunction (logical and) of two proposition A and B by the type A × B.
A × B has proofs of form a, b where a is a proof of A and b is a proof of B.
  data _×_ (A B : Set) : Set where 
    _,_ : A → B → A × B
  infixr 4 _,_
  infixr 2 _×_
We represent the proof of the disjunction (logical or) of two proposition A and B by the type A ⊎ B.
A ⊎ B has two different kinds of proofs: inj₁ a, where a is a proof of A, inj₂ b, where b ia a proof of B.
  data _⊎_ (A B : Set) : Set where
    inj₁ : A → A ⊎ B
    inj₂ : B → A ⊎ B
  infixr 1 _⊎_
-}

-- Remarks
{-
We will represent implication, negation, universal and existential quantification later.
_⊎_ represents represents constructive disjunction, we represent classical disjunction later and compare them.
-}

-- _≤_ : Less-or-equal predicate

data _≤_ : ℕ → ℕ → Set where
  z≤n : {n : ℕ} → zero ≤ n
  s≤s : {m : ℕ} → {n : ℕ} → m ≤ n → suc m ≤ suc n

infix 4 _≤_

{-
1 ≤ 0 is also a valid expression which denotes an empty set, check it by C-c C-d.
-}

-- Prooving non-emptiness
{-
We can prove that a set is non-empty by giving an element, e.g.,
  0≤1 : 1 ≤ 10
  0≤1 = s≤s z≤n
-}

-- Proving emptiness
{-
How can we prove that a set 2 ≤ 1 is empty?

If 2 ≤ 1 would be non-empty, all its elements would look like
  s≤s x
where 
  x : 0 ≤ 1.
However, 0 ≤ 1 is empty, since
  x≤n yields an element in 0 ≤ n and 0 ≠ 4.
  s≤s yields an element in suc 
-}

