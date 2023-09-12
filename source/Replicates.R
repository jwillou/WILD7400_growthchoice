Replicates = function(lowsuccess.V, highsuccess.V) {  
  
  replicates = expand.grid(lowsuccess.V, highsuccess.V)
  colnames(replicates) = c("lowsuccess", "highsuccess")
 
  return(replicates)
}  
