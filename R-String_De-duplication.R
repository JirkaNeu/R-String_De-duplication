
#library(tidyverse)
library(janitor)
library(dplyr)


# https://en.wikipedia.org/wiki/Moby-Dick
a_string = "When Ahab finally appears on the quarterdeck, he announces he seeks revenge on the white whale that took his leg from the knee down, leaving him with a prosthesis fashioned from a whale's jawbone. Ahab will give the first man to sight Moby Dick a doubloon, which he nails to the mast. Starbuck objects that he has not come for vengeance but for profit, but Ahab's purpose exercises a mysterious spell on Ishmael: Ahab's quenchless feud seemed mine."

str(a_string)
nchar(a_string)

work_string = gsub("[[:punct:]]", "", a_string)
work_string = strtrim(work_string, 404) |> tolower() |> strsplit(" ") |> unlist()
string_df = data.frame(id = c(1:length(work_string)), words = work_string)

get_counts = as.factor(string_df[,which(names(string_df) == "words")]) |>
  table() |>
  sort(decreasing = T) |>
  unlist() |>
  data.frame()

get_counts = get_counts[get_counts$Freq != 1,]
View(get_counts)

boxplot(get_counts)


#--- show duplicates ---#
#-----------------------#
require(janitor)
get_dupes(string_df, -id)
#-----------------------#


require(dplyr)
new_string_df = distinct(string_df, words, .keep_all = T)

get_counts = as.factor(new_string_df[,which(names(new_string_df) == "words")]) |>
  table() |>
  sort(decreasing = T) |>
  unlist() |>
  data.frame()

#get_counts = get_counts[get_counts$Freq != 1,]
View(get_counts)


