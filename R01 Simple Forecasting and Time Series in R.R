##########################################
# Source: YouTube Scott Burk
##########################################

library(fpp)


##########################################
# Plot num passengers flying Ansett MEL-SYD 1987-1983
##########################################
plot(melsyd[, "Economy.Class"],
     main = "Economy class passengers: Melbourne-Sydney",
     xlab = "Year", ylab = "Thousands")

##########################################
# Plot antidiabetic drug sales 1992-2008
##########################################
plot(a10, ylab="$ million",
     xlab="Year",
     main="Antidiabetic drug sales")

# Analyse seasonality of antidiabetic drug sales
seasonplot(a10, ylab="$ million",
        xlab="Year",
        main = "Seasonal plot: antidiabetic drug sales",
        year.labels=TRUE, year.labels.left=TRUE, col=1:20, pch=19)

# Analyse monthly variance on antidiabetic drug sales
monthplot(a10, ylab="$ million", xlab="Month", xaxt="n",
          main="Seasonal deviation plot: antidiabetic drug sales")
axis(1, at=1:12, labels=month.abb, cex=0.8)

plot(jitter(fuel[,5]), jitter(fuel[,8]),
                             xlab="city mpg",
                             ylab="carbon footprint")

pairs(fuel[,-c(1:2,4,7)], pch=19)
