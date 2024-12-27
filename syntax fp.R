data1 <- read.csv("C:/Users/ACER/Documents/Kuliah  S1/SEMESTER 4/ADW/Final Project/sebelum intervensi.csv")
data1

data <- ts(data1)

#ADF test sblm
library(tseries)
hasil1 <- adf.test(data)
hasil1

difer <- diff(data)
difer

hasil2 <- adf.test(difer)
hasil2

library(forecast)
library(TSA)
auto.arima(data1, ic='aic', trace = T)
