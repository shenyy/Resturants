library("rjson")

setwd("~/competition/restaurant inspections/data")

train = read.csv("training.csv")

url <- "yelp_academic_dataset_business.json"

con = file(url, "r")

input <- readLines(con, -1L)

my_results <- lapply(X=input,fromJSON)

save(list = 'my_results',file = 'business.Rdata')

result = rapply(my_results[1000], function(x) head(x, 1))
result2 = rapply(my_results[100], function(x) head(x, 1))

data_biz = matrix(result,ncol=21)

url2 <- "yelp_academic_dataset_review.json"

con2 = file(url2, "r")

input2 <- readLines(con2, -1L)

my_results2 <- lapply(X=input2,fromJSON)

result = rapply(my_results2[1000], function(x) head(x, 1))

url3 <- "yelp_academic_dataset_tip.json"

con3 = file(url3, "r")

input3 <- readLines(con3, -1L)

my_results3 <- lapply(X=input3,fromJSON)

result = rapply(my_results3[10], function(x) head(x, 1))

url4 <- "yelp_academic_dataset_user.json"

con4 = file(url4, "r")

input4 <- readLines(con4, -1L)

my_results4 <- lapply(X=input4,fromJSON)

result = rapply(my_results4[10], function(x) head(x, 1))
