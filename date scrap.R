interp_date_table<-cbind(interp_date_table,rep(0,nrow(date_table)))
names(interp_date_table)[5]<-"DoW"

# Loop through table and assign variable; we could have done this above but it would have confused
# the assignmetn so we'll just do it again. 
for (i in 1:nrow(date_table)) {
    thisDoW<-weekdays(as.Date.character(interp_date_table[i,1]))
    if  (thisDoW %in% c("Saturday","Sunday")) {
        interp_date_table[i,5] <- "weekend"
    }
    else {
        interp_date_table[i,5] <- "weekday"
        
    }
}
