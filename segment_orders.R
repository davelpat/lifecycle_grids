orders.segm <- orders %>%
  mutate(segm.freq=ifelse(between(frequency, 1, 1), '1',
                   ifelse(between(frequency, 2, 2), '2',
                   ifelse(between(frequency, 3, 3), '3',
                   ifelse(between(frequency, 4, 4), '4',
                   ifelse(between(frequency, 5, 5), '5',
                          '>5')))))) %>%
  mutate(segm.rec=ifelse(between(recency, 0, 6), '0-6 days',
                  ifelse(between(recency, 7, 13), '7-13 days',
                  ifelse(between(recency, 14, 19), '14-19 days',
                  ifelse(between(recency, 20, 45), '20-45 days',
                  ifelse(between(recency, 46, 80), '46-80 days',
                         '>80 days')))))) %>%
  # creating last cart feature
  mutate(cart=paste(ifelse(a!=0, 'a', ''),
                    ifelse(b!=0, 'b', ''),
                    ifelse(c!=0, 'c', ''),
                    sep='')) %>%
  arrange(clientId)

# defining order of boundaries
orders.segm$segm.freq <- factor(orders.segm$segm.freq,
                                levels=c('>5', '5', '4', '3', '2', '1'))
orders.segm$segm.rec <- factor(orders.segm$segm.rec,
                               levels=c('>80 days', '46-80 days', '20-45 days', '14-19 days', '7-13 days', '0-6 days'))
