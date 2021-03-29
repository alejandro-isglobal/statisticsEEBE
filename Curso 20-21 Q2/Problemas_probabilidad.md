Introduction to statistics 
========================================================
author: Alejandro Cáceres
date:  
autosize: true

Barcelona East School of Engineering<br> 
Universitat Politècnica de Catalunya (UPC)
 

<p style="font-size:70px">Problems session 1 (Tema 3)</p>

Objective
========================================================

Problems on:

- Probability algebra
- Conditional probability
- Baye's theorem 


Summary
========================================================

- Sum rule: $P(A\cup B \cup C)=P(A) + P(B) + P(C)$
</br>$- P(A\cap B) - P(A\cap C) - P(B\cap C)$
</br>$+P(A\cap B \cap C)$

- Conditional probability: $P(A|B) =\frac{P(A\cap B)}{P(B)}$


- Multiplication rule:

$P (A \cap B) =P (A | B) P (B)$


- A and B are statistically independent if and only if

$P (A | B) =P (A)$

$P (B | A) =P (B)$

$P (A \cap B) =P (A) P (B)$




Summary
========================================================


- Total probability rule

$P (A) =P (A | E1) P (E1) + P (A | E2) P (E2) + ... + P (A | En) P (En)$,

When $\{E1, E2, ... En \}$ are mutually exclusive


Problem 4
========================================================

There are three traffic lights on the road. The probability of finding the first one in red is 0.6. For the other two we have the probabilities $P(R_{j+1}|R_j)=0.15$ and $P(R_{j+1}|\bar{R}_j)=0.25$ for $j=1,2$, where $R_j$ is the event of finding the j-th traffic light in red. If the probability of the one traffic light depends only on the previous one then what is the probability that when passing by the road you

- find all traffic lights in red
- find at least one traffic light in red
- find only one traffic light in red

Problem 4
========================================================

The problem gives us the conditional matrices

||$R_{j+1}$|$\bar{R}_{j+1}$|sum |
|--------|--------|--------|--------|
|**$R_{j}$**|$P(R_{j+1}$<span>&#124;</span>$R_{j})=0.15$|$P(\bar{R}_{j+1}$<span>&#124;</span>$R_{j})=0.85$| 1 |
|**$\bar{R}_{j}$**|$P({R}_{j+1}$<span>&#124;</span>$\bar{R}_{j})=0.25$|$P(\bar{R}_{j+1}$<span>&#124;</span>$\bar{R}_{j})=0.75$| 1 |

Problem 4
========================================================

Therefore 

||$R_{2}$|$\bar{R}_{2}$|sum |
|--------|--------|--------|--------|
|**$R_{1}$**|0.15|0.85| 1 |
|**$\bar{R}_{1}$**|0.25|0.75| 1 |



||$R_{3}$|$\bar{R}_{3}$|sum |
|--------|--------|--------|--------|
|**$R_{2}$**|0.15|0.85| 1 |
|**$\bar{R}_{2}$**|0.25|0.75| 1 |


- $P(R_1)=0.6$


Problem 4
========================================================


a) find all traffic lights in red $P (R_1 \cap R_2 \cap R_3 )$

- let's write it in terms of conditional probabilities. Let's expand

$P(R_1 \cap R_2 \cap R_3 )= P( R_2 \cap R_3|R_1) P(R_1)$
because $$P(A\cap B)=P(A|B)P(B)$$

where $A=R_2 \cap R_3$ and $B= R_1$


Problem 4
========================================================

- let's expand further

$P(R_1 \cap R_2 \cap R_3 )= P( R_2 \cap R_3|R_1) P(R_1)$
</br>$=P(R_3|R_2,R_1)P(R2|R_1)P(R_1)$

because $$P(A\cap B)=P(A|B)P(B)$$ where $A=R_3$, $B= R_2$ and the probability is conditional $P= P(|R_1)$


Problem 4
========================================================


Now we have it in terms of conditional probabilities 

$P (R_1 \cap R_2 \cap R_3 ) =P(R_3|R_2,R_1)P(R_2|R_1)P(R_1)$

- Since $R_3$ is independent of $R_1$ then $P(R_3|R_1)=P(R_3)$, we can then remove the conditional on $R_1$. Therefore, $P(R_3|R_2,R_1)=P(R_3|R_2)$


Then: 

$P (R_1 \cap R_2 \cap R_3 ) =P(R_3|R_2)P(R_2|R_1)P(R_1)$

Taking the values form the conditional matrices  


$P(R_1 \cap R_2 \cap R_3 )=P(R_3|R_2)P(R2|R_1)P(R_1)$
</br>$=0.15*0.15*0.6=0.0135$



Problem 4
========================================================
b) find at least one traffic light in red
$P(R_1 \cup R_2 \cup R_3)$

Let's remember set algebra! 

- $\overline{A \cup B}= \bar{A} \cap \bar{B}$

We turn the **unions** into **intersections** into **conditional probabilities**

$P(R_1\cup R_2 \cup R_3)= 1- P(\overline{R_1\cup R_2 \cup R_3})$ 
</br>$=1-P(\bar{R}_1\cap \bar{R}_2 \cap \bar{R}_3)$ 
</br>$=1-[P(\bar{R}_3|\bar{R}_2)P(\bar{R}_2|\bar{R}_1) P(\bar{R}_1)]$ 
</br>$=1-0.4*0.75*0.75=0.775$

Problem 4
========================================================

c) find only one traffic light in red

$P([R_1 \cap \bar{R}_2 \cap \bar{R}_3]\cup[\bar{R}_1 \cap R_2 \cap \bar{R}_3]\cup[\bar{R}_1 \cap \bar{R}_2 \cap R_3])$
</br>$=P(R_1 \cap \bar{R}_2 \cap \bar{R}_3)+P(\bar{R}_1 \cap R_2 \cap \bar{R}_3)+P(\bar{R}_1 \cap \bar{R}_2 \cap R_3)$

Because they are mutually exclusive 

Problem 4
========================================================



$P(R_1 \cap \bar{R}_2 \cap \bar{R}_3)+P(\bar{R}_1 \cap R_2 \cap \bar{R}_3)+(\bar{R}_1 \cap \bar{R}_2 \cap R_3)$
</br>$=P(\bar{R}_3|\bar{R}_2)P(\bar{R}_2|R_1)P(R_1)+P(\bar{R}_3|R_2)P(R_2|\bar{R}_1)P(\bar{R}_1)$ 
</br>$+P(R_3|\bar{R}_2)P(\bar{R}_2|\bar{R}_1)P(\bar{R}_1)$


remember the general form for conditioning:

$$P(R_1 \cap R_2 \cap R_3 ) =P(R_3|R_2)P(R_2|R_1)P(R_1)$$

$R_1$ conditions $R_2$ that conditions $R_3$, the conditional probabilities are usually written in inverse order, so the marginals are side by side of the conditioning: $P(xxx|R_i)P(R_i)$

Is is only convention so you remember better!




Problem 4
========================================================

We just need to replace all the information that we have so far

$P(\bar{R}_3|\bar{R}_2)P(\bar{R}_2|R_1)P(R_1)+P(\bar{R}_3|R_2)P(R_2|\bar{R}_1)P(\bar{R}_1)$ 
</br>$+P(R_3|\bar{R}_2)P(\bar{R}_2|\bar{R}_1)P(\bar{R}_1)$
</br>$=0.75*0.85*0.6+0.85*0.25*0.4+0.25*0.75*0.4=0.5425$



Problem 8
========================================================

Game of tossing 2 coins and a dice

wining events:

- Two heads and a pair.
- one head one tail and a number greater than 5.

If we know that someone has won, what is the probability that he did it with the first event?

Problem 8
========================================================

Probability for the following events

- getting a pair number on the dice: $P(A)=1/2$

- getting a number greater than 5 in the dice: $P(B)=2/6$

- getting two heads from the coins: $P(C)=1/2*1/2=1/4$

- getting one head and one tail: $P(D)=P(H,T)+P(T,H)=1/4+1/4=1/2$


Problem 8
========================================================

The probability of winning is: 

$P(G)=P(C \cap A \cup D \cap B)$
</br>$=P(C \cap A) + P(D \cap B)=P(C)P(A)+P(D)P(B)=7/24$

and the probability of having two heads when wining (or wining by two heads)

$P(C|G)=\frac{P(C\cap A)}{P(G)}=\frac{1/8}{7/24}=3/7$


Problem 9
========================================================

Capacitors are stored as following

|$\mu$ F| box 1| box 2| box 3| Total
|-------|-------|-------|-------|-------|
|0.01 |20 | 95 | 25 | 140 |
|0.1 | 55 | 35 | 75 | 165 |
|1.0 | 70 | 80 | 145| 295 |
|Total | 145 | 210 | 245 | 600 |


Problem 9
========================================================

Conditional matrix from the experiment

|$\mu$ F| box 1| box 2| box 3| 
|-------|-------|-------|-------|
|0.01 |20/145 | 95/210 | 25/245 |
|0.1 | 55/145 | 35/210 | 75/245 |
|1.0 | 70/145 | 80/210 | 145/245|
|sum | 1 | 1 | 1 | 600 |

$P(c1)=P(c2)=P(c3)=1/3$

Problem 9
========================================================

if we choose a box and a capacitor at random 

a) what is the probability that we select box 2 (c2) and a capacitor of $0.1 \mu F$?
</br>$P(0.1\mu F \cap c2)=P(0.1\mu F |c2)P(c2)=35/210*1/3=210/600$


b) what is the probability to select a capacitor of $0.1 \mu F$?
</br>$P(0.1\mu F)=P(0.1\mu F|c1)P(c1)+P(0.1\mu F|c2)P(c2)+P(0.1\mu F|c3)P(c3)$
</br>$=\frac{20}{145}*1/3+\frac{95}{210}*1/3+\frac{25}{245}*1/3=0.23078$


Problem 10
========================================================

A pack of 50 washer rings, 30 of which exceed the required thickness.  

a) if three rings are picked randomly, what is the probability that the three rings exceed the required thickness?


if $A_i$ is the event that the i-th ring exceeds the required thickness then 

$P(A_1 \cap A_2 \cap A_3)=P(A_3 \cap A_2|A_1) P(A_1)= P(A_3|A_2,A_1)P(A_2|A_1)P(A_1)=28/48*29/49*30/50=0.20714$ is the probability that the three rings exceed the required thickness.

Problem 10
========================================================

b) what is the probability that the third ring exceeds the required thickness?


$P(A_3)=P(A_1 \cap A_2 \cap A_3)+P(A_1 \cap \bar{A_2} \cap A_3)+P(\bar{A_1} \cap A_2 \cap A_3)+P(\bar{A_1} \cap \bar{A_2} \cap A_3)$
</br>$P(A_3 \cap A_2 \cap A_1)=P(A_3|A_2,A_1)P(A_2| A_1)P(A_1)=28/48*29/49*30/50$
</br>$P(A_3 \cap \bar{A_2} \cap A_1)=P(A_3|\bar{A_2}, A_1)P(\bar{A_2}| A_1)P(A_1)=29/48*20/49*30/50$
</br>$P(A_3 \cap A_2 \cap \bar{A_1})=P(A_3|A_2, \bar{A_1})P(A_2| \bar{A_1})P(\bar{A_1})=29/48*30/49*20/50$
</br>$P(A_3 \cap \bar{A_2} \cap \bar{A_1})=P(A_3|\bar{A_2}, \bar{A_1} )P(\bar{A_2}| \bar{A_1})P(\bar{A_1})=30/48*19/49*20/50$

</br>Summing up $P(A3)=0.6$

Problem 11
========================================================


What is the probability of a successful satellite launch from Florida P(A)?

- The probability of a successful satellite launch from Florida P(A) is greater than a launch from Japan P(B)
- The probability that one satellite from Florida **OR** one from Japan is successful is  $P(A \cup B)=0.626$
- The probability that one satellite from Florida **AND** one from Japan are successful is  $P(A \cap B)=0.144$


Problem 11
========================================================


1. $P(A \cup B)= P(A) +  P(B) -P(A \cap B)=0.626$
2. $P(A \cap B)= P(A)P(B)=0.144$

1 and 2. $-P(A)^2+(0.626+0.144)P(A)-0.144=0$ whose solutions are {0.45, 0.32}, since $P(A)\lt P(B)$ then $P(A)=0.45$ and $P(B)=0.32$.


Problem 12
========================================================

Three boxes such that

- First box ($c_1$): 1 white ball , 2 back balls
- Second box ($c_2$): 2 white balls , 1 back ball
- Third box ($c_3$): 3 white balls
- $B_1$: event that the first ball is white
- $B_2$: event that the second ball is white


Problem 12
========================================================

a) what is the probability of obtaining two white balls from randomly selecting a box and then drawing two balls?

Probability that the first **and** second balls are white: 

$P(B_1 \cap B_2)$
</br>$=P(B_1 \cap B_2|c_1)P(c_1)+P(B_1 \cap B_2|c_2)P(c_2)+P(B_1 \cap B_2|c_3)P(c_3)$
</br>$= P(B_2|B_1,c_1)P(B_1|c_1)P(c_1)+ P(B_2|B_1,c_2)P(B_1|c_2)P(c_2)$
</br>$+P(B_2|B_1,c_3)P(B1|c_3)P(c_3)$
</br>$=0 + 1/2*2/3*1/3+ 1*1/3= 4/9$

