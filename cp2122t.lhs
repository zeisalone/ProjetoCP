\documentclass[a4paper]{article}
\usepackage[a4paper,left=3cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\usepackage{palatino}
\usepackage[colorlinks=true,linkcolor=blue,citecolor=blue]{hyperref}
\usepackage{graphicx}
\usepackage{cp2122t}
\usepackage{subcaption}
\usepackage{adjustbox}
\usepackage{color}
\usepackage[utf8]{inputenc}
\usepackage[all]{xy}
\usepackage{amsmath}


\definecolor{red}{RGB}{255,  0,  0}
\definecolor{blue}{RGB}{0,0,255}
\def\red{\color{red}}
\def\blue{\color{blue}}
%================= local x=====================================================%
\def\getGif#1{\includegraphics[width=0.3\textwidth]{cp2122t_media/#1.png}}
\let\uk=\emph
\def\aspas#1{``#1"}
%================= lhs2tex=====================================================%
%include polycode.fmt
%format (div (x)(y)) = x "\div " y
%format succ = "\succ "
%format ==> = "\Longrightarrow "
%format map = "\map "
%format length = "\length "
%format fst = "\p1"
%format p1  = "\p1"
%format snd = "\p2"
%format p2  = "\p2"
%format Left = "i_1"
%format Right = "i_2"
%format i1 = "i_1"
%format i2 = "i_2"
%format >< = "\times"
%format >|<  = "\bowtie "
%format |-> = "\mapsto"
%format . = "\comp "
%format .=?=. = "\mathbin{\stackrel{\mathrm{?}}{=}}"
%format (kcomp (f)(g)) = f "\kcomp " g
%format -|- = "+"
%format conc = "\mathsf{conc}"
%format summation = "{\sum}"
%format (either (a) (b)) = "\alt{" a "}{" b "}"
%format (frac (a) (b)) = "\frac{" a "}{" b "}"
%format (uncurry f) = "\uncurry{" f "}"
%format (const (f)) = "\underline{" f "}"
%format LTree3 = "\mathsf{LTree3}"
%format (lcbr (x)(y)) = "\begin{lcbr}" x "\\" y "\end{lcbr}"
%format (split (x) (y)) = "\conj{" x "}{" y "}"
%format (for (f) (i)) = "\for{" f "}\ {" i "}"
%format B_tree = "\mathsf{B}\mbox{-}\mathsf{tree} "
\def\ana#1{\mathopen{[\!(}#1\mathclose{)\!]}}
%format <$> = "\mathbin{\mathopen{\langle}\$\mathclose{\rangle}}"
%format Either a b = a "+" b
%format fmap = "\mathsf{fmap}"
%format NA   = "\textsc{na}"
%format NB   = "\textsc{nb}"
%format inT = "\mathsf{in}"
%format outT = "\mathsf{out}"
%format outLTree = "\mathsf{out}"
%format inLTree = "\mathsf{in}"
%format inFTree = "\mathsf{in}"
%format outFTree = "\mathsf{out}"
%format Null = "1"
%format (Prod (a) (b)) = a >< b
%format fF = "\fun F "
%format k1 = "k_1 "
%format k2 = "k_2 "
%format h1 = "h_1 "
%format h2 = "h_2 "
%format f1 = "f_1 "
%format f2 = "f_2 "
%format l1 = "l_1 "
%format d1 = "d_1 "
%format d2 = "d_2 "
%format d3 = "d_3 "
%format v3 = "v_3 "
%format g1 = "g_1 "
%format g2 = "g_2 "
%format map1 = "map_1 "
%format map2 = "map_2 "
%format map3 = "map_3"
%format l2 = "l_2 "
%format Dist = "\fun{Dist}"
%format IO = "\fun{IO}"
%format LTree = "{\LTree}"
%format FTree = "{\FTree}"
%format inNat = "\mathsf{in}"
%format (cata (f)) = "\cata{" f "}"
%format (cataNat (g)) = "\cataNat{" g "}"
%format (cataList (g)) = "\cataList{" g "}"
%format (anaList (g)) = "\anaList{" g "}"
%format Nat0 = "\N_0"
%format Rational = "\Q "
%format toRational = " to_\Q "
%format fromRational = " from_\Q "
%format muB = "\mu "
%format (frac (n)(m)) = "\frac{" n "}{" m "}"
%format (fac (n)) = "{" n "!}"
%format (underbrace (t) (p)) = "\underbrace{" t "}_{" p "}"
%format matrix = "matrix"
%%format (bin (n) (k)) = "\Big(\vcenter{\xymatrix@R=1pt{" n "\\" k "}}\Big)"
%format `ominus` = "\mathbin{\ominus}"
%%format % = "\mathbin{/}"
%format <-> = "{\,\leftrightarrow\,}"
%format <|> = "{\,\updownarrow\,}"
%format `minusNat`= "\mathbin{-}"
%format ==> = "\Rightarrow"
%format .==>. = "\Rightarrow"
%format .<==>. = "\Leftrightarrow"
%format .==. = "\equiv"
%format .<=. = "\leq"
%format .&&&. = "\wedge"
%format cdots = "\cdots "
%format pi = "\pi "
%format (curry (f)) = "\overline{" f "}"
%format (cataLTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataFTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (anaLTree (x)) = "\mathopen{[\!(}" x "\mathclose{)\!]}"
%format delta = "\Delta "
\newlabel{eq:fokkinga}{{3.93}{110}{The mutual-recursion law}{section.3.17}{}}
%format (plus (f)(g)) = "{" f "}\plus{" g "}"
%format ++ = "\mathbin{+\!\!\!+}"
%format Integer  = "\mathbb{Z}"
\def\plus{\mathbin{\dagger}}

%---------------------------------------------------------------------------

\title{
          C??lculo de Programas
\\
          Trabalho Pr??tico
\\
          LCC --- 2021/22 (2?? semestre)
}

\author{
          \dium
\\
          Universidade do Minho
}


\date\mydate

\makeindex
\newcommand{\rn}[1]{\textcolor{red}{#1}}
\begin{document}

\maketitle

\begin{center}\large
\begin{tabular}{ll}
\textbf{Grupo} 37
\\\hline
a92046 & Tiago Adriano Moreira
\\
a95088 & Jos?? Miguel Ferreira Barbosa
\\
a96308 & Leonardo Lordello Fontes
\end{tabular}
\end{center}

\section{Pre??mbulo}

\CP\ tem como objectivo principal ensinar
a progra\-ma????o de computadores como uma disciplina cient??fica. Para isso,
baseia-se num repert??rio de \emph{combinadores} que formam uma ??lgebra da
programa????o (conjunto de leis universais e seus corol??rios) e usa esses
combinadores para construir programas \emph{composicionalmente}, isto ??,
agregando programas j?? existentes.

Na sequ??ncia pedag??gica dos planos de estudo dos cursos que t??m
esta disciplina, opta-se pela aplica????o deste m??todo ?? programa????o
em \Haskell\ (sem preju??zo da sua aplica????o a outras linguagens
funcionais). Assim, o presente trabalho pr??tico coloca os
alunos perante problemas concretos que dever??o ser implementados em
\Haskell.  H?? ainda um outro objectivo: o de ensinar a documentar
programas, a valid??-los e a produzir textos t??cnico-cient??ficos de
qualidade.

Antes de abodarem os problemas propostos no trabalho, os grupos devem ler
com aten????o o anexo \ref{sec:documentacao} onde encontrar??o as instru????es
relativas ao sofware a instalar, etc.

%if False
\begin{code}
{-# OPTIONS_GHC -XNPlusKPatterns #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, DeriveDataTypeable, FlexibleInstances #-}
module Main where
import Cp
import List hiding (fac)
import Nat hiding (aux)
import LTree
import FTree
import BTree
import Data.List hiding (find)
import Svg hiding (for)
import Control.Monad
import Control.Applicative hiding ((<|>))
import System.Process
import Data.Char
import Probability hiding (scale)

main = undefined
\end{code}
%endif

\Problema

O algor??tmo da \emph{divis??o Euclidiana},
\begin{code}
ed (n,0) = Nothing
ed (n,d+1) = (Just . p1) (aux d n)
\end{code}
d?? erro quando o denominador |d| ?? zero, recorrendo ?? fun????o auxiliar seguinte
nos outros casos, param??trica em |d|: 
\begin{code}
aux d = split (q d) (split (r d) (c d))
\end{code}
Esta, por sua vez, ?? o emparelhamento das seguintes fun????es mutuamente recursivas,
\begin{code}
q d 0 = 0
q d (n+1) = q d n + (if x == 0 then 1 else 0) where x = c d n

r d 0 = 0
r d (n+1) = if x == 0 then 0 else 1 + r d n where x = c d n

c d 0 = d
c d (n+1) = if x == 0 then d else x-1 where x = c d n
\end{code}
onde |q| colabora na produ????o do quociente, |r| na produ????o do resto, e |c|
?? uma fun????o de controlo --- todas param??tricas no denominador |d|.

Mostre, por aplica????o da lei de recursividade m??tua, que |aux d| ?? a mesma
fun????o que o ciclo-for seguinte:
\begin{code}
loop d = for ((g d)) ((0,(0, d))) where
     g d (q, (r, 0)) = (q+1, (0, d))
     g d (q, (r, c+1)) = (q,(r+1, c))
\end{code}
\textbf{Sugest??o}: consultar o anexo \ref{sec:mr}.

\Problema

Considere o seguinte desafio, extra??do de \href{http://bebras.dcc.fc.up.pt/problems/2020/problemas_09_10.pdf}{O Bebras - Castor Inform??tico} (edi????o 2020):

\begin{quote}\em
\textbf{11 --- Rob??s e Pedras Preciosas}
A Alice e o Bob est??o a controlar um rob?? num labirinto com pedras preciosas.
O rob?? come??a na localiza????o indicada na figura abaixo [Fig.~\ref{fig:labirinto}].
O rob?? segue um caminho at?? encontrar uma bifurca????o. Um dos jogadores decide
qual dos caminhos (esquerda ou direita) o rob?? deve tomar. Depois, o rob??
segue esse caminho at?? encontrar outra bifurca????o, e assim consecutivamente
(o rob?? nunca volta para tr??s no seu caminho).

A Alice e o Bob decidem ?? vez qual a dire????o a seguir, com a Alice a come??ar,
o Bob decidindo a 2?? bifurca????o, a Alice a 3?? e por a?? adiante. O jogo termina
quando o rob?? chegar ao final de um caminho sem sa??da, com o rob?? a recolher
todas as pedras preciosas que a?? encontrar. A Alice quer que o rob?? acabe
o jogo com o maior n??mero poss??vel de pedras preciosas, enquanto que o Bob
quer que o rob?? acabe o jogo com o menor n??mero poss??vel de pedras preciosas.

A Alice e o Bob sabem que cada um vai tentar ser mais esperto que o outro.
Por isso se, por exemplo, o Bob redirecionar o rob?? para uma bifurca????o onde
?? poss??vel recolher 3 ou 7 pedras preciosas, ele sabe que a Alice vai comandar
o rob?? escolhendo o caminho que leva ??s 7 pedras preciosas.
\end{quote}

O labirinto deste desafio (Fig.~\ref{fig:labirinto}) configura uma ??rvore
bin??ria de tipo \LTree\ cujas folhas t??m o n??mero de pedras preciosas do
correspondente caminho:\footnote{Abstrac????o: as diferentes pedras preciosas
s??o irrelevantes, basta o seu n??mero.}

\begin{code}
t = Fork (
       Fork (
            Fork (Leaf 2,Leaf 7),
            Fork (Leaf 5,Leaf 4)),
       Fork (
            Fork (Leaf 8,Leaf 6),
            Fork (Leaf 1,Leaf 3))
         )
\end{code}

\begin{enumerate}
\item	
Defina como catamorfismo de \LTree's a fun????o |both :: LTree Int -> Int >< Int| tal que
\begin{quote}
|(a,b) = both t|
\end{quote}
d??,
\begin{itemize}
\item	em |a|: o resultado mais favor??vel ?? Alice, quando esta ?? a primeira a jogar,
	tendo em conta as jogadas do Bob e as suas;
\item	em |b|: o resultado mais favor??vel ao Bob, quando este ?? o primeiro a jogar,
	tendo em conta as jogadas da Alice e as suas.
\end{itemize}
\item
De seguida, extraia (por recursividade m??tua) as fun????es (recursivas) |alice| e |bob| tais que
\begin{eqnarray*}
	|both = split alice bob|
\end{eqnarray*}
(Alternativamente, poder?? codificar |alice| e |bob| em primeiro lugar e depois
junt??-las num catamorfismo recorrendo ??s leis da recursividade m??tua.)
\end{enumerate}

\begin{figure}
	\centering
	\includegraphics[width=0.6\textwidth]{cp2122t_media/castor11.png}
\caption{
   Labirinto de ``Rob??s e Pedras Preciosas".
   \label{fig:labirinto}
}
\end{figure}

\Problema

O \sierp{tri??ngulo de Sierpinski} (Fig.~\ref{fig:sierp1}) ?? uma figura geom??trica
\fractal\ em que um tri??ngulo se subdivide recursivamente em sub-tri??ngulos,
da seguinte forma: considere-se um tri??ngulo rect??ngulo e
is??sceles |A| cujos catetos t??m comprimento |s|. A estrutura \fractal\ ??
criada desenhando-se tr??s tri??ngulos no interior de |A|, todos eles
rect??ngulos e is??sceles e com catetos de comprimento |div s 2|. Este passo
?? depois repetido para cada um dos tri??ngulos desenhados e assim
sucessivamente (Fig.~\ref{fig:sierp2}).

\begin{figure}[htb]
\begin{center}
	\includegraphics[width=0.4\textwidth]{cp2122t_media/sierpinski1.png}
\end{center}
  \caption{Um tri??ngulo de Sierpinski com profundidade |4|.}
  \label{fig:sierp1}
\end{figure}

\begin{figure}[htb]
\begin{center}
	\includegraphics[width=0.6\textwidth]{cp2122t_media/sierpinski2.png}
\end{center}
  \caption{Constru????o de um tri??ngulo de Sierpinski}
  \label{fig:sierp2}
\end{figure}

Um tri??ngulo de Sierpinski ?? gerado repetindo-se infinitamente o processo
acima descrito; no entanto para efeitos de visualiza????o ?? conveniente 
parar o processo recursivo a um determinado n??vel.

A figura a desenhar ?? constitu??da por tri??ngulos todos da mesma dimens??o
(por exemplo, no quarto tri??ngulo da Fig.~\ref{fig:sierp2} desenharam-se
27 tri??ngulos). Seja cada tri??ngulo geometricamente descrito pelas coordenadas
do seu v??rtice inferior esquerdo e o comprimento dos seus catetos:
\begin{code}
type Tri = (Point, Side)
\end{code}
onde
\begin{code}
type Side = Int
type Point = (Int, Int)
\end{code}

A estrutura recursiva que suporta a cria????o de \sierp{tri??ngulos de Sierpinski}
?? captada por uma ??rvore tern??ria,
\begin{code}
data LTree3 a = Tri a | Nodo (LTree3 a) (LTree3 a) (LTree3 a) deriving (Eq,Show)
\end{code}
em cujas folhas se ir??o encontrar os tri??ngulos mais pequenos, todos da
mesma dimens??o, que dever??o ser desenhados. Apenas estes conter??o informa????o
de car??cter geom??trico, tendo os n??s da ??rvore um papel exclusivamente estrutural.
Portanto, a informa????o geom??trica guardada em cada folha consiste nas coordenadas
do v??rtice inferior esquerdo e no cateto do respectivo tri??ngulo. A fun????o
\begin{code}
sierpinski :: (Tri,Int) -> [Tri]
sierpinski = folhasSierp . geraSierp
\end{code}
recebe a informa????o do tri??ngulo exterior e a profundidade pretendida,
que funciona como crit??rio de paragem do processo de constru????o do fractal.
O seu resultado ?? a lista de tri??ngulos a desenhar.

Esta fun????o ?? um hilomorfismo do tipo |LTree3|, i.e.\ a composi????o de
duas fun????es: uma que gera |LTree3|s,
\begin{code}
geraSierp :: (Tri,Int) -> LTree3 Tri
geraSierp = anaLTree3 g2
\end{code}
e outra que as consome:
\begin{code}
folhasSierp :: LTree3 Tri -> [Tri]
folhasSierp = cataLTree3 g1
\end{code}
Trabalho a realizar:
\begin{enumerate}
\item Desenvolver a biblioteca \emph{pointfree} para o tipo |LTree3| de forma an??loga
      a outras bibliotecas que conhece (\eg\ \BTree, \LTree, etc).
\item Definir os genes |g1| e |g2| do hilomorfismo |sierpinski|.
\item Correr
\begin{code}
teste = desenha (sierpinski (base,3))
\end{code}
para verificar a correcta gera????o de tri??ngulos de Sierpinski em \svg\footnote{\svg,
abreviatura de \emph{Scalable Vector Graphics}, ?? um dialecto de \xml\ para
computa????o gr??fica. A biblioteca Svg.hs (fornecida) faz uma interface rudimentar
entre \Haskell\ e \svg.}, onde |desenha| ?? uma fun????o dada no anexo \ref{sec:codigo} que,
para o argumento |sierpinski (base,3)|, dever?? produzir o tri??ngulo colorido da 
Fig.~\ref{fig:sierp1}.\footnote{O resultado ?? gravado no ficheiro \verb+_.html+, que pode 
ser visualizado num browser. Poder??o ser feitos testes com outros n??veis de produndidade.}
\end{enumerate}

\Problema

Os computadores digitais baseiam-se na representa????o Booleana da informa????o,
isto ??, sob a forma de \emph{bits} que podem ter dois valores, vulg.\ |0| e |1|.
Um problema muito frequente ?? o de os bits se alterarem, devido a ru??do ao
n??vel electr??nico. Essas altera????es esp??rias designam-se \emph{bit-flips}
e podem acontecer a qualquer n??vel: na transmiss??o de informa????o, na grava????o
em disco, etc, etc.

Em contraste com essas perturba????es, o utilizador de servi??os inform??ticos
raramente d?? pela sua presen??a. Porqu??? Porque existe muito trabalho te??rico
em correc????o dos erros gerados por \emph{bit-flips}, que os permite esconder
do utilizador.

O objectivo desta quest??o ?? conseguirmos avaliar experimentalmente o funcionamento
de uma dessas t??cnicas de correc????o de erros, a mais elementar de todas,
chamada \emph{c??digo de repeti????o}, escrevendo t??o pouco c??digo (\Haskell)
quanto poss??vel. Para isso vamos recorrer ao m??nade das \emph{distribui????es
probabil??sticas} (detalhes no ap??ndice \ref{sec:probabilities}).

Vamos supor que queremos medir a efic??cia de um tal c??digo na situa????o seguinte:
queremos transmitir mensagens que constam exclusivamente de letras mai??sculas,
representadas por 5 bits cada uma segundo o esquema seguinte de codifica????o,
\begin{code}
enc :: Char -> Bin
enc c = tobin (ord c - ord 'A')
\end{code}
e descodifica????o,
\begin{code}
dec :: Bin -> Char
dec b = chr(frombin b + ord 'A')  
\end{code}
onde |tobin| e |frombin| s??o fun????es dadas no anexo \ref{sec:codigo}. Por exemplo,
\begin{quote}
|enc 'A' = [0,0,0,0,0]|
\\
|enc 'B' = [0,0,0,0,1]|
\\ $\vdots$ \\
|enc 'Z' = [1,1,0,0,1]|
\end{quote}
Embora |dec| e |enc| sejam inversas uma da outra, para o intervalo de |'A'|
a |'Z'|, deixam de o ser quando, a meio da transmiss??o, acontecem bit-flips: 

\begin{center}
\unitlength=0.08ex
\linethickness{0.1pt}
\begin{picture}(800.00,110.00)(-160,270)
\put(-170.00,310.00){|x|}
\put( 510.00,310.00){|y|$\not=$ |x|}
\put( 110.00,340.00){(bit-flips)}
\put(-100.00,270.00){\framebox(90,90)[cc]{|enc|}}
\put(350.00,270.00){\framebox(90,90)[cc]{|dec|}}
\put(-150.00,315.00){\vector(1,0){50.00}}
\put( -10.00,315.00){\vector(1,0){50.00}}
\multiput(100.00,315.00)(30,0){5}{.}
\put(300.00,315.00){\vector(1,0){50.00}}
\put(440.00,315.00){\vector(1,0){50.00}}
\end{picture}
\end{center}

Vejamos com quantificar "os estragos". Sabendo-se, por exemplo e por
observa????o estat??stica, que a probabilidade de um |0| virar |1| ?? de |4%|
e a de |1| virar |0| ?? de |10%|
\footnote{Estas probabilidades, na pr??tica muito mais baixas, est??o inflacionadas
para mais f??cil observa????o.}, simula-se essa informa????o sobre a forma de
uma fun????o probabil??stica, em Haskell:
\begin{code}
bflip :: Bit -> Dist Bit
bflip 0 = D[(0,0.96), (1,0.04)]
bflip 1 = D[(1,0.90), (0,0.10)]
\end{code}
Agora vamos simular o envio de caracteres. O que devia ser |transmit = dec . enc|
vai ter agora que prever a exist??ncia de poss??veis bit-flips no meio
da transmiss??o:
\begin{code}
transmit = dec' . propagate bflip . enc
\end{code}
Por exemplo, |transmit 'H'| ir?? dar a seguinte distribui????o:
\begin{quote}\small
\begin{verbatim}
 'H'  67.2%
 'D'   7.5%
 'F'   7.5%
 'G'   7.5%
 'P'   2.8%
 'X'   2.8%
 'E'   0.8%
 'B'   0.8%
 'C'   0.8%
 'L'   0.3%
 'N'   0.3%
 'O'   0.3%
 'T'   0.3%
 'V'   0.3%
 'W'   0.3%
 '`'   0.1%
 'A'   0.1%
\end{verbatim}
\end{quote}
A sa??da 'H', que se esperava com |100%| de certeza,
agora s?? ocorrer??, estat??sticamente, com a probabilidade de |67.2%|,
consequ??ncia dos bit-flips, havendo um ??mbito bastante
grande de respostas erradas, mas com probabilidades mais baixas.

\begin{enumerate}
\item \textbf{Trabalho a fazer:} completar a defini????o do catamorfismo de listas |propagate|.
\end{enumerate}

O que se pode fazer quanto a estes erros de transmiss??o? Os chamados c??digos
de repeti????o enviam cada bit um n??mero impar de vezes, tipicamente |3| vezes.
Cada um desses tr??s bits (que na origem s??o todos iguais) est?? sujeito
a bit-flips. O que se faz ?? \emph{votar} no mais frequente --- ver fun????o |v3| no anexo.
Se agora a transmiss??o do |'H'| for feita em triplicado,
usando
\begin{code}
transmit3 = dec' . propagate3 bflip3 . enc
\end{code}
ter-se-??:
\begin{quote}\small
\begin{verbatim}
Main> transmit3 'H'
 'H'  91.0%
 'F'   2.6%
 'G'   2.6%
 'D'   2.6%
 'P'   0.4%
 'X'   0.4%
 'B'   0.1%
 'C'   0.1%
 'E'   0.1%
\end{verbatim}
\end{quote}
V??-se que a probabilidade da resposta certa aumentou muito, para |91%|,
com redu????o tamb??m do espectro de respostas erradas.

\begin{enumerate}
\setcounter{enumi}{1}
\item \textbf{Trabalho a fazer:} completar a defini????o do catamorfismo de
listas |propagate3| e da fun????o |bflip3|.
\end{enumerate}

Apesar da sua efic??cia, esta t??cnica de correc????o de erros ?? dispendiosa,
obrigando o envio do triplo dos bits. Isso levou a
comunidade cient??fica a encontrar formas mais sofisticadas para resolver
o mesmo problema sem tal ``overhead". Quem estiver interessado em saber mais
sobre este fascinante t??pico poder?? come??ar por visualizar este
\href{https://youtu.be/X8jsijhllIA?t=4}{v??deo} no YouTube.

\part*{Anexos}

\appendix

\section{Documenta????o para realizar o trabalho}
\label{sec:documentacao}
Para cumprir de forma integrada os objectivos do trabalho vamos recorrer
a uma t??cnica de programa\-????o dita ``\litp{liter??ria}'' \cite{Kn92},
cujo princ??pio base ?? o seguinte:
%
\begin{quote}\em Um programa e a sua documenta????o devem coincidir.
\end{quote}
%
Por outras palavras, o c??digo fonte e a documenta????o de um
programa dever??o estar no mesmo ficheiro.

O ficheiro \texttt{cp2122t.pdf} que est?? a ler ?? j?? um exemplo de
\litp{programa????o liter??ria}: foi gerado a partir do texto fonte
\texttt{cp2122t.lhs}\footnote{O sufixo `lhs' quer dizer
\emph{\lhaskell{literate Haskell}}.} que encontrar?? no
\MaterialPedagogico\ desta disciplina descompactando o ficheiro
\texttt{cp2122t.zip} e executando:
\begin{Verbatim}[fontsize=\small]
    $ lhs2TeX cp2122t.lhs > cp2122t.tex
    $ pdflatex cp2122t
\end{Verbatim}
em que \href{https://hackage.haskell.org/package/lhs2tex}{\texttt\LhsToTeX} ??
um pre-processador que faz ``pretty printing''
de c??digo Haskell em \Latex\ e que deve desde j?? instalar utilizando o
utili??rio \href{https://www.haskell.org/cabal/}{cabal} dispon??vel em \href{https://www.haskell.org}{haskell.org}.

Por outro lado, o mesmo ficheiro \texttt{cp2122t.lhs} ?? execut??vel e cont??m
o ``kit'' b??sico, escrito em \Haskell, para realizar o trabalho. Basta executar
\begin{Verbatim}[fontsize=\small]
    $ ghci cp2122t.lhs
\end{Verbatim}

\noindent Abra o ficheiro \texttt{cp2122t.lhs} no seu editor de texto preferido
e verifique que assim ??: todo o texto que se encontra dentro do ambiente
\begin{quote}\small\tt
\verb!\begin{code}!
\\ ... \\
\verb!\end{code}!
\end{quote}
?? seleccionado pelo \GHCi\ para ser executado.

\subsection{Como realizar o trabalho}
Este trabalho te??rico-pr??tico deve ser realizado por grupos de 3 (ou 4) alunos.
Os detalhes da avalia????o (datas para submiss??o do relat??rio e sua defesa
oral) s??o os que forem publicados na \cp{p??gina da disciplina} na \emph{internet}.

Recomenda-se uma abordagem participativa dos membros do grupo em todos os
exerc??cios do trabalho, para assim poderem responder a qualquer quest??o colocada
na \emph{defesa oral} do relat??rio.

Em que consiste, ent??o, o \emph{relat??rio} a que se refere o par??grafo anterior?
?? a edi????o do texto que est?? a ser lido, preenchendo o anexo \ref{sec:resolucao}
com as respostas. O relat??rio dever?? conter ainda a identifica????o dos membros
do grupo de trabalho, no local respectivo da folha de rosto.

Para gerar o PDF integral do relat??rio deve-se ainda correr os comando seguintes,
que actualizam a bibliografia (com \Bibtex) e o ??ndice remissivo (com \Makeindex),
\begin{Verbatim}[fontsize=\small]
    $ bibtex cp2122t.aux
    $ makeindex cp2122t.idx
\end{Verbatim}
e recompilar o texto como acima se indicou.

No anexo \ref{sec:codigo} disponibiliza-se algum c??digo \Haskell\ relativo
aos problemas que se seguem. Esse anexo dever?? ser consultado e analisado
?? medida que isso for necess??rio.

\subsection{Como exprimir c??lculos e diagramas em LaTeX/lhs2tex}
Como primeiro exemplo, estudar o texto fonte deste trabalho para obter o
efeito:\footnote{Exemplos tirados de \cite{Ol18}.}
\begin{eqnarray*}
\start
     |id = split f g|
%
\just\equiv{ universal property }
%
        |lcbr(
          p1 . id = f
     )(
          p2 . id = g
     )|
%
\just\equiv{ identity }
%
        |lcbr(
          p1 = f
     )(
          p2 = g
     )|
\qed
\end{eqnarray*}

Os diagramas podem ser produzidos recorrendo ?? \emph{package} \LaTeX\
\href{https://ctan.org/pkg/xymatrix}{xymatrix}, por exemplo:
\begin{eqnarray*}
\xymatrix@@C=2cm{
    |Nat0|
           \ar[d]_-{|cataNat g|}
&
    |1 + Nat0|
           \ar[d]^{|id + (cataNat g)|}
           \ar[l]_-{|inNat|}
\\
     |B|
&
     |1 + B|
           \ar[l]^-{|g|}
}
\end{eqnarray*}

\section{Regra pr??tica para a recursividade m??tua em |Nat0|}\label{sec:mr}

Nesta disciplina estudou-se como fazer \pd{programa????o din??mica} por c??lculo,
recorrendo ?? lei de recursividade m??tua.\footnote{Lei (\ref{eq:fokkinga})
em \cite{Ol18}, p??gina \pageref{eq:fokkinga}.}

Para o caso de fun????es sobre os n??meros naturais (|Nat0|, com functor
|fF X = 1 + X|) ?? f??cil derivar-se da lei que foi estudada uma
	\emph{regra de algibeira}
	\label{pg:regra}
que se pode ensinar a programadores que n??o tenham estudado
\cp{C??lculo de Programas}. Apresenta-se de seguida essa regra, tomando como
exemplo o c??lculo do ciclo-\textsf{for} que implementa a fun????o de Fibonacci,
recordar o sistema:
\begin{spec}
fib 0 = 1
fib(n+1) = f n

f 0 = 1
f (n+1) = fib n + f n
\end{spec}
Obter-se-?? de imediato
\begin{code}
fib' = p1 . for loop init where
   loop(fib,f)=(f,fib+f)
   init = (1,1)
\end{code}
usando as regras seguintes:
\begin{itemize}
\item	O corpo do ciclo |loop| ter?? tantos argumentos quanto o n??mero de fun????es
mutuamente recursivas.
\item	Para as vari??veis escolhem-se os pr??prios nomes das fun????es, pela ordem
que se achar conveniente.\footnote{Podem obviamente usar-se outros s??mbolos,
mas numa primeira leitura d?? jeito usarem-se tais nomes.}
\item	Para os resultados v??o-se buscar as express??es respectivas, retirando
a vari??vel |n|.
\item	Em |init| coleccionam-se os resultados dos casos de base das fun????es,
pela mesma ordem.
\end{itemize}
Mais um exemplo, envolvendo polin??mios do segundo grau $ax^2 + b x + c$ em |Nat0|.
Seguindo o m??todo estudado nas aulas\footnote{Sec????o 3.17 de \cite{Ol18} e t??pico
\href{https://www4.di.uminho.pt/~jno/media/cp/}{Recursividade m??tua}
nos v??deos de apoio ??s aulas te??ricas.},
de $f\ x = a x^2 + b x + c$ derivam-se duas fun????es mutuamente recursivas:
\begin{spec}
f 0 = c
f (n+1) = f n + k n

k 0 = a + b
k(n+1) = k n + 2 a
\end{spec}
Seguindo a regra acima, calcula-se de imediato a seguinte implementa????o, em Haskell:
\begin{code}
f' a b c = p1 . for loop init where
  loop(f,k) = (f+k,k+2*a)
  init = (c,a+b) 
\end{code}

\section{O m??nade das distribui????es probabil??sticas} \label{sec:probabilities}
%format B = "\mathit B"
%format C = "\mathit C"
M??nades s??o functores com propriedades adicionais que nos permitem obter
efeitos especiais em progra\-ma????o. Por exemplo, a biblioteca \Probability\
oferece um m??nade para abordar problemas de probabilidades. Nesta biblioteca,
o conceito de distribui????o estat??stica ?? captado pelo tipo
\begin{eqnarray}
	|newtype Dist a = D {unD :: [(a, ProbRep)]}|
	\label{eq:Dist}
\end{eqnarray}
em que |ProbRep| ?? um real de |0| a |1|, equivalente a uma escala de $0$ a
$100 \%$.

Cada par |(a,p)| numa distribui????o |d::Dist a| indica que a probabilidade
de |a| ?? |p|, devendo ser garantida a propriedade de  que todas as probabilidades
de |d| somam $100\%$.
Por exemplo, a seguinte distribui????o de classifica????es por escal??es de $A$ a $E$,
\[
\begin{array}{ll}
A & \rule{2mm}{3pt}\ 2\%\\
B & \rule{12mm}{3pt}\ 12\%\\
C & \rule{29mm}{3pt}\ 29\%\\
D & \rule{35mm}{3pt}\ 35\%\\
E & \rule{22mm}{3pt}\ 22\%\\
\end{array}
\]
ser?? representada pela distribui????o
\begin{code}
d1 :: Dist Char
d1 = D [('A',0.02),('B',0.12),('C',0.29),('D',0.35),('E',0.22)]
\end{code}
que o \GHCi\ mostrar?? assim:
\begin{Verbatim}[fontsize=\small]
'D'  35.0%
'C'  29.0%
'E'  22.0%
'B'  12.0%
'A'   2.0%
\end{Verbatim}
?? poss??vel definir geradores de distribui????es, por exemplo distribui????es \emph{uniformes},
\begin{code}
d2 = uniform (words "Uma frase de cinco palavras")
\end{code}
isto ??
\begin{Verbatim}[fontsize=\small]
     "Uma"  20.0%
   "cinco"  20.0%
      "de"  20.0%
   "frase"  20.0%
"palavras"  20.0%
\end{Verbatim}
distribui????o \emph{normais}, eg.\
\begin{code}
d3 = normal [10..20]
\end{code}
etc.\footnote{Para mais detalhes ver o c??digo fonte de \Probability, que ?? uma adapta????o da
biblioteca \PFP\ (``Probabilistic Functional Programming''). Para quem quiser saber mais
recomenda-se a leitura do artigo \cite{EK06}.} |Dist| forma um \textbf{m??nade}
cuja unidade ?? |return a = D [(a,1)]| e cuja composi????o de Kleisli ?? (simplificando a nota????o)
\begin{spec}
  ((kcomp f g)) a = [(y,q*p) | (x,p) <- g a, (y,q) <- f x]
\end{spec}
em que |g: A -> Dist B| e |f: B -> Dist C| s??o fun????es \textbf{mon??dicas} que representam
\emph{computa????es probabil??sticas}.

Este m??nade ?? adequado ?? resolu????o de problemas de \emph{probabilidades e
estat??stica} usando programa????o funcional, de forma elegante e como caso
particular da programa????o mon??dica.

\section{C??digo fornecido}\label{sec:codigo}

\subsection*{Problema 3}

Tri??ngulo de base:
\begin{code}
base = ((0,0), 32)
\end{code}
Desenho de tri??ngulos em \svg:
\begin{code}
desenha x = picd'' [ scale 0.44 (0,0) (x >>= tri2svg) ]
\end{code}
Fun????o que representa cada tri??ngulo em \svg:
\begin{code}
tri2svg :: Tri -> Svg
tri2svg (p,c) = (red . polyg) [ p, p .+ (0,c), p .+ (c,0) ]
\end{code}
\textbf{NB}: o  tipo |Svg| ?? sin??nimo de |String|:
\begin{code}
type Svg = String
\end{code}

\subsection*{Problema 4}
Fun????es b??sicas:
\begin{code}
type Bit = Int

type Bin = [Bit]

type Bit3 = (Bit,Bit,Bit)

tobin = rtrim 5 . pad 5 . dec2bin

frombin = bin2dec . rtrim 5

bin2dec :: Bin -> Int
bin2dec [a] = a
bin2dec b   = bin2dec(init b) * 2 + last b

rtrim n a = drop (length a - n) a

dec2bin 0 = []
dec2bin n = dec2bin m ++ [b] where (m,b) = (div n 2, mod n 2)

pad n x = take m zeros ++ x where
   m = n-length x
   zeros = 0:zeros

bflips = propagate bflip
\end{code}
Fun????o que vota no bit mais frequente:
\begin{code}
v3 (0,0,0) = 0
v3 (0,0,1) = 0
v3 (0,1,0) = 0
v3 (0,1,1) = 1
v3 (1,0,0) = 0
v3 (1,0,1) = 1
v3 (1,1,0) = 1
v3 (1,1,1) = 1
\end{code}
Descodifica????o mon??dica:
\begin{code}
dec' = fmap dec
\end{code}
Para visualiza????o abreviada de distribui????es:
\begin{code}
consolidate :: Eq a => Dist a -> Dist a
consolidate = D . filter q . map (id><sum) . collect . unD where q(a,p) = p > 0.001

collect x = nub [ k |-> nub [ d' | (k',d') <- x , k'==k ] | (k,d) <- x ]
\end{code}

%----------------- Solu????es dos alunos -----------------------------------------%

\section{Solu????es dos alunos}\label{sec:resolucao}

Os alunos devem colocar neste anexo\footnote{E apenas neste anexo,
i.e, n??o podem alterar o resto do documento.} as suas solu????es para os
exerc??cios propostos, de acordo com o "layout" que se fornece. N??o podem
ser alterados os nomes ou tipos das fun????es dadas, mas podem ser adicionadas
outras fun????es auxiliares que sejam necess??rias, bem como 
textos, inc.\ diagramas que expliquem como se chegou ??s solu????es encontradas.

Valoriza-se a escrita de \emph{pouco} c??digo que corresponda a solu????es
simples e elegantes.

\subsection*{Problema 1} \label{pg:P1}

\begin{eqnarray*}
\start
%
\just\equiv
%
      |lcbr(
          q.in = h . (id + <q, <r,d>>)
     )(
          r.in = k . (id + <q, <r,d>>)
     )(
     	  c.in = l . (id + <q, <r,d>>)
     )|
%
\just\equiv
%
        |lcbr(
          q.in = [h1,h2] . (id + <q, <r,d>>)
     )(
          r.in = [k1,k2] . (id + <q, <r,d>>)
     )(
     	  c.in = [l1,l2] . (id + <q, <r,d>>)
     )|
%
\just\equiv
%
     <q, <r,c>> = catanat(<[h1,h2],<[k1,k2],[l1,l2]>)
%
\just\equiv{lei da troca}
%
     <q, <r,c>> = catanat(<[h1,h2],<[k1,l1],[k2,l2]>)
%
\just\equiv{lei da troca}
%
     <q, <r,c>> = catanat([<[h1,<k1,l1>>,<h2,<k2,l2>>])
%
\just\equiv{lei Universal-Cata, in = [const 0,succ]}
%
     <q, <r,d>>.[const 0, succ] = [<[h1,<k1,l1>>,<h2,<k2,l2>>].(id + <q,<r,c>>)
%
\just\equiv{Fus??o+,Absor????o+,Natural-id}
%     
   [<q, <r,d>>.[const 0, <q,<r,c>>.succ] = [<[h1,<k1,l1>>,<h2,<k2,l2>>].<q,<r,c>>
   
%
\just\equiv{Fus??o-Const,Eq+}
% 
	|lcbr(
          const <q,<r,c>> 0 = <h1,<k1,l1>>
     )(
     	  <q,<r,c>>.succ = <h2,<k2,l2>>.<q,<r,c>>
     )|
%
\just\equiv{Def split,Fus??o-x}
%      
       |lcbr(
          <h1,<k1,l1>> = const <q0,<r0,c0>>
     )(
     	  <q.succ,<r.succ,c.succ>> = <h2.<q,<r,c>>,<k2.<q,<r,c>>,l2.<q,<r,c>>>>
     )|   
%
\just\equiv{Def q0,r0,c0}
%
 	|lcbr(
          <h1,<k1,l1>> = (0,(0,d))
     )(
     	  <q.succ,<r.succ,c.succ>> = <h2.<q,<r,c>>,k2.<q,<r,c>>,l2.<q,<r,c>>>
     )|   
%
\just\equiv{Eq-X}
%     
	|lcbr(
          q.succ = h2 . <q, <r,c>>
     )(
          r.succ = k2 . <q, <r,c>>
     )(
     	  c.succ = l2 . <q, <r,c>>
     )|
%
\just\equiv{Igualdade extensional, Def-Comp, Def-split}
%
      |lcbr(
          q (succ n) = h2 (<q n, <r n,c n>>)
     )(
          r (succ n) = k2 (<q n, <r n,c n>>)
     )(
     	  c (succ n) = l2 (<q n, <r n,c n>>)
     )|
%
\just\equiv{Def succ}
%
      |lcbr(
          q (n + 1) = h2 (<q n, <r n,c n>>)
     )(
          r (n + 1) = k2 (<q n, <r n,c n>>)
     )(
     	  c (n + 1) = l2 (<q n, <r n,c n>>)
     )|
%
\just\equiv{def q (n+1),r (n+1),c (n+1)}
%
      |lcbr(
          h2 (<q n, <r n,c n>>) = q n + (if c n == 0 then 1 else 0
     )(
          k2 (<q n, <r n,c n>>) = if c n == 0 then 1 else r n + 1
     )(
     	  l2 (<q n, <r n,c n>>) = if c n == 0 then d else c n - 1
     )|
%
\just\equiv{Igualdade Extensional,Def-Comp,Def-x,Def-Cond,Def succ,Def pred}
%
      |lcbr(
          h2 (<q, <r,c>>) = q + (( c == const 0) -> const 1, const 0)
     )(
          k2 (<q, <r,c>>) = (( c == const 0) -> const 1, succ.r)
     )(
     	  l2 (<q, <r,c>>) = (( c == const 0) -> const d, pred.c)
     )|
%
\just\equiv{}
%

      	|lcbr(	
          	h2 (<q, <r,c>>) = succ q, c = const 0
     	)(
     		h2 (<q, <r,c>>) = q, c != const 0
     	)|
     	\\
     	|lcbr(
          	k2 (<q, <r,c>>) = const 1, c = const 0 
     	)(
     		k2 (<q, <r,c>>) = succ.n, c != const 0
     	)|
     	\\
     	|lcbr(
     	  	l2 (<q, <r,c>>) = const d, c = const 0
     	)(
     		l2 (<q, <r,c>>) = pred.c, c != const 0
     	)|
     	\\	
     	
%
\just\equiv{}
%
      	|lcbr(	
          	h2 = succ ??1, c = const 0
     	)(
     		h2 = ??1, c != const 0
     	)|
     	\\
     	|lcbr(
          	k1 = const 1, c = const 0 
     	)(
     		k2 = succ.(??2.??1), c != const 0
     	)|
     	\\
     	|lcbr(
     	  	l2 = const d, c = const 0
     	)(
     		l2 = pred.(??2,??2), c != const 0
     	)|
     	\\
\qed
\end{eqnarray*}


\subsection*{Problema 2}

Queremos chegar a algo deste genero:
1: alice . in = h . id + ( split(alice, bob) x split(alice, bob) )
2: bob . in   = k . id + ( split(alice, bob) x split(alice, bob) )
Atrav??s do Forkinga:  split(alice, bob) = cata(split(h,k))
Funtor de LTree a = id + (f x f)

\begin{eqnarray*}
	\xymatrix@@C=2cm{
	LTreeINT\ar[d]_{alice}\ar@@/^2pc/[rr]^(0.45){out} & & INT + (LTreeINT)^2\ar@@/2pc/[ll]^(0.45){in}\ar[d]^{id + (alice)^2}\\
	INT & & INT + (INT \times INT) \ar[ll]^{[g1,g2]}
	}

\end{eqnarray*}
Em que: \\
g1 = id \\
g2 = uncurry (max) . (bob x bob)

\begin{code}

alice :: Ord c => LTree c -> c
alice (Leaf a) = a
alice (Fork (f1,f2) ) =  max (bob f1) (bob f2)

\end{code}
Alice tinha o funtor desta forma: alice.in = [id, uncurry (max)] . id + ( bob x bob )
\\
\begin{eqnarray*}
	\xymatrix@@C=2cm{
	LTreeINT\ar[d]_{bob}\ar@@/^2pc/[rr]^(0.45){out} & & INT + (LTreeINT)^2\ar@@/2pc/[ll]^(0.45){in}\ar[d]^{id + (bob)^2}\\
	INT & & INT + (INT \times INT) \ar[ll]^{[g1,g2]}
	}

\end{eqnarray*}
Em que: \\
g1 = id \\
g2 = uncurry (min) . (alice x alice)


\begin{code}

bob :: Ord c => LTree c -> c
bob (Leaf a) = a
bob (Fork (f1,f2) ) =  min (alice f1) (alice f2)
\end{code}

Bob tinha o funtor desta forma: bob.in = [id, uncurry (min)] . id + ( alice x alice )
\\
\begin{eqnarray*}
	\xymatrix@@C=2cm{
	LTreeINT\ar[d]_{both}\ar@@/^2pc/[rr]^(0.45){out} & & INT \times (LTreeINT)^2\ar@@/2pc/[ll]^(0.45){in}\ar[d]^{id + (both)^2}\\
	(INT,INT) & & INT + ((INT \times INT) \times (INT,INT)) \ar[ll]^{[g1,g2]}
	}

\end{eqnarray*}
\\
Em que: 
g1 = dup \\
g2 = split([id,uncurry(max) . (??2 x ??2)], ([id,uncurry(min).(??1 x ??1)])

\begin{code}

both :: Ord d => LTree d -> (d, d)
both = cataLTree (both_gene) 
  where
    both_gene = split (alice_gene) (bob_gene)
    
    alice_gene =  either (id)  ( uncurry (max) . (p2 >< p2) ) 
    
    bob_gene = either (id) ( uncurry (min) . (p1 >< p1) ) 
\end{code}

alice.in = [id, uncurry (max)] . id + ( bob x bob ) 
<=> [id, uncurry (max)] . id + ( (p2 x p2) . ( split(alice, bob) x split(alice, bob) ) )
( Aplica????o do Funtor +)
<=> alice . in = [id, uncurry (max) . (p2 x p2) ]. id + ( split(alice, bob) x split(alice, bob) )

o bob ?? an??logo
bob . in   = [id, uncurry (min) . (p1 x p1) ] . id + ( split(alice, bob) x split(alice, bob) )

Aplica????o da lei Forkinga

both = split(alice,bob) = cata(split([id, uncurry (max) . (p2 x p2) ], [id, uncurry (min) . (p1 x p1) ] )) 


\subsection*{Problema 3}
Biblioteca |LTree3|:\\

(1) Datatype definition
\\
\begin{code}
inLTree3 :: Either (a) ( (LTree3 a, LTree3 a), LTree3 a )  -> LTree3 a

inLTree3 = either (Tri) ( uncurry ( uncurry (Nodo) ) ) 


outLTree3 :: LTree3 a -> Either (a) ( (LTree3 a, LTree3 a),LTree3 a)

outLTree3 (Tri a) = i1 a
outLTree3 ( Nodo t1 t2 t3 ) = i2 ((t1,t2),t3)

baseLTree3 g f = g -|- (f >< f) >< f 
\end{code}
(2) Ana + cata + hylo 
\begin{code}
recLTree3 f = baseLTree3 id f 

cataLTree3 g = g . (recLTree3 (cataLTree3 g)) . outLTree3

anaLTree3 f = inLTree3 . (recLTree3 (anaLTree3 f) ) . f

hyloLTree3 f g = cataLTree3 f . anaLTree3 g
\end{code}
(3) Map 
\begin{code}
instance Functor LTree3
         where fmap f = cataLTree3 ( inLTree3 . baseLTree3 f id )

\end{code}
Genes do hilomorfismo |sierpinski|:
\begin{code}
g1 = either (singl) ( uncurry( (++).uncurry(++) ) ) 

g2 (tri,0) = i1 tri    
g2 (tri,n) = i2 ( (trig1 (tri,n), trig2 (tri,n) ), trig3 (tri,n) ) 
    where
        trig1 = ( soma_x >< pred ) 
        trig2 = ( soma_y >< pred )
        trig3 = ( (id >< new_side) >< pred)

        soma_y ( ((x,y),side) ) = ( (x, y + tamanho), tamanho)
            where
                tamanho = (new_side side)

        soma_x ( ((x,y),side) ) = ( (x + tamanho , y), tamanho)
            where
                tamanho = (new_side side)
    
        new_side = res 2
            where
                res = curry ( uncurry (div) . (id >< id) . swap ) 

\end{code}


\\

 trig1: Triangulo formado quando somamos side/2 ?? coordenada x original e o new side = side/2 \\
 trig2: Triangulo formado quando somamo side/2 ?? coordenada y original e o new side = side/2 \\
 trig3: Triangulo formado quando mantemos o x  e o y originais e o new side = side/2 \\

\begin{eqnarray*}
	\xymatrix{
	(Try \times INT)\ar[d]_{genesierpinski}\ar@@/^2pc/[rr]^{g} & & Try + ((Try,INT) \times (Try,INT) \times (Try,INT))\ar[d]^{id + ((genesierpinski \times genesierpinski) \times genesierpinski)}\\
	LTreeTry & & Try + ((LTreeTry \times LTreeTry) \times LTreeTry) \ar@@/^2pc/[ll]^{in}
	}
\end{eqnarray*}
\\
\\
\begin{eqnarray*}
	\xymatrix{
	LTree3 Try \ar[d]_{folhaSierp}\ar@@/^2pc/[rr]^(0.45){out} & & Try + ((Try,Try),Try)\ar@@/2pc/[ll]^(0.45){in}\ar[d]^{id + ((folhaSierp,folhaSierp),folhaSierp)}\\
	Try^* & & Try + ((Try^*,Try^*),Try^*)\ar[ll]^{[g1,g2]}
	}
\end{eqnarray*}
\\
Em que: \\
g1 = single \\
g2 = uncurry( (++) . uncurry((++))) \\
\end{code]

\subsection*{Problema 4}

\begin{code}
propagate :: Monad m => (t -> m a) -> [ t ] -> m [a ]
propagate f = cataList (g f)
    where
        g f = either (return . nil) (g2 f)
        g2 f (a,b) = do { x <- f a; y <- b; return (cons (x,y) ) }
\end{code}
\\
1?? passo: aplicar a fun????o bflip ?? cabe??a da lista de bits e obter uma distribui????o da cabe??a\\
\\
2?? passo: aplicar a fun????o propagate ?? cauda da lista e obter uma distribui????o da lista\\
\\
3?? passo: juntar a distribui????o da cabe??a com a distribui????o da lista obtendo uma distribui????o final\\
\\
4?? repetir o processo para todos os elemnetos da lista\\ 
\begin{code}
propagate3 :: (Monad m) => (Bit3 -> m Bit3 ) -> [Bit ] -> m [Bit ]
propagate3 f = cataList (g f) 
    where
        g f = either (return . nil) (g2 f)
        g2 f (a,b) = do { x <- fmap (v3) ( f(a,a,a) ); y <-b ; return (x:y) }
\end{code}
A fun????o |bflip3|, a programar a seguir, dever?? estender |bflip| aos tr??s bits da entrada:

\begin{code}
bflip3 :: Bit3 -> Dist Bit3

bflip3 (a, b, c) = do { x <- bflip res; y <- bflip res; z <- bflip res; return (x,y,z) }
    where
        res = v3(a,b,c)



\end{code}
\\
1?? passo: aplicar a fun????o bflip3 ?? cabe??a da lista (esta ser?? repetida 3 vezes)\\
\\
2?? passo: aplicar um fmap com a fun????o v3 ?? Dist Bit3 da cabe??a convertendo-a para uma Dist Bit
\\
\\
3?? passo: aplicar a fun????o propagate3 ?? cauda da lista e obter uma Dist [Bit]\\
\\
4?? passo: juntar a distribui????o da cabe??a com a distribui????o da lista obtendo uma distribui????o final\\
\\
5?? repetir o processo para todos os elementos da lista 
\\

\begin{code}

Lcons j (x:y) = do { a <- x; b <- y; return (cons(a,b));}

\end{code}
\\
\begin{eqnarray*}
	\xymatrix{
	Bit\ar[d]_{bflip}\\
	Dist Bit
	}
\end{eqnarray*}

\begin{eqnarray*}
	\xymatrix{
	Bit^*\ar[d]_{propagate (bflip)} & & 1 + Bit \times Bit^*\ar[ll]^{in Bit^*}\ar[d]^{id + id \times propagate(bflip)}\\
	Dist Bit^* & & 1 + Bit \times DistBit^*\ar[ll]^{g}\ar[d]^{id + bflip \times id}\\
	& & 1 + DistBit \times DistBit^*\ar@@/2pc/[ull]^{[return . nul,[cons]]}
	}
\end{eqnarray*}
\\
g = [return.nil,Lcons].(bflip \times id)

\\
\begin{eqnarray*}
	\xymatrix{
	Bit3\ar[d]_{bflip3}\\
	DistBit3
	}
\end{eqnarray*}
\\
\begin{eqnarray*}
	\xymatrix{
	Bit3\ar[d]_{bflip}\\
	Bit
	}
\end{eqnarray*}


\begin{eqnarray*}
	\xymatrix{
	Bit^*\ar[d]_{propagate (bflip3)} & & 1 + Bit3 \times Bit^*\ar[ll]^{in Bit^*}\ar[d]^{id + id \times propagate(bflip3)}\\
	Dist Bit^* & & 1 + Bit3 \times DistBit^*\ar[ll]^{g}\ar[d]^{id + bflip3 \times id}\\
	& & 1 + DistBit3 \times DistBit^*\ar@@/2pc/[ull]^{[return . nul,[cons]. bflip(v3)]}
	}
\end{eqnarray*}
g = [return.nil,Lcons].(bflip \times id)


\\

%----------------- ??ndice remissivo (exige makeindex) -------------------------%

\printindex

%----------------- Bibliografia (exige bibtex) --------------------------------%

\bibliographystyle{plain}
\bibliography{cp2122t}

%----------------- Fim do documento -------------------------------------------%
\end{document}
