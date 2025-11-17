#under construction
library(janitor)
library(pacman)



p_load()

xtest = sample(c(1:10), 20, replace = T)
ytest = sample(c(10:20), 20, replace = T)

test_df = data.frame(xtest, ytest)

print(get_dupes(test_df))



