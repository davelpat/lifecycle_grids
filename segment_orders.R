orders.segm <- orders %>%
  mutate(segm.freq=ifelse(between(frequency, 1, 1), '1',
                   ifelse(between(frequency, 2, 2), '2',
                   ifelse(between(frequency, 3, 3), '3',
                   ifelse(between(frequency, 4, 4), '4',
                   ifelse(between(frequency, 5, 5), '5', '>5'))))))

# defining order of boundaries
orders.segm$segm.freq <- factor(orders.segm$segm.freq,
                                levels=c('>5', '5', '4', '3', '2', '1'))
