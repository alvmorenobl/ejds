library(readxl)
datos<- read_excel("C:/Users/alvmo/OneDrive/Escritorio/ejds/ejds/online_retail_II.xlsx")
#6
str(datos)
summary(datos)
#7
length(unique(datos$Invoice))
#10
unique(datos$Description)
library(dplyr)
df<-datos %>%
  group_by(Invoice)%>%
  summarise(precio_medio=mean(Price))
df
#12
datos
df2 <- datos %>%
  group_by(Invoice)%>%
  summarise(cantidad=n())
df2
#13
df3<-datos %>%
  group_by(Invoice)%>%
  summarise(precio_total=sum(Price))
df3
