require(ggplot2)
require(ggrepel)
t<-read.table("tomasetti-vogelstein-table-s1.tsv", head = T)
ggplot(t, aes(y = Lifetime_cancer_incidence, x = LSCD)) +
    geom_point() + scale_y_log10() + scale_x_log10() +  geom_text_repel(aes(label = Cancer_type))
ggsave("tomasetti-vogelstein-table-s1.png")
