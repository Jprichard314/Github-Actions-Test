
test_function_one <- function(){

  test <- 
    as.data.frame(
      list(
        time = seq.POSIXt(Sys.time(), by = "hour", length.out = 10),
        value = seq(1,10,1)
      )
    )
  
  write.csv(test,paste0('data/',
                        format.POSIXct(Sys.time(), "%Y-%m-%d %H_%M_%S"),
                        '_data.csv'))
  return(test)
  
}