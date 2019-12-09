setwd("C://Users/laflaski/Documents");
options(scipen = 30, warn = -1);
suppressMessages(library(DBI));
suppressMessages(library(RMariaDB));
suppressMessages(library(readr));
dat <- NULL; dat <- read_csv("data_file.csv");

con <- dbConnect(MariaDB(), user = "***", password = "***", dbname = "***", host = "***", port = ***);
dbWriteTable(con,"table_name", dat, overwrite = FALSE, row.names = FALSE, append = T);
dbDisconnect(con);
