#under construction
library(janitor)
library(pacman)


# https://en.wikipedia.org/wiki/Moby-Dick
a_string = "When Ahab finally appears on the quarterdeck, he announces he seeks revenge on the white whale that took his leg from the knee down, leaving him with a prosthesis fashioned from a whale's jawbone. Ahab will give the first man to sight Moby Dick a doubloon, which he nails to the mast. Starbuck objects that he has not come for vengeance but for profit, but Ahab's purpose exercises a mysterious spell on Ishmael: Ahab's quenchless feud seemed mine."


str(a_string)
nchar(a_string)

work_string = strtrim(a_string, 411)

work_string = as.data.frame(unlist(strtrim(a_string, 411) |> strsplit(" ")))


work_string = as.data.frame(unlist(work_string))


p_load()

xtest = sample(c(1:10), 20, replace = T)
ytest = sample(c(10:20), 20, replace = T)

test_df = data.frame(xtest, ytest)

print(get_dupes(test_df))



