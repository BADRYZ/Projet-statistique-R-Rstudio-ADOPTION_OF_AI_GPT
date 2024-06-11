#Etape1: Definition de la Problematique
#Etape2: collecte des données
library(readxl)
M <- read_excel("form.xlsx")
View(M)
colnames(M)<-c("email","genre","age","filiere","itemA1","itemA2","itemA3","itemA4","itemA5","itemI1","itemI2","itemI3","itemI4","itemUT1","itemUT2","itemUT3","itemUT4","itemU1","itemU2","itemU3","itemU4","itemf1","itemf2","itemf3","itemf4")
#Etape3:pre-traitement
#3.1 Conversion et codification des variables
typeof(M$age)
M$age <- as.integer(M$age)


if(is.character(M$genre))
{
  for(i in 1:length(M$genre))
  {
    if(M$genre[i]=="Homme"){
      M$genre[i]="1"
    }else{
      M$genre[i]="2"
    }
  }
  M$genre<-as.integer(M$genre)
}
if(is.character(M$filiere))
{
  for(i in 1:length(M$filiere))
  {
    if(M$filiere[i]=="Genie Informatique"){
      M$filiere[i]="1"
    }
    else if(M$filiere[i]=="Genie industrielle"){
      M$filiere[i]="2"
    }
    else if(M$filiere[i]=="Genie electrique"){
      M$filiere[i]="3"
    }
    else if(M$filiere[i]=="Genie civil"){
      M$filiere[i]="4"
    }
    else if(M$filiere[i]=="Genie Mecatronique"){
      M$filiere[i]="5"
    }
    else{
      M$filiere[i]="6"
    }
  }
  M$filiere<-as.integer(M$filiere)
}

if(is.character(M$itemA1))
{
  for(i in 1:length(M$itemA1))
  {
    if(M$itemA1[i]=="Pas du tout d'accord"){
      M$itemA1[i]="1"
    }
    if(M$itemA1[i]=="Pas D'accord"){
      M$itemA1[i]="2"
    }
    if(M$itemA1[i]=="Neutre"){
      M$itemA1[i]="3"
    }
    if(M$itemA1[i]=="D'accord"){
      M$itemA1[i]="4"
    }
    if(M$itemA1[i]=="Tout à fait d'accord"){
      M$itemA1[i]="5"
    } 
  }
  M$itemA1<-as.integer(M$itemA1) }

if(is.character(M$itemA2))
{
  for(i in 1:length(M$itemA2))
  {
    if(M$itemA2[i]=="Pas du tout d'accord"){
      M$itemA2[i]="1"
    }
    if(M$itemA2[i]=="Pas D'accord"){
      M$itemA2[i]="2"
    }
    if(M$itemA2[i]=="Neutre"){
      M$itemA2[i]="3"
    }
    if(M$itemA2[i]=="D'accord"){
      M$itemA2[i]="4"
    }
    if(M$itemA2[i]=="Tout à fait d'accord"){
      M$itemA2[i]="5"
    } 
  }
  M$itemA2<-as.integer(M$itemA2) }

if(is.character(M$itemA3))
{
  for(i in 1:length(M$itemA3))
  {
    if(M$itemA3[i]=="Pas du tout d'accord"){
      M$itemA3[i]="1"
    }
    if(M$itemA3[i]=="Pas D'accord"){
      M$itemA3[i]="2"
    }
    if(M$itemA3[i]=="Neutre"){
      M$itemA3[i]="3"
    }
    if(M$itemA3[i]=="D'accord"){
      M$itemA3[i]="4"
    }
    if(M$itemA3[i]=="Tout à fait d'accord"){
      M$itemA3[i]="5"
    } 
  }
  M$itemA3<-as.integer(M$itemA3) }

if(is.character(M$itemA4))
{
  for(i in 1:length(M$itemA4))
  {
    if(M$itemA4[i]=="Pas du tout d'accord"){
      M$itemA4[i]="1"
    }
    if(M$itemA4[i]=="Pas D'accord"){
      M$itemA4[i]="2"
    }
    if(M$itemA4[i]=="Neutre"){
      M$itemA4[i]="3"
    }
    if(M$itemA4[i]=="D'accord"){
      M$itemA4[i]="4"
    }
    if(M$itemA4[i]=="Tout à fait d'accord"){
      M$itemA4[i]="5"
    } 
  }
  M$itemA4<-as.integer(M$itemA4) }

if(is.character(M$itemA5))
{
  for(i in 1:length(M$itemA5))
  {
    if(M$itemA5[i]=="Pas du tout d'accord"){
      M$itemA5[i]="1"
    }
    if(M$itemA5[i]=="Pas D'accord"){
      M$itemA5[i]="2"
    }
    if(M$itemA5[i]=="Neutre"){
      M$itemA5[i]="3"
    }
    if(M$itemA5[i]=="D'accord"){
      M$itemA5[i]="4"
    }
    if(M$itemA5[i]=="Tout à fait d'accord"){
      M$itemA5[i]="5"
    } 
  }
  M$itemA5<-as.integer(M$itemA5) }

if(is.character(M$itemI1))
{
  for(i in 1:length(M$itemI1))
  {
    if(M$itemI1[i]=="Pas du tout d'accord"){
      M$itemI1[i]="1"
    }
    if(M$itemI1[i]=="Pas D'accord"){
      M$itemI1[i]="2"
    }
    if(M$itemI1[i]=="Neutre"){
      M$itemI1[i]="3"
    }
    if(M$itemI1[i]=="D'accord"){
      M$itemI1[i]="4"
    }
    if(M$itemI1[i]=="Tout à fait d'accord"){
      M$itemI1[i]="5"
    } 
  }
  M$itemI1<-as.integer(M$itemI1) }

if(is.character(M$itemI2))
{
  for(i in 1:length(M$itemI2))
  {
    if(M$itemI2[i]=="Pas du tout d'accord"){
      M$itemI2[i]="1"
    }
    if(M$itemI2[i]=="Pas d'accord"){
      M$itemI2[i]="2"
    }
    if(M$itemI2[i]=="Neutre"){
      M$itemI2[i]="3"
    }
    if(M$itemI2[i]=="D'accord"){
      M$itemI2[i]="4"
    }
    if(M$itemI2[i]=="Tout à fait d'accord"){
      M$itemI2[i]="5"
    } 
  }
  M$itemI2<-as.integer(M$itemI2) }


if(is.character(M$itemI3))
{
  for(i in 1:length(M$itemI3))
  {
    if(M$itemI3[i]=="Pas du tout d'accord"){
      M$itemI3[i]="1"
    }
    if(M$itemI3[i]=="Pas D'accord"){
      M$itemI3[i]="2"
    }
    if(M$itemI3[i]=="Neutre"){
      M$itemI3[i]="3"
    }
    if(M$itemI3[i]=="D'accord"){
      M$itemI3[i]="4"
    }
    if(M$itemI3[i]=="Tout à fait d'accord"){
      M$itemI3[i]="5"
    } 
  }
  M$itemI3<-as.integer(M$itemI3) }

if(is.character(M$itemI4))
{
  for(i in 1:length(M$itemI4))
  {
    if(M$itemI4[i]=="Pas du tout d'accord"){
      M$itemI4[i]="1"
    }
    if(M$itemI4[i]=="Pas d'accord"){
      M$itemI4[i]="2"
    }
    if(M$itemI4[i]=="Neutre"){
      M$itemI4[i]="3"
    }
    if(M$itemI4[i]=="D'accord"){
      M$itemI4[i]="4"
    }
    if(M$itemI4[i]=="Tout à fait d'accord"){
      M$itemI4[i]="5"
    } 
  }
  M$itemI4<-as.integer(M$itemI4) }



if(is.character(M$itemUT1))
{
  for(i in 1:length(M$itemUT1))
  {
    if(M$itemUT1[i]=="Pas du tout d'accord"){
      M$itemUT1[i]="1"
    }
    if(M$itemUT1[i]=="Pas D'accord"){
      M$itemUT1[i]="2"
    }
    if(M$itemUT1[i]=="Neutre"){
      M$itemUT1[i]="3"
    }
    if(M$itemUT1[i]=="D'accord"){
      M$itemUT1[i]="4"
    }
    if(M$itemUT1[i]=="Tout à fait d'accord"){
      M$itemUT1[i]="5"
    } 
  }
  M$itemUT1<-as.integer(M$itemUT1) }

if(is.character(M$itemUT2))
{
  for(i in 1:length(M$itemUT2))
  {
    if(M$itemUT2[i]=="Pas du tout d'accord"){
      M$itemUT2[i]="1"
    }
    if(M$itemUT2[i]=="Pas D'accord"){
      M$itemUT2[i]="2"
    }
    if(M$itemUT2[i]=="Neutre"){
      M$itemUT2[i]="3"
    }
    if(M$itemUT2[i]=="D'accord"){
      M$itemUT2[i]="4"
    }
    if(M$itemUT2[i]=="Tout à fait d'accord"){
      M$itemUT2[i]="5"
    } 
  }
  M$itemUT2<-as.integer(M$itemUT2) }
#####
if(is.character(M$itemUT3))
{
  for(i in 1:length(M$itemUT3))
  {
    if(M$itemUT3[i]=="Pas du tout d'accord"){
      M$itemUT3[i]="1"
    }
    if(M$itemUT3[i]=="Pas D'accord"){
      M$itemUT3[i]="2"
    }
    if(M$itemUT3[i]=="Neutre"){
      M$itemUT3[i]="3"
    }
    if(M$itemUT3[i]=="D'accord"){
      M$itemUT3[i]="4"
    }
    if(M$itemUT3[i]=="Tout à fait d'accord"){
      M$itemUT3[i]="5"
    } 
  }
  M$itemUT3<-as.integer(M$itemUT3) }
######
if(is.character(M$itemUT4))
{
  for(i in 1:length(M$itemUT4))
  {
    if(M$itemUT4[i]=="Pas du tout d'accord"){
      M$itemUT4[i]="1"
    }
    if(M$itemUT4[i]=="Pas D'accord"){
      M$itemUT4[i]="2"
    }
    if(M$itemUT4[i]=="Neutre"){
      M$itemUT4[i]="3"
    }
    if(M$itemUT4[i]=="D'accord"){
      M$itemUT4[i]="4"
    }
    if(M$itemUT4[i]=="Tout à fait d'accord"){
      M$itemUT4[i]="5"
    } 
  }
  M$itemUT4<-as.integer(M$itemUT4) }
######
if(is.character(M$itemU1))
{
  for(i in 1:length(M$itemU1))
  {
    if(M$itemU1[i]=="Pas du tout d'accord"){
      M$itemU1[i]="1"
    }
    if(M$itemU1[i]=="Pas D'accord"){
      M$itemU1[i]="2"
    }
    if(M$itemU1[i]=="Neutre"){
      M$itemU1[i]="3"
    }
    if(M$itemU1[i]=="D'accord"){
      M$itemU1[i]="4"
    }
    if(M$itemU1[i]=="Tout à fait d'accord"){
      M$itemU1[i]="5"
    } 
  }
  M$itemU1<-as.integer(M$itemU1) }
######
if(is.character(M$itemU2))
{
  for(i in 1:length(M$itemU2))
  {
    if(M$itemU2[i]=="Pas du tout d'accord"){
      M$itemU2[i]="1"
    }
    if(M$itemU2[i]=="Pas D'accord"){
      M$itemU2[i]="2"
    }
    if(M$itemU2[i]=="Neutre"){
      M$itemU2[i]="3"
    }
    if(M$itemU2[i]=="D'accord"){
      M$itemU2[i]="4"
    }
    if(M$itemU2[i]=="Tout à fait d'accord"){
      M$itemU2[i]="5"
    } 
  }
  M$itemU2<-as.integer(M$itemU2) }
######
if(is.character(M$itemU3))
{
  for(i in 1:length(M$itemU3))
  {
    if(M$itemU3[i]=="Pas du tout d'accord"){
      M$itemU3[i]="1"
    }
    if(M$itemU3[i]=="Pas D'accord"){
      M$itemU3[i]="2"
    }
    if(M$itemU3[i]=="Neutre"){
      M$itemU3[i]="3"
    }
    if(M$itemU3[i]=="D'accord"){
      M$itemU3[i]="4"
    }
    if(M$itemU3[i]=="Tout à fait d'accord"){
      M$itemU3[i]="5"
    } 
  }
  M$itemU3<-as.integer(M$itemU3) }
######
if(is.character(M$itemU4))
{
  for(i in 1:length(M$itemU4))
  {
    if(M$itemU4[i]=="Pas du tout d'accord"){
      M$itemU4[i]="1"
    }
    if(M$itemU4[i]=="Pas D'accord"){
      M$itemU4[i]="2"
    }
    if(M$itemU4[i]=="Neutre"){
      M$itemU4[i]="3"
    }
    if(M$itemU4[i]=="D'accord"){
      M$itemU4[i]="4"
    }
    if(M$itemU4[i]=="Tout à fait d'accord"){
      M$itemU4[i]="5"
    } 
  }
  M$itemU4<-as.integer(M$itemU4) }
######
if(is.character(M$itemf1))
{
  for(i in 1:length(M$itemf1))
  {
    if(M$itemf1[i]=="Pas du tout d'accord"){
      M$itemf1[i]="1"
    }
    if(M$itemf1[i]=="Pas D'accord"){
      M$itemf1[i]="2"
    }
    if(M$itemf1[i]=="Neutre"){
      M$itemf1[i]="3"
    }
    if(M$itemf1[i]=="D'accord"){
      M$itemf1[i]="4"
    }
    if(M$itemf1[i]=="Tout à fait d'accord"){
      M$itemf1[i]="5"
    } 
  }
  M$itemf1<-as.integer(M$itemf1) }

######
if(is.character(M$itemf2))
{
  for(i in 1:length(M$itemf2))
  {
    if(M$itemf2[i]=="Pas du tout d'accord"){
      M$itemf2[i]="1"
    }
    if(M$itemf2[i]=="Pas D'accord"){
      M$itemf2[i]="2"
    }
    if(M$itemf2[i]=="Neutre"){
      M$itemf2[i]="3"
    }
    if(M$itemf2[i]=="D'accord"){
      M$itemf2[i]="4"
    }
    if(M$itemf2[i]=="Tout à fait d'accord"){
      M$itemf2[i]="5"
    } 
  }
  M$itemf2<-as.integer(M$itemf2) }
######
if(is.character(M$itemf3))
{
  for(i in 1:length(M$itemf3))
  {
    if(M$itemf3[i]=="Pas du tout d'accord"){
      M$itemf3[i]="1"
    }
    if(M$itemf3[i]=="Pas D'accord"){
      M$itemf3[i]="2"
    }
    if(M$itemf3[i]=="Neutre"){
      M$itemf3[i]="3"
    }
    if(M$itemf3[i]=="D'accord"){
      M$itemf3[i]="4"
    }
    if(M$itemf3[i]=="Tout à fait d'accord"){
      M$itemf3[i]="5"
    } 
  }
  M$itemf3<-as.integer(M$itemf3) }
######
if(is.character(M$itemf4))
{
  for(i in 1:length(M$itemf4))
  {
    if(M$itemf4[i]=="Pas du tout d'accord"){
      M$itemf4[i]="1"
    }
    if(M$itemf4[i]=="Pas D'accord"){
      M$itemf4[i]="2"
    }
    if(M$itemf4[i]=="Neutre"){
      M$itemf4[i]="3"
    }
    if(M$itemf4[i]=="D'accord"){
      M$itemf4[i]="4"
    }
    if(M$itemf4[i]=="Tout à fait d'accord"){
      M$itemf4[i]="5"
    } 
  }
  M$itemf4<-as.integer(M$itemf4) }
#3.2: traitement des valeurs aberrantes et les valeurs manquantes
#3.2.1: traitement des valeurs aberrantes

#### AGE ####
boxplot(M$age)
summary(M$age)


#### genre ####
boxplot(M$genre)

#### filiere ####
boxplot(M$filiere)

##### itemA1 ####
boxplot(M$itemA1)
boxplot.stats(M$itemA1)
boxplot.stats(M$itemA1)$out
summary(M$itemA1)
####itemA2 ####
boxplot(M$itemA2)
boxplot.stats(M$itemA2)
boxplot.stats(M$itemA2)$out
summary(M$itemA2)


#### itemA3##
boxplot(M$itemA3)
summary(M$itemA3)
### pas de valeur abberantes


#### itemA4 ###"
boxplot(M$itemA4)
boxplot.stats(M$itemA4)
boxplot.stats(M$itemA4)$out
summary(M$itemA4)

#### itemA5 ####
boxplot(M$itemA5)
boxplot.stats(M$itemA5)
boxplot.stats(M$itemA5)$out
summary(M$itemA5)

#### itemI1 ####
boxplot(M$itemI1)
boxplot.stats(M$itemI1)
boxplot.stats(M$itemI1)$out
summary(M$itemI1)

####    itemI2 #######
boxplot(M$itemI2)
boxplot.stats(M$itemI2)
boxplot.stats(M$itemI2)$out
summary(M$itemI2)

###     itemI3   ####
boxplot(M$itemI3)
boxplot.stats(M$itemI3)
boxplot.stats(M$itemI3)$out
summary(M$itemI3)

######    itemI4  ####
boxplot(M$itemI4)
boxplot.stats(M$itemI4)
boxplot.stats(M$itemI4)$out
summary(M$itemI4)


####   itemUT1  ###
boxplot(M$itemUT1)
boxplot.stats(M$itemUT1)
boxplot.stats(M$itemUT1)$out
summary(M$itemUT1)

####  itemUT2 ####
boxplot(M$itemUT2) 
summary(M$itemUT2)
#pas de valeur abberantes 


####  itemUT3 #####
boxplot(M$itemUT3)
boxplot(M$itemUT3)
boxplot.stats(M$itemUT3)
boxplot.stats(M$itemUT3)$out
summary(M$itemUT3)



####  itemUT4 #####
boxplot(M$itemUT4)
boxplot.stats(M$itemUT4)
boxplot.stats(M$itemUT4)$out
summary(M$itemUT4)

######  itemU1 ####
boxplot(M$itemU1)
boxplot.stats(M$itemU1)
boxplot.stats(M$itemU1)$out
summary(M$itemU1)


######  itemU2 ####
boxplot(M$itemU2)
boxplot.stats(M$itemU2)
boxplot.stats(M$itemU2)$out
summary(M$itemU2)



######  itemU3 ####
boxplot(M$itemU3)
boxplot.stats(M$itemU3)
boxplot.stats(M$itemU3)$out
summary(M$itemU3)



######  itemU4 ####
boxplot(M$itemU4)
boxplot.stats(M$itemU4)
boxplot.stats(M$itemU4)$out
summary(M$itemU4)



######  itemf1 ####
boxplot(M$itemf1)
boxplot.stats(M$itemf1)
boxplot.stats(M$itemf1)$out
summary(M$itemf1)

######  itemf2 ####
boxplot(M$itemf2)
summary(M$itemf2)
#pas de valeurs abberantes

######  itemf3 ####
boxplot(M$itemf3)
boxplot.stats(M$itemf3)
boxplot.stats(M$itemf3)$out
summary(M$itemf3)


######  itemf4 ####
boxplot(M$itemf4)
summary(M$itemf4)
#pas de valeurs abberanates

#3.2.1 Traitement valeurs manquantes
#pour traite les V M on a 3 actions :
#plus safe est remplace (favorise)
#si c est pas possible on supprime ou on estime (si la proportion des valeur manqu est importante(>5%) 
#on va estime si non  on supprime (si apres suppresion on reste superieur a 30) si non estime )
#nbr valeur manqunte

###### AGE ######
j <- 0
for (i in 1:length(M$age)) {
  if (M$age[i] %in% boxplot.stats(M$age)$out) {
    j <- j + 1
  }
}
j
pna <- j / length(M$age)
pna
##pna >5% (15.71%) donc on estime par mean #####
for (i in (1:length(M$age)))
{
  
  if (M$age[i] %in% boxplot.stats(M$age)$out)
    M$age[i]=as.integer(mean(M$age,na.rm = TRUE)) 
}

boxplot(M$age)
summary(M$age)


#### itemA1 ####
for (i in 1:length(M$itemA1)) {
  if (M$itemA1[i] %in% boxplot.stats(M$itemA1)$out){M$itemA1[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemA1)) {
  if (is.na(M$itemA1[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemA1)
pna
#pna <5% (1.42%) donc on supprime(apres suppresion on reste sup a 30 )#####
for (i in 1:length(M$itemA1)) {
  if (is.na(M$itemA1[i])) {
    na.omit(M$itemA1[i])###pour supprimer
  }
}
boxplot(M$itemA1)
summary(M$itemA1)



####   itemmmA 2 ######
for (i in 1:length(M$itemA2)) {
  if (M$itemA2[i] %in% boxplot.stats(M$itemA2)$out){M$itemA2[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemA2)) {
  if (is.na(M$itemA2[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemA2)
pna
####pna <5% (2.85%) donc on supprime(apres suppresion on reste sup a 30 )#####supprime
for (i in 1:length(M$itemA2)) {
  if (is.na(M$itemA2[i])) {
    na.omit(M$itemA2[i])###pour supprimer
  }
}
boxplot(M$itemA2)
summary(M$itemA2)




###     itemA 4 ####
for (i in 1:length(M$itemA4)) {
  if (M$itemA4[i] %in% boxplot.stats(M$itemA4)$out){M$itemA4[i] <- NA}
}

j <- 0
for (i in 1:length(M$itemA4)) {
  if (is.na(M$itemA4[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemA4)
pna
##pna <5% (1.42%) donc on supprime(apres suppresion on reste sup a 30 ).Donc supprime
for (i in 1:length(M$itemA4)) {
  if (is.na(M$itemA4[i])) {
    na.omit(M$itemA4[i])
  }
}
boxplot(M$itemA4)
summary(M$itemA4)


##### itemA 5 ###
for (i in 1:length(M$itemA5)) {
  if (M$itemA5[i] %in% boxplot.stats(M$itemA5)$out){M$itemA5[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemA5)) {
  if (is.na(M$itemA5[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemA5)
pna
##pna <5% (1.42%) donc on supprime(apres suppresion on reste sup a 30 ).Donc supprime
for (i in 1:length(M$itemA5)) {
  if (is.na(M$itemA5[i])) {
    na.omit(M$itemA5[i])
  }
}
boxplot(M$itemA5)
summary(M$itemA5)


#####            itemI1             #####
for (i in 1:length(M$itemI1)) {
  if (M$itemI1[i] %in% boxplot.stats(M$itemI1)$out){M$itemI1[i] <- NA}
}

j <- 0
for (i in 1:length(M$itemI1)) {
  if (is.na(M$itemI1[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemI1)
pna
##pna <5% (1.42%) donc on supprime(apres suppresion on reste sup a 30 ).Donc supprime
for (i in 1:length(M$itemI1)) {
  if (is.na(M$itemI1[i])) {
    na.omit(M$itemI1[i])
  }
}
boxplot(M$itemI1)
summary(M$itemI1)




####      itemI2  ######
for (i in 1:length(M$itemI2)) {
  if (M$itemI2[i] %in% boxplot.stats(M$itemI2)$out){M$itemI2[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemI2)) {
  if (is.na(M$itemI2[i])) {
    j <- j + 1
  }
}
pna <- j / length(M$itemI2)
pna
###pna >5% (11.42%) 
#ON estime par mean 
mean(M$itemI2 , na.rm = TRUE)#moyenne car on NA n a pas une valeur oN part sur help et on tape mean (na.rm = TRUE c est remove na)
#convertion 
as.integer(mean(M$itemI2 , na.rm = TRUE))#on trouve 4
#on place valeur manquante par mean 
for(i in 1:length(M$itemI2)){
  if(is.na(M$itemI2[i]))
    M$itemI2[i]= as.integer(mean(M$itemI2 , na.rm = TRUE))
}
boxplot(M$itemI2)
summary(M$itemI2)



####    itemI3 #####
for (i in 1:length(M$itemI3)) {
  if (M$itemI3[i] %in% boxplot.stats(M$itemI3)$out){M$itemI3[i] <- NA}
}  
j <- 0
for (i in 1:length(M$itemI3)) {
  if (is.na(M$itemI3[i])) {
    j <- j + 1
  }
}
pna <- j / length(M$itemI3)
pna
###pna >5% (5.71%) 
#ON estime par mean 
mean(M$itemI3 , na.rm = TRUE)#moyenne car on NA n a pas une valeur oN part sur help et on tape mean (na.rm = TRUE c est remove na)
#convertion 
as.integer(mean(M$itemI3 , na.rm = TRUE))#on trouve 4
#on place valeur manquante par mean 
for(i in 1:length(M$itemI3)){
  if(is.na(M$itemI3[i]))
    M$itemI3[i]= as.integer(mean(M$itemI3 , na.rm = TRUE))
}
boxplot(M$itemI3)
summary(M$itemI3)



###########         itemI4       ########
for (i in 1:length(M$itemI4)) {
  if (M$itemI4[i] %in% boxplot.stats(M$itemI4)$out){M$itemI4[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemI4)) {
  if (is.na(M$itemI4[i])) {
    j <- j + 1
  }
}
pna <- j / length(M$itemI4)
pna
#pna<5%(2.85%) ON supprime
for (i in 1:length(M$itemI4)) {
  if (is.na(M$itemI4[i])) {
    na.omit(M$itemI4[i])
  }
}
boxplot(M$itemI4)
summary(M$itemI4)

#####   itemUT1   #####
for (i in 1:length(M$itemUT1)) {
  if (M$itemUT1[i] %in% boxplot.stats(M$itemUT1)$out){M$itemUT1[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemUT1)) {
  if (is.na(M$itemUT1[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemUT1)
pna
#pna > 5%(5.71%)
#ON estime par mean 
mean(M$itemUT1 , na.rm = TRUE)#moyenne car on NA n a pas une valeur oN part sur help et on tape mean (na.rm = TRUE c est remove na)
#convertion 
as.integer(mean(M$itemUT1 , na.rm = TRUE))#on trouve 4
#on place valeur manquante par mean 
for(i in 1:length(M$itemUT1)){
  if(is.na(M$itemUT1[i]))
    M$itemUT1[i]= as.integer(mean(M$itemUT1 , na.rm = TRUE))
}
boxplot(M$itemUT1)
summary(M$itemUT1)



##### itemUT3   ######
for (i in 1:length(M$itemUT3)) {
  if (M$itemUT3[i] %in% boxplot.stats(M$itemUT3)$out){M$itemUT3[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemUT3)) {
  if (is.na(M$itemUT3[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemUT3)
pna
#pna > 5%(7.14%)
#ON estime par mean 
mean(M$itemUT3 , na.rm = TRUE)
#convertion 
as.integer(mean(M$itemUT3 , na.rm = TRUE))#on trouve 4
#on place valeur manquante par mean 
for(i in 1:length(M$itemUT3)){
  if(is.na(M$itemUT3[i]))
    M$itemUT3[i]= as.integer(mean(M$itemUT3 , na.rm = TRUE))
}
boxplot(M$itemUT3)
summary(M$itemUT3)


##### itemUT4   ######
for (i in 1:length(M$itemUT4)) {
  if (M$itemUT4[i] %in% boxplot.stats(M$itemUT4)$out){M$itemUT4[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemUT4)) {
  if (is.na(M$itemUT4[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemUT4)
pna
#pna < 1.42
#supprime
for (i in 1:length(M$itemUT4)) {
  if (is.na(M$itemUT4[i])) {
    na.omit(M$itemUT4[i])
  }
}
boxplot(M$itemUT4)
summary(M$itemUT4)


#####    itemU1   ######
for (i in 1:length(M$itemU1)) {
  if (M$itemU1[i] %in% boxplot.stats(M$itemU1)$out){M$itemU1[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemU1)) {
  if (is.na(M$itemU1[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemU1)
pna
#pna > 5% (5.71%)
#ON estime par mean 
mean(M$itemU1 , na.rm = TRUE)#moyenne car on NA n a pas une valeur oN part sur help et on tape mean (na.rm = TRUE c est remove na)
#convertion 
as.integer(mean(M$itemU1 , na.rm = TRUE))#on trouve 4
#on place valeur manquante par mean 
for(i in 1:length(M$itemU1)){
  if(is.na(M$itemU1[i]))
    M$itemU1[i]= as.integer(mean(M$itemU1 , na.rm = TRUE))
}
boxplot(M$itemU1)


#####    itemU2   ######
for (i in 1:length(M$itemU2)) {
  if (M$itemU2[i] %in% boxplot.stats(M$itemU2)$out){M$itemU2[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemU2)) {
  if (is.na(M$itemU2[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemU2)
pna
#pna < 5% (1.42%)
#supprime
for (i in 1:length(M$itemU2)) {
  if (is.na(M$itemU2[i])) {
    na.omit(M$itemU2[i])
  }
}
boxplot(M$itemU2)



#####    itemU3   ######
for (i in 1:length(M$itemU3)) {
  if (M$itemU3[i] %in% boxplot.stats(M$itemU3)$out){M$itemU3[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemU3)) {
  if (is.na(M$itemU3[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemU3)
pna
#pna < 5% (1.42%)
#supprime
for (i in 1:length(M$itemU3)) {
  if (is.na(M$itemU3[i])) {
    na.omit(M$itemU3[i])
  }
}
boxplot(M$itemU3)



#####    itemU4   ######
for (i in 1:length(M$itemU4)) {
  if (M$itemU4[i] %in% boxplot.stats(M$itemU4)$out){M$itemU4[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemU4)) {
  if (is.na(M$itemU4[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemU4)
pna
#pna < 5% (2.85%)
#supprime
for (i in 1:length(M$itemU4)) {
  if (is.na(M$itemU4[i])) {
    na.omit(M$itemU4[i])
  }
}
boxplot(M$itemU4)



#####    itemf1   ######
for (i in 1:length(M$itemf1)) {
  if (M$itemf1[i] %in% boxplot.stats(M$itemf1)$out){M$itemf1[i] <- NA}
}
j <- 0
for (i in 1:length(M$itemf1)) {
  if (is.na(M$itemf1[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemf1)
pna
#pna > 5% (18.5%)
#ON estime par mean 
mean(M$itemf1 , na.rm = TRUE)#moyenne car on NA n a pas une valeur oN part sur help et on tape mean (na.rm = TRUE c est remove na)
#convertion 
as.integer(mean(M$itemf1 , na.rm = TRUE))#on trouve 4
#on place valeur manquante par mean 
for(i in 1:length(M$itemf1)){
  if(is.na(M$itemf1[i]))
    M$itemf1[i]= as.integer(mean(M$itemf1 , na.rm = TRUE))
}
boxplot(M$itemf1)



#####    itemf3   ######
for (i in 1:length(M$itemf3)) {
  if (M$itemf3[i] %in% boxplot.stats(M$itemf3)$out){M$itemf3[i] <- NA}}
j <- 0
for (i in 1:length(M$itemf3)) {
  if (is.na(M$itemf3[i])) {
    j <- j + 1
  }
}
j
pna <- j / length(M$itemf3)
pna
#pna < 5% (4.28%)
#supprime
for (i in 1:length(M$itemf3)) {
  if (is.na(M$itemf3[i])) {
    na.omit(M$itemf3[i])
  }
}
boxplot(M$itemf3)




#3.3: tests de normalite

### genre ####
shapiro.test(M$genre)
#p-value=6.973e-12  <5% -> H1 accepte , 
#Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$genre)
skewness(M$genre)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)


### age ####

shapiro.test(M$age)
#p-value 5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$age)
skewness(M$age)
#DONC kurtosis et skewness hors [-3,3] , signifine pas de quasi normalite (test non parametrique  )

### filiere ####

shapiro.test(M$filiere)
#p-value 5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$filiere)
skewness(M$filiere)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)


#######  itemA1  #####
shapiro.test(M$itemA1)
#p-value p-value = 6.975e-10    5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemA1)
skewness(M$itemA1)
hist(M$itemA1)
#DONC  ne suit pas la loi normale (test non parametrique)

#######  itemA2
shapiro.test(M$itemA2)
#p-value p-value = 3.268e-10   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemA2)
skewness(M$itemA2)
hist(M$itemA2)
#DONC  ne suit pas la loi normale (test non parametrique)

####### itemA3 #####
shapiro.test(M$itemA3)
#p-value p-value = 2.095e-09    5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemA3)
skewness(M$itemA3)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)

###### itemA4
shapiro.test(M$itemA4)
#p-value p-value = 4.615e-10   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemA4)
skewness(M$itemA4)
hist(M$itemA4)
#DONC  ne suit pas la loi normale (test non parametrique)


###### itemA5
shapiro.test(M$itemA5)
#p-value p-value = 1.488e-08    5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemA5)
skewness(M$itemA5)
hist(M$itemA5)
#DONC   suit  la loi normale (test  parametrique)


##### itemI1###
shapiro.test(M$itemI1)
#p-value p-value = 3.871e-09    5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemI1)
skewness(M$itemI1)
hist(M$itemI1)
#DONC  ne  suit pas la loi normale (test non parametrique)

#### itemI2###
shapiro.test(M$itemI2)
#p-value p-value = 1.618e-09    5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemI2)
skewness(M$itemI2)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)


##### itemI3 ###
shapiro.test(M$itemI3)
#p-value p-value = 1.994e-09    5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemI3)
skewness(M$itemI3)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)

##### itemI4##
shapiro.test(M$itemI4)
#p-value p-value = 7.249e-07    5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemI4)
skewness(M$itemI4)
hist(M$itemI4)
#donc suit loi normal (test parametrique )

#### itemUT1 ###
shapiro.test(M$itemUT1)
#p-value p-value = 6.159e-09    5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemUT1)
skewness(M$itemUT1)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)

##### itemUT2 ### 
shapiro.test(M$itemUT2)
#p-value p-value = 7.39e-07    5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemUT2)
skewness(M$itemUT2)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)

####  itemUT3 ###
shapiro.test(M$itemUT3)
#p-value p-value = 1.582e-08   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemUT3)
skewness(M$itemUT3)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)

##### itemUT4 ##
shapiro.test(M$itemUT4)
#p-value p-value = 2.408e-06   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemUT4)
skewness(M$itemUT4)
hist(M$itemUT4)
#donc suit loi normal (test parametrique)

#### itemU1 ###
shapiro.test(M$itemU1)
#p-value p-value = 1.443e-09   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemU1)
skewness(M$itemU1)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)


##### itemU2 ## 
shapiro.test(M$itemU2)
#p-value p-value = 7.188e-10   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemU2)
skewness(M$itemU2)
hist(M$itemU2)
#donc suit loi normal (test parametrique)


####  itemU3 ###
shapiro.test(M$itemU3)
#p-value p-value = 1.359e-08   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemU3)
skewness(M$itemU3)
hist(M$itemU3)
#donc suit loi normal (test parametrique)



###  itemU4 ## 
shapiro.test(M$itemU4)
#p-value p-value = 9.505e-09  5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemU4)
skewness(M$itemU4)
hist(M$itemU4)
#donc suit loi normal (test parametrique)


##### itemf1 ### 
shapiro.test(M$itemf1)
#p-value p-value = 1.519e-07   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemf1)
skewness(M$itemf1)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)

### itemf2 ### 
shapiro.test(M$itemf2)
#p-value p-value = 1.122e-08   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemf1)
skewness(M$itemf1)
#DONC kurtosis et skewness entre [-3,3] , signifine on la quasi normalite (test param et non param)



#### itemf3
shapiro.test(M$itemf3)
#p-value p-value = 5.242e-09   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemf3)
skewness(M$itemf3)
hist(M$itemf3)
#donc suit loi normal (test parametrique)




#### itemf4
shapiro.test(M$itemf4)
#p-value p-value = 4.813e-07   5<% -> H1 accepte , Il y a diiference significatif entre la loi normal et la distribution 
#Donc on verifie la quasi normalite 
library(moments)
kurtosis(M$itemf4)
skewness(M$itemf4)
#DONC kurtosis et skewness hors [-3,3] , signifine on a pass  la quasi normalite (test  non param)



#Etape4:traitement
#4.1 statistique descriptive univariee
#4.1.1 : Numerique 
summary(M)
#Graphique

#genre (quali) ->hist 
hist(M$genre)
#age (quanti) ->plot  
plot(M$age)
#filiere (quali) ->hist 
hist(M$filiere)
#items (quali) -> hist
hist(M$itemA1)
hist(M$itemA2)
hist(M$itemA3)
hist(M$itemA4)
hist(M$itemA5)
hist(M$itemI1)
hist(M$itemI2)
hist(M$itemI3)
hist(M$itemI4)
hist(M$itemUT1)
hist(M$itemUT2)
hist(M$itemUT3)
hist(M$itemUT4)
hist(M$itemU1)
hist(M$itemU2)
hist(M$itemU3)
hist(M$itemU4)
hist(M$itemf1)
hist(M$itemf2)
hist(M$itemf3)
hist(M$itemf4)
############
#Si la variable suit la loi normale ; le test à utiliser est le test  parametrique
#Si la variable ne suit ni la loi normale ni la quasi-normalité ; le test à utiliser est le test  no parametrique
#Si la variable suit la quasi normalite ; dans ce cas on effectue les deux tests


#TEST DE PROPORTIONALITE :
#68 sample , 265 population #hd
prop.test(68,265)
#p_value=3.751e-15<0.05 ,Donc H0 rejete , H1 à retenir :
#les deux proportionnalités sont significativement différents,vue que sont different 
#qu’alors au niveau de l’échantillon les proportionnalités sont à 50%/50%



# verification de la normalite des variables(para et non para )
#####   GENRE  ###### 
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$genre)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$genre)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#(Si les deux cheikhs sont d'accord)  ->  on suit le parametrique

#####   Age  ###### 
#NE Suit pas la  normalite  donc on va faire le test non para 
wilcox.test(M$age)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne

####   filiere ######
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
chisq.test(M$filiere)
#p value (>5%) H0 accepte , il n'y pas  une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$filiere)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#(Si les deux cheikhs ne sont pas d'accord) -> test non parametrique 

#### itemA1 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemA1)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemA1)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemA2 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemA2)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemA2)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemA3 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemA3)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemA3)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemA4 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemA4)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemA4)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemA5 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemA5)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemA5)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemI1 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemI1)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemI1)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemI2 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemI2)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemI2)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemI3 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemI3)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemI3)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique



#### itemI4 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemI4)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemI4)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemUT1 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemUT1)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemUT1)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemUT2 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemUT2)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemUT2)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemUT3 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemUT3)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemUT3)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemUT4 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemUT4)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemUT4)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique



#### itemU1 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemU1)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemU1)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemU2 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemU2)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemU2)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemU3 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemU3)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemU3)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique

#### itemU4 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemU4)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemU4)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemF1 ##### 
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemf1)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemf1)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemf2 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemf2)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemf2)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemf3 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemf3)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemf3)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique


#### itemf4 #####
#est quasi normale donc on va faire les 2 test (para et non para )
#test parametrique 
t.test(M$itemf4)
#p value (<5%) H0 rejete , il y a une différence significative du  moyenne
#test no parametrique 
wilcox.test(M$itemf4)
#p value (<5%) H0 rejete , il y a une différence significative du mediane
#(Si les deux cheikhs sont d'accord) on suit le parametrique



#4.2 test de fiabilite de questionnaire 


library(Rcmdr)
#Pour itemA
reliability(cov(M[,c("itemA1","itemA2","itemA3","itemA4","itemA5")], use="complete.obs"))
# on alpha comme valeur 0.5512  , on supprime item on constate que lq valeur de alpha diminue


#Pour itemf 
reliability(cov(M[,c("itemf1","itemf2","itemf3","itemf4")], use="complete.obs"))
# on alpha comme valeur 0.4968 , on supprime item on constate que lq valeur de alpha diminue



#Pour itemI
reliability(cov(M[,c("itemI1","itemI2","itemI3","itemI4")], use="complete.obs"))
#avec Alpha reliability = 0.6976 
#supprimant itemI4
reliability(cov(M[,c("itemI1","itemI2","itemI3")], use="complete.obs"))
#la valeur de alpha passe a 0.7275  
#itemI4 exclu




#itemU
reliability(cov(M[,c("itemU1","itemU2","itemU3","itemU4")], use="complete.obs"))
# on alpha comme valeur 0.6086  , on supprime item on constate que lq valeur de alpha diminue



#pour itemUT 
reliability(cov(M[,c("itemUT1","itemUT2","itemUT3","itemUT4")], use="complete.obs"))
#avec Alpha reliability = 0.7741 
#Supprimer itemUT1 
reliability(cov(M[,c("itemUT2","itemUT3","itemUT4")], use="complete.obs"))
#la valeur de alpha passe a 0.7989 
#itemUT1 exclu




#4.3 statistique descriptive bivariee

###genre et filiere (quali quali)
chisq.test(table(M$genre,M$filiere))
# p-value = 0.159 >5% Genre n impacte pas filiere
#Confirmant avec boxplot
table(M$genre,M$filiere)
boxplot(M$genre,M$filiere)

#hitogramme

library(Rcmdr)
#quali quali -> histograme
# Création des histogrammes des variables 'filiere' et 'genre'
x <- hist(M$filiere, freq = TRUE, breaks = "Sturges", col = "royalblue1", main = "Histogramme de la variable 'filiere'")
y <- hist(M$genre, freq = TRUE, breaks = "Sturges", col = "grey", main = "Histogramme de la variable 'genre'")

# Affichage des histogrammes
plot(x, main = "Histogrammes de 'filiere' et 'genre'", col = "royalblue1")
plot(y, add = TRUE, col = "grey")




###filiere et age (quali quanti)
library(BioStatR)
eta2(M$filiere,M$age)
#0.012
#Confirmant avec boxplot
table(M$filiere,M$age)
boxplot(M$filiere,M$age)
# pas de liason  d apres box plot

#hitogramme

library(Rcmdr)
#quali quali -> histograme
# Création des histogrammes des variables 'filiere' et 'age'
x <- hist(M$filiere, freq = TRUE, breaks = "Sturges", col = "royalblue1", main = "Histogramme de la variable 'filiere'")
y <- hist(M$age, freq = TRUE, breaks = "Sturges", col = "grey", main = "Histogramme de la variable 'age'")

# Affichage des histogrammes
plot(x, main = "Histogrammes de 'filiere' et 'age'", col = "royalblue1")
plot(y, add = TRUE, col = "grey")





###genre et age (quali quanti)
library(BioStatR)
chisq.test(M$genre,M$age)
#confirmant avec boxplot
table(M$genre,M$age)
boxplot(M$genre,M$age)
#pas de liason entre genre et age 


x <- hist(M$genre, freq = TRUE, breaks = "Sturges", col = "royalblue1", main = "Histogramme de la variable 'genre'")
y <- hist(M$age, freq = TRUE, breaks = "Sturges", col = "grey", main = "Histogramme de la variable 'age'")

# Affichage des histogrammes
plot(x, main = "Histogrammes de 'genre' et 'age'", col = "royalblue1")
plot(y, add = TRUE, col = "grey")





#test d hypothese de Recherche 

#HYPOTHESE 1
#Existe il une relation entre la perception des problèmes liés à l'utilisation de la technologie
#et l'adoption de celle-ci par les étudiants?

#H0 : Il n'y a pas de relation entre la perception des problèmes liés à l'utilisation
#de la technologie dans l'enseignement supérieur et l'adoption de la technologie par les étudiants.
#H1 : Les étudiants qui perçoivent moins de problèmes liés à l'utilisation de la technologie dans 
#l'enseignement supérieur sont plus susceptibles d'adopter la technologie.

#D apres les test univaries , on a trouve que itemA et itemUT suit la loi normal

#on fait tout d abord le test des variances :
var.test(M$itemA1,M$itemUT2)

#Dans notre cas on P-value = 0.0003088(<0.05),Donc les variances ne diffèrent pas  de manière significative.
#Donc H1 accepte

#### RAPPEL ####

#La statistique de test, généralement appelée F ou ratio de variance,
#est une mesure de la différence entre les variances des échantillons.
#Plus la valeur de F est élevée, plus les variances diffèrent.


#La valeur de p est la probabilité associée à la statistique de test.
#Elle indique la probabilité d'observer une différence aussi extrême que celle observée dans les données
#si les variances réelles étaient identiques. Une valeur de p faible (généralement inférieure à 0,05) 
#suggère une différence statistiquement significative entre les variances, 
#tandis qu'une valeur de p élevée indique que les variances ne diffèrent pas de manière significative.


#Les degrés de liberté (df) représentent le nombre d'observations moins le nombre de paramètres estimés.
#Dans le cas d'un test de variance, il y aura deux ensembles de degrés de liberté :
#les degrés de liberté du numérateur et les degrés de liberté du dénominateur.
#Le numérateur correspond au nombre
#d'échantillons moins un, et le dénominateur correspond au nombre total d'observations moins le nombre d'échantillons.





#HYPOTHESE 2
#Existe il  une relation entre la reconnaissance de l'utilité de la technologie
#et l'adoption de celle-ci par les étudiants?

#H0 : Il n'y a pas de relation entre la reconnaissance de l'utilité de la technologie dans
#l'enseignement supérieur et l'adoption de la technologie par les étudiants.
#H1 : Les étudiants qui reconnaissent l'utilité de la technologie dans l'enseignement
#supérieur sont plus susceptibles d'adopter la technologie.

#D apres les test univaries , on a trouve que itemA et itemU suit la loi normal

#on fait tout d abord le test des variances :
var.test(M$itemA1,M$itemU1)
#Dans notre cas on P-value = 0.4639(>0.05).H0 accepte




#HYPOTHESE 3
#Existe il une relation entre l'adoption de l'IA GPT dans la pratique d'enseignement et 
#le niveau de formation des étudiants

#H0 : Il n'existe aucune relation entre l'adoption de l'IA GPT dans la pratique
#d'enseignement et le niveau de formation des étudiants.

#H1 : Il existe une relation entre l'adoption de l'IA GPT 
#dans la pratique d'enseignement et le niveau de formation des étudiants.



#D apres les test univaries , on a trouve que itemA et itemF suit la loi normal

#on fait tout d abord le test des variances :
var.test(M$itemA1,M$itemf4)
#Dans notre cas on P-value = 0.007185(<0.05),H1 accepte

#4.4 : Modele statistique
#4.4.1 : Regression simple 
#Conditions :
####    A  ###
#1.X et Y quantitative 
#x : itemA1
#Y : itemf1
#2. X et Y correle
cor.test(M$itemA1,M$itemf1)
#p-value=0.8339 >5%, il n y a pas de correlation
RegModel.1 <- lm(itemA1~itemf1, data=M)
summary(RegModel.1)
plot(RegModel.1)
#pas de regression

###   B  ###
#1.X et Y quantitative 
#x : itemA2
#Y : itemf2
#2. X et Y correle
cor.test(M$itemA2,M$itemf2)
#p-value=0.2846 , il y a une correlation
#3. Deja on verifie que X et Y suit loi normal 
#4. a!=0 et b!=0
#5. erreur -> 0
RegModel.2 <- lm(itemA2~itemf2, data=M)
summary(RegModel.2)
plot(RegModel.2)
  


###   c  ###
#1.X et Y quantitative 
#x : itemA3
#Y : itemf3
#2. X et Y correle
cor.test(M$itemA3,M$itemf3)
#p-value=0.6446 , il  y pas a de correlation
#3. Deja on verifie que X et Y suit loi normal 
#4. a!=0 et b!=0
#5. erreur -> 0
RegModel.3 <- lm(itemA3~itemf3, data=M)
summary(RegModel.3)
plot(RegModel.3)

#4.4.1 : Regression Multiple
###  A ###
#1.Xi et Y quantitative 
#xi : itemAi
#Y : itemf1
#2. Xi et Y correle
cor(M[,c("itemA1","itemA2","itemA3","itemA4","itemA5","itemf1")], 
    method="spearman", use="complete")
# il y a une correlation
#3. Deja on verifie que X et Y suit loi normal 
#4. a!=0 et b!=0
#5. erreur -> 0
RegModel.4 <- lm(itemf1~itemA1+itemA2+itemA3+itemA4+itemA5, data=M)
summary(RegModel.4)
plot(RegModel.4)

###  B ###
#1.Xi et Y quantitative 
#xi : itemAi
#Y : itemf2
#2. Xi et Y correle
cor(M[,c("itemA1","itemA2","itemA3","itemA4","itemA5","itemf2")], 
    method="spearman", use="complete")

# il y a pas   correlation
RegModel.5 <- lm(itemf2~itemA1+itemA2+itemA3+itemA4+itemA5, data=M)
summary(RegModel.5)
plot(RegModel.5)


###  C ###
#1.Xi et Y quantitative 
#xi : itemAi
#Y : itemf3
#2. Xi et Y correle
cor(M[,c("itemA1","itemA2","itemA3","itemA4","itemA5","itemf3")], 
    method="spearman", use="complete")
#il y a une correlation
#3. Deja on verifie que X et Y suit loi normal 
#4. a!=0 et b!=0
#5. erreur -> 0
RegModel.6 <- lm(itemf3~itemA1+itemA2+itemA3+itemA4+itemA5, data=M)
summary(RegModel.6)
plot(RegModel.6)

###  D ###
#1.Xi et Y quantitative 
#xi : itemAi
#Y : itemf4
#2. Xi et Y correle
cor(M[,c("itemA1","itemA2","itemA3","itemA4","itemA5","itemf4")], 
    method="spearman", use="complete")
#p-value=0.6446 , il y a une correlation
#3. Deja on verifie que X et Y suit loi normal 
#4. a!=0 et b!=0
#5. erreur -> 0
RegModel.7 <- lm(itemf4~itemA1+itemA2+itemA3+itemA4+itemA5, data=M)
summary(RegModel.7)
plot(RegModel.7)



#classification

#Pour Adoption
library(Rcmdr)
.cluster <-  KMeans(model.matrix(~-1 + itemA1 + itemA2 + itemA3 + itemA4 +itemA5, M), centers = 2, iter.max = 10, num.seeds = 10)
.cluster$size # Cluster Sizes
.cluster$centers # Cluster Centroids
.cluster$withinss # Within Cluster Sum of Squares
.cluster$tot.withinss # Total Within Sum of Squares
.cluster$betweenss # Between Cluster Sum of Squares
biplot(princomp(model.matrix(~-1 + itemA1 + itemA2 + itemA3 + itemA4 +itemA5, M)), xlabs = as.character(.cluster$cluster))
remove(.cluster)


#Pour factor
library(Rcmdr)
.cluster <-  KMeans(model.matrix(~-1 + itemf1 + itemf2 + itemf3 + itemf4, 
                                 M), centers = 2, iter.max = 10, num.seeds = 10)
.cluster$size # Cluster Sizes
.cluster$centers # Cluster Centroids
.cluster$withinss # Within Cluster Sum of Squares
.cluster$tot.withinss # Total Within Sum of Squares
.cluster$betweenss # Between Cluster Sum of Squares
biplot(princomp(model.matrix(~-1 + itemf1 + itemf2 + itemf3 + itemf4, M)), 
       xlabs = as.character(.cluster$cluster))
remove(.cluster)

#Pour adoption et factor
library(Rcmdr)
.cluster <-  KMeans(model.matrix(~-1 + itemA1 + itemA2 + itemA3 + itemA4 + 
                                   itemA5 + itemf1 + itemf2 + itemf3 + itemf4, M), centers = 2, iter.max = 10, 
                    num.seeds = 10)
.cluster$size # Cluster Sizes
.cluster$centers # Cluster Centroids
.cluster$withinss # Within Cluster Sum of Squares
.cluster$tot.withinss # Total Within Sum of Squares
.cluster$betweenss # Between Cluster Sum of Squares
biplot(princomp(model.matrix(~-1 + itemA1 + itemA2 + itemA3 + itemA4 + 
                               itemA5 + itemf1 + itemf2 + itemf3 + itemf4, M)), xlabs = 
         as.character(.cluster$cluster))
remove(.cluster)



######## FIN DE CODE ########
#######Merci de votre encadrement ######





