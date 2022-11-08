# EDA with iris
## load data
data(iris)
iris
dim(iris)
nrow(iris)
ncol(iris)
names(iris)
colnames(iris)
rownames(iris)
iris[1:5,]
iris[, 2:4]
iris[1:5, "Sepal.Length"]
iris$Sepal.Length[1:5]
iris[1:5, 1]

subset(x = iris, subset = Sepal.Length > 5 & Sepal.Width > 4)
iris[which(iris$Sepal.Length > 5 & iris$Sepal.Width > 4), ]

install.packages("sqldf")
library(sqldf)
sqldf("select * from iris where Sepal.Length > 5 and Sepal.Width > 4;")

iris_sample = iris[sample(nrow(iris), nrow(iris) * 0.9), ]
iris_sample
nrow(iris_sample)
dim(iris_sample)

summary(iris)
table(iris$Species)

# visualization

pie(table(iris$Species))
hist(iris$Sepal.Length)
plot(density(iris$Sepal.Length))
plot(iris$Sepal.Length, iris$Sepal.Width)
pairs(iris[, 1:4])

library(MASS)
parcoord(iris[, 1:4], col = iris$Species)


Group15_Sample = iris[sample(nrow(iris), nrow(iris) * 0.9), ]
table(Group15_Sample$Species)
pie(table(Group15_Sample$Species))
seq(3,10,l=10)
hist(Group15_Sample$Sepal.Length, breaks = seq(3,10,l=10))

levels(Group15_Sample$Species)

par(mfrow = c(2,2))
hist(iris$Sepal.Length, labels = T, ylim = c(0,36))
hist(iris$Sepal.Width, labels = T, ylim = c(0,36))
hist(iris$Petal.Length, labels = T, ylim = c(0,36))
hist(iris$Petal.Length, labels = T, ylim = c(0,36))

par(mfrow = c(2,2))
plot(density(iris$Sepal.Length))
plot(density(iris$Sepal.Width))
plot(density(iris$Petal.Length))
plot(density(iris$Petal.Length))

library(ggplot2)

qplot(Sepal.Length, Sepal.Width, data = Group15_Sample, facets = Species ~ .)
qplot(Petal.Length, Petal.Width, data = Group15_Sample, facets = Species ~ .)

qplot(Sepal.Length, Petal.Length, data = Group15_Sample, facets = Species ~ .)
qplot(Sepal.Width, Petal.Width, data = Group15_Sample, facets = Species ~ .)


sample(11,11)
