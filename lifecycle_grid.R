lcg <- orders.segm %>%
  group_by(segm.rec, segm.freq) %>%
  summarise(quantity=n()) %>%
  mutate(client='client') %>%
  ungroup()

lcg.matrix <- dcast(lcg,
                    segm.freq ~ segm.rec,
                    value.var='quantity',
                    fun.aggregate=sum)

lcg.sub <- orders.segm %>%
  group_by(gender, cart, segm.rec, segm.freq) %>%
  summarise(quantity=n()) %>%
  mutate(client='client') %>%
  ungroup()
