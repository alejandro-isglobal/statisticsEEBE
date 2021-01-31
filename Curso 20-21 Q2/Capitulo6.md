Introduction to statistics 
========================================================
author: Alejandro Cáceres
date:  
autosize: true

Barcelona East School of Engineering<br> 
Universitat Politècnica de Catalunya (UPC)
 

<p style="font-size:70px">Capítulo 6</p>



Objetivo
======================================================

Modelos de probabilidad discreta:

- Funciones de probabilidad uniformes y de Bernoulli
- Funciones de probabilidad binomial, geométrica y binomial negativa
- Función de probabilidad hipergeométrica

Modelos de probabilidad discreta
======================================================

<img src = "./figures/modis.JPG" style = "width: 50%" align = "center">


Modelos de probabilidad discreta
======================================================

Una función de probabilidad de masa de una variable aleatoria discreta X con valores posibles $x_1, x_2, .., x_m$ es **cualquier función** tal que

- $f(x_i)\geq 0$
- $\sum_{i=1}^m f(x_i)=1$  
- $f(x_i)=P(X=x_i)$


Son objetos abstractos con propiedades generales que pueden o no **describir** un proceso natural o artificial



Modelos de probabilidad discreta
======================================================

Los modelos de probabilidad discreta son funciones de masa de probabilidad que **creemos** describen procesos como experimentos aleatorios reales.

Analogía: Piense en la función $f(x,y)=x^2+y^2$ 

- $f(x,y)=x^2+y^2$  es un círculo de radio $a$.
- es un objeto abstracto.
- Representa la forma de muchos objetos reales.
- la forma de los objetos reales es una aproximación del círculo.


Modelos de probabilidad discreta
======================================================

Los modelos aleatorios discretos son funciones que son **idealizaciones** de experimentos aleatorios sobre variables discretas.


- ¿Cuál es el modelo más simple?


Modelos de probabilidad discreta
======================================================

La interpretación clásica de probabilidad (Laplace)

Siempre que un espacio muestral consta de N eventos posibles que son igualmente probables, la probabilidad de cada resultado es $\frac {1} {N}$.

En muchas ocasiones:

- podemos razonar los posibles valores que puede tomar una variable aleatoria.

No tenemos ninguna razón para suponer que un resultado sea más probable que el otro.


Distribución uniforme
======================================================

<img src = "./figures/dice.JPG" style = "width: 5%" align = "center">

Piense en un dado o en la lotería:

- podemos contar todos los resultados posibles (dados: 1-6, lotería: 0000-9999)

- creemos firmemente que todos son igualmente probables (dado: $1/6$, lotería: $10 ^ {- 4}$) porque el juego es justo y antes del juego, ¡ignoramos por completo el resultado!


Distribución uniforme
======================================================

**Definición**
Una variable aleatoria X tiene una distribución uniforme discreta si cada uno de los n valores en su rango, por ejemplo, tiene la misma probabilidad. Luego,
$f (x) = \frac {1} {n}$


![plot of chunk unnamed-chunk-1](Capitulo6-figure/unnamed-chunk-1-1.png)

Distribución uniforme
======================================================

- Si $f (x)$ para $x\in\{a, a+1, ...b\}$, donde $a$ y $b$ son números enteros, el tamaño del espacio muestral es: $n = b-a + 1$

- Si todos los eventos son igualmente probables, entonces
$$f (x) = \frac {1} {b-a + 1}$$


Distribución uniforme
======================================================
Calculemos la media de la distribución uniforme.

cambiando variables para $Y=X-a+1$, $y\in\{1, 2, ...n\}$ luego $f(Y)=\frac{1}{n}$.

y el hecho de que
$\sum_{y=1}^n y = \frac{n(n+1)}{2}$

entonces la media $E(Y)$, viene dada por
$E(Y)\sum_{y=1}^n y\big(\frac{1}{n}\big)=\frac{n+1}{2}$


y $E(X)=E(Y+a-1)=\frac{n+1}{2}+a-1=\frac{(b-a+1)+1}{2}+a-1=\frac{b+a}{2}$

Distribución uniforme
======================================================


La varianza de
$f(Y)=\frac{1}{n}$

$V(Y) = \mu'_2-\mu^2$
</br>$= \sum_{y=1}^n y^2\big(\frac{1}{n}\big) -\mu^2$
</br>$= \frac{1}{n}\frac{n(n+1)(2n+1)}{6} -\big(\frac{n+1}{2}\big)^2$
</br>$= \frac{n^2-1}{12}$


debido a que $V(Y)=V(X)$ entonces 
$V(X)=\frac{(b-a+1)^2-1}{12}$

Distribución uniforme
======================================================

¿Cuál es la media y la varianza de un dado?

Espacio muestral $X\in\{1,2,3,4,5,6\}$ luego $n = 6$

 
- $E(X)=\frac{n+1}{2}=3.5$. Tenga en cuenta que el valor esperado no está en el espacio muestral. (no es un resultado posible)

- $V(X)=\frac{n^2-1}{12}=2.91$


Ensayos de Bernoulli
======================================================


El caso más simple de una función de probabilidad de masa es donde hay **dos posibles** resultados ($A$ y $B$). Si son igualmente probables, tenemos el lanzamiento de una moneda.

- tratemos de avanzar desde el caso de igual probabilidad y supongamos que los resultados tienen probabilidades desiguales


Ensayos de Bernoulli
======================================================
¿Qué pasa si les dejamos tener diferentes probabilidades?

- resultado A (éxito): tiene probabilidad $p$
- resultado B (falla): tiene probabilidad $q = 1-p$ ($q + p = 1$)

Luego definimos la variable aleatoria $K$ (big $K$) donde $k = 1$ (pequeño $k$) cuando la observación es $A$ y $k = 1$ abd $k = 0$ cuando la observación es  $B$.

Ensayos de Bernoulli
======================================================

La función de masa de probabilidad de $ K $ es
\[
    P(K=k)=f(k)= 
\begin{cases}
    q=1-p,& \text{if } k=0\, (event\, B)\\
    p,& k=1\, (event\, A) 
\end{cases}
\]


o más corto

$f(k)=(1-p)^{1-k} p^k$, para $k=(0,1)$

Ensayos de Bernoulli
======================================================

Cada vez tenemos dos resultados diferentes, donde podemos definir una variable $k = 0$ para un resultado y $k = 1$ para el otro.

Pensamos en una función de probabilidad de Bernulli $f (k) = (1-p) ^ {1-k} p ^ k$.

- En la distribución uniforme, si conocemos los resultados, la distribución de probabilidad de masa se conoce completamente.

- En un ensayo de Bernoulli nos permitimos la flexibilidad de no conocer el número  $p$ (la relación de probabilidad entre los resultados).

Ensayos de Bernoulli
======================================================

$p$ es un **parámetro** de la distribución: se permite cambiar.

- El juicio de Bernoulli es realmente una **familia** de distribuciones
- cuando fijamos el valor de $p$ entonces tenemos una sola función de masa de probabilidad $f (k; p)$.


¿Por qué dejamos $p$ libre? porque nuestra esperanza es que los datos, las observaciones reales, nos digan cuál es su valor (lo veremos a partir de la lección 7 sobre estimación en adelante).

Ensayos de Bernoulli
======================================================

Para las siguientes conferencias, asumiremos que conocemos el valor de $p$.


- Cuando lanzamos una moneda, "sabemos" que $A$: Cruz $\rightarrow k = 1$ y $B$: Cara $\rightarrow k = 0$ tienen probabilidades iguales y por lo tanto $p = 1/2$ y $f (k) = \frac {1} {2} ^ {1-k} \frac {1} {2} ^ k = \frac {1} {2}$.

- Si **asumimos** que la probabilidad de transmitir erróneamente ($k = 1$) un bit de información es $p = 1/10$ entonces
$f (k) = \frac {9} {10} ^ {1-k} \frac {1} {10} ^ k$ ($k = 0$ sin error)

Ensayos de Bernoulli
======================================================

¿Cuál es la media y la varianza de  $f(k)=(1-p)^{1-k} p^k$?

- La media $E(K)= \sum_{k=0}^1 k f(k)=f(1)=p$

- La varianza
$V(K)= \sum_{k=0}^1 (k-p)^2 f(k)$
</br>$=  p^2(1-p)+(1-p)^2p$ 
</br>$=  (1-p)(p^2 + p-p^2)$ 
</br>$=  (1-p)p = pq$

Distribución binomial
======================================================

Suponga que estamos interesados en conocer un ensayo de Bernoulli en particular.

- Retribuimos el ensayo de Bernoulli $n$ veces y contamos cuántas veces obtuvimos $A$.

- Definimos una variable aleatoria $K$ tal que cuente en $n$ ensayo cuántas veces obtuvimos el resultado $A$. $k \in {0,1, ... n}$

¿Cuál es la probabilidad de $P (K = k)$?

Distribución binomial
======================================================
- Lanzar una moneda $n$ veces y contar el número de cruces. ¿Cuál es la probabilidad de observar $k$ cuces en $n$ lanzamientos?

- transmitir $n$ bits y contar el número de errores, cuando la transmisión de un solo error es $p$. ¿Cuál es la probabilidad de observar $k$ errores al transmitir $n$ bits?

- preguntar a $n$ personas si votarán por el partido político en el gobierno cuando la probabilidad de que alguien vote por el partido gobernante es $p$. ¿Cuál es la probabilidad de observar $k$ votos probables para el partido gobernante en $n$ personas?


Distribución binomial
======================================================

- cada resultado $A$ de un ensayo de Bernoulli se observa con probabilidad $p$.
- cada resultado $B$ (no  $A$) de un ensayo de Bernoulli se observa con probabilidad $1-p$.

¡Importante! El experimento aleatorio aquí es el resultado de $n$ experimentos aleatorios independientes (ensayos de Bernoulli): el resultado es la suma de los resultados de Bernoulli.



Distribución binomial
======================================================

- Cuando le preguntamos a 100 personas por sus preferencias de voto, obtendremos $k$, digamos 45; cuando preguntamos a otras 100 personas, obtendremos otros $k$, digamos 40; y así...

Por lo tanto, cada vez que realizamos una encuesta, obtenemos $k$ diferentes, y luego tiene sentido preguntar por la probabilidad de $k$ eventos $P (K = k)$ cuando la probabilidad de que un solo evento sea $p$ .

Queremos encontrar $P (K = k)$ en términos de $p$.

Distribución binomial
======================================================

¿Cuál es la probabilidad de observar $k$ errores al transmitir $n$ bits, cuando la probabilidad de un solo error es $p$?

Observemos primero la probabilidad de un evento particular definido por $k$ errores durante $n$ intentos. En un experimento en particular, observamos, por ejemplo, $k$ errores y $n-k$ sin errores.


| juicio | 1 | 2 | 3 | 4 | ... | n |
| ------- | ------- | ------- | ------- | ------- | ------- | ------- |
| Resultado de Bernulli | sin error | error | sin error | error | ... | sin error |
| Probabilidad de Bernulli | (1-p) | p | (1-p) | p | ... | (1-p) |




Distribución binomial
======================================================

Para obtener la probabilidad de un resultado particular del experimento de n ensayos, como (error, sin error, ..., sin error), con $k$ errores ($A$ resultados) ensayos de Bernoulli en general, debemos considerar que

- Se observaron errores independientes de $k$ con una probabilidad $p * p ... p$ ($k$ veces)

- $n-k$ independiente no se observaron errores con probabilidad $(1-p) * (1-p) ... (1-p)$ ($n-k$ veces)

Entonces la observación (error, sin error, ..., sin error) con $k$ errores y $n-k$ sin errores tiene probabilidad $p ^ k (1-p) ^ {n-k}$



Distribución binomial
======================================================

Sin embargo, ambos resultados
</br> (**error**, **sin error**, ..., sin error)
</br> y
</br> (**sin error**, **error**, ..., sin error)
</br> con valores opuestos solo en el primer y segundo resultado de Bernoulli, tienen la misma cantidad de $k$ errores.


- $k$ pueden aparecer errores $\binom n k$ diferentes $n$ -resultados de transmisión: El número de subconjuntos de $k$ elementos de un conjunto de $n$ elementos.


Por lo tanto, la probabilidad de observar el evento de **transmisión** realizado en **cualquier** $k$ errores (resultados individuales de Bernoulli) es

$f (k) = \binom n k p ^ k (1-p) ^ {n-k}$, $k = 0,1, ... n$


Distribución binomial
======================================================

**Definición**

La función de probabilidad binomial es la función de masa de probabilidad de observar $k$ resultados de tipo $A$ en  $n$ ensayos de Bernoulli independientes, donde $A$ tiene la misma probabilidad $p$ en cada ensayo.

La función está dada por

$f (k) = \binom n k p ^ k (1-p) ^ {n-k}$, $k = 0,1, ... n$

Cuando una variable $K$ tiene una función de probabilidad binomial, decimos que se distribuye binomialmente y escribimos

$K \hookrightarrow Bin (n, p)$


Distribución binomial
======================================================

**Perspeciva teórica**

La media de la distribución binomial requiere algo de álgera, pero su resultado es simple y muy intuitivo.

$E(K)= \sum_{k=0}^n\binom n k  k p^k(1-p)^{n-k}$
</br>$= \sum_{k=0}^n \frac{n!}{k! (n-k)!}  k p^k(1-p)^{n-k}$
</br>$= \sum_{k=0}^n \frac{n!}{(k-1)! (n-k)!} p^k(1-p)^{n-k}$
</br>$= n\sum_{k=0}^n \frac{(n-1)!}{(k-1)! (n-1-(k-1)!)} p^k(1-p)^{n-k}$
</br>$= n\,\, \sum_{k=0}^n \binom {n-1} {k-1} p^k(1-p)^{n-k}$
</br>$= np\,\,\sum_{k=1}^n \binom {n-1} {k-1} p^{k-1}(1-p)^{(n-1)-(k-1)}$
</br>$= np\,\, \sum_{k-1=0}^{n-1} f(k-1)= np$

Distribución binomial
======================================================

La media y la varianza de $K\hookrightarrow Bin(n,p)$ son

- $E(K)=np$
- $V(K)=np(1-p)$

Para demostrar la varianza

- primero encontramos el resultado de $E(K^2)=E(K(K-1))-E(K)=n(n-1)p^2 +np$ 

- y luego use  $V(K)=E(K^2)-E(K)^2$



Distribución binomial
======================================================
- La distribución binomial tiene dos parámetros: $n$ y $p$.

- La expectativa de ejecutar múltiples pruebas de Bernulli y sumar sus resultados es el resultado de multiplicar la expectativa de una sola prueba de Bernulli por $n$:

$E (K) = np$.

... así que lanzando muchas veces una moneda, podemos conocer la probabilidad de un solo lanzamiento de la moneda.


Distribución binomial
======================================================

Saltemos unas clases hacia adelante.

- ¿Qué pasa si reemplazamos $E (K)$ por el resultado de un solo experimento de $n$ repeticiones? Si observamos $k = n_ {cruces} \sim E (K) = np$

- luego $n_ {cruces}/ n \sim p$.


- ¡Podemos **Estimar** $p$ al repetir un experimento!

Distribución binomial
======================================================

Considere un canal ruidoso donde los bits (0,1) se transmiten aleatoriamente con **la misma probabilidad** la función de probabilidad de la masa de transmitir $k$ número de 1 en una transmisión de 5 bits es

$f(k)= \binom 5 k (\frac{1}{2})^5$

|trial outcome | k=0 | k=1  |k=2 | k=3 | k=4  |k=5 | total   
| -------------- | -------------- | --------------  |-------------- | -------------- | --------------  |-------------- | --------------|   
|| $1/32$ | $5/32$ | $10/32$ | $10/32$ | $5/32$ | $1/32$ | 1 | 


Distribución binomial
========================================================

![plot of chunk unnamed-chunk-2](Capitulo6-figure/unnamed-chunk-2-1.png)



Distribución binomial
========================================================

![plot of chunk unnamed-chunk-3](Capitulo6-figure/unnamed-chunk-3-1.png)


Distribución binomial
========================================================

![plot of chunk unnamed-chunk-4](Capitulo6-figure/unnamed-chunk-4-1.png)

Distribución binomial
========================================================

![plot of chunk unnamed-chunk-5](Capitulo6-figure/unnamed-chunk-5-1.png)

Distribución geométrica desplazada
======================================================

Supongamos que se realizan pruebas de Bernoulli hasta que observemos **la primera vez** que aparece el resultado $A$.

- cuando $p = 1/2$ piensa en lanzar una moneda hasta observar una cruz:

¿Cuál es la probabilidad de lanzar la moneda $k$ veces hasta que aparezca la primera cruz?


Distribución geométrica desplazada
======================================================

- al transmitir bits y contando el número de bits transmitidos **hasta encontrar el primer error** si la transmisión de un solo error es $p$:

¿Cuál es la probabilidad de enviar  $k$ bits correctos hasta que aparezca el primer error?

- al preguntar a las personas si votarán por el partido político en el gobierno, si la probabilidad de que alguien vote por el partido gobernante es $p$:

Cual es la probabilidad
preguntando $k$ veces **hasta que observemos a la primera persona** que probablemente vote por el partido gobernante?

Distribución geométrica desplazada
======================================================

Nos estamos preguntando por el número de **ensayos** (un disco negro es la aparición del evento $A$ con probabilidad $p$)

<img src = "./figures/geom.png" style = "width: 50%" align = "center">


Distribución geométrica desplazada
======================================================

Si en la prueba $k$ apareció el evento $A$, entonces el resultado de este experimento tiene una probabilidad

$P(X=k)=f(k)=(1-p)^{k-1}p,$ $k=1,2,3,...$

Esto se llama función de probabilidad **geométrica desplazada** con

- media: $E(Y)= \sum_{k=0}^\infty k(1-p)^{k}p=\frac{1-p}{p}$

- varianza: $V(Y)= \frac{1-p}{p^2}$


Distribución geométrica desplazada
======================================================

- ¿Cuántos **lanzamientos** de una moneda en promedio antes de la primera cruz?

- ¿Cuál es el número esperado de **bits** que podemos transmitir antes de que ocurra el primer error si la probabilidad de un error para un bit es 0.1?



Distribución geométrica
======================================================

Una variable aleatoria más común es el número de **eventos** $B$ que necesitamos observar antes de que aparezca el evento $A$

- ¿Cuántas **caras** obetenemos al lanzar una moneda antes de la primera cruz?

- ¿Cuál es el número esperado de bits **sin error** que podemos transmitir antes de que ocurra el primer error si la probabilidad de un error para un bit es 0.1?

Distribución geométrica
======================================================

La distribución geométrica es para el número de eventos $B$ antes de que se produzca el primer evento $A$. Por lo tanto, su primer valor es para k = 0 (cuando obtenemos $A$ sin $B$ anteriores).

La distribución de la función de probabilidad es

$P(Y=k)=f(k)=(1-p)^{k}p,$ $k=0,1,2,...$

Tenga en cuenta que utilizo $ Y $ para los resultados y $ X $ para las pruebas, es solo una notación para enfatizar la diferencia.

Distribución geométrica
======================================================

La distribución geométrica (no desplazada) tiene

- media: $E(Y)= \sum_{k=0}^\infty k(1-p)^{k}p=\frac{1-p}{p}$

- varianza: $V(Y)= \frac{1-p}{p^2}$

el cambio de la variable $X=Y+1$ conduce a la distribución desplazada.

Distribución geométrica
======================================================

![plot of chunk unnamed-chunk-6](Capitulo6-figure/unnamed-chunk-6-1.png)

Distribución geométrica
======================================================

![plot of chunk unnamed-chunk-7](Capitulo6-figure/unnamed-chunk-7-1.png)


Distribución binomial negativa
======================================================

- Imaginemos ahora que podemos ser tolerantes con un número dado de errores en la transmisión de señales de bits. Digamos que podemos tolerar $r$ errores en una transmisión:

¿Cuál es la probabilidad de observar $k$ bits bien transmitidos antes de los errores de $r$?

Nota: estamos preguntando por la probabilidad del número de eventos $B$ (no ensayos).

No se explicará el binomio negativo desplazado en los ensayos.

Distribución binomial negativa
======================================================

Observemos primero la probabilidad de un evento en particular con $k$ sin errores ($B$) antes de $r$ errores ($A$).

Luego observamos $k$ sin errores en un total de $k + r$ ensayos.


|ensayo| 1 | 2  | 3 | 4 | ... | k+r |
| ------- | ------- | -------  | ------- | ------- | ------- | ------- |
|Bernulli resultado | no error | error | no error | error |  ...  | no error |
|Bernoulli probabilidad | (1-p) | p  | (1-p) | p |  ...  | (1-p) |

Distribución binomial negativa
======================================================

Consideramos:

- La probabilidad de nuestra observación es $(1-p)^kp^r$ donde $p$ es la probabilidad de un error. Sin embargo, las transmisiones:

(**sin error**, **error**, sin error, error, ... sin error)

(**error**, **sin error**, sin error, error, ... sin error)

transmitió la misma cantidad de errores.

- Todos los eventos terminan con un resultado $A$, luego el número total de eventos con resultados $B$ se elige entre el número de subconjuntos de elementos $k$ de un conjunto de $k + r-1$: $\binom {k + r-1} k$


Distribución binomial negativa
======================================================

Por lo tanto, la probabilidad de observar **cualquier** evento con $k$ eventos $B$ antes de $r$ eventos $A$ de probabilidad $p$ es

$P(X=k)=f(k)=\binom {k+r-1} k (1-p)^kp^r$ $k=0,1,...$


Cuando la distribución $X$ es un binomio negativo escribimos

$X \hookrightarrow NB (r, p)$

Distribución binomial negativa
======================================================

Una variable aleatoria con $X\hookrightarrow NB(r,p)$ tiene

- media: $E(X)= r\frac{1-p}{p}$

- varianza: $V(Y)= r\frac{1-p}{p^2}$

Tenga en cuenta que esto es $r$ veces la media y la varianza de la distribución geométrica.

Si realizamos experimentos geométricos $r$ (compuestos en ensayos de Bernoulli), la expectativa para la suma de la cantidad total de eventos  $B$ es la misma al realizar un solo experimento binomial negativo con el parámetro $r$.



Distribución binomial negativa
======================================================

- Un sitio web tiene tres servidores.

- Un servidor funciona a la vez y solo cuando falla una solicitud se utiliza otro servidor.

- Si se sabe que la probabilidad de falla de una solicitud es $p = 0,0005$, entonces

- ¿Cuál es el número esperado de solicitudes exitosas antes de que fallen los tres equipos?

Distribución binomial negativa
======================================================

Este es un proceso binomial negativo para el número de éxitos $k$ $(k = 0,1,2, ...)$ antes de $r = 3$ y $p = 0.0005$ por lo tanto

$E(X)=r\frac{1-p}{p}=3\frac{1-0.0005}{0.0005}=5997$



- Tenga en cuenta que en realidad hay 6000 ensayos

Distribución binomial negativa
======================================================

¿Cuál es la probabilidad de tratar como máximo con 5 solicitudes exitosas antes de que falle el sistema?

Recuerde la distribución de funciones acumulada  $F(x)=P(X\leq 5)$

$F(5)=P(X\leq 5)=\Sigma_{k=0}^5 f(k)$
</br>$=\sum_{k=0}^5\binom {k+2} k  (0.9995)^k(0.0005)^3$
</br>$=\binom {2} 0 (0.0005)^3 +\binom {3} 1 (0.9995)^1*(0.0005)^3$
</br>$+\binom {4} 2 (0.9995)^2*(0.0005)^3 +\binom {5} 3 (0.9995)^3*(0.0005)^3$
</br>$+\binom {6} 4 (0.9995)^4*(0.0005)^3 +\binom {7} 5 (0.9995)^5*(0.0005)^3$
</br>$= 6.9\times 10^{-9}$


Distribución binomial negativa
========================================================

![plot of chunk unnamed-chunk-8](Capitulo6-figure/unnamed-chunk-8-1.png)

Distribución binomial negativa
========================================================

![plot of chunk unnamed-chunk-9](Capitulo6-figure/unnamed-chunk-9-1.png)


Distribución hipergeométrica
======================================================

- Imagina que tenemos un proceso de fabricación que por cada 850 dispositivos que produce por hora 50 tienden a estar defectuosos ($5 \%$).
- No tenemos tiempo para contarlos todos, así que seleccionamos 100 al azar.

- ¿Cuál es la probabilidad de que elijamos 5 ($5 \%$) dispositivos defectuosos?

Distribución hipergeométrica
======================================================

Qué sabemos

- De una población de $N$
- Hay  $K$ que no son buenos ($N-K$ son buenos)
- Se elige una muestra de $n$
- En la muestra, hay $k$ no buenos

Pensemos en cuál es la probabilidad de observar un valor dado $k$

Distribución hipergeométrica
======================================================

Qué sabemos

- De una población de $N$
- Hay $K$ que no son buenos ($N-K$ son buenos)

Imaginemos que podemos marcar cada dispositivo Bueno $G_1, ... G_K $ y cada Malo $B_1, ... B_ {N_K}$.


La población de dispositivos es
$\{G_1, ... G_K, B_1, ... B_ {N_K} \}$

Distribución hipergeométrica
======================================================

De la población $\{G_1, ... G_ {N-K}, B_1, ... B_ {K} \}$ se elige una muestra de tamaño $n$.

existen
$\binom N n$
de aquellos


Distribución hipergeométrica
======================================================


Dado que cada posible $n$ -muestra se obtiene con la misma probabilidad, una sola extracción de n dispositivos tendrá una probabilidad

$P(Z=\{G_3, G_{10}, ... B_5,..B_{610}\})=\frac{1}{\binom N n}$


de estos, vamos a agregar en un solo evento aquellos que tienen el mismo número de $k$ B's ($n-k$ G's)

Distribución hipergeométrica
======================================================


- ¿De cuántas formas podríamos obtener k diferentes dispositivos defectuosos de un grupo de K?

$\binom K k$



- ¿De cuántas formas podríamos obtener n-k dispositivos buenos diferentes de un grupo de n-k?

$\binom {N-K} {n-k}$


Distribución hipergeométrica
======================================================

Por lo tanto, la probabilidad de obtener $k$ malos dispositivos en una muestra de $n$ extraída de una población de $N$ donde $K$ son malos es


$P(X=k)=P(una\,observacion)$
</br>$\times (Number\, de\, formas\, para\, obtenbter\, k)$
</br>$=\frac{1}{\binom N n}\binom K k \binom {N-K} {n-k}$


donde $k \in \{\max(0, n+K-N), ... \min(K, n) \}$

Distribución hipergeométrica
======================================================

Pensemos en el rango de $k$

$k \in \{\max(0, n+K-N), ... \min(K, n) \}$

si hay pocos dispositivos buenos y todos son seleccionados, entonces hay al menos $n- (N-K)$ malos.

Distribución hipergeométrica
======================================================

- Imagina que tenemos un proceso de fabricación que por cada 850 dispositivos que produce por hora 50 tienden a estar defectuosos ($5 \%$).

- No tenemos tiempo para contarlos todos, así que seleccionamos 100 al azar.

- ¿Cuál es la probabilidad de que elijamos 5 dispositivos defectuosos?

Distribución hipergeométrica
======================================================

- De una población de N = 850
- Hay K = 50 que no son buenos
(N-K = 800 son buenos)

- Se elige una muestra de n = 100

La probabilidad de que en la muestra haya $ k = 5 $ dispositivos que no son buenos:

$P(X=k) =\frac{1}{\binom N n}\binom K k \binom {N-K} {n-k}$
</br>$P(X=5) =\frac{1}{\binom {850} {100}}\binom {50} {5} \binom {800} {95} = 0.17\,\, (17\%)$

Distribución hipergeométrica
======================================================

Tenga en cuenta que:

- hay un 5,8% de dispositivos defectuosos en la población (850)
- 5 malos dispositivos en la muestra (100) representan el 5%


Solo $\sim 20 \%$ de las veces, obtendríamos exactamente la misma proporción de dispositivos defectuosos que en la población porque los eventos **no son independientes**

Distribución hipergeométrica
======================================================

Estos no son ensayos de Bernoulli.

- Se producirán pruebas independientes de Bernoulli si inspeccionamos un dispositivo, lo dejamos caer y tomamos uno nuevo (puede ser el mismo).
- En este caso, tenemos muestreo **sin reemplazo**
- ¡Con cada extracción de un dispositivo, la población de muestreo cambia!

Distribución hipergeométrica
======================================================

Si una variable aleatoria sigue una función de probabilidad de masa hipergeométrica

$P(X=k)=f(k)=\frac{1}{\binom N n}\binom K k \binom {N-K} {n-k}$
$k \in \{\max(0, n+K-N), ... \min(K, n) \}$

Tiene

- significa: $E (X) = \ mu = n * K / N = np$

- varianza: $V (X) = np (1-p) \frac {N-n} {N-1}$

Si $p$ es la proporción de $K$ artículos en una población de $N$.

Distribución hipergeométrica
======================================================


Comparemos las medias y varianzas ** hipergeométricas ** y ** binomiales **:

- $E(X)=np$ y varianza $V(X)= np(1-p)\frac{N-n}{N-1}$

- $E_B(X)=np$ y varianza $V_B(X)= np(1-p)$

La varianza de la distribución hipergeométrica se corrige para el muestreo sin reemplazo en una población de tamaño finito.



Distribución hipergeométrica
========================================================

![plot of chunk unnamed-chunk-10](Capitulo6-figure/unnamed-chunk-10-1.png)

Distribución hipergeométrica
========================================================

![plot of chunk unnamed-chunk-11](Capitulo6-figure/unnamed-chunk-11-1.png)




Resumen
========================================================


| Modelo | outcome    | x  |  f(x) | E(X) | V(X) |
| ----------- | ------------- | ------ | ----- | ---- | ---- |
| Uniforme | $n$ discreto | a,... b| $\frac{1}{n}$ |$\frac{b+a}{2}$ |  $\frac{(b-a+1)^2-1}{12}$ | 
| Bernoulli             | evento A  | 0,1 | $p^x(1-p)^{1-x}$ | $p$ | $p(1-p)$ |
| Binomial | \# de eventos A | 0,1,...| $\binom n x p^x(1-p)^{n-x}$ | $np$ | $np(1-p)$ |
| Geometrico | \# de eventos B antes de evento A | 0,1,...|$p(1-p)^{x}$| $\frac{1-p}{p}$ |$\frac{1-p}{p^2}$ |
| Geometrico desplazado | \# de **ensayos** hasta evento A | 1,2,...| $p(1-p)^{x-1}$ | $\frac{1}{p}$ | $\frac{1-p}{p^2}$ |
| Binomial Negativo | \# de eventos B hasta r eventos A | 0,1,.. |$\binom {x+r-1} x p^r(1-p)^x$ | $r\frac{1-p}{p}$ | $r\frac{1-p}{p^2}$ |
| Hypergeometrico | \# de eventos A en unamuestra $n$ |$\max(0, n+K-N)$, ... $\min(K, n)$ | $\frac{1}{\binom N n}\binom K x \binom {N-K} {n-x}$ | $np$ | $np(1-p)\frac{N-n}{N-1}$ |

Ejercicio
========================================================

En una población, la probabilidad de que en un parto nazca un niño es $p = 0.51$. Consideramos una familia de 4 hijos.

- Determina la probabilidad de que tenga exactamente un niño o exactamente una niña.

- Calcula la probabilidad de que la familia tenga al menos dos chicos.

- Consideremos otra familia. Calcula el número exacto de hijos que debe tener para que la probabilidad de tener al menos una chica sea mayor de 0.75.
