# exploratory analysis
ggplot(orders, aes(x=frequency)) +
  theme_bw() +
  scale_x_continuous(breaks=c(1:10)) +
  geom_bar(alpha=0.6, binwidth=1) +
  ggtitle("Distribution by frequency")

ggplot(orders, aes(x=recency)) +
  theme_bw() +
  geom_bar(alpha=0.6, binwidth=1) +
  ggtitle("Distribution by recency")

ggplot(lcg, aes(x=client, y=quantity, fill=quantity)) +
  theme_bw() +
  theme(panel.grid = element_blank())+
  geom_bar(stat='identity', alpha=0.6) +
  geom_text(aes(y=max(quantity)/2, label=quantity), size=4) +
  facet_grid(segm.freq ~ segm.rec) +
  ggtitle("LifeCycle Grids")

ggplot(lcg.sub, aes(x=client, y=quantity, fill=gender)) +
  theme_bw() +
  theme(panel.grid = element_blank())+
  geom_bar(stat='identity', position='fill' , alpha=0.6) +
  facet_grid(segm.freq ~ segm.rec) +
  ggtitle("LifeCycle Grids by gender (proportion)")
