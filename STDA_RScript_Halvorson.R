Data=read.table(file="C:\\Users\\hhalvorson\\Documents\\R\\RActiveData.txt", header=TRUE)

gsub(".", "NA", ".")


##selecting data that only include Body N:P and creating an object called Data1 containing those subsetted data:

Data1<-subset(Data, Body_NP > 0, select = c(Phylum, Species_code, Body_NP))

##Selecting all the unique entries (rows) for a given header within Data1

UniqueSpecies_Data1<-unique(Data1$Species_code)

##Determining how many unique species are in Data1

length(UniqueSpecies_Data1)

##Calculate mean body N:P for each unique species.


for (i in Data1$Species_code[i])