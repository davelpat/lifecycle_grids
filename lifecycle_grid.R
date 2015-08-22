lcg <- orders.segm %>%
  group_by(segm.rec, segm.freq) %>%
  summarise(quantity=n()) %>%
  mutate(client='client') %>%
  ungroup()