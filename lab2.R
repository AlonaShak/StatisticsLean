x=5;y=4
c=15

if (x>y & c>5) {
  z1=x+y; 
  z2=x*y
  }
z1
z2
x=1
x=5;y=4

if (x<y) z=x+y else z=x-y
z

x=c(1,3,1,5,1,7,1,9)
y=c(2,3,4,5,2,7,1,8)
z=ifelse(x==y,1:10, (-5):(-13))
z

x=1:10
y=10:1
x[5]
y
w=vector('numeric',10)
w
j=c(4,5,8,9)
for (i in 1:10)
{
  if (x[i]<y[i]) w[i]=x[i]/y[i]
  else w[i]=x[i]*y[i]
  print(w[i])
}
w

x=-10
while(x<0) {z=x;x=x+1; print(x);print(z)}
z

t=-10
t
repeat{
  if (t>0) break
  f=t^2
  t=t+1}
f

x=numeric(5)
for (i in 1:5)
  x[i]=switch(i,cos(pi),exp(1),log2(4),log10(0.001),T)
x

i=1
a=switch(i,10,20,30,40,50)



x=1:10
y=10:20
norm = function(x,y) {
  sqrt(x%*%y)
}
a=c(1,15,8)
b=c(2,1,1)
norm(a,b)


x=c(1,2,3)
y=c(4,5,6)
z=c(7,8,9)
m=c(10,11,12)
fun= function (...) {
  data = list(...)
  n =length(data)
  maxs = numeric(n)
  mins = numeric(n)
  means<- numeric(n)
  for (i in 1:n) {
    maxs[i] = max(data[[i]])
    mins[i]<-min(data[[i]])
    means[i]<-mean(data[[i]])
    
  }
  print(maxs)
  print(mins)
  print(means)
  invisible(NULL)
}
fun(x,y,z,m)

(X=matrix(1:25,nrow=5))
sqrt(X)
apply(X,c(1,2),sqrt)
apply(X,1,sqrt)
apply(X,2,sqrt)

a=c("a","b","c","d")
b=c(1,2,3,4,4,3,2,1)
c=c(T,T,F)
X=list(a,b,c)

#Перевіримо, до якого класу належить створений об'єкт і 
#виведемо його елементи на екран.
class(X)
X
#Знайдемо за допомогою lapply() довжини елементів списку
lapply(X,length)
# і середні значення
lapply(X,mean)

a=c(5,6,1,9)


sort1= function (x) {
  n =length(x)
  for (i in 1:(n-1)) {
    for(j in (i+1):n)
    {
      #temp=x[i]>x[j]
      if (x[i]>x[j]){
        temp=x[i]
        x[i]=x[j]
        x[j]=temp
      }
    }
  }
  return (x)
}
 
y=rnorm(10,5,1)
y
sorty=sort1(y)
y
sorty




library(datasets)
data(airquality)
dim(airquality)
head(airquality,15)
tail(airquality,15)
airquality$Month
temp1=airquality[airquality$Month==6,]



airquality$Ozone
dim(airquality)
head(airquality,15)


data=airquality
serozon=numeric(length(mon))

mon=unique(data$Month)
monthnum=numeric(length(mon))
sertemp=numeric(length(mon))

j=1
for (i in mon) {
  
  X=data[data$Month ==i, ]
  
  sertemp[j]=mean(X$Temp,na.rm=TRUE)
  monthnum[j]=i
  j=j+1
}
tablemean=data.frame(monthnum,sertemp)
names(tablemean)<-c("Місяць","Середня температура")
