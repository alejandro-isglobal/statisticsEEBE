Introducción a la estadística
======================================================
author: Alejandro Cáceres
date:  
autosize: true

Escuela Técnica Superior de Ingeniería de Barcelona Este <br>
Universitat Politècnica de Catalunya (UPC)
 

<p style="font-size: 70px"> Clase 2 </p>

Objetivo
======================================================

- Definición de probabilidad
- Álgebra de probabilidad
- La probabilidad condicional

Objetivo estadístico
======================================================

- Resolver problemas de forma sistemática (ciencia, tecnología de ingeniería)

- ¡Los humanos modernos usan un **método** general desarrollado históricamente durante miles de años! ... y aún en desarrollo.

- Tiene tres componentes principales: observación, lógica y generación de nuevos conocimientos


Mapa conceptual
======================================================


<img src ="./figures/roadmap.JPG" style ="width: 75%" align ="center">



Método científico
======================================================

<img src="./figures/interaction.JPG" style="width:75%"  align="center">


Salida
======================================================

<img src ="./figures/output.JPG" style ="width: 75%" align ="center">



Estadísticas
======================================================

<img src ="./figures/stats.JPG" style ="width: 75%" align ="center">



Modelos
======================================================

<img src ="./figures/models.JPG" style ="width: 75%" align ="center">




Experimento aleatorio
==================================================

- Pensemos en un experimento aleatorio arquetípico: **el lanzamiento de fos dados**.

- Lanzar un dado 10 veces y contar la frecuencia de obtención de los valores posibles 1, 2, 3, 4, 5 y 6. Contamos la proporción de veces que se observó cada valor (no observamos 4).


```
  outcome ni  fi
1       1  2 0.2
2       3  2 0.2
3       4  1 0.1
4       5  3 0.3
5       6  2 0.2
```


Experimento aleatorio
==================================================

- ¿Qué sucede cuando $N$ aumenta a 1,000?


```
  outcome  ni    fi
1       1 162 0.162
2       2 172 0.172
3       3 163 0.163
4       4 172 0.172
5       5 175 0.175
6       6 156 0.156
```


- ¿Qué sucede cuando $N \rightarrow \infty$?



Experimento aleatorio
==================================================

$$lim_{N\rightarrow \infty} f_i = P_i$$

![plot of chunk unnamed-chunk-3](Capitulo2-figure/unnamed-chunk-3-1.png)

Probabilidad
==================================================

Llamamos **Probabilidad** $P_i$ al límite cuando $N \rightarrow \infty$ de la frecuencia de observación del valor $i$ en un experimento aleatorio.

- Entendemos que estos valores pertenecen a la Naturaleza, no dependen del experimentador $n_i$ del observador: describen las cosas como son.

- Si es así, ¿podemos trabajar al revés? Si creemos que los $P_i$ describen las cosas como son, ¿podemos **predecir** los valores esperados de $f_i$ a $N$ más bajos?

- ¿Cuáles son las principales propiedades lógicas de estos $P_i$?

Espacio muestral
==================================================

Comenzamos razonando cuáles son todos los valores posibles (resultados) que podría dar un experimento aleatorio.

Tenga en cuenta que no tenemos que observarlos en un experimento en particular: estamos usando lógica y no observación.

**Definición:**

El conjunto de todos los valores posibles que puede tomar una observación de un experimento aleatorio se denomina espacio muestral
del experimento. El espacio muestral se denota como S.


Espacio muestral
==================================================

- temperatura 35 y 42 grados centígrados
- niveles de azúcar: 70-80 mg / dL
- tamaño de un tornillo de una línea de producción: 70 mm-72 mm
- número de correos electrónicos recibidos en una hora: 0-100
- un lanzamiento de dados: 1, 2, 3, 4, 5, 6


Espacio muestral
==================================================

**Espacios muestrales discretos y continuos**

- Un espacio muestral es discreto si consta de un conjunto infinito finito o contable de resultados.
- Un espacio muestral es continuo si contiene un intervalo (finito o infinito en longitud) de
numeros reales.


Evento
==================================================

**Definición:**

Un evento es un subconjunto del espacio muestral de un experimento aleatorio. Es una colección de resultados.



Resultados de las observaciones y eventos
==================================================

Considere lanzar un dado 20 veces con los siguientes resultados:

1 5 1 2 2 1 2 2 3 1 1 3 3 1 6 3 5 6 4 4

- la duodécima observación tuvo el valor de resultado de 3:

1 5 1 2 2 1 2 2 3 1 1 **3** 3 1 6 3 5 6 4 4

- el resultado 3 se observó 4 veces:

1 5 1 2 2 1 2 2 **3** 1 1 **3** **3** 1 6 **3** 5 6 4 4


Resultados de las observaciones y eventos
==================================================

- el evento menor o igual a 3 tuvo 14 observaciones:

**1** 5 **1** **2** **2** **1** **2** **2** **3** **1** **1** **3** **3** **1** 6 **3** 5 6 4 4

- el espacio muestral es

S ={1, 2, 3, 4, 5, 6}

- el experimento aleatorio es

una simulación por computadora del lanzamiento de un dado

Evento
==================================================

Ejemplos:

- El evento de una temperatura saludable: temperatura 37-38 grados centígrados
- El caso de producir un tornillo con tamaño: 71,5 mm
- El evento de recibir más de 4 correos electrónicos en una hora.

El evento se refiere a un conjunto de **valores** que pueden tomar los resultados.



Evento
==================================================

Ejemplos:

- El evento de una temperatura saludable: temperatura 37-38 grados centígrados
- El caso de producir un tornillo con tamaño: 71,5 mm
- El evento de recibir más de 4 correos electrónicos en una hora.

Tenga en cuenta que los resultados de diferentes experimentos pueden pertenecer al mismo evento.



Operaciones de eventos
==================================================

- La **unión** de dos eventos es el evento que consta de todos los resultados que están contenidos en cualquiera de los dos eventos. Denotamos la unión como $E1 \cup E2$.


$E1$ =hipotermia, $t <37$

$E2$ =fiebre, $t> 38$

$E1\cup E2= [35,37) \cup (38,42]$

El evento de observar a un paciente con hipotermia **O** fiebre.


Operaciones de eventos
==================================================


La ** intersección ** de dos eventos es el evento que consta de todos los resultados que están contenidos en ambos eventos. Denotamos la intersección como $E1 \cap E2$.


$E1$ =hipotermia, $t <37$

$E2$ =fiebre, $t> 38$

$E1\cap E2= \emptyset$

El evento de observar a un paciente con hipotermia **Y** fiebre.



Operaciones de eventos
==================================================

El **complemento** de un evento en un espacio muestral es el conjunto de resultados en el espacio muestral que no están en el evento. Denotamos el componente del evento $E$ como $E'$.

$E1$ =hipotermia, $t <37$

$E1'$ =sin hipotermina $t \geq 37$


Operaciones de eventos
==================================================

Tenga en cuenta que

$E3=E1\cup E2= [35,37) \cup (38,42]$

$E3'= [37, 38]$=saludable

El evento de observar a un paciente sin hipotermia **O** sin fiebre es el evento de observar a un paciente sano.


diagramas de Venn
==================================================


<img src ="./figures/venn.png" style ="width: 75%" align ="center">



Mutuamente excluyentes
==================================================

**Definición:**

Dos eventos denotados como E1 y E2, tales que
$$E1\cap E2=\emptyset$$
se dice que son mutuamente excluyentes.


Probabilidad
==================================================

** Interpretación clásica: **

Siempre que un espacio muestral consta de N eventos posibles que son igualmente probables, la probabilidad de cada resultado es $\frac{1}{N}$.

Defendido por [Laplace (1814)](https://plato.stanford.edu/entries/probability-interpret/#ClaPro).

Probabilidad
==================================================

**Interpretación frecuentista:**

Interpretación frecuentista: $P(E)$ es la **frecuencia relativa** límite para el evento E cuando el número de observaciones es infinito.


Defendido por [Venn (1876)](https://plato.stanford.edu/entries/probability-interpret/#ClaPro)

Hay muchas otras interpretaciones y es un campo de investigación activo en Filosofía.

Probabilidad
==================================================


<img src ="./figures/prob.JPG" style ="width: 75%" align ="center">


Probabilidad
==================================================

La probabilidad es una función de los eventos de S que toman valores entre 0 y 1. Es un objeto matemático (¡no tiene nada de aleatorio!)

$$P(E) \in (0,1)$$

¿Cuáles deberían ser sus propiedades?


Suma de probabilidades
==================================================

Para un espacio muestral discreto, la probabilidad de un evento E, denotado como $P(E)$, es igual a la suma de las probabilidades de los eventos en $E$.

Piense en Laplace y frene todos los eventos posibles de E en partes iguales.

Suma de probabilidades
==================================================

¿Cuál es la probabilidad de lanzar un dado y obtener menos de 3?

Posibles resultados: 1, 2 y 3 luego


$$P(1)+P(2)+P(3)=1/6+1/6+1/6=1/2$$

Piense en Venn y está claro que si P es una frecuencia en el caso límite, entonces, como las frecuencias se pueden agregar, las probabilidades.

Axiomas de probabilidad
==================================================

La probabilidad es un número que se asigna a cada miembro de una colección de eventos de un espacio muestral de un experimento aleatorio que satisface las siguientes propiedades:

Si S es el espacio muestral y E es cualquier evento en un experimento aleatorio,

- $P(S)=1$ 
- $0 \leq P(E) \leq 1$
- cuando $E1\cap E2=\emptyset$ $$P(E1\cup E2) = P(E1) + P(E2)$$

Propuesto por Kolmogorov (1933)

Regla de suma
==================================================

$$P(A\cup B) = P(A) + P(B) - P(A\cap B)$$


Piense en los siguientes eventos para un dado

$A=\{1,2,3,4\}$ and $B=\{4,5\}$

entonces $P(A\cup B)$: la probabilidad de que ocurra $A$ o $B$ viene dada por
</br>$P(A\cup B) = [P(1)+ P(2)+P(3) +P(4)]+ [P(4)+P(5)]$ 
</br>$- P(4)=5/6$

$P(4)= P(A\cap B)$ aparece dos veces: necesitamos restar uno de ellos.

Regla de suma
==================================================
Piense en los siguientes eventos para un dado

$A=\{1,2,3,4\}$

$B=\{4,5\}$


Tenga en cuenta también que la probabilidad de que el resultado esté o no en $A\cup B$ es uno.

$$P([A\cup B]')+P([A\cup B])=1$$

Por lo tanto
$$P([A\cup B])=1-P([A\cup B]')=1-P(6)=1-1/6=5/6$$ 


Regla de suma
==================================================

Cuando tenemos tres eventos A, B y C:

$P(A\cup B \cup C) = P([A\cup B] \cup C)$

$= [P(A) + P(B) - P(A\cap B)] + P(C)-P([A\cup B] \cap C)$

$= [P(A) + P(B) - P(A\cap B)] + P(C)-P([A \cap C]\cup [B \cap C])$

...

</br>$= P(A) + P(B) + P(C) - P(A\cap B) - P(A\cap C) - P(B\cap C)$
</br>$+P(A\cap B \cap C)$



Regla de suma
==================================================

Para una colección de juegos mutuamente excluyentes E1 ... Es

$$P(E1\cup E2 .. \cup En) = P(E1)+P(E2)...+P(En)$$


Probabilidad conjunta
==================================================

Imaginemos un experimento aleatorio que mida dos tipos diferentes de resultados.

- altura y peso de un individuo: (h, w)

- hora y lugar de una carga eléctrica: (p, t)

- un lanzamiento de dos dados: ($n_1$, $n_2$)

En muchos casos, nos interesa saber si los valores de un resultado condicionan los valores del otro.


Probabilidad conjunta
==================================================

- si observamos que un individuo alto es probable que sea pesado: (ancho, alto)

- el tiempo que tarda una carga en golpear un detector en un lugar en particular podría decirnos si pasó a través de un campo eléctrico: (p, t)

- si observamos un número en un dado, no nos dirá cuál es el número de los otros dados: ($n_1$, $n_2$)


Diagnóstico
==================================================

Consideremos una herramienta de diagnóstico

Queremos encontrar el estado de un sistema (s):

- inadecuado (sí)
- adecuado (no)

con una prueba (t):

- positivo
- negativo

Probamos una batería para saber cuánto tiempo puede vivir. Hacemos hincapié en un cable para saber si se resiste a llevar una determinada carga. Realizamos una PCR para ver si alguien está infectado.


Probabilidad conjunta
==================================================
Consideremos diagnosticar la infección con una nueva prueba.

Estado de infección:

- sí (infectado)
- no (no infectado)

Prueba:

- positivo
- negativo

Probabilidad conjunta
======================================================

Cada individuo es un experimento aleatorio con dos medidas: (Infección, Prueba)

| - Asunto - | - Infección - | - Prueba - |
| ------------- | ------------- | ---------- |
| $s_1$ | si | positivo |
| $s_2$ | no | negativo |
| $s_3$ | si | positivo |
| ... | ... | ... |
| $s_i$ | no | positivo * |
| ... | ... | ... |
| ... | ... | ... |
| $s_n$ | si | negativo * |



Tabla de contingencia
==================================================

| | - Infección: sí - | - Infección: no - | - suma - |
| --------- | --------- | -------- | -------- |
| - <b> Prueba: positiva </b> - | 18 | 12 | 30 |
| - <b> Prueba: negativa </b> - | 30 | 300 | 330 |
| - <b> suma </b> - | 48 | 312 | 360 |



| | - Infección: sí - | - Infección: no - | - suma - |
| --------- | --------- | -------- | -------- |
| - <b> Prueba: positiva </b> - | $n_{pos, sí}$ | $n_ {pos, no}$ | $n_ {pos}$ |
| - <b> Prueba: negativa </b> - | $n_{neg, sí}$ | $n_ {neg, no}$ | $n_ {neg}$ |
| - <b> suma </b> - | $n_ {sí}$ | $n_{no}$ | $n$ |


Frecuencias relativas
==================================================


| | -Infección: sí - | - Infección: no - | - suma - |
| --------- | --------- | -------- | -------- |
| - <b> Prueba: positiva </b> - | 18/360 =0,05 | 12/360 =0,0333 .. | 30/360 =0,0833 .. |
| - <b> Prueba: negativa </b> - | 30/360 =0,0833 | 300/360 =0,833 .. | 330/360 =0,9166 .. |
| - <b> suma </b> - | 48/360 =0,133 | 312/360 =0,866 .. | 1 |



| | - Infectado: sí - | - Infectados: no - | - suma - |
| --------- | --------- | -------- | -------- |
| - <b> Prueba: positiva </b> - | $fr(positivo, sí)$ | $fr(positivo, no)$ | $fr(positivo)$ |
| - <b> Prueba: negativa </b> - | $fr(negativo, sí)$ | $fr(negativo, no)$ | $fr(negativo)$ |
| - <b> suma </b> - | $fr(sí)$ | $fr(no)$ | $1$ |




Probabilidad conjunta
==================================================

cuando $ N \ rightarrow \ infty $ asumimos que las frecuencias convergen a valores de probabilidad


| | -Infección: sí - | - Infección: no - | - suma - |
| --------- | --------- | -------- | -------- |
| - <b> Prueba: positiva </b> - | $P(positivo, sí)$ | $P(positivo, no)$ | $P(positivo)$ |
| - <b> Prueba: negativa </b> - | $P(negativo, sí)$ | $P(negativo, no)$ | $P(negativo)$ |
| - <b> suma </b> - | $P(sí)$ | $P(no)$ | $1$ |

- $P(sí, positivo) =P (sí \cap positivo)$: probabilidad de observar $sí$ **Y** $positivo$
- $P(sí)$:  Probabilidad **marginal** de observar $sí$

La probabilidad condicional
======================================================

Pensemos primero en términos de aquellos que están **infectados**

<br/>
Entre los que están infectados (**sí**), ¿cuál es la frecuencia relativa con la que muchos dieron positivo?

- <b> Sensibilidad </b> (tasa de verdaderos positivos)

$$fr(positivo | sí) =\frac{n_{positivo, sí}}{n_ {sí}}$$

Escribimos la barra para indicar que la frecuencia se toma en el subgrupo de los que dieron positivo




La probabilidad condicional
======================================================

Lo escribimos en términos de frecuencias.


$$fr(positivo | sí) =\frac{n_{positivo, sí}} {n_{sí}} =\frac {\frac {n_{positivo, sí}} {n}} {\frac {n_{sí }} {n}} =\frac {fr(positivo, sí)} {fr (sí)}$$

Por lo tanto, en el límite, esperamos tener una probabilidad del tipo


$$P(positivo | sí) =\frac{P (positivo \cap sí)} {P(sí)}$$

A eso lo llamaremos probabilidad condicional de un valor **positivo** en la prueba dado un valor de **sí** en la enfermedad.

La probabilidad condicional
======================================================

**Definición:**

La probabilidad condicional de un evento B dado un evento A, denotado como $P (A | B)$, es
$$P (A | B) =\frac {P (A \cap B)} {P (B)}$$

- puedes probar que la probabilidad condicional satisface los axiomas de probabilidad.
- es la probabilidad con el espacio muestral dado por $B$: $S_B$.


La probabilidad condicional
======================================================

Veamos otra probabilidad condicional
<br />
Dentro de los que responden (**no**), ¿cuál es la probabilidad de que la prueba sea negativa?

- <b> Especificidad </b> (tasa de verdaderos negativos)

$$P (negativo | no) =\frac {P (negativo \cap no)} {P (no)}$$


Matriz de diagnóstico
======================================================

| | -Infección: Sí - | - Infección: No - |
| --------- | --------- | -------- |
| - <b> Prueba: positiva </b> - | P (positivo <span>&#124;</span> sí) | P (positivo  <span>&#124;</span> no) |
| - <b> Prueba: negativa </b> - | P (negativo  <span>&#124;</span> sí) | P (negativo  <span>&#124;</span> no) |
| - <b> suma </b> - | 1 | 1 |


- Tasa de falsos positivos: la probabilidad de dar positivo **si** tener la enfermedad $P (positivo | no)$

- Tasa de falsos negativos: la probabilidad de que la prueba sea negativa **si** tener la enfermedad $P (negativo | sí)$



Matriz de diagnóstico
======================================================

Supongamos que las frecuencias son de $ n $ suficientemente grandes para ** estimar ** las probabilidades

| | -Infección: Sí - | - Infección: No - |
| --------- | --------- | -------- |
| - <b> Prueba: positiva </b> - | 18/48 =0,375 | 12/312 =0,038 |
| - <b> Prueba: negativa </b> - | 30/48 =0,625 | 300/312 =0,962 |
| - <b> suma </b> - | 1 | 1 |

Nuestra herramienta de diagnóstico tiene baja sensibilidad (0.375) pero alta
especificidad (0,962).





Matriz de diagnóstico
======================================================

Volvamos a nuestro diagnóstico de infecciones.

<br />
Dentro de aquellos cuya prueba es positiva, ¿cuál es la probabilidad de tener la infección (sí)?

- <b> Valor predictivo positivo </b>

$$P(yes|positive)=\frac{P(yes \cap positive)}{P(positive)}$$


Matriz de diagnóstico
======================================================

De la misma forma podemos preguntar:


Dentro de aquellos cuya prueba es negativa, ¿cuál es la probabilidad de no tener la enfermedad (no)?

- <b> Valor predictivo negativo </b>

$$P(no|negative)=\frac{P(no \cap negative)}{P(negative)}$$



Matriz de diagnóstico
======================================================

| | Infección: Sí | Infección: No | suma |
| --------- | --------- | -------- | ------ |
| <b> Prueba: positiva </b> | PPV: P (sí  <span>&#124;</span> positivo) | P (ningún  <span>&#124;</span> positivo) | 1 |
| <b> Prueba: negativa </b> | P (sí  <span>&#124;</span> negativo) | VPN: P (sin  <span>&#124;</span> negativo) | 1 |


PPV: valor predicho positivo
VPN: valor predicho negativo

¡Estos son realmente los valores que queremos saber cuando hacemos un examen!


Matriz de diagnóstico
======================================================

Supongamos que las frecuencias son de $n$ suficientemente grandes para **estimar** las probabilidades



| | -Infección: Sí - | - Infección: No - | - suma - |
| --------- | --------- | -------- | ------ |
| - <b> Prueba: positiva </b> - | 18/66 =0,272 | 48/66 =0,728 | 1 |
| - <b> Prueba: negativa </b> - | 30/360 =0.0833 .. | 300/360 =0,833 .. | 1 |

- si la prueba es positiva, solo hay un 27% de posibilidades de que sea infeccioso.

- si la prueba es negativa, existe una alta probabilidad del 83% de que no sea infeccioso.
</br> La prueba es buena para descartar infecciones pero no para confirmarlas.