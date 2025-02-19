tit_tr_df <- read.csv("C:/New folder/Titanic EDA Using R/Titanic-EDA-Using-R/titanic_train.csv")

# how we can access variables
# dataframename$variablename
tit_tr_df$Survived
tit_tr_df$Sex
table(tit_tr_df$Sex)
table(tit_tr_df$Survived)
table(tit_tr_df$Sex, tit_tr_df$Survived)
table(tit_tr_df$Pclass, tit_tr_df$Survived)

# removing irrelevant columns
# tit_tr_df[row, column]
# how to create subsets of data frame
tit_tr_df[3:8, 7:9]


t_tr <- tit_tr_df[ , c(2, 3, 5,6,7,8)]

str(t_tr)
t_tr

colSums(is.na(t_tr2))
t_tr2  <-  na.omit(t_tr)
str(t_tr2)
colnames(tit_tr_df)

# Basic Visualization
barplot(table(t_tr2$Sex))
barplot(table(t_tr2$Pclass))
table(tit_tr_df$Pclass,tit_tr_df$Survived)

plot(t_tr2$Age, t_tr2$SibSp)


boxplot(t_tr2$Age, horizontal = TRUE)

table(tit_tr_df$Sex,tit_tr_df$Survived)

table(tit_tr_df$Sex,tit_tr_df$Survived,tit_tr_df$Pclass)

barplot(table(tit_tr_df$Sex,tit_tr_df$Survived))

pie(tit_tr_df$Sex,tit_tr_df$Survived)
hist(tit_tr_df$Age)
# scatter plot
plot(tit_tr_df$Age,tit_tr_df$Fare)

is.na(tit_tr_df$Age)

colSums(is.na(tit_tr_df))


New_Age <- na.omit(tit_tr_df$Age)