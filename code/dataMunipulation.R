library("rjson")

dataconv <- function(url){
  con = file(url, "r")
  
  input <- readLines(con, -1L)
  
  my_results <- lapply(X=input,fromJSON)
  
  n = length(my_results)
  
  data_des = data.frame(id = 1:n)
  
  for(i in 1:n){
    res_info = unlist(my_results[[i]])
    for(n in names(res_info)){
      data_des[i,n] = res_info[n]      
    }
  } 
  close(con)
  return (data_des)
}

url1 <- "./data/yelp_academic_dataset_business.json"
data_biz = dataconv(url1)

url2 <- "./data/yelp_academic_dataset_checkin.json"
data_check = dataconv(url2)

url3 <- "./data/yelp_academic_dataset_tip.json"
data_tip = dataconv(url3)

url4 <- "./data/yelp_academic_dataset_user.json"
data_user = dataconv(url4)
