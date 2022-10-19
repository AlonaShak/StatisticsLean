##==Лабораторна робота №1. Основи роботи в системі R==
##https://cran.r-project.org/
##https://www.rstudio.com/products/rstudio/download/
#install.packages('dplyr', dependencies = TRUE)
#install.packages('ggplot2', dependencies = TRUE)
library
2+3
7*5/2
pi
sqrt(4)
2^3
x<-2
x
x=2
x
x=8
x
class(x)
y=as.integer(x)
class(y)
is.numeric(y)
is.integer(y)
z=x+y
class(z)
v1<-TRUE
class(v1)
v1<- -10.6
class(v1)
v1<-3L
class(v1)
v1<-3+2i
class(v1)
v1="stats"
class(v1)
## Типи R об'єктів
numeric_vector=c(1,10,49)
boolean_vector=c(TRUE,FALSE,TRUE)
character_vector=c("Monday","Tuesday")

x<-c(10,2,3,7,4)
y<-c(2,-1,3,2,6)
f=numeric(10)
# довжина вектора
length(x)
# додавання/віднімання
# додаються/віднімаються поелементно
x+y
x-y
# множення на скаляр
2*x
# застосування функції до кожного елемента
sqrt(x)
# сума елементів
sum
# добуток елементів
prod(x)
#максимальне і мінімальне значення вектора
max(x)
min(x)
# об'єданання векторів
z<-c(x,y)
#сортування елементів 
r=sort(z)
r=sort(z,dec=TRUE)
# інший спосіб задання вектора, вказуємо послідовність від 1 до 20
x=1:20
z3=seq(1,10,0.5)
class(x)
class(y)
# п'ятий елемент(відлік починається з одиниці)
x[5]
x[6:12]
# елементи 6, 10, 13
x[c(6, 10, 13)]
# елементи за винятком 6 та 13
x[-c(6, 13)]
# елементи, які більше 5
x[x > 5]
# елементи, які більше 5 і менші 15
x[x > 5 & x < 15]
# елементи, які менші 5 або більші 15
x[x < 5 | x > 15]
# пошук індексів за умовою
ind=which(x<5)
#пошук індекса максимального/мінімального елемента
ind=which.min(r)
x<-c(10,20,NA,4,NA,2)
sum(x)
sum(x,na.rm=TRUE)
#середнє арифметичне
mean(x)
#медіана
median(x)
#середньоквадратичне відхилення
sd(x)
#середнє геометричне
#install.packages("psych")          # встановити psych package
library("psych")                   # завантажити psych package в робочий простір
geometric.mean(X)   #або
exp(mean(log(X)))
#вектор, що характеризується нормальним розподілом
X=rnorm(100, mean = 50, sd = 10)
# мода
student=c("Дмитро","Аліна","Анатолій","Іван", "Дмитро")
uniqnames <- unique(student)
uniqnames[which.max(tabulate(match(student, uniqnames)))]

#матриця 
mat <- matrix(c(9,2,3,4,5,6),ncol=3)
mat
mat[2,]
mat[2,2]
mat2<- matrix(c(9,2,3,4,5,6),ncol=3,byrow=TRUE)
A=matrix(c(1,2,0,-1,1,2,3,0,1),ncol=3,byrow=TRUE)
A_1=solve(A)
E=A%*%A_1

#List
a <- list(p_name="Joe", 4, foo=c(3,8,9))
print(a)
a[[3]]
a$p_name

#Factor
mons <- c("March","April","January","November","January","September","October","September","November","August", "January","November","November","February","May","August","July","December","August","August","September", "November","February","April")
class(mons)
mons<-factor(mons,levels=c("January","February","March","April","May","June","July","August","September", "October","November","December"),ordered = TRUE)
class(mons)
mons[1]
mons[1]<mons[2]
mons[5]
#Data frame
cause <- c('pilot error', 'mechanical', 'weather', 'sabotage', 'other')
amount <- c(640, 195, 63, 95, 111)
plane_crash <- data.frame(cause, amount)
head(airquality)
# кількість стовпців
ncol(plane_crash)
# кількість рядків
nrow(plane_crash)
# назви стовпців
colnames(plane_crash)
# назви рядків
rownames(plane_crash)
# вcі дані для cause= 'mechanical'
test1 <- plane_crash[plane_crash$cause == 'mechanical', ]

