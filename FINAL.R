#FINDING 1

m=m[order(-m$VIEWS),]
counts <- table(m$VIEWS)
barplot(counts, main="VIEWS vs VIDEO", xlab="VIEWS", ylab="VIDEO_ID")

#FINDING 2

CAT_SUMMARY <- summary(CAT$V4)
barplot(CAT_SUMMARY,main="category",xlab = "CATEGORY", ylab="COUNT", horiz=FALSE, names.arg = c("VEHICLES", "COMEDY", "FUN","FILM", "GADGETS", "DIY", "MUSIC","NEWS", "BLOG","PET","SPORT","TRIP","UNA",""))


#FINDING 3
test <- unique(agg[c("USER_ID", "UPLOADS")])
test3 <- data.frame(test3,data$V6)
test5 <- aggregate(VIEWS ~ CATEGORY + VIEWS , test3, mean )
x <- test5$VIEWS
piepercent<- round(100*x/sum(x), 1)
labels <- test5$CATEGORY
pie(x, labels = piepercent, main = "AVERAGE VIEWS PER CATEGORY",col = rainbow(length(x)))
legend("topright", c("AUTO","COMEDY","FUN","FILM","GADGETS","DIY","MUSIC","NEWS","PEOPLE","PETS","GAMES","TRIPS","UNA","OTHERS"), cex = 0.8,fill = rainbow(length(x)))

#FINDING 4

test1 <- head(test, n=10)
barplot(test1$UPLOADS,names.arg=test1$USER_ID,xlab="user", ylab="uploads", main ="TOP 10 UPLOADS")

#FINDING 5

