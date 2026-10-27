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
\end{code}

\section{le sidbo se ctaipe / The Idea Type}
\paragraph{la .lojban.}
ni'o lo ro co'e cu ctaipe la'oi .\F{Sidbo}.\ jo cu sidbo

\paragraph{English}
For all $x$, $x$ is a term of \F{Sidbo} iff $x$ is an idea.

\begin{code}
Sidbo : Set
Sidbo = {!!}
\end{code}

\begin{code}
Sinxa : ∀ {a b} → {A : Set a} → {B : Set b} → A → B → Set (a ⊔ b)
Sinxa = {!!}
\end{code}

\begin{code}
IsMetfo : ∀ {a} → {A : Set a} → A → Set a
IsMetfo = {!!}
\end{code}

\begin{code}
sinxa→metfo : ∀ {a b} → {A : Set a} → {B : Set b}
            → (x : A)
            → (z : B)
            → Sinxa x z
            → IsMetfo x
sinxa→metfo = {!!}
\end{code}

\begin{code}
Bangu : Set
Bangu = {!!}
\end{code}

\begin{code}
Tegerna : Bangu → Set
Tegerna = {!!}
\end{code}

\begin{code}
Sesmuni : ∀ {a} → {A : Set a} → A → Set a
Sesmuni = {!!}
\end{code}

\begin{code}
tegerna-sinxa : (b : Bangu)
              → (tg : Tegerna b)
              → Sesmuni tg
              → Σ Sidbo $ Sinxa tg
tegerna-sinxa = {!!}
\end{code}

\begin{code}
Literal : (b : Bangu) → (tg : Tegerna b) → Set
Literal _ tg = ¬ IsMetfo tg
\end{code}

\begin{code}
¬[Bangu-Literal] : (b : Bangu)
                 → (tg : Tegerna b)
                 → Sesmuni tg
                 → ¬ Literal b tg
¬[Bangu-Literal] b tg s = _$ sinxa→metfo tg (proj₁ ts) $ proj₂ ts
  where
  ts = tegerna-sinxa b tg s
\end{code}
