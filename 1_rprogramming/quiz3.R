library(datasets)

data(iris)

tapply(iris$Sepal.Length, iris$Species, mean)['virginica']
sapply(split(iris$Sepal.Length, iris$Species), mean)['virginica']

apply(iris[,1:4], 2, mean)

data(mtcars)

tapply(mtcars$mpg, mtcars$cyl, mean)
sapply(split(mtcars$mpg, mtcars$cyl), mean)
#tapply(mtcars$cyl, mtcars$mpg, mean)
with(mtcars, tapply(mpg, cyl, mean))
#sapply(mtcars, cyl, mean)
#lapply(mtcars, mean)
#split(mtcars, mtcars$cyl)
#apply(mtcars, 2, mean)
#mean(mtcars$mpg, mtcars$cyl)

hppc <- tapply(mtcars$hp, mtcars$cyl, mean)
hppc
hppc['8'] - hppc['4']

