#!/usr/bin/env Rscript
library(ISLR)
library(MASS)
set.seed(1)
load(file = "ISLR/data/Carseats.rda")


predict_sales <- function(){
  lm.fit = lm(Sales ~.-Sales,data=Carseats)
  summary(lm.fit)
}

predict_price <- function(){
  lm.fit = lm(Price ~.-Price ,data=Carseats)
  summary(lm.fit)
}

predict_urban <- function(){
  lm.fit = lm(Urban ~.-Urban ,data=Carseats)
  summary(lm.fit)
}
