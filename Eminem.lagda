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

\section{le su'u sinxa kei se ctaipe / The Representation Type}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{Sinxa} \B x \B z\ .zoi.\ gi la'oi .\B x.\ sinxa la'oi .\B z.

\paragraph{English}
Iff a term of \F{Sinxa} \B x \B z exists, then \B x represents/(is-a-sign-for) \B z.

\begin{code}
Sinxa : ∀ {a b} → {A : Set a} → {B : Set b} → A → B → Set (a ⊔ b)
Sinxa = {!!}
\end{code}

\section{le metfo se ctaipe / The Metaphor Type}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{IsMetfo} \B x .zoi.\ gi la'oi .\B x.\ metfo

\paragraph{English}
Iff a term of \F{IsMetfo} \B x exists, then \B x is a metaphor.

\begin{code}
IsMetfo : ∀ {a} → {A : Set a} → A → Set a
IsMetfo = {!!}
\end{code}

\section{le ctaipe be le su'u sinxa naja cu metfo / The Proof of that (Representations are Metaphors)}
\paragraph{la .lojban.}
ni'o sa'u la'o zoi.\ \F{sinxa→metfo}\ .zoi.\ ctaipe fi zo'e pe la .varik.\ fe le su'u ro da zo'u da sinxa lo su'u co'e naja cu metfo\sds  .i la .varik.\ cu jinvi le du'u srana fa le se .urli be zoi .urli.\ \url{https://www.merriam-webster.com/dictionary/metaphor}\ .urli.\sds  .i la .varik.\ cu jinvi le du'u le bangu smuni be zo'oi .metaphor.\ cu mupli le ka le smuni cu mapti ce'u kei jenai cu frica le vrici smuni

\paragraph{English}
SIMPLIFICATION.\@  \F{sinxa→metfo} is a proof (under the context of VARIK) of that (for all things $x$, if $x$ represents some thing, then $x$ is a metaphor).  VARIK opines that the definition ``at'' \url{https://www.merriam-webster.com/dictionary/metaphor} is relevant.  VARIK opines that the linguistic meaning of ``metaphor'' is a special case of the general meaning of ``metaphor'' and does not differ from the general meaning.

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
