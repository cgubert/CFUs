#volumes input as mL quantities (i.e. 1.0=1mL, 0.900=900µL)
#want a program that will calculate CFUs in original (stock) bacterial culture
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
#load user data instead of sample data
final.vols<-("your.final.vols")
dilutent.vols<-("your.dilutent.vols")
aliquot.vols<-("your.aliquot.vols")
#do useful things with the data
dilution.factor<-function(final.vols,aliquot.vols,dilutent.vols){
  if (final.vols,aliquot.vols){DFs<-final.vols/aliquot.vols}
  else if (aliquot.vols,dilutent.vols){DFs<-(aliquot.vols+dilutent.vols)/aliquot.vols}
  else if (final.vols,dilutent.vols){DFs<-final.vols/(final.vols-dilutent.vols)}
  else(//please input at least two the the required aliquot.vols, dilutent.vols, or final.vols vectors)
  return(DFs)
}

dilution.factor<-function(final.vols,aliquot.vols){
  DFs<-final.vols/aliquot.vols
  return(DFs)
}

#Should be able to calculate CFUs from a data set/list of colony count values
#Input data from colony counts I did last week to use
colonies<-c(1872,2042,706,782,123,95,13,13,4,1)
DFs
CFUrows<-c("10^4","10^5","10^6","10^7","10^8")
CFUsample<-matrix(data=sample.data,nrow=5,ncol=2,byrow=TRUE)
rownames(CFUsample)<-CFUrows
#get user data into acceptable format
DFs<-c("your.dilutions")
colonies<-c("your.counts")
replicates<-c("your.reps")
data.matrix<-function(colonies,DFs,replicates){
  data<-matrix(colonies,nrows=length(DFs),ncols=length(replicates))
  rownames(data)<-DFs
}


CFU<-function(colonies,DF){
  
}