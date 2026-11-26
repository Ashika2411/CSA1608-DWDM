install.packages("arules")
library(arules)

df <- data.frame(
  T_ID = c("0001","0024","0012","0031","0015","0022","0029","0040","0033","0038"),
  Items_Bought = c("a,d,e","a,b,c,e","a,b,d,e","a,c,d,e","b,c,e","b,d,e","c,d","a,b,c","a,d,e","a,b,e")
)

trans_list <- strsplit(as.character(df$Items_Bought), ",")
transactions <- as(trans_list, "transactions")

inspect(transactions)

rules_apriori <- apriori(
  transactions,
  parameter = list(supp = 3/10, conf = 0.5, minlen = 2)
)

inspect(rules_apriori)

freq_fp <- eclat(
  transactions,
  parameter = list(supp = 3/10, minlen = 1)
)

inspect(freq_fp)

rules_fp <- ruleInduction(freq_fp, confidence = 0.5)

inspect(rules_fp)