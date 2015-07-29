
Randomly Selected Loci
========
  
  ```{r results = 'hide', message=FALSE, warning = FALSE, echo = FALSE}
install.packages("devtools", repos = "http://cran.utstat.utoronto.ca/")
library("devtools")
install_github("ropensci/plotly")
library(plotly)
set_credentials_file("ChrisCole", "n9llqfgs43")

n2 <- read.table("data/n.txt", h = T, sep = "\t")
n2$n <- as.character(n2$n)
#m <- qplot(S_TP, data = n2, group = n, geom = "histogram")
#m <- ggplot(data=n2, aes(x = S_TP, fill = n)) + geom_histogram()
#m2 <- m + geom_histogram(position="dodge", binwidth = 1)

m <- ggplot(n2, aes(x = S_TP, fill = n)) + geom_histogram(position="dodge", binwidth = 1) + scale_colour_discrete(name = "Legend", breaks = c("0","10", "50", "100", "500", "5000", "10000"))
```

```{r,echo = F, plotly=TRUE}

py <- plotly()
py$ggplotly(m, session = "knitr")

```

Comparitive Identification
=========
  
  ```{r results = 'hide', message=FALSE, warning = FALSE, echo = FALSE}
install.packages("devtools", repos = "http://cran.utstat.utoronto.ca/")
library("devtools")
install_github("ropensci/plotly")
library(plotly)

set_credentials_file("ChrisCole", "n9llqfgs43")

n2 <- read.table("data/n.txt", h = T, sep = "\t")
n2$n <- as.character(n2$n)
#m <- qplot(S_TP, data = n2, group = n, geom = "histogram")
#m <- ggplot(data=n2, aes(x = S_TP, fill = n)) + geom_histogram()
#m2 <- m + geom_histogram(position="dodge", binwidth = 1)

m <- ggplot(n2, aes(x = S_TP-A_TP, fill = n)) + geom_histogram(position="dodge", binwidth = 1) + scale_colour_discrete(name = "Legend", breaks = c("0","10", "50", "100", "500", "5000", "10000"))
```

```{r,echo = F, plotly=TRUE}

py <- plotly()
py$ggplotly(m, session = "knitr")

```

Comparitive Identification
=========
  
  ```{r results = 'hide', message=FALSE, warning = FALSE, echo = FALSE}
install.packages("devtools", repos = "http://cran.utstat.utoronto.ca/")
library("devtools")
install_github("ropensci/plotly")
library(plotly)
set_credentials_file("ChrisCole", "n9llqfgs43")

n2 <- read.table("data/n.txt", h = T, sep = "\t")
n2$n <- as.character(n2$n)
#m <- qplot(S_TP, data = n2, group = n, geom = "histogram")
#m <- ggplot(data=n2, aes(x = S_TP, fill = n)) + geom_histogram()
#m2 <- m + geom_histogram(position="dodge", binwidth = 1)

m <- ggplot(n2, aes(x = A_FP-S_FP, fill = n)) + geom_histogram(position="dodge", binwidth = 1) + scale_colour_discrete(name = "Legend", breaks = c("0","10", "50", "100", "500", "5000", "10000"))
```

```{r,echo = F, plotly=TRUE}

py <- plotly()
py$ggplotly(m, session = "knitr")

```


MAF
=========
  
  ```{r results = 'hide', message=FALSE, warning = FALSE, echo = FALSE}
install.packages("devtools", repos = "http://cran.utstat.utoronto.ca/")
library("devtools")
install_github("ropensci/plotly")
library(plotly)
set_credentials_file("Chris1221", "u5yrvg0trt")
library(dplyr)


r <- read.table("data/results_maf_new.txt", h = T)
r2 <- r[r$maf != 10,]
r2$n <- as.factor(r2$n)

r2 %>% group_by(maf, n) %>% summarise(sum = mean(S_TP-A_TP), sd = sd(S_TP-A_TP)) -> summary

p <- ggplot(summary, aes(x=as.factor(n), y=sum, fill = maf)) + geom_bar(position = "dodge", stat = "identity")

```
```{r,echo = F, plotly=TRUE}

#py <- plotly()
#py$ggplotly(p, session = "knitr")

```

https://plot.ly/~ChrisCole/40/average-difference-in-true-positives/
  
  
  Gene Model
=========
  
  ```{r results = 'hide', message=FALSE, warning = FALSE, echo = FALSE}
install.packages("devtools", repos = "http://cran.utstat.utoronto.ca/")
library("devtools")
install_github("ropensci/plotly")
library(plotly)
set_credentials_file("Chris1221", "u5yrvg0trt")
library(dplyr)


r <- read.table("data/results_ld_all.txt", h = T)
p <- ggplot(r, aes(x = factor(n_gene), y = strat_fp - agg_strat_fp)) + geom_boxplot()

```
```{r,echo = F, plotly=TRUE}

py <- plotly()
py$ggplotly(p, session = "knitr")

```

