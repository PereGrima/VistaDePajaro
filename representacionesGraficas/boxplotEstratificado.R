data_mundial <- read.csv("https://bitsandbricks.github.io/data/gapminder.csv")
x = subset(data_mundial, anio==2007)
boxplot(expVida ~ continente, x)