# reporting date
today <- as.Date('2012-04-11', format='%Y-%m-%d')

# processing data
orders <- dcast(orders, orderId + clientId + gender + orderdate ~ product, value.var='product', fun.aggregate=length)
