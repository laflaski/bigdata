# Correlation Plot
library(corrplot); ## Library Reading
dat <- NULL;
dat <- read.table("individual_project_1st.txt",header=F,sep=",",na.strings=""); ## Data Reading
dim(dat); head(dat); ## Data Checking 
colnames(dat) <- c("region","age","gender","height","weight","BMI","body_fat","waist","sit_up","grip_D",
                   "grip_ND","long_jump","run_20","flexibility","run_10","age_group");## Column Names
corrplot.mixed(cor(dat[c("BMI","waist")]), lower = "number", upper = "ellipse",number.cex=0.8,number.digits = 2); ## Correlation

ftable(dat$age_group,dat$gender); ## Frequency for Age & Gender
ftable(dat$region,dat$gender); ## Frequency for Region & Gender

# Data Split for Gender
# install.packages("dplyr", dependencies=TRUE, INSTALL_opts = c('--no-lock'));
library(dplyr);
dat_gender <- NULL;
dat_gender <- dat %>% group_split(gender);
label_gender <- NULL;
label_gender <- data.frame(grp=c(1,2),gender=c("Male","Female"),color=c("Blue","Red"));
label_gender <- data.frame(lapply(label_gender,as.character),stringsAsFactors=FALSE);

# Correlation by Gender
png(file="malecor.png",bg="transparent",width=1200,height=1200);
corrplot.mixed(cor(dat_gender[[1]]), lower = "number", upper = "ellipse",number.cex=0.8,number.digits = 2); ## Male
dev.off();
png(file="femalecor.png",bg="transparent",width=1200,height=1200);
corrplot.mixed(cor(dat_gender[[2]]), lower = "number", upper = "ellipse",number.cex=0.8,number.digits = 2); ## Female
dev.off();
corrplot.mixed(cor(dat[c("BMI","waist")]), lower = "number", upper = "ellipse",number.cex=0.8,number.digits = 2); ## Correlation

# Plot between BMI & Body Fat by Gender
png(file="bmi_bodyfat.png",bg="transparent",width=768,height=768);
plot(dat$body_fat~dat$BMI,type="n",xlab="BMI",ylab="BODY FAT",cex.lab=1.5,cex.axis=1.5);
for(i in 1:2){
  points(dat_gender[[i]]$body_fat~dat_gender[[i]]$BMI,pch="*",col=label_gender$color[i]);
};
legend("topleft",legend=c(label_gender$gender[c(1:2)]),col=c(label_gender$color[c(1:2)]),
       pch=rep("*",2),bty="n",cex=2);
dev.off();

# Regression Analysis for BMI & Body Fat
summary(lm(dat$body_fat~dat$BMI+dat$gender)); ## Global
for(i in 1:2){
  print(summary(lm(dat_gender[[i]]$body_fat~dat_gender[[i]]$BMI))); ## Local (Gender)
};

# Plot for BMI WAIST GRIP BODY FAT
library(rgl); library(car); ## Library Reading
corrplot.mixed(cor(dat[c("BMI","waist","grip_D","grip_ND","body_fat")]), lower = "number", upper = "ellipse",number.cex=0.8,number.digits = 2); ## Correlation
scatter3d(dat$body_fat,dat$grip_D,dat$BMI,group=dat$gender,xlab="BODY FAT",ylab="GRIP",zlab="BMI");
scatter3d(dat$body_fat,dat$grip_D,dat$waist,group=dat$gender,xlab="BODY FAT",ylab="GRIP",zlab="WAIST");
