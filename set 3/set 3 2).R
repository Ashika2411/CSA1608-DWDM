install.packages("arules")
library(arules)

df <- data.frame(
  TID = 1:10,
  Items = c(
    "Milk,Beer,Diapers",
    "Bread,Butter,Milk",
    "Milk,Diapers,Cookies",
    "Bread,Butter,Cookies",
    "Beer,Cookies,Diapers",
    "Milk,Diapers,Bread,Butter",
    "Bread,Butter,Diapers",
    "Beer,Diapers",
    "Milk,Diapers,Bread,Butter",
    "Beer,Cookies"
  )
)

trans_list <- strsplit(as.character(df$Items), ",")
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