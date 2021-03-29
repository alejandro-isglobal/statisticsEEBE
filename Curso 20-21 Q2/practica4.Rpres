Introducción a la estadística
======================================================
autor: Alejandro Cáceres
fecha:
tamaño automático: verdadero

Escuela Técnica Superior de Ingeniería de Barcelona Este <br>
Universitat Politècnica de Catalunya (UPC)
 

<p style = "font-size: 70px"> Práctica 4</p>
Práctica 4
======================================================

COMANDOS:

Sobre plots

- plot(x,y, type="h") líneas verticales 
- plot(x,y, type="s") escalera 
- points(x,y) para agregar puntos
- lines(x,y, type="h") para agregar líneas horizontales
- hist(sim) para histograma

Operaciones sobre vectores

- sum
- cumsum
- max


Para simular

- seed(123) para poner una semilla de simulación
- sample(x, n, replace=TRUE, prob= f) 
  - x: rango de valores
  - n: número de observaciones 
  - prob: probabilidad (frecuencia relativa)

modelos de probabilidad

- poisson:

  - dpois(x, lambda) función de probabilidad
  - ppois(x, lambda) función de distribución

- binomial:

  - dbinom(x, size=n, prob=p) función de probabilidad
  - pbinom(x, size=n, prob=p) función de distribución
 
- negative binomial:

  - dnbinom(x, size=r, prob=p) función de probabilidad
  - pnbinom(x, size=r, prob=p) función de distribución
 
Resumen
========================================================


| Modelo | outcome    | x  |  f(x) | E(X) | V(X) | R |
| ----------- | ------------- | ------ | ----- | ---- | ---- |---- |
| Uniforme | $n$ discreto | a,... b| $\frac{1}{n}$ |$\frac{b+a}{2}$ |  $\frac{(b-a+1)^2-1}{12}$ | <code>rep(1/n, n)</code>|
| Bernoulli             | evento A  | 0,1 | $(1-p)^{1-x}p^x$ | $p$ | $p(1-p)$ | <code>c(1-p,p)</code> |
| Binomial | \# de eventos A en $n$ repeticiones de Bernoulli | 0,1,...| $\binom n x (1-p)^{n-x}p^x$ | $np$ | $np(1-p)$ |<code> dbimon(x,n,p)</code> |
| Geometrico de eventos| \# de eventos B en repeticiones de Bernoulli antes de evento A | 0,1,...|$(1-p)^{x}p$| $\frac{1-p}{p}$ |$\frac{1-p}{p^2}$ |<code>dgeom(x,p)</code> |
| Geometrico de ensayos| \# de ensayos B en repeticiones de Bernoulli antes de evento A | 1,...|$(1-p)^{x-1}p$| $\frac{1}{p}$ |$\frac{1}{p^2}$ | <code>dgeom(x-1,p)</code> |
| Binomial Negativo de eventos | \# de eventos B en repeticiones de Bernoulli hasta r eventos A | 0,1,.. |$\binom {x+r-1} x (1-p)^xp^r$ | $\frac{r(1-p)}{p}$ | $\frac{r(1-p)}{p^2}$ |<code>dnbinom(x,r,p)</code> |
| Binomial Negativo de ensayos | \# de ensayos en repeticiones de Bernoulli hasta r eventos A | r,r+1,.. |$\binom {x-1} {r-1} (1-p)^{x-r} p^r$ | $\frac{r}{p}$ | $\frac{r(1-p)}{p^2}$ |<code>dnbinom(x-r,r,p)</code> |
| Hypergeometrico | \# de eventos A en una muestra $n$ de población $N$ con $K$ eventos A|$\max(0, n+K-N)$, ... $\min(K, n)$ | $\frac{1}{\binom N n}\binom K x \binom {N-K} {n-x}$ | $n*\frac{N}{K}$ | $n \frac{N}{K} (1-\frac{N}{K})\frac{N-n}{N-1}$ | <code>dhyper(x, K, N-K, n)</code> |
| Poisson | \# de eventos en un intervalo | 0,1, ..| $\frac{e^{-\lambda}\lambda^x}{x!}$ | $\lambda$ | $\lambda$ |<code>poiss(x, lambda)</code> |

