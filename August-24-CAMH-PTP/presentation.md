# Interactive Visualization with R
[Christopher B. Cole](https://github.com/Chris1221)  
Monday August 24th 2015 <br> Peers Teaching Peers Tutorial Series  

## Outline

1. Introduction to Interactive Visualization
2. Requirements
3. Steps to Successful Visualization
4. Examples
5. Live Demo


# 1. Intro to Interactive Visualization


## Interactive Visualization

- Explore high dimensional data
    - See trends in real time
- Better understand and manipulate data
    - Engage audiences and encourage participation
- Report, share, and publicize 
    - Reach a wider audience with easier interpretation of figures

## Why `R`?

- Turing complete language
    - Anything you could ever want to do
- Works with existing analysis pipelines
- Easy conversion from regular plots 
    - `ggplot2`, etc.
- Easy dissemination and publication

# 2. Requirements

## Software

- `R` + `RStudio`
    - IDE with integrated `html` viewer, output control, and so much more. 
- `Shiny` + `RPubs` + `GitHub`
    - Source control + Publication
- Markdown + RMarkdown + Pandocs + `Knitr`
    - Easy way to create a website with all the correct rendering 
- Packages
    - `ggvis`, `ggplot2`, `rCharts`, `htmlwidgets`, `plot.ly`, `googleVis`, etc...

## Concepts

- Three basic things
    - Web server 
    - Code 
    - Data
- Github repository

# 3. Steps to Successful Visualization

## Thought process

1. What is the message that you want to show?
2. How do you want to show it?
3. How can available tools help you?
4. How do I use these tools?
5. How do I share my research?

## Practical Thinking

1. Get your data in line
    - `tidyr`, `Excel`, etc.
2. Figure out how you want to display your data
    - What have similar publications used? 
    - How can you improve on this?
3. Code it
    - **BE REPRODUCIBLE**
    - Save your code on `Github` etc.
4. Share it
    - Learn how to show people your data
    - `Shiny` + `Rpubs` etc.

# Examples

## ggvis

- Updated `ggplot2` with interactive features
- Developed by Hadley Wickham
- Easy, simple syntax
- Almost universally usable 

## ggvis Example

<!--html_preserve--><iframe src="app4c3948f16fa32fa81327c83d0ce6d0f4/?w=&amp;__subapp__=1" width="720" height="502" class="shiny-frame"></iframe><!--/html_preserve-->

## ggvis Example


```r
library(ggvis)

mtcars %>%
  ggvis(~wt, ~mpg) %>%
  layer_smooths(span = input_slider(0.5, 1, value = 1)) %>%
  layer_points(size := input_slider(100, 1000, value = 100))
```

## R Tips and Tricks

- `dplyr::%>%`
    - Pipe operator, similar to *nux `|`
      - `cat file.txt | wc -l`
- Example
    - `"apple" %>% wash() %>% cut() %>% eat()`

~~~~~~~
    food <- "apple"
    washed <- wash(food)
    cut_up <- cut(washed)
    eaten <- eat(apple)
~~~~~~~

## plot.ly

- Startup from Montreal
- Simple online interface 
- API for more complex use
- Fast, easy, customizable. 
- Premium = Private
- Publication quality images even as static

## plot.ly

<iframe scrolling='no' seamless='seamless' style='border:none'
src='https://plot.ly/~MattSundquist/2509' width='800' height='500'></iframe>

## plot.ly

<iframe scrolling='no' seamless='seamless' style='border:none'
src='https://plot.ly/~ChrisCole/40/average-difference-in-true-positives-with-maf/' width='800' height='500'></iframe>

## plot.ly

`<iframe scrolling='no' seamless='seamless' style='border:none'`
`src='https://plot.ly/~MattSundquist/2509' width='800' height='500'></iframe>`

## Anything else really

<iframe scrolling='no' seamless='seamless' style='border:none'
src='https://shamiri.shinyapps.io/NRLdashboard/' width='800' height='500'></iframe>

## htmlwidgets

- Ramnath Vaidyanathan from McGill
- Port of D3.js (javascript)
- Suite of packages
- Still heavily under development
- Very easy to use

## htmlwidgets

<!--html_preserve--><div id="htmlwidget-9426" style="width:720px;height:432px;" class="dygraphs"></div>
<script type="application/json" data-for="htmlwidget-9426">{"x":{"attrs":{"title":"New Haven Temperatures","labels":["year","V1"],"legend":"auto","retainDateWindow":false,"axes":{"x":{"pixelsPerLabel":50}},"showRangeSelector":true,"dateWindow":["1920-01-01T00:00:00Z","1960-01-01T00:00:00Z"],"rangeSelectorHeight":40,"rangeSelectorPlotFillColor":" #A7B1C4","rangeSelectorPlotStrokeColor":"#808FAB","interactionModel":"Dygraph.Interaction.defaultModel"},"scale":"yearly","annotations":[],"shadings":[],"events":[],"data":[["1912-01-01T00:00:00Z","1913-01-01T00:00:00Z","1914-01-01T00:00:00Z","1915-01-01T00:00:00Z","1916-01-01T00:00:00Z","1917-01-01T00:00:00Z","1918-01-01T00:00:00Z","1919-01-01T00:00:00Z","1920-01-01T00:00:00Z","1921-01-01T00:00:00Z","1922-01-01T00:00:00Z","1923-01-01T00:00:00Z","1924-01-01T00:00:00Z","1925-01-01T00:00:00Z","1926-01-01T00:00:00Z","1927-01-01T00:00:00Z","1928-01-01T00:00:00Z","1929-01-01T00:00:00Z","1930-01-01T00:00:00Z","1931-01-01T00:00:00Z","1932-01-01T00:00:00Z","1933-01-01T00:00:00Z","1934-01-01T00:00:00Z","1935-01-01T00:00:00Z","1936-01-01T00:00:00Z","1937-01-01T00:00:00Z","1938-01-01T00:00:00Z","1939-01-01T00:00:00Z","1940-01-01T00:00:00Z","1941-01-01T00:00:00Z","1942-01-01T00:00:00Z","1943-01-01T00:00:00Z","1944-01-01T00:00:00Z","1945-01-01T00:00:00Z","1946-01-01T00:00:00Z","1947-01-01T00:00:00Z","1948-01-01T00:00:00Z","1949-01-01T00:00:00Z","1950-01-01T00:00:00Z","1951-01-01T00:00:00Z","1952-01-01T00:00:00Z","1953-01-01T00:00:00Z","1954-01-01T00:00:00Z","1955-01-01T00:00:00Z","1956-01-01T00:00:00Z","1957-01-01T00:00:00Z","1958-01-01T00:00:00Z","1959-01-01T00:00:00Z","1960-01-01T00:00:00Z","1961-01-01T00:00:00Z","1962-01-01T00:00:00Z","1963-01-01T00:00:00Z","1964-01-01T00:00:00Z","1965-01-01T00:00:00Z","1966-01-01T00:00:00Z","1967-01-01T00:00:00Z","1968-01-01T00:00:00Z","1969-01-01T00:00:00Z","1970-01-01T00:00:00Z","1971-01-01T00:00:00Z"],[49.9,52.3,49.4,51.1,49.4,47.9,49.8,50.9,49.3,51.9,50.8,49.6,49.3,50.6,48.4,50.7,50.9,50.6,51.5,52.8,51.8,51.1,49.8,50.2,50.4,51.6,51.8,50.9,48.8,51.7,51,50.6,51.7,51.5,52.1,51.3,51,54,51.4,52.7,53.1,54.6,52,52,50.9,52.6,50.2,52.6,51.6,51.9,50.5,50.9,51.7,51.4,51.7,50.8,51.9,51.8,51.9,53]]},"evals":["attrs.interactionModel"]}</script><!--/html_preserve-->

## htmlwidgets 2

<!--html_preserve--><div id="htmlwidget-4339" style="width:720px;height:432px;" class="forceNetwork"></div>
<script type="application/json" data-for="htmlwidget-4339">{"x":{"links":{"source":[1,2,3,3,4,5,6,7,8,9,11,11,11,11,12,13,14,15,17,18,18,19,19,19,20,20,20,20,21,21,21,21,21,22,22,22,22,22,22,23,23,23,23,23,23,23,23,23,24,24,25,25,25,26,26,26,26,27,27,27,27,27,28,28,29,29,29,30,31,31,31,31,32,33,33,34,34,35,35,35,36,36,36,36,37,37,37,37,37,38,38,38,38,38,38,39,40,41,41,42,42,42,43,43,43,44,44,45,47,48,48,48,48,49,49,50,50,51,51,51,52,52,53,54,54,54,55,55,55,55,55,55,55,55,55,55,56,56,57,57,57,58,58,58,58,58,59,59,59,59,60,60,60,61,61,61,61,61,61,62,62,62,62,62,62,62,62,63,63,63,63,63,63,63,63,64,64,64,64,64,64,64,64,64,64,65,65,65,65,65,65,65,65,65,65,66,66,66,66,66,66,66,66,66,67,68,68,68,68,68,68,69,69,69,69,69,69,69,70,70,70,70,70,70,70,70,71,71,71,71,71,71,71,71,72,72,72,73,74,74,75,75,75,75,75,75,75,76,76,76,76,76,76,76],"target":[0,0,0,2,0,0,0,0,0,0,10,3,2,0,11,11,11,11,16,16,17,16,17,18,16,17,18,19,16,17,18,19,20,16,17,18,19,20,21,16,17,18,19,20,21,22,12,11,23,11,24,23,11,24,11,16,25,11,23,25,24,26,11,27,23,27,11,23,30,11,23,27,11,11,27,11,29,11,34,29,34,35,11,29,34,35,36,11,29,34,35,36,37,11,29,25,25,24,25,41,25,24,11,26,27,28,11,28,46,47,25,27,11,26,11,49,24,49,26,11,51,39,51,51,49,26,51,49,39,54,26,11,16,25,41,48,49,55,55,41,48,55,48,27,57,11,58,55,48,57,48,58,59,48,58,60,59,57,55,55,58,59,48,57,41,61,60,59,48,62,57,58,61,60,55,55,62,48,63,58,61,60,59,57,11,63,64,48,62,58,61,60,59,57,55,64,58,59,62,65,48,63,61,60,57,25,11,24,27,48,41,25,68,11,24,27,48,41,25,69,68,11,24,27,41,58,27,69,68,70,11,48,41,25,26,27,11,48,48,73,69,68,25,48,41,70,71,64,65,66,63,62,48,58],"value":[1,8,10,6,1,1,1,1,2,1,1,3,3,5,1,1,1,1,4,4,4,4,4,4,3,3,3,4,3,3,3,3,5,3,3,3,3,4,4,3,3,3,3,4,4,4,2,9,2,7,13,1,12,4,31,1,1,17,5,5,1,1,8,1,1,1,2,1,2,3,2,1,1,2,1,3,2,3,3,2,2,2,2,1,2,2,2,2,1,2,2,2,2,2,1,1,1,2,3,2,2,1,3,1,1,3,1,2,1,2,1,1,1,3,2,1,1,9,2,2,1,1,1,2,1,1,6,12,1,1,21,19,1,2,5,4,1,1,1,1,1,7,7,6,1,4,15,5,6,2,1,4,2,2,6,2,5,1,1,9,17,13,7,2,1,6,3,5,5,6,2,4,3,2,1,5,12,5,4,10,6,2,9,1,1,5,7,3,5,5,5,2,5,1,2,3,3,1,2,2,1,1,1,1,3,5,1,1,1,1,1,6,6,1,1,2,1,1,4,4,4,1,1,1,1,1,1,2,2,2,1,1,1,1,2,1,1,2,2,3,3,3,3,1,1,1,1,1,1,1,1,1,1,1]},"nodes":{"name":["Myriel","Napoleon","Mlle.Baptistine","Mme.Magloire","CountessdeLo","Geborand","Champtercier","Cravatte","Count","OldMan","Labarre","Valjean","Marguerite","Mme.deR","Isabeau","Gervais","Tholomyes","Listolier","Fameuil","Blacheville","Favourite","Dahlia","Zephine","Fantine","Mme.Thenardier","Thenardier","Cosette","Javert","Fauchelevent","Bamatabois","Perpetue","Simplice","Scaufflaire","Woman1","Judge","Champmathieu","Brevet","Chenildieu","Cochepaille","Pontmercy","Boulatruelle","Eponine","Anzelma","Woman2","MotherInnocent","Gribier","Jondrette","Mme.Burgon","Gavroche","Gillenormand","Magnon","Mlle.Gillenormand","Mme.Pontmercy","Mlle.Vaubois","Lt.Gillenormand","Marius","BaronessT","Mabeuf","Enjolras","Combeferre","Prouvaire","Feuilly","Courfeyrac","Bahorel","Bossuet","Joly","Grantaire","MotherPlutarch","Gueulemer","Babet","Claquesous","Montparnasse","Toussaint","Child1","Child2","Brujon","Mme.Hucheloup"],"group":[1,1,1,1,1,1,1,1,1,1,2,2,3,2,2,2,3,3,3,3,3,3,3,3,4,4,5,4,0,2,3,2,2,2,2,2,2,2,2,4,6,4,4,5,0,0,7,7,8,5,5,5,5,5,5,8,5,8,8,8,8,8,8,8,8,8,8,9,4,4,4,4,5,10,10,4,8]},"options":{"NodeID":"name","Group":"group","colourScale":"d3.scale.category20()","fontSize":7,"fontFamily":"serif","clickTextSize":17.5,"linkDistance":50,"linkWidth":"function(d) { return Math.sqrt(d.value); }","charge":-120,"linkColour":"#666","opacity":0.4,"zoom":false,"legend":false,"nodesize":false,"radiusCalculation":" Math.sqrt(d.nodesize)+6","bounded":false,"opacityNoHover":0,"clickAction":null}},"evals":[]}</script><!--/html_preserve-->

## htmlwidgets 3

<!--html_preserve--><div id="htmlwidget-6396" style="width:100%;height:auto;" class="datatables"></div>
<script type="application/json" data-for="htmlwidget-6396">{"x":{"data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150"],[5.1,4.9,4.7,4.6,5,5.4,4.6,5,4.4,4.9,5.4,4.8,4.8,4.3,5.8,5.7,5.4,5.1,5.7,5.1,5.4,5.1,4.6,5.1,4.8,5,5,5.2,5.2,4.7,4.8,5.4,5.2,5.5,4.9,5,5.5,4.9,4.4,5.1,5,4.5,4.4,5,5.1,4.8,5.1,4.6,5.3,5,7,6.4,6.9,5.5,6.5,5.7,6.3,4.9,6.6,5.2,5,5.9,6,6.1,5.6,6.7,5.6,5.8,6.2,5.6,5.9,6.1,6.3,6.1,6.4,6.6,6.8,6.7,6,5.7,5.5,5.5,5.8,6,5.4,6,6.7,6.3,5.6,5.5,5.5,6.1,5.8,5,5.6,5.7,5.7,6.2,5.1,5.7,6.3,5.8,7.1,6.3,6.5,7.6,4.9,7.3,6.7,7.2,6.5,6.4,6.8,5.7,5.8,6.4,6.5,7.7,7.7,6,6.9,5.6,7.7,6.3,6.7,7.2,6.2,6.1,6.4,7.2,7.4,7.9,6.4,6.3,6.1,7.7,6.3,6.4,6,6.9,6.7,6.9,5.8,6.8,6.7,6.7,6.3,6.5,6.2,5.9],[3.5,3,3.2,3.1,3.6,3.9,3.4,3.4,2.9,3.1,3.7,3.4,3,3,4,4.4,3.9,3.5,3.8,3.8,3.4,3.7,3.6,3.3,3.4,3,3.4,3.5,3.4,3.2,3.1,3.4,4.1,4.2,3.1,3.2,3.5,3.6,3,3.4,3.5,2.3,3.2,3.5,3.8,3,3.8,3.2,3.7,3.3,3.2,3.2,3.1,2.3,2.8,2.8,3.3,2.4,2.9,2.7,2,3,2.2,2.9,2.9,3.1,3,2.7,2.2,2.5,3.2,2.8,2.5,2.8,2.9,3,2.8,3,2.9,2.6,2.4,2.4,2.7,2.7,3,3.4,3.1,2.3,3,2.5,2.6,3,2.6,2.3,2.7,3,2.9,2.9,2.5,2.8,3.3,2.7,3,2.9,3,3,2.5,2.9,2.5,3.6,3.2,2.7,3,2.5,2.8,3.2,3,3.8,2.6,2.2,3.2,2.8,2.8,2.7,3.3,3.2,2.8,3,2.8,3,2.8,3.8,2.8,2.8,2.6,3,3.4,3.1,3,3.1,3.1,3.1,2.7,3.2,3.3,3,2.5,3,3.4,3],[1.4,1.4,1.3,1.5,1.4,1.7,1.4,1.5,1.4,1.5,1.5,1.6,1.4,1.1,1.2,1.5,1.3,1.4,1.7,1.5,1.7,1.5,1,1.7,1.9,1.6,1.6,1.5,1.4,1.6,1.6,1.5,1.5,1.4,1.5,1.2,1.3,1.4,1.3,1.5,1.3,1.3,1.3,1.6,1.9,1.4,1.6,1.4,1.5,1.4,4.7,4.5,4.9,4,4.6,4.5,4.7,3.3,4.6,3.9,3.5,4.2,4,4.7,3.6,4.4,4.5,4.1,4.5,3.9,4.8,4,4.9,4.7,4.3,4.4,4.8,5,4.5,3.5,3.8,3.7,3.9,5.1,4.5,4.5,4.7,4.4,4.1,4,4.4,4.6,4,3.3,4.2,4.2,4.2,4.3,3,4.1,6,5.1,5.9,5.6,5.8,6.6,4.5,6.3,5.8,6.1,5.1,5.3,5.5,5,5.1,5.3,5.5,6.7,6.9,5,5.7,4.9,6.7,4.9,5.7,6,4.8,4.9,5.6,5.8,6.1,6.4,5.6,5.1,5.6,6.1,5.6,5.5,4.8,5.4,5.6,5.1,5.1,5.9,5.7,5.2,5,5.2,5.4,5.1],[0.2,0.2,0.2,0.2,0.2,0.4,0.3,0.2,0.2,0.1,0.2,0.2,0.1,0.1,0.2,0.4,0.4,0.3,0.3,0.3,0.2,0.4,0.2,0.5,0.2,0.2,0.4,0.2,0.2,0.2,0.2,0.4,0.1,0.2,0.2,0.2,0.2,0.1,0.2,0.2,0.3,0.3,0.2,0.6,0.4,0.3,0.2,0.2,0.2,0.2,1.4,1.5,1.5,1.3,1.5,1.3,1.6,1,1.3,1.4,1,1.5,1,1.4,1.3,1.4,1.5,1,1.5,1.1,1.8,1.3,1.5,1.2,1.3,1.4,1.4,1.7,1.5,1,1.1,1,1.2,1.6,1.5,1.6,1.5,1.3,1.3,1.3,1.2,1.4,1.2,1,1.3,1.2,1.3,1.3,1.1,1.3,2.5,1.9,2.1,1.8,2.2,2.1,1.7,1.8,1.8,2.5,2,1.9,2.1,2,2.4,2.3,1.8,2.2,2.3,1.5,2.3,2,2,1.8,2.1,1.8,1.8,1.8,2.1,1.6,1.9,2,2.2,1.5,1.4,2.3,2.4,1.8,1.8,2.1,2.4,2.3,1.9,2.3,2.5,2.3,1.9,2,2.3,1.8],["setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> </th>\n      <th>Sepal.Length</th>\n      <th>Sepal.Width</th>\n      <th>Petal.Length</th>\n      <th>Petal.Width</th>\n      <th>Species</th>\n    </tr>\n  </thead>\n</table>","options":{"pageLength":5,"columnDefs":[{"className":"dt-right","targets":[1,2,3,4]},{"orderable":false,"targets":0}],"order":[],"autoWidth":false,"orderClasses":false,"lengthMenu":[5,10,25,50,100]},"callback":null,"filter":"none","selection":"multiple"},"evals":[]}</script><!--/html_preserve-->

## googleVis

- `R` interface to Google Charts API
- Very easy to use
- Attractive
- Google Maps etc. 
- Not really compatible with Shiny

## googleVis






```r
plt <- mark_func(CityPopularity)
plot(plt)
```

<!-- ComboChart generated in R 3.2.2 by googleVis 0.5.9 package -->
<!-- Wed Nov 25 16:21:39 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataComboChartIDa5c3a54c708 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "New York",
450,
200 
],
[
 "Boston",
450,
300 
],
[
 "Miami",
450,
400 
],
[
 "Chicago",
450,
500 
],
[
 "Los Angeles",
450,
600 
],
[
 "Houston",
450,
700 
] 
];
data.addColumn('string','City');
data.addColumn('number','Mean');
data.addColumn('number','Popularity');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartComboChartIDa5c3a54c708() {
var data = gvisDataComboChartIDa5c3a54c708();
var options = {};
options["allowHtml"] = true;
options["seriesType"] = "bars";
options["width"] =    450;
options["height"] =    300;
options["title"] = "City Popularity";
options["series"] = {0: {type:"line"}};

    var chart = new google.visualization.ComboChart(
    document.getElementById('ComboChartIDa5c3a54c708')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartComboChartIDa5c3a54c708);
})();
function displayChartComboChartIDa5c3a54c708() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartComboChartIDa5c3a54c708"></script>
 
<!-- divChart -->
  
<div id="ComboChartIDa5c3a54c708" 
  style="width: 450; height: 300;">
</div>

# 5. Live demo...

# Conclusion

## Materials

- Slideshow
    - Code: `https://github.com/Chris1221/PTP_presentation_2015`
    - Rendered Slideshow: https://ccole.shinyapps.io/PTP_presentation
- Shiny Cheat Sheet: `http://shiny.rstudio.com/articles/cheatsheet.html`
- Markdown Cheat Sheet: `https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet`
- More Materials: `https://github.com/Chris1221/PTP_presentation_2015`
