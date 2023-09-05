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
#for(r in 1:nrow(runvars)){
  #initialize population of herbivores
  herbs = data.frame(id = seq(1,K,1), size = rep(seq(1,maxsize,1),(K/maxsize)))
  herbs$search = herbs$size + rnorm(K,0,1)

  #iterate over individuals in herbs
  for(i in 1:nrow(herbs)){
    #search for food (relationship between time searching and finding food)
    
    
    #success or not in search
    
    
    #assess food quality, record food quantity 
    
    
    
    ###TBD: how many iterations should individuals forage, and how will we code that
    ###TBD: how will we introduce food quality to this and how will it be set
    ###TBD: how will we record the food quality the individual finds each year/unit of time
    
  }
  
  
  
  
#}

#end