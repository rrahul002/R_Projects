#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#profit for each month
profit_each_month <- round(revenue - expenses, 2)
profit_each_month

#profit after tax for each month (tax: 30%)
profit_aftertax <- round(profit_each_month * 0.7 , 2)
profit_aftertax

#profit margin
profit_margin <- round((profit_aftertax / revenue) *100,0)
profit_margin

#good months
mean_profit <- mean(profit_aftertax)
good_months <- profit_aftertax > mean_profit
good_months

#bad months
bad_months <- profit_aftertax < mean_profit
bad_months

#best month
best_month <- round(max(profit_aftertax),2)
best_month

#worst month
worst_month <- round(min(profit_aftertax), 2)
worst_month
