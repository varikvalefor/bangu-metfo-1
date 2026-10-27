\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{xcolor}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\newunicodechar{λ}{\ensuremath{\mathnormal\lambda}}
\newunicodechar{∃}{\ensuremath{\mathnormal\exists}}
\newunicodechar{∄}{\ensuremath{\mathnormal\nexists}}
\newunicodechar{∷}{\ensuremath{\mathnormal\Colon}}
\newunicodechar{∨}{\ensuremath{\mathnormal\vee}}
\newunicodechar{∈}{\ensuremath{\mathnormal\in}}
\newunicodechar{∉}{\ensuremath{\mathnormal\notin}}
\newunicodechar{∋}{\ensuremath{\mathnormal\ni}}
\newunicodechar{≡}{\ensuremath{\mathnormal\equiv}}
\newunicodechar{≢}{\ensuremath{\mathnormal\nequiv}}
\newunicodechar{≈}{\ensuremath{\mathnormal\approx}}
\newunicodechar{≟}{\ensuremath{\stackrel{?}{=}}}
\newunicodechar{⟨}{\ensuremath{\mathnormal\langle}}
\newunicodechar{⟩}{\ensuremath{\mathnormal\rangle}}
\newunicodechar{∎}{\ensuremath{\mathnormal\blacksquare}}
\newunicodechar{∶}{\ensuremath{\mathnormal\colon\!\!}}
\newunicodechar{⊹}{\ensuremath{\mathnormal\dag}}
\newunicodechar{▹}{\ensuremath{\mathnormal\triangleright}}
\newunicodechar{𝕗}{\ensuremath{\mathnormal{\mathbb{f}}}}
\newunicodechar{ℙ}{\ensuremath{\mathnormal{\mathbb{P}}}}
\newunicodechar{𝔽}{\ensuremath{\mathnormal{\mathbb{F}}}}
\newunicodechar{𝕊}{\ensuremath{\mathnormal{\mathbb{S}}}}
\newunicodechar{𝕃}{\ensuremath{\mathnormal{\mathbb{L}}}}
\newunicodechar{𝕄}{\ensuremath{\mathnormal{\mathbb{M}}}}
\newunicodechar{ℕ}{\ensuremath{\mathnormal{\mathbb{N}}}}
\newunicodechar{ℝ}{\ensuremath{\mathnormal{\mathbb{R}}}}
\newunicodechar{ℂ}{\ensuremath{\mathnormal{\mathbb{C}}}}
\newunicodechar{𝔹}{\ensuremath{\mathnormal{\mathbb{B}}}}
\newunicodechar{𝕍}{\ensuremath{\mathnormal{\mathbb{V}}}}
\newunicodechar{ν}{\ensuremath{\mathnormal{\nu}}}
\newunicodechar{μ}{\ensuremath{\mathnormal{\mu}}}
\newunicodechar{◆}{\ensuremath{\mathnormal\blackdiamond}}
\newunicodechar{∸}{\ensuremath{\mathnormal\dotdiv}}
\newunicodechar{ᵇ}{\ensuremath{\mathnormal{^\AgdaFontStyle{b}}}}
\newunicodechar{⁻}{\ensuremath{\mathnormal{^-}}}
\newunicodechar{≥}{\ensuremath{\mathnormal{\geq}}}
\newunicodechar{ϕ}{\ensuremath{\mathnormal{\phi}}}
\newunicodechar{χ}{\ensuremath{\mathnormal{\chi}}}
\newunicodechar{∧}{\ensuremath{\mathnormal{\wedge}}}
\newunicodechar{∅}{\ensuremath{\mathnormal{\emptyset}}}
\newunicodechar{∣}{\ensuremath{\mathnormal{|}}}
\newunicodechar{⁇}{\ensuremath{\mathnormal{\mathrm{?\!?}}}}
\newunicodechar{∘}{\ensuremath{\mathnormal{\circ}}}
\newunicodechar{∀}{\ensuremath{\mathnormal{\forall}}}
\newunicodechar{ℓ}{\ensuremath{\mathnormal{\ell}}}
\newunicodechar{σ}{\ensuremath{\mathnormal{\sigma}}}
\newunicodechar{₁}{\ensuremath{\mathnormal{_1}}}
\newunicodechar{₂}{\ensuremath{\mathnormal{_2}}}
\newunicodechar{₃}{\ensuremath{\mathnormal{_3}}}
\newunicodechar{₄}{\ensuremath{\mathnormal{_4}}}
\newunicodechar{₅}{\ensuremath{\mathnormal{_5}}}
\newunicodechar{ₘ}{\ensuremath{\mathnormal{_\mathsf{m}}}}
\newunicodechar{ₛ}{\ensuremath{\mathnormal{_\mathsf{s}}}}
\newunicodechar{⊤}{\ensuremath{\mathnormal{\top}}}
\newunicodechar{⊥}{\ensuremath{\mathnormal{\bot}}}
\newunicodechar{≤}{\ensuremath{\mathnormal{\leq}}}
\newunicodechar{⍉}{\ensuremath{\mathnormal{∘\hspace{-0.455em}\backslash}}}
\newunicodechar{⦃}{\ensuremath{\mathnormal{\lbrace\!\lbrace}}}
\newunicodechar{⦄}{\ensuremath{\mathnormal{\rbrace\!\rbrace}}}
\newunicodechar{ᵢ}{\ensuremath{\mathnormal{_i}}}
\newunicodechar{ₗ}{\ensuremath{\mathnormal{_l}}}
\newunicodechar{ₒ}{\ensuremath{\mathnormal{_o}}}
\newunicodechar{ₚ}{\ensuremath{\mathnormal{_p}}}
\newunicodechar{ₙ}{\ensuremath{\mathnormal{_n}}}
\newunicodechar{ᵥ}{\ensuremath{\mathnormal{_v}}}
\newunicodechar{′}{\ensuremath{\mathnormal{\prime}}}
\newunicodechar{⊎}{\ensuremath{\mathnormal{\uplus}}}
\newunicodechar{≗}{\ensuremath{\mathnormal{\circeq}}}
\newunicodechar{⇒}{\ensuremath{\mathnormal{\Rightarrow}}}
\newunicodechar{ˢ}{\ensuremath{\mathnormal{^s}}}
\newunicodechar{⊔}{\ensuremath{\mathnormal{\sqcup}}}
\newunicodechar{⍨}{\ensuremath{\raisebox{-0.25ex}{\ddot\sim}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\IC\AgdaInductiveConstructor
\newcommand\OpF[1]{\AgdaOperator{\F{#1}}}

\title{le ctaipe be le su'u lo no te gerna je se smuni cu na'e metfo / The Proof of that (No Linguistic Utterance which is Meaningful is Literal)}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o bau la .lojban.\ joi la'oi .Agda.\ la .varik.\ cu ciksi le ctaipe\ldots be fi zo'e pe vo'a\ldots bei fe le su'u lo no se smuni je ke te gerna be lo bangu cu na'e metfo

VARIK (with English and Agda) defines a proof (under the context of VARIK) of that (no linguistic utterance which is meaningful is literal).
\end{abstract}

\section{le vrici / The Miscellaneous}

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

\section{le bangu se ctaipe / The Language Type}
\paragraph{la .lojban.}
ni'o la'oi .\F{Bangu}.\ ctaipe lo ro bangu jenai zo'e

\paragraph{English}
\F{Bangu} is the type of all languages.

\begin{code}
Bangu : Set
Bangu = {!!}
\end{code}

\section{le te gerna se ctaipe / The Utterance Type}
\paragraph{la .lojban.}
ni'o ro da poi ke'a ctaipe la'oi .\F{Bangu}. zo'u lo ro co'e cu ctaipe lo me'oi .\F{Tegerna}.\ be da jo cu te gerna da

\paragraph{English}
For all \F{Bangu} \B x, for all $t$, $t$ is a term of \F{Tegerna} \B x iff $t$ is grammatical w.r.t.\ \B x.

\begin{code}
Tegerna : Bangu → Set
Tegerna = {!!}
\end{code}

\section{le se smuni se ctaipe / The Type of Meaningful Things}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{Sesmuni} \B x\ .zoi.\ gi smuni la'oi .\B x.

\paragraph{English}
A term of \F{Sesmuni} \B x exists iff \B x is meaningful to some prenu.

\begin{code}
Sesmuni : ∀ {a} → {A : Set a} → A → Set a
Sesmuni = {!!}
\end{code}

\section{le ctaipe be le su'u se smuni naja cu sinxa / The Proof of that (Being Meaningful Implies Representation)}
\paragraph{la .lojban.}
ni'o sa'u la'o zoi.\ \F{tegerna-sinxa}\ .zoi.\ ctaipe fi zo'e pe la .varik.\ fe le su'u lo ro te gerna cu se smuni naja cu sinxa lo sidbo

\paragraph{English}
SIMPLIFICATION.\@  \F{tegerna-sinxa}\ is a proof (under the context of VARIK) of that (for all linguistic utterances $t$, if $t$ is meaningful to some prenu, then $t$ represents some idea).

\begin{code}
tegerna-sinxa : (b : Bangu)
              → (tg : Tegerna b)
              → Sesmuni tg
              → Σ Sidbo $ Sinxa tg
tegerna-sinxa = {!!}
\end{code}

\section{le su'u na'e metfo kei se ctaipe / The Literalness Type}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{Literal}\ \B x .zoi.\ gi la'oi .\B x.\ na'e metfo

\paragraph{English}
A term of \F{Literal} \B x exists iff \B x is literal.

\begin{code}
Literal : (b : Bangu) → (tg : Tegerna b) → Set
Literal _ tg = ¬ IsMetfo tg
\end{code}

\section{le ctaipe be le su'u lo no te gerna je se smuni cu na'e metfo / The Proof of that (No Meaningful Linguistic Utterance is Literal)}
\paragraph{la .lojban.}
ni'o sa'u la'o zoi.\ \F{¬[Bangu-Literal]}.\ ctaipe fi zo'e pe la .varik.\ ge'u joi le co'e ja se sruma fe le su'u lo no te gerna be lo bangu je se smuni cu na'e metfo

\paragraph{English}
SIMPLIFICATION.  \F{¬[Bangu-Literal]} is a proof (under the combination of the context (of VARIK) and assumptions/whatever) that no linguistic utterance which is meaningful is literal.

\begin{code}
¬[Bangu-Literal] : (b : Bangu)
                 → (tg : Tegerna b)
                 → Sesmuni tg
                 → ¬ Literal b tg
¬[Bangu-Literal] b tg s = _$ sinxa→metfo tg (proj₁ ts) $ proj₂ ts
  where
  ts = tegerna-sinxa b tg s
\end{code}
\end{document}
