setwd("/Users/jrw0107/Google Drive/My Drive/teaching/WILD 7400 ABMs/WILD7400_growthchoice//")  #set working directory
directory = getwd()
outdir    = paste(directory,"/output/",sep="")                    #directory to save model output  
source(paste(directory, "/source/FunctionSourcer.R", sep = ''))   #source functions and set source directory

#herbivores
K = 500                   #carrying capacity
maxsize    = 10           #maximum herbivore size, min is 1
maxsearch  = 10           #max number of actions an individual can take, summed across searching actions

#food resources
lowsuccess  = .9          #how likely an individual is in finding low quality food 
highsuccess = .1          #how likely an individual is in finding high quality food

#runvars = Replicates()
#remove()

#run model iterating over parameters in Replicates
for(r in 1:nrow(runvars)){
  
  
  
  
  
  
}

#end