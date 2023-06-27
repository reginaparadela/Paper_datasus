# Rate of admissions for dementia per 100,000 population

install.packages("Kendall")

library(Kendall)

rate <- c(19.7,	18.3,	17.3, 16.8,	16.9, 16.7,	15.8,	15.5,	14.3,	14.6)

#Convert it to a time series object

rate.timeseries <- ts(rate, start = c(2010,1))
rate.timeseries

# use the Mann-Kendall Trend Test to see if there is a pattern in the data

MannKendall(rate.timeseries)

#H0: There is no discernible pattern in the data.

#H1: There is a trend in the data. (This could indicate a positive or negative trend.)

plot(rate.timeseries)

# 80+

rate80plus <- c(261.4, 241.7, 227.7,	220.9,	220.6,	216.3,	203.3, 196.4,	179.1, 179.8)

rate.timeseries80 <- ts(rate80plus, start = c(2010,1))
rate.timeseries80

MannKendall(rate.timeseries80)

plot(rate.timeseries80)


# 90+

rate90plus <- c(1708.7,	1625.1,	1505.4,	1409.5,	1355.9,	1288.5, 1180.2,	1116.1,	1000.9, 990.8)

rate.timeseries90 <- ts(rate90plus, start = c(2010,1))
rate.timeseries90

MannKendall(rate.timeseries90)

plot(rate.timeseries90)
