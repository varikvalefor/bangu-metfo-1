\begin{code}
open import Level
  using (
    _⊔_
  )
open import Function
  using (
    _$_
  )
open import Data.Product
 using (
   proj₂;
   proj₁;
   Σ
 )
open import Relation.Nullary
 using (
   ¬_
 )

Sidbo : Set
Sidbo = {!!}

Sinxa : ∀ {a b} → {A : Set a} → {B : Set b} → A → B → Set (a ⊔ b)
Sinxa = {!!}

IsMetfo : ∀ {a} → {A : Set a} → A → Set a
IsMetfo = {!!}

sinxa→metfo : ∀ {a b} → {A : Set a} → {B : Set b}
            → (x : A)
            → (z : B)
            → Sinxa x z
            → IsMetfo x
sinxa→metfo = {!!}

Bangu : Set
Bangu = {!!}

Tegerna : Bangu → Set
Tegerna = {!!}

Sesmuni : ∀ {a} → {A : Set a} → A → Set a
Sesmuni = {!!}

tegerna-sinxa : (b : Bangu)
              → (tg : Tegerna b)
              → Sesmuni tg
              → Σ Sidbo $ Sinxa tg
tegerna-sinxa = {!!}

Literal : (b : Bangu) → (tg : Tegerna b) → Set
Literal _ tg = ¬ IsMetfo tg

¬[Bangu-Literal] : (b : Bangu)
                 → (tg : Tegerna b)
                 → Sesmuni tg
                 → ¬ Literal b tg
¬[Bangu-Literal] b tg s = _$ sinxa→metfo tg (proj₁ ts) $ proj₂ ts
  where
  ts = tegerna-sinxa b tg s
\end{code}
