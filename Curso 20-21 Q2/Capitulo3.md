Introducción a la estadística
======================================================
author: Alejandro Cáceres
date:  
autosize: true

Escuela Técnica Superior de Ingeniería de Barcelona Este <br>
Universitat Politècnica de Catalunya (UPC)
 

<p style="font-size: 70px"> Capítulo 3 </p>

Objetivo
======================================================

- Teorema de probabilidad total
- Independencia
- Teorema de Bayes


Espacio muestral
==================================================

**Definición:**

El conjunto de todos los valores posibles que pueden tomar las observaciones de un experimento aleatorio se llama espacio muestral
del experimento. El espacio muestral se denota como S.


**Definición:**

Un evento es un subconjunto del espacio muestral de un experimento aleatorio.



Operaciones de eventos
==================================================

complemento: $E'$.

- $E1\cap E2$: $E1$ **Y** $E2$

- $E1\cup E2$: $E1$ **O** $E2$


Probabilidad
==================================================

**Interpretación frecuentista:**

la probabilidad $P(E)$ de un evento $E$ en el espacio muestral $S$ es una función tal


- $P(S)=1$ 
- $0 \leq P(E) \leq 1$
- cuando $E1\cap E2=\emptyset$ $$P(E1\cup E2) =P(E1) + P(E2)$$


Interpretación frecuentista: $P(E)$ es la **frecuencia relativa** límite para el evento $E$ cuando el número de observaciones es infinito.

Regla de suma
==================================================
Cuando tenemos tres eventos A, B y C:

$P(A\cup B \cup C)=P(A) + P(B) + P(C)$
</br>$- P(A\cap B) - P(A\cap C) - P(B\cap C)$
</br>$+P(A\cap B \cap C)$

Probabilidad conjunta 
==================================================

Probabilidad conjunta  $P(A,B)=P(A\cap B)$

|  |  B  |  B'  |  suma |
| --------- | --------- | -------- |  -------- |
| <b> A </b> | $P(A \cap B)$ | $P(A \cap B')$ | $P(A)$ |
| <b> A' </b> | $P(A' \cap B)$ | $P(A' \cap B')$ | $P(A')$|
| <b>suma</b>      | $P(B)$  | $P(B')$| 1 |


La probabilidad condicional
======================================================

La probabilidad condicional se define como:
$$P(A|B) =\frac{P(A\cap B)}{P(B)}$$

Matriz de probabilidad **condicional** sobre $B$ y $B'$ 


| | B  |  B'  |
| --------- | --------- | -------- |
|  <b> A </b>  | P (A <span>&#124;</span> B) | P (A <span>&#124;</span> B') |
|  <b> A' </b> | P (A' <span>&#124;</span> B) | P (A' <span>&#124;</span> B) |
|  <b> suma </b>  | 1 | 1 |



Ejercicio
======================================================


Tenemos tres cajas (caja 1, caja 2, caja 3) en las que se almacenan condensadores de tres capacidades diferentes $(0.01\mu F, 0.1 \mu F, 1.0\mu F)$, como se muestra en el cuadro siguiente:


|$\mu$ F| box 1| box 2| box 3| Total
|-------|-------|-------|-------|-------|
|0.01 |20 | 95 | 25 | 140 |
|0.1 | 55 | 35 | 75 | 165 |
|1.0 | 70 | 80 | 145| 295 |
|Total | 145 | 210 | 245 | 600 |


Deﬁnimos $0.01\mu F$, $0.1\mu F$ y $1.0\mu F$ como los sucesos de extraer un condensador de $0.01\mu F$, $0.1\mu F$ y $1.0\mu F$, respectivamente. De igual forma, deﬁnimos $c1$, $c2$ y $c3$ a los sucesos de elegir la caja 1, la caja 2 y la caja 3, respectivamente. Escogemos al azar una caja y de ella, a su vez, un condensador. Se pide:

- ¿Cuál es la probabilidad de seleccionar la caja 2 **y** un condensador de $0.1\mu F$?

Pistas: 

- ¿Cuál es la probabilidad de escojer la caja 2?
- Obten la matriz condicional sobre el valor de cada caja.
- Escribe la probabilidad conjunta que necesitas en términos de una de las probabilidades condicionales del paso anterior.


Ejercicio
======================================================
- La tabla del ejercicio NO es una tabla de contingencia (probabilidad conjunta)!

- Probabilidad de escoger cualquier caja:
$P(c1)=P(c2)=P(c3)=1/3$

- Matriz condicional para el experimento

|$\mu$ F| box 1| box 2| box 3| 
|-------|-------|-------|-------|
|0.01 |20/145 | 95/210 | 25/245 |
|0.1 | 55/145 | 35/210 | 75/245 |
|1.0 | 70/145 | 80/210 | 145/245|
|sum | 1 | 1 | 1 | 600 |



Ejercicio
========================================================

$P(0.1\mu F |c2) = \frac{P(0.1\mu F \cap c2)}{P(C2)}$


- la probabilidad de seleccionar la caja 2 **y** un condensador de $0.1\mu F$ es

$P(0.1\mu F \cap c2)=P(0.1\mu F |c2)P(c2)=35/210*1/3=210/600$



Regla de multiplicación
======================================================

Para dos eventos $A$ y $B$ tenemos la regla de multiplicación

$$P(A \cap B) = P(A|B) P(B)$$


que se desprende de la definición de probabilidad condicional


Regla de multiplicación
======================================================

Los discos duros tienen tipos de errores:

- **Tiempo de espera** en ejecutar un comando: cuando un programa se cuelga / congela el acceso al disco (estadísticas SMART 188).

- Error **incorregible** sin conexión: al escribir hay un error con pérdida de información (estadísticas SMART 198).


Regla de multiplicación
======================================================

- La probabilidad de que un disco duro muestre un error de **tiempo de espera** es de 0.02.

- **Cuando** hay un error de **tiempo de espera**, la probabilidad de un error **incorregible** es 0.0077.

Estos son los datos reales obtenidos de [data.world](https://data.world/scuttlemonkey/hard-drive-reliability-sample)

- ¿Cuál es la probabilidad de observar errores en tiempo de espera **Y** errores incorregibles?




Regla de multiplicación
======================================================

¿Cuáles son las expresiones matemáticas de las siguientes dos oraciones?

- La probabilidad de que un disco duro muestre un error de **tiempo de espera** es de 0.02.

- **Cuando** hay un error de **tiempo de espera**, la probabilidad de un error **incorregible** es 0.0077.

- La probabilidad de un tiempo de espera **Y** errores incorregibles

Regla de multiplicación
======================================================


¿Cuáles son las expresiones matemáticas de las siguientes dos oraciones?

- La probabilidad de que un disco duro muestre un error de **tiempo de espera** es de 0.02: $P(T)=0.02$

- **Cuando** hay un error de **tiempo de espera**, la probabilidad de un error **incorregible** es 0.0077: $P(U|T)=0.0077$

- La probabilidad de un tiempo de espera **Y** errores incorregibles: $P(U\cap T)=?$

Regla de multiplicación
======================================================

De la definición de probabilidad condicional

$$P(U|T) = \frac{P(U \cap T)}{P(T)}$$
La **regla de multiplicación** es

$$P(U \cap T) =  P(U|T) P(T)$$
Tenemos tenemos

$$P(U \cap T) =  P(U|T) P(T)=0.0077 \times 0.02 =0.00015$$


o 3 discos duros en 2000 muestran ambos errores.




Regla de probabilidad total
======================================================


Vamos a pensar en una situación en la que observamos los valores de un evento en todas las **condiciones** posibles y luego preguntamos:

</br>
¿Cuál es la probabilidad del evento?



Regla de probabilidad total
======================================================

**Regla de probabilidad total**

$$P (A) =P (A | B ') P (B') + P (A | B) P (B)$$

cuando $B$ y $B'$ son mutuamente excluyentes ($B \cap B' =\emptyset$).

La regla se sigue de:
</br> $P (A) =P (A \cap S) =P (A \cap [B \cup B '])$
</br> $=P ([A \cap B] \cup [A \cap B '])$
</br> $=P (A \cap B) + P (A \cap B '))$
</br> $=P (A | B ') P (B') + P (A | B) P (B)$


Probabilidad conjunta 
==================================================

Probabilidad conjunta  $P(A,B)=P(A\cap B)$

|  |  B  |  B'  |  suma |
| --------- | --------- | -------- |  -------- |
| <b> A </b> | $P(A \cap B)$ | $P(A \cap B')$ | $P(A)$ |
| <b> A' </b> | $P(A' \cap B)$ | $P(A' \cap B')$ | $P(A')$|
| <b>suma</b>      | $P(B)$  | $P(B')$| 1 |



Regla de probabilidad total
======================================================

Para muchos eventos mutuamente excluyentes $\{E1, E2, ... En \}$, la **regla de probabilidad total** es

$$P(A)= P(A|E1)P(E1) + P(A|E2)P(E2) + ... +P(A|En)P(En)$$




Probabilidad conjunta 
==================================================

Probabilidad conjunta  $P(A,B)=P(A\cap B)$

|  |  E1  |  E2  | ... | En  | suma |
| ----- | ------ | ----- |----- |  ------ |------ |
| <b> A </b> | $P(A \cap E1)$ | $P(A \cap E3)$ | ... | $P(A \cap En)$| $P(A)$ |
| <b> A' </b> | $P(A' \cap E1)$ | $P(A' \cap E2)$| ...  | $P(A \cap En)$ | $P(A')$|



Regla de probabilidad total
======================================================

¿Cuál es la probabilidad de cáncer $P (C)$ cuando conocemos sus probabilidades condicionales para hombres y mujeres?

El cáncer depende en gran medida del sexo

Probabilidad de cáncer para las mujeres: $P (C | W) =0.05$
</br> Probabilidad de cáncer para hombres: $P (C | W ') =0.07$
</br> Probabilidad de ser mujer: $P (W) =0.5$
</br> Probabilidad de ser hombre: $P (W ') =0.5$


Regla de probabilidad total
======================================================

- individuos con cáncer =hombres con cáncer $\cup$ mujeres con cáncer
- $C =(C \cap W ') \cup (C \cap W)$

$(C \cap W ')$ y $(C \cap W)$ son mutuamente excluyentes entonces

$$P (C) =P (C \cap W ') + P (C \cap W)$$

Regla de probabilidad total
======================================================
$P (C) =P (C \cap W ') + P (C \cap W)$
</br> $=P (C | W ') P (W') + P (C | W) P (W)$

La probabilidad de tener cáncer es
- la probabilidad de tener cáncer al ser hombre multiplicada por la probabilidad de ser hombre

**más**

- la probabilidad de tener cáncer al ser mujer multiplicada por la probabilidad de ser mujer

Regla de probabilidad total
======================================================


$P(C)= P(C|W')P(W') + P(C|W)P(W)$
</br>$= 0.07\times 0.5 + 0.05\times 0.5$
</br>$= 0.06$


Está claramente entre las probabilidades condicionales (0.07, 0.05)



Ejercicio
======================================================

- Probabilidad de escoger cualquier caja:
$P(c1)=P(c2)=P(c3)=1/3$

- Matriz condicional sobre las cajas

|$\mu$ F| box 1| box 2| box 3| 
|-------|-------|-------|-------|
|0.01 |20/145 | 95/210 | 25/245 |
|0.1 | 55/145 | 35/210 | 75/245 |
|1.0 | 70/145 | 80/210 | 145/245|
|sum | 1 | 1 | 1 | 600 |

¿Cuál es la probabilidad de que se haya seleccionado un condensador de $0.01 \mu F$?

- obten la matriz de probabilidad conjunta.

Independencia estadística
======================================================

En muchas aplicaciones, queremos saber si el conocimiento de un evento condiciona el resultado de otro evento.

- hay casos en los que queremos saber si los eventos no están condicionados


Independencia estadística
======================================================

Considere los conductores para los que medimos si tienen fracturas y si su capacidad de conducción es defectuosa.

| | Fracturas: sí | Fracturas: no | suma |
| --------- | --------- | -------- | -------- |
| <b> Defectuoso: sí </b> | 2 | 18 | 20 |
| <b> Defectuoso: no </b> | 38 | 342 | 380 |
| <b> suma </b>| 40 | 360 | 400 |

¿La probabilidad de tener fracturas aumenta la probabilidad de tener una conducción defectuasa?

Independencia estadística
======================================================

Calculamos las frecuencias conjuntas relativas y supongamos que estiman correctamente las probabilidades conjuntas cuando $n =400$

|  |  Fracturas (F)  |  no Fracturas (F')  |   suma  |
| --------- | --------- | -------- |  -------- |
| <b>Defectuoso (D) </b> | $P(D \cap F)=0.005$ | $P(D \cap F')=0.045$ | $P(D)=0.05$ |
| <b>no Defectuoso (D') </b> | $P(D' \cap F)=0.095$ | $P(D' \cap F')=0.855$ | $P(D')= 0.95$|
| <b>sum</b>      | $P(F)=0.1$  | $P(F')=0.9$| 1 |



Las marginales son

- $P(D)=P(D \cap F) + P(D \cap F')=0.05$
- $P(D')=P(D' \cap F) + P(D' \cap F')= 0.95$. 



Independencia estadística
======================================================

¿Cuál es la probabilidad condicional de observar un conductor defectuoso **si** tiene fracturas?

|  | F  |  F' 
| --------- | --------- | -------- |
| <b> D </b> | P(D<span>&#124;</span>F)=$P(D\cap F)/P(F)$ = 0.05 | P(D<span>&#124;</span>F')=$P(D\cap F')/P(F')$=0.05 | 
| <b> D' </b> | P(D'<span>&#124;</span>F)=$P(D'\cap F)/P(F)$=0.95 | P(D'<span>&#124;</span>F')=$P(D'\cap F')/P(F')$=0.95 | 
| <b>sum</b>      | 1                | 1               |

¡Los marginales y las probabilidades condicionales son iguales!

- $P(D|F)=P(D|F')=P(D)$
- $P(D'|F)=P(D'|F')=P(D')$

Las fracturas no condicionan la conductividad del material. 

Independencia estadística
======================================================


La probabilidad de que un conductor tenga una conducción defectuosa **no** depende de la probabilidad de que presente una fractura.

$$P (D) =P (D | F)$$


Independencia estadística
======================================================


Dos eventos $A$ y $B$ son estadísticamente independientes si

- $P (A | B) =P (A)$; $A$ es independiente de $B$
- $P (B | A) =P (B)$; $B$ es independiente de $A$

y por la regla de la multiplicación, su probabilidad conjunta es

- $P(A\cap B)=P(A|B)P(B)=P(A)P(B)$

la multiplicación de sus probabilidades marginales.


Independencia estadística
======================================================


|  |  F  |  F'  |   sum  |
| --------- | --------- | -------- |  -------- |
| <b> D </b> | $P(D \cap F)=0.005$ | $P(D \cap F')=0.045$ | $P(D)=0.05$ |
| <b> D' </b> | $P(D' \cap F)=0.095$ | $P(D' \cap F')=0.855$ | $P(D')= 0.95$|
| <b>sum</b>      | $P(F)=0.1$  | $P(F')=0.9$| 1 |



Confirma que todas los elementos de la matriz de probabilidad conjunta son el producto de las probababilidades marginales.

Por ejemplo:

- $P(F)P(D)= P(D \cap F)$
- $P(D')P(F')=P(D' \cap F')$



Independencia estadística
======================================================

Dos monedas: $S=\{(H,H), (H,T), (T,H), (T,T)\}$

Cara: $H$ y Cruz: $T$

|  |  H  |  T  |   sum  |
| --------- | --------- | -------- |  -------- |
| <b> H </b> | $P(H \cap H)=1/4$ | $P(H \cap T)=1/4$ | $P(H)=1/2$ |
| <b> T </b> | $P(T \cap H)=1/4$ | $P(T \cap T)=1/4$ | $P(T)= 1/2$|
| <b>sum</b>      | $P(H)=1/2$  | $P(T)=1/2$| 1 |



- Obtener cara en la primera moneda no condiciona obtener cruz en el resultado de la segunda moneda $P (T | H) =P (T) =1/2$

- la probabilidad de obtener una cara y luego una cruz es el producto de cada resultado independiente $P (H, T) =P (H) * P (T) =1/4$


Ejercicio
======================================================

En una avenida hay un sistema de 3 semáforos sucesivos. La probabilidad de encontrar el primer semáforo en rojo es 0.6. En los siguientes semáforos, tenemos las probabilidades $P(R_{j+1}|R_j) = 0.15$ y $P(R_{j+1}|R_j) = 0.25$, para $j = 1,2$, donde $R_j$ representa el suceso [encontramos en rojo el semáforo j-ésimo]. Aceptando que la probabilidad de encontrar en rojo un semáforo depende únicamente del estado del semáforo anterior, calcula la probabilidad de que, al circular por el sistema de tres semáforos, ocurran los siguientes sucesos:

1.  Encontramos todos los semáforos en rojo.

Pista

- Escribe las matrices de probabilidad condicional.

2.  Encontramos algún semáforo en rojo.

Pistas: 

- Si $R_1 \cup R_2 \cup R_3$ y $\overline{R_1 \cup R_2 \cup R_3}$ son mutuamente excluyentes y su unión es $S$, ¿cómo se relacionan sus probabilidades?. 

- Recuerda las propiedades del álgebra de conjuntos: $\overline{R_1 \cup R_2 \cup R_3}= \bar{R}_1 \cap \bar{R}_2 \cap \bar{R}_3$

- desarrolla la intersección en términos de probabilidades condicionales. 

3.  Encontramos, exactamente, un semáforo en rojo






Teorema de Bayes
======================================================
Recordemos nuestro ejemplo de diagnóstico.


Cada individuo es un experimento aleatorio con dos medidas: (Infección, Prueba)



| | Infección: sí  |  Infección: no  |  suma  |
| --------- | --------- | -------- | -------- |
|  <b> Prueba: positiva </b>  | $P (pos, sí)$ | $P (pos, no)$ | $P (pos)$ |
|  <b> Prueba: negativa </b>  | $P (neg, sí)$ | $P (neg, no)$ | $P (neg)$ |
|  <b> suma </b> | $P (sí)$ | $P (no)$ | $1$ |


Asumimos **sabíamos** todas las entradas en la **matriz de probabilidad conjunta**.

Teorema de Bayes
======================================================

calculamos la **matriz condicional** en el estado de infección

| | Infección: Sí  |  Infección: No  |
| --------- | --------- | -------- |
|  <b> Prueba: positiva </b>  | P (positivo <span>&#124;</span> sí) | P (positivo <span>&#124;</span> no) |
|  <b> Prueba: negativa </b> | P (negativo <span>&#124;</span> sí) | P (negativo <span>&#124;</span> no) |
|  <b> suma </b>  | 1 | 1 |


- Sensibilidad: La probabilidad de dar positivo **si** tener la enfermedad $P (positivo | sí)$

- Especificidad: Probabilidad de dar negativo **si** no tener la enfermedad $P (negativo | no)$

Teorema de Bayes
======================================================

y también calculamos la otra **matriz condicional** en el resultado de la prueba

| | Infección: Sí  |  Infección: No  | sum |
| --------- | --------- | -------- | -------- |
|  <b> Prueba: positiva </b>  | P (sí <span>&#124;</span> positivo) | P (no <span>&#124;</span> positivo) | 1 |
|  <b> Prueba: negativa </b>  | P (sí <span>&#124;</span> negativo) | P (no <span>&#124;</span> negativo) | 1 |


- Valor predictivo positivo: la probabilidad de tener la enfermedad **si** da positivo $P (sí | positivo)$

- Valor predictivo negativo: la probabilidad de no tener la enfermedad **si** prueba negativo $P (no | negativo)$


Teorema de Bayes
======================================================

Ahora imaginemos una situación real actual.

- Se han realizado PCRs para coronavirus [https://www.nejm.org/doi/full/10.1056/NEJMp2015897] en personas en el hospital que seguramente están infectadas. Las pruebas tienen una sensibilidad del 70%. También se han probado en el laboratorio en condiciones sin infección con una sensibilidad del 96%.

- Un estudio de prevalencia en España mostró que el el verano del 2020 $P (sí) =0.05$, $P (no) =0.95$.

Con estos datos, ¿cuál es la probabilidad de que estar infectado **si** la prueba de PCR es positiva: $P (sí | positivo)$?


Teorema de Bayes
======================================================

Para estudiar el rendimiento de una nueva prueba de diagnóstico:

- selecciona muestras que son inadecuadas (enfermedad: **sí**) y aplica la prueba, tratando de encontrar su sensibilidad: $P (positivo | sí)$ (0,70 para PCR)


- selecciona las muestras que son adecuadas (enfermedad: **no**) y aplica la prueba, tratando de encontrar su especificidad: $P (negativo | no)$ (0,96 para PCR)

Pero cuando aplica la prueba en el mundo real, no sabe si su muestra es inadecuada: quiere saber cuál es la probabilidad de ser **inadecuada** *si* su prueba es **positiva**: $P (sí | positivo)$


Teorema de Bayes
======================================================

Supongamos que las frecuencias son de $n$ suficientemente grandes para **estimar** las probabilidades

| | Infección: Sí  |  Infección: No  |
| --------- | --------- | -------- |
|  <b> Prueba: positiva </b>  | P (positivo <span>&#124;</span> sí) =0,7 | P (positivo <span>&#124;</span>  no) =0.06 |
|  <b> Prueba: negativa </b>  | P (negativo <span>&#124;</span> sí) =0.3 | P (negativo <span>&#124;</span> no) =0.94 |
|  <b> suma </b>  | 1 | 1 |

De esta matriz, ¿podemos obtener $P (sí | positivo)$?


Teorema de Bayes
======================================================

Pero no conocemos esta matriz

| | Infección: Sí |  Infección: No  | sum |
| --------- | --------- | -------- | -------- |
|  <b> Prueba: positiva </b>  | P (sí <span>&#124;</span> positivo) | P (no <span>&#124;</span> positivo) | 1 |
|  <b> Prueba: negativa </b>  | P (sí <span>&#124;</span> negativo) | P (no <span>&#124;</span> negativo) | 1 |


¿Cómo pasar de una matriz a otra? ¿cómo revirtimos el condicionamiento?:

$P (positivo | sí) \rightarrow P (sí | positivo)$

Teorema de Bayes
======================================================

Queremos averiguar cuál es la probabilidad de estar infectado si la prueba es positiva $P (sí | positivo)$, cuando por experimentos en el laboratorio tenemos,

- la probabilidad de dar positivo si está infectado $P (positivo | sí)$ (sensibilidad)

- la probabilidad de dar negativo si está infectado $P (negativo | no)$ (especificidad)

Aplicamos el teorema de Bayes. Derivémoslo ...


Teorema de Bayes
======================================================

De la definición de probabilidad condicional

$$P (positivo | sí) =\frac {P (positivo \cap sí)} {P (sí)}$$


tenemos la **regla de multiplicación**

$$P(positive \cap yes)= P(positive|yes) \times P(yes)$$


donde escribimos la probabilidad **conjunta** de dos eventos en términos de probabilidad condicional y probabilidad marginal.

Teorema de Bayes
======================================================


Ten en cuenta que

$P (positivo \cap sí) =P (sí \cap positivo)$

aplicando la regla de la multiplicación en ambos lados tenemos

$P (positivo | sí) \times P (sí) =P (sí | positivo) \times P (positivo)$

y luego tenemos el teorema de Bayes:


$P (sí | positivo) = \frac {P (positivo | sí) \times P (sí)} {P (positivo)}$ 


Teorema de Bayes
======================================================


Teorema de Bayes:

$P (sí | positivo) =\frac {P (positivo | sí) \times P (sí)} {P (positivo)}$

Sabemos

- la sensibilidad $P (positivo | sí)$
- la prevalencia $P (sí)$

y necesitamos la probabilidad de dar positivo $P (positivo)$ en la población.


Teorema de Bayes
======================================================

Necesitamos la **regla de probabilidad total**, que es la siguiente


| | Infección: sí  |  Infección: no  |  suma  |
| --------- | --------- | -------- | -------- |
|  <b> Prueba: positiva </b>  | $P (pos \cap sí)$ | $P (pos \cap no)$ | $P (pos)$ |
|  <b> Prueba: negativa </b>  | $P (neg \cap sí)$ | $P (neg \cap no)$ | $P (neg)$ |
|  <b> suma </b>  | $P (sí)$ | $P (no)$ | $1$ |


la probabilidad marginal $P(positivo)$  se puede escribir en términos de las probabilidades condicionales de eventos de infección disjuntos.

$P (positivo) =P (positivo \cap sí) + P (positivo \cap no)$

 $=P (positivo | sí) P (sí) + P (positivo | no) P (no)$


Teorema de Bayes
======================================================


Ahora el teorema de Bayes en términos de las probabilidades de los eventos de prueba es

$P(sí | positivo) =\frac {P (positivo | sí) \times P (sí)} {P (positivo | sí) P (sí) + P (positivo | no) P (no)}$

sabemos:

- $P (positivo | sí) =0.70$

- $P (positivo | no) =1- P (negativo | no) =0.06$

- la probabilidad de infección y no infección en la población: $P (sí) =0.05$ y $P (no) =1-P (sí) =0.95$.

Por lo tanto: $P (sí | positivo) =0.47$

Teorema de Bayes
======================================================

**Teorema**

Si $E1, E2, ..., Ek$ son $k$ eventos mutuamente excluyentes y exhaustivos ($\cup_{i=1..k} E_k=S$) y $B$ es cualquier evento,

$$P (Ei | B) =\frac {P (B | Ei) P (Ei)} {P (B | E1) P (E1) + ... + P (B | Ek) P (Ek)}$$



Teorema de Bayes
======================================================

Apliquémoslo ahora a la probabilidad de no estar infectado si la prueba es negativa

$P (no | negativo) =\frac {P (negativo | no) P (no)} {P (negativo | no) P (no) + P (negativo | sí) P (sí)}$

La sustitución de todos los valores da

$P(no | negativo) =0.98$

Las pruebas son buenas para descartar infecciones y no tan buenas para confirmarlas.



Ejercicio
======================================================

En una determinada población, el $20\%$ de los individuos son hipertensos (H). Además, algunas de las personas saben (S) si son o no hipertensas, y otras no lo saben. La probabilidad que siendo hipertensos sepan si lo son o no es del $0.7$ y la probabilidad que no siendo hipertensos no sepan si lo son o no es de $0.6$. En esta población, si una persona no sabe si es o no hipertensa, ¿cuál es la probabilidad que lo sea?

Ejercicio
========================================================

Escribamos lo que nos da el problema

- $P(H)=0.2$
- $P(S|H)=0.7$
- $P(\bar{S}|\bar{H})=0.6$

Ejercicio
========================================================

si una persona no sabe si es o no hipertensa, ¿cuál es la probabilidad que lo sea?

$P(H|\bar{S})=\frac{P(\bar{S}|H)P(H)}{P(\bar{S})}$

$=\frac{P(\bar{S}|H)P(H)}{P(\bar{S}|H)P(H) +P(\bar{S}|\bar{H})P(\bar{H})}$

$=\frac{[1-P(S|H)]P(H)}{[1-P(S|H)]P(H) +P(\bar{S}|\bar{H})[1-P(H)]}=0.111$

Ejercicio
========================================================

Para detectar la presencia de un cierto tipo de bacteria en el agua se realiza un test. Si el agua contiene 
bacterias, el test da positivo el 70% de veces. Si no hay bacterias, detecta da negativo un 60% de las veces. Además sabemos que la probabilidad de que una muestra tenga bacterias de este tipo es 0.2. Calcular la probabilidad de que haya bacterias, si el resulatdo de un test es positivo.


Ejercicio
========================================================


Escribamos lo que nos da el problema

- $P(P|C)=0.7$ por lo tanto $P(\bar{P}|C)=0.3$ 
- $P(\bar{P}|\bar{C})=0.6$ por lo tanto $P(P|\bar{C})=0.4$
- $P(C)= 0.2$ por lo tanto $P(\bar{C})= 0.8$


Ejercicio
========================================================

Calcular la probabilidad de que haya bacterias, si el resulatdo de un test es positivo: $P(C|P)$?


Bayes 
$P(C|P)=\frac{P(P|C)*P(C)}{P(P|C)*P(C)+P(P|\bar{C})*P(\bar{C})}$

$P(C|P)=\frac{0.7*0.2}{0.7*0.2+0.4*0.8}=0.3043$


Ejercicio
======================================================


Tenemos tres cajas (caja 1, caja 2, caja 3) en las que se almacenan condensadores de tres capacidades diferentes $(0.01\mu F, 0.1 \mu F, 1.0\mu F)$, como se muestra en el cuadro siguiente:


|$\mu$ F| box 1| box 2| box 3| Total
|-------|-------|-------|-------|-------|
|0.01 |20 | 95 | 25 | 140 |
|0.1 | 55 | 35 | 75 | 165 |
|1.0 | 70 | 80 | 145| 295 |
|Total | 145 | 210 | 245 | 600 |


Deﬁnimos $0.01\mu F$, $0.1\mu F$ y $1.0\mu F$ como los sucesos de extraer un condensador de $0.01\mu F$, $0.1\mu F$ y $1.0\mu F$, respectivamente. De igual forma, deﬁnimos $c1$, $c2$ y $c3$ a los sucesos de elegir la caja 1, la caja 2 y la caja 3, respectivamente. Escogemos al azar una caja y de ella, a su vez, un condensador. Se pide:

- Si ha sido seleccionado un condensador de $1.0 \mu F$, ¿Cuál es la probabilidad de que proceda de
la caja 1?



Resumen
========================================================


- Regla de la suma: $P(A\cup B \cup C)=P(A) + P(B) + P(C)$
</br>$- P(A\cap B) - P(A\cap C) - P(B\cap C)$
</br>$+P(A\cap B \cap C)$

- Probabilidad condicional: $P(A|B) =\frac{P(A\cap B)}{P(B)}$


- Regla de la multiplicación:

$P (A \cap B) =P (A | B) P (B)$


- Dos eventos $A$ and $B$ son estadísticamente independientes si

$P (A | B) =P (A)$

$P (B | A) =P (B)$

$P (A \cap B) =P (A) P (B)$




Summary
========================================================


- Suma total de probabilidad

$P (A) =P (A | E1) P (E1) + P (A | E2) P (E2) + ... + P (A | En) P (En)$,

Cuando $\{E1, E2, ... En \}$ son mutuamente excluyentes

- Teorema de Bayes
$P (Ei | B) =\frac {P (B \cap Ei)} {P (B \cap E1) + ... + P (B \cap E1)}$


