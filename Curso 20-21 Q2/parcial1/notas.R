notas <- read.table("parcial1.csv", sep=";", header=TRUE, dec=",")

#notasM1 <- as.numeric(gsub(",", ".",notas[notas[,7]%in%c("M11","M12"),8]))
#notasM2 <- as.numeric(gsub(",", ".",notas[notas[,7]%in%c("M21","M22"),8]))
notasM3 <- as.numeric(gsub(",", ".",notas[notas[,7]%in%c("M31","M32"),8]))
#notasT1 <- as.numeric(gsub(",", ".",notas[notas[,7]%in%c("T11","T12"),8]))
#notasT2 <- as.numeric(gsub(",", ".",notas[notas[,7]%in%c("T21","T22"),8]))

mean(notasM3, na.rm=TRUE)
#mean(notasM2, na.rm=TRUE)
#mean(notasM3, na.rm=TRUE)
#mean(notasT1, na.rm=TRUE)
#mean(notasT2, na.rm=TRUE)

#t.test(notasM1, notasM2)
#t.test(notasM1, notasM3)
#t.test(notasM1, notasT1)
#t.test(notasM1, notasT2)

lf <- list.files(pattern="2021")
lf

asis <- lapply(lf, function(x)
{
 read.table(x, header=TRUE, as.is=TRUE, sep=",")$Correu
})

asis <- table(unlist(asis))

emailM3 <- notas[notas[,7]%in%c("M31","M32"),6]

names(notasM3) <- emailM3

asall <- asis[names(notasM3)] 
asall[is.na(asall)] <- NA

pdf("notas.pdf")
plot(as.vector(asall),notasM3, pch=16, xlab="Clases asistidas", ylab="Nota parcial 1")
abline(lm(notasM3~as.vector(asall)))
text(3.5,8, "m=0.15, b=3.116, cor=0.148")
text(4.5, 9,"cada asistencia a clase sube en promedion 0.15 de nota", cex=0.7)
dev.off()

pdf("notasbar.pdf")
barplot(table(notasM3), main="Notas Parcial 1")
text(2,12, "mean=4.19, median=5")
dev.off()


pdf("asishist.pdf")
barplot(table(9-asall), main="Frecuencia de ausencias")
text(4,20, "mean=1.57, median=1")
dev.off()

cor.test(as.vector(asall),notasM3)

dic <- as.numeric(notasM1>8)
summary(glm(dic  ~ asall), family="binomial")

t.test(asall[notasM1>8], asall[notasM1 <= 8])

#point from minimum variance
mean(asall>9,na.rm=TRUE)

uu <- unique(asall)
uu <- sort(uu[!is.na(uu)])

ss <- sapply(uu, function(x)
  sd(notasM1[asall==x], na.rm=TRUE)
  )

plot(uu, ss)

u2 <- uu^2
summary(lm(ss ~ uu*uu))

dic <- as.numeric(notasM1<5)
summary(glm(dic  ~ asall), family="binomial")

hist(asall, br=10)

mean(asall,na.rm=TRUE)

mean(asall>5,na.rm=TRUE)
