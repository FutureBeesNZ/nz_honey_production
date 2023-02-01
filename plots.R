library(tidyverse)

pdf(NULL)

prod <- read_csv('honey_production_data.csv')

prod %>% dplyr::filter(variable == "yield") %>% ggplot(aes(x=year, y=value, color=area)) + geom_point() + geom_line()
ggsave('plots/yield.png')


prod %>% dplyr::filter(variable == "prod") %>% ggplot(aes(x=year, y=value, color=area)) + geom_point() + geom_line()
ggsave('plots/production.png')
