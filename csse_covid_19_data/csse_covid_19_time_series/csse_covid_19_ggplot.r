library(dplyr)
library(ggplot2)
library(ggthemes)

#plot daily deaths
deaths_tidy %>% filter(Country == "US", Deaths_Total > 0) %>% 
  ggplot(aes(x = Date, y = Deaths_Daily, colour = ProvState)) +
  # geom_smooth(method = "gam", colour = "#00000090") +
  geom_point() +
  geom_line() +
  labs(title = "COVID-19 Daily Deaths",
       subtitle = "Total Deaths: ") +
  theme_stata() +
  # theme(legend.position = "none") +
  NULL

