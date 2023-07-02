library(readr)

ddata <- read_csv("2023_06_15 atlas_antibiotics.csv")


ddata[sapply(ddata, is.character)] <- lapply(ddata[sapply(ddata, is.character)],
                                             as.factor)
ddata <- data.frame(ddata)

attach(ddata)

amikacin <- ddata[,c("Family","Country","Gender","Age.Group",
                     "Speciality","Source","In...Out.Patient","Year","Phenotype","Amikacin_I")]
namm <- colnames(amikacin)
par(mfrow=c(3,3))
for(i in 1:9)boxplot(amikacin[,i]~ amikacin$Amikacin_I,col=2:3,xlab="amkcn",ylab=namm[i])

meropenem <- ddata[,c("Family","Country","Gender","Age.Group",
                      "Speciality","Source","In...Out.Patient","Year","Phenotype","Meropenem_I")]
namm1 <- colnames(meropenem)
par(mfrow=c(3,3))
for(i in 1:9)boxplot(meropenem[,i]~ meropenem$Meropenem_I,col=2:3,xlab="meropenem",ylab=namm1[i])

vancomycin <- ddata[,c("Family","Country","Gender","Age.Group",
                       "Speciality","Source","In...Out.Patient","Year","Phenotype","Vancomycin_I")]
namm2 <- colnames(vancomycin)
par(mfrow=c(3,3))
for(i in 1:9)boxplot(vancomycin[,i]~ vancomycin$Vancomycin_I,col=2:3,xlab="vancomycin",ylab=namm2[i])

