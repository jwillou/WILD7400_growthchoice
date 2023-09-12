setwd("/Users/jrw0107/Google Drive/My Drive/teaching/WILD 7400 ABMs/WILD7400_growthchoice//")  #set working directory
directory = getwd()
outdir    = paste(directory,"/output/",sep="")                    #directory to save model output  
source(paste(directory, "/source/FunctionSourcer.R", sep = ''))   #source functions and set source directory

#herbivores
K = 500                   #carrying capacity
maxsize    = 10           #maximum herbivore size, min is 1
maxsearch  = 10           #max number of actions an individual can take, summed across searching actions
searchnum  = 7

#food resources
lowsuccess.V  = c(0.9, 1 )         #how likely an individual is in finding low quality food 
highsuccess.V = c(0.1, 0.2)       #how likely an individual is in finding high quality food

runvars = Replicates(lowsuccess.V, highsuccess.V)
#remove()

#run model iterating over parameters in Replicates
for(r in 1:nrow(runvars)){
  #set parameter values
  lowsuccess = runvars$lowsuccess[r]
  highsuccess = runvars$highsuccess[r]
  
  #initialize population of herbivores
  herbs = data.frame(id = seq(1,K,1), size = rep(seq(1,maxsize,1),(K/maxsize)))
  herbs$search = herbs$size + rnorm(K,0,1)
  
  #poor fix for a complicated problem - too small/large search times
  herbs$search[herbs$search < 0]  = 0
  herbs$search[herbs$search > 10] = 10
  
  #set up column to store food outcome
  herbs$food = rep(NA, nrow(herbs))

  #iterate over individuals in herbs
  for(i in 1:nrow(herbs)){
    #search for food (relationship between time searching and finding food, larger value is higher quality food)
    searchresults = rnorm(searchnum, mean=(herbs$search[i]/10), sd=1/10)
    searchresults[searchresults < 0] = 0
    
    #success or not in each search (uniform decrease from lowest food qual to highest food quality)
    searchsuccess = NULL
    for(rr in 1:searchnum){
      temp = rbinom(1, 1, prob = (1-(lowsuccess-highsuccess)*searchresults[rr]))
      searchsuccess = c(searchsuccess, temp)
    }
    
    #record food collected 
    foodobtained = searchsuccess * searchresults
    foodobtained = sum(foodobtained)
    herbs$food[i] = foodobtained
  }

}

#end