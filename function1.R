# Prob1
 mysum <- function(n) {
   sum_val <- 0;
   for(i in 1:n) {
     sum_val <- sum_val + i;
   }
   print(sum_val);
 }
 
 # ex> mysum(10)
 
# Prob2
 myfac <- function(n) {
   fac_val = 1; i = n;
   while(i > 0) {
     fac_val <- fac_val*i;
     i <- i - 1;
   }
   print(fac_val);
 }
 
 # ex> myfac(10)
 
# Prob3
 mytime <- function(n) {
   mini <- hour <- day <- NULL;
   mini <- n%/%60; hour <- mini%/%60; day <- hour%/%24;
   cat(n,"sec = ",day,"days ",hour%%24,"hours ",mini%%60,"minutes",n%%60,"seconds");
 }
 # ex> mytime(123456)
 
 # Prob4
 myscore <- function(grade,score) {
   if ((score > 100 | score < 0) | !(grade %in% c(1:4))) {
     return("점수 혹은 학년을 잘못입력하셨습니다.");
   }
   if (grade == 1 | grade == 2 | grade == 3) {
     if (score >= 80) {
       print("A");
     } else if (score > 70) {
       print("B");
     } else if (score > 60) {
       print("C");
     } else {
       print("F");
     }
   } else {
     if (score >= 90) {
       print("A");
     } else if (score > 70) {
       print("B");
     } else if (score > 60) {
       print("C");
     } else {
       print("F");
     }
   }
 }
 
 # ex> myscore(3,95) 3학년 95점1

 # Prob5
 mygame <- function(n){
  win <- draw <- lose <- 0;
  sco_win <- 1000; sco_draw <- 50; sco_lose <- -1000;
  sco_cur <- 0; i <- 1;
  while (i <= n) {
    user_in = readline(prompt="가위 바위 보 중 하나를 타이핑하시오: ");
    if (user_in == "가위") {
      com_out = sample(rep(c("가위","바위","보"),c(30,50,20)),1,TRUE);
      cat(i,"/",n," You: ",user_in,", Computer: ",com_out);
      if (com_out == "가위") {
        draw <- draw + 1; i <- i + 1;
        sco_cur <- sco_draw + sco_cur;
      cat("\n비겼습니다. 당신의 현재 금액은 ",sco_cur,"만원 입니다.");
      } else if (com_out == "바위") {
        lose <- lose + 1; i <- i + 1;
        sco_cur <- sco_lose + sco_cur;
        cat("\n당신이 졌습니다. 당신의 현재 금액은 ",sco_cur,"만원 입니다.");
      } else {
        win <- win + 1; i <- i + 1;
        sco_cur <- sco_win + sco_cur;
        cat("\n당신이 이겼습니다. 당신의 현재 금액은 ",sco_cur,"만원 입니다.");
      }
    } else if (user_in == "바위") {
      com_out = sample(rep(c("가위","바위","보"),c(20,30,50)),1,TRUE);
      cat(i,"/",n," You: ",user_in,", Computer: ",com_out);
            if (com_out == "바위") {
        draw <- draw + 1; i <- i + 1;
        sco_cur <- sco_draw + sco_cur;
        cat("\n비겼습니다. 당신의 현재 금액은 ",sco_cur,"만원 입니다.");
      } else if (com_out == "보") {
        lose <- lose + 1; i <- i + 1;
        sco_cur <- sco_lose + sco_cur;
        cat("\n당신이 졌습니다. 당신의 현재 금액은 ",sco_cur,"만원 입니다.");
      } else {
        win <- win + 1; i <- i + 1;
        sco_cur <- sco_win + sco_cur;
        cat("\n당신이 이겼습니다. 당신의 현재 금액은 ",sco_cur,"만원 입니다.");
      }
    } else if (user_in == "보") {
      com_out = sample(rep(c("가위","바위","보"),c(50,20,30)),1,TRUE);
      cat(i,"/",n," You: ",user_in,", Computer: ",com_out);
      if (com_out == "보") {
        draw <- draw + 1; i <- i + 1;
        sco_cur <- sco_draw + sco_cur;
        cat("\n비겼습니다. 당신의 현재 금액은 ",sco_cur,"만원 입니다.");
      } else if (com_out == "가위") {
        lose <- lose + 1; i <- i + 1;
        sco_cur <- sco_lose + sco_cur;
        cat("\n당신이 졌습니다. 당신의 현재 금액은 ",sco_cur,"만원 입니다.");
      } else {
        win <- win + 1; i <- i + 1;
        sco_cur <- sco_win + sco_cur;
        cat("\n당신이 이겼습니다. 당신의 현재 금액은 ",sco_cur,"만원 입니다.");
      }
    } else {
      cat("다시 입력해주세요");
    }
  }
  cat("\n 최종 결과 승:",win," 무:",draw," 패:",lose," 총 금액:",sco_cur,"만원")
 }
 
 # ex> mygame(5) : 5번 가위 바위 보 게임
