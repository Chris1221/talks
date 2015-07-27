Investigation of Stratified False Discovery Rate Control in Environments of Complex Correlation | coR-ge
========================================================
author: Christopher Cole
date: July 24th 2015
transition: rotate

Genome Wide Association Studies 
========================================================

- Agnostic search of the genome for significant associations
- Hypothesis free
- Many finding, but huge missing heritability
- Moving towards hypothesis driven GWAS (GWAS-HD)
  - Single SNP association with re-prioritization based on biological hypothesis
  - Stratified FDR
  
Missing Heritability
========

Maher B (Nature, 2008)

1. **Right under everyone's nose** - better tagging (Imputation and sequencing)
2. **Out of sight** - Rare variants
3. **In the architecture** - CNVs
4. **Underground networks** - Systems Biology
5. **The great beyond** - Epigenetics
6. **Lost in diagnosis** - Phenotype Definition 

Statistical Challeneges and Opportunities 
========
- SNP genotype calling algorithms
- Imputation
- Single vs. multi SNP / trait analysis
- Sample heterogeneity and population stratification 
- Meta versus mega analysis 
- Family data

>- **Assesing statistical significance of findings**

- *et cetera*

Multiple Testing Correction Primer
=====

> **Theorum 1**: If $H_0$ is true, $P(|Z| < \phi(\alpha) = 1-\alpha)$
 - i.e. if "significant" $P$-value is $0.05$, given $H_0$, chance of correcting failing to reject the null is $0.95$
 
> **Theorum 2**: Given $A$ and $B$ are independent, $P(A \cup B) = P(A) \times P(B)$
 - i.e. probability of two events occuring together is the product of their individual probabilities (assuming independence)
 
Multiple Testing Correction Primer
=======
 
 Probability of *at least 1* false positive = $1-(1-\alpha)^M$ in $M$ independant tests at $\alpha$ rejection level
 
- For 3 tests, probability of at least one false positive 
 - $1-(1-0.05)^3 = 0.1426$
- For 10 tests $= 0.40$
- As $M \rightarrow \infty$, $P(FP>1) \rightarrow 1$

Correction Methods
=======

- As $M$ increases, expect more false positives under the null
- **Family Wise Error Rate** (Bonferroni)
 - Control for the probability of *even one* false positive $\leq \alpha$
 - $\alpha_{control} = 1-(1-\alpha)^{\frac{1}{M}} \sim \frac{\alpha}{M}$ 
- **False Disovery Rate**: $FDR = E[\frac{V}{R}]$
 - Allow some false positives ($V$) but control the proportion | $E[V/R] \leq \alpha$
 - **A comprimise**: no-adjustment (too liberal) $\leftrightarrow$ FWER (too stringent)
 
Stratefied FDR
=====
- Lei Sun, 2006
- "Priority Group"
- Lots of questions
 - Effect of genome-like complex correlation
![Gone fishing](pres-figure/fish.png)
 
Introducing coR-ge
=====

![coR-ge](pres-figure/corge_quickstart.png)

- Software for the Examination of Multiple Correction Methodologies in Accurate Genomic Environments
- Permutation testing of correction methodologies in different settings

Introducing coR-ge
=====

<img src="drawing.jpg" alt="Drawing" style="width: 200px;"/>
 
