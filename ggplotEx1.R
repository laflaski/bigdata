library(ggplot2);
# Pr 1.
ggplot(data=diamonds, aes(x=clarity, fill=cut))+
   geom_bar(aes(y=(..count..)), position="dodge")+ylab("count")+labs(title="Diamonds")+
   theme_dark()+theme(plot.title=element_text(face="bold.italic", size=30, hjust=0.5));

# Pr 2.
ggplot(data=mpg, aes(x=class, y=cty))+
  geom_boxplot(fill="skyblue", outlier.color="red", outlier.shape=4)+
  theme(axis.title=element_text(size=15, face="bold.italic"),
        axis.text=element_text(size=12, face="bold.italic"));
  
# Pr 3.
temp <- NULL; data_temp <- NULL;
temp=c(1, 4, 11, 18, 23, 26, 28, 29, 35, 18, 11, 4);
data_temp=data.frame(month=c(1:12), temp);
ggplot(data=data_temp, aes(x=month, y=temp))+
  geom_line(color="lightskyblue", size=2)+scale_x_continuous(breaks=c(1:12))+
  labs(title="월 최고 기온")+xlab("월")+ylab("기온");

# Pr 4.
library(dplyr);
library(corrplot);
new_air <- NULL;
new_air <- select(airquality, -c(Month, Day));
na.omit(new_air) %>% cor() %>% corrplot(method="ellipse");
