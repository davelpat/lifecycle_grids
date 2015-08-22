# exploratory analysis
ggplot(orders, aes(x=frequency)) +
  theme_bw() +
  scale_x_continuous(breaks=c(1:10)) +
  geom_bar(alpha=0.6, binwidth=1) +
  ggtitle("Dustribution by frequency")
