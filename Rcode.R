# Desktop RAM: Mininum 8GB , 128GB Graphic Card: 4 GTX1080 32GB
# Subject 선형대수 Linear Algebra Ahnton, 미적분학 Calculus Thomson
# 괄호와 quotation 확인

########## 06 Oct 2018 ##########
va <- c(1,2,3); vb <- c(4,5,6); vc <- c(7,8,9);
# va;vb;vc;
a <- 4; b <- 3;
A <- rbind(va, vb, vc); B <- cbind(va,vb,vc);
A;B;
class(A);class(B);
attributes(A);attributes(B);

if(a>b){"a is larger than b"}
if(a>b){print("a is larger than b")}

if('a'>b){"a is larger than b"}
if('a'<b){"a is larger than b"}

if("a">"b"){"a is larger than b"}
if("a"<"b"){"a is larger than b"}

if(b > a){
  print("a is larger than b")
} else {
  print("b is not lager than b")
}


########## 13 Oct 2018 ##########

if(a > b){
  "a is larger than b"
} else if (a ==b){
  "a is equal to b"
} else {
  "a is smaller than b"
}

brand1 <- c("Prada"); item1 <- c("Wallet"); price1 <- c(1000);
brand2 <- c("Hermes"); item2 <- c("Lipstick"); price2 <- c(800);

Choice1 <- c(brand1, item1, price1);
Choice2 <- c(brand2, item2, price2);

C <- NULL; C <- rbind(Choice1, Choice2);

colnames(C) <- rbind(Choice1,Choice2);

result <- NULL;
for(i in 1:10){
  cat(i*2,"\n")
  result <- i*2; cat()
  }

start <- 1;
while (start <=10){
  cat(start*2,"\n");
  start <- start +1;
}


dinner <- 1; choice <- "b";

if(dinner==1){
  cat("한식"," ");
  if(choice=="a"){
    cat("차돌박이된장찌개","\n");
  } else {
    cat("삼겹살","\n");
  }
}
