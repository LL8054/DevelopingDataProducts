library(xlsx)
rawdata <- read.xlsx("RushingYards.xlsx", sheetIndex=1)

data <- rawdata[c(2:21),]
rownames(data) <- NULL

test <- rawdata[1,]

# YPC
set.seed(1)
fitYPC <- lm(YPC.Next.Yr ~ Yards + Attempts, data)
predictYPC <- predict(fitYPC, test)

# Att
set.seed(1)
fitAtt <- lm(Att.Next.Yr ~ Yards + Attempts, data)
predictAtt <- predict(fitAtt, test)

# Yds
set.seed(1)
fitYds <- lm(Yards.Next.Yr ~ Yards + Attempts, data)
predictYds <- predict(fitYds, test)

