### 국토교통부 지역코드 데이터 업로드
setwd("/home/"); # 작업 디렉토리 설정
options(scipen=30, warn=-1); # 소수점 표시 확장 및 경고 표시 없애기
suppressMessages(Sys.setlocale("LC_ALL", "korean")); # 한글 로케일 설정
suppressMessages(suppressWarnings(library(RMySQL))); # SQL 관리 라이브러리
LocalInfo <- NULL; LocalInfo <- read.csv("localcode.csv", header=T); # 국토교통부 지역정보 불러오기
LocalInfo$id <- trimws(LocalInfo$id);
LocalInfo$sido <- trimws(LocalInfo$sido);
LocalInfo$gugun <- trimws(LocalInfo$gugun); # 문자 앞뒤 빈칸 정제
con <- dbConnect(dbDriver("MySQL"), dbname ="***", host="***", user="***", password ="***"); # DB 접속하기
tryCatch({dbWriteTable(con, "***", LocalInfo, row.names=F, append=T, overwrite=F)}, error=function(e){}); # DB에 올리기
dbDisconnect(con); # DB 접속종료
