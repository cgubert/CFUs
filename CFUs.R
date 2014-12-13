#Want a program that will calculate CFUs in original (stock) bacterial culture
#when given number of colonies on plate and dilution factor
#so, function should run off of something like "CFU(colonies=250,DF=10:1)"
#also include funtion that will give appropriate dilution factor to use to 
#count colonies from a solution with a given CFU concentration
#so this function would look something like "DF(CFU=15.0*10^8)
#Dilution factor (DF): ratio of final volume/aliquot volume 
#(final volume = aliquot + diluent)
#have users input dilution factors as ratio format (ex. 1:10)
#also write a function to calculate dilution factor from volumes
#could input two vectors, one with final volumes, one with aliquot volume


#sample data for running dilution factor function
final.vols<-rep(.500,8)
dilutent.vols<-rep(.450,8)
aliquot.vols<-rep(0.05,8)
dilution.factor<-function(final.vols,aliquot.vols,dilutent.vols){
  if (final.vols,aliquot.vols){final.vols/aliquot.vols}
  else if (aliquot.vols,dilutent.vols){(aliquot.vols+dilutent.vols)/aliquot.vols}
  
  
}

#get user data into acceptable format
DFs<-c("your.dilutions")
colonies<-c("your.counts")
replicates<-c("your.reps")
data.matrix<-function(data,nrows,ncols){
  data<-matrix(colonies,nrows=length(DFs),ncols=length(replicates))
  rownames(data)<-DFs
}


#Should be able to calculate CFUs from a data set/list of colony count values
#Input data from colony counts I did last week to use
sample.data<-c(1872,2042,706,782,123,95,13,13,4,1)
CFUrows<-c("1x10^4","1x10^5","1x10^6","1x10^7","1x10^8")
CFUsample<-matrix(data=sample.data,nrow=5,ncol=2,byrow=TRUE)
rownames(CFUsample)<-CFUrows

CFU<-function(colonies,DF){
  
}