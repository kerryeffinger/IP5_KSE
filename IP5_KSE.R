library(tidyverse)
library(datasets)
library(psych)

setwd("~/Desktop/Bellarmine SP21/DS160/IP5_KSE")

data<-read.csv("GenderData2.csv")

sample_n(data, 5)

colnames(data)

names(data)[1]<-"Time"
names(data)[2]<-"Year"
names(data)[3]<-"Country"
names(data)[4]<-"Country_Code"
names(data)[5]<-"Females_math_programs"
names(data)[6]<-"GDP_Per_Capita"
names(data)[7]<-"Gov_exp_per_student"
names(data)[8]<-"Female_Life_Expectancy"
names(data)[9]<-"Male_Life_Expectancy"
names(data)[10]<-"Population"
names(data)[11]<-"Female_Pop"
names(data)[12]<-"Female_Pop(%)"
names(data)[13]<-"Females_STEM_programs"
names(data)[14]<-"Female_Primary_Graduation"
names(data)[15]<-"Male_Primary_Graduation"
names(data)[16]<-"Female_Tertiary_Graduation"
names(data)[17]<-"Male_Tertiary_Graduation"
names(data)[18]<-"Youth_Literacy"
names(data)[19]<-"A woman can get a job in the same way as a man (1=yes; 0=no)"
names(data)[20]<-"A woman can open a bank account in the same way as a man (1=yes; 0=no)"
names(data)[21]<-"A woman can choose where to live in the same way as a man (1=yes; 0=no)"
names(data)[22]<-"First_Marriage_female"
names(data)[23]<-"First_Marriage_male"
names(data)[24]<-"Sons and daughters have equal rights to inherit assets from their parents (1=yes; 0=no)"
names(data)[25]<-"Employed_children_Male"
names(data)[26]<-"Employed_Children_Female"
names(data)[27]<-"Total_Labor_Force"
names(data)[28]<-"Female_Labor_Force"
names(data)[29]<-"Female_Labor_Force(%)"
names(data)[30]<-"Female_Retirement_Age"
names(data)[31]<-"Male_Retirement_Age"

colnames(data)


#data<-data[complete.cases(data), ]

#dropping columns by index
data <- data[-c(2,22:23,25:26)]

#dropping last few rows
data <- data[-c(1315, 1316, 1317, 1318, 1319), ]

#replacing the .. with NA values
data[data==".."]<-NA

#sumamry stats of data
describe(data)



## visualizations

ggplot(data = data) + 
  geom_point(mapping = aes(x = Female_Primary_Graduation, y = Male_Primary_Graduation), color = "blue")

ggplot(data = data) + 
  geom_point(mapping = aes(x = Female_Retirement_Age, y = Male_Retirement_Age), color = "red")

ggplot(data = data) + 
  geom_bar(mapping = aes(x = 'A woman can get a job in the same way as a man (1=yes; 0=no)'))

table(data$`A woman can get a job in the same way as a man (1=yes; 0=no)`)


