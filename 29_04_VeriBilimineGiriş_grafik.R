

getwd()

library(tidyverse) 

df <- read_csv("insurance.csv")

head(df)


glimpse(df)

summary(df)



erkek <- df[df$sex == "male", ]

kadin <- df[df$sex == "female", ]

View(erkek)

table(df$sex)


colSums(is.na(df))



install.packages("tidyverse")
library(tidyverse)


plot_yas_dagilim <- ggplot(df, aes(x = age)) +
  geom_histogram(binwidth = 5, 
                 fill = "pink", 
                 color = "white", 
                 alpha = 0.8) +
  labs(title = "Yaş Dağılımı", 
       x = "Yaş", 
       y = "Kişi Sayısı") +
  theme_light()


plot_yas_dagilim

View(df)


plot_bmi_hist <- ggplot(df, aes(x = bmi)) +
  geom_histogram(binwidth = 2, 
                 fill = "#ff7f0e", 
                 color = "white", 
                 alpha = 0.8) +
  labs(title = "Vücut Kitle İndex (VKİ) Dağılımı", 
       x = "VKİ", 
       y = "Kişi Sayısı") +
  theme_grey()

plot_bmi_hist


plot_cocuk_hist <- ggplot(df, aes(x = children)) +
  geom_histogram(binwidth = 1, 
                 fill = "#2ca02c", 
                 color = "white", 
                 alpha = 0.8) +
  labs(title = "Çocuk Sayısı Dağılım Grafiği", 
       x = "Çocuk Sayısı", y = "Kişi Sayısı") +
  theme_light()

plot_cocuk_hist


plot_maliyet_hist <- ggplot(df, aes(x = expenses)) +
  geom_histogram(binwidth = 1000, 
                 fill = "#d62728", 
                 color = "white", 
                 alpha = 0.8) +
  labs(title = "Maliyet Dağılımı", 
       x = "Maliyetler($)", y = "Kişi Sayısı") +
  theme_light()

plot_maliyet_hist


install.packages("patchwork")

library(patchwork)


(plot_yas_dagilim + plot_bmi_hist) / 
  (plot_cocuk_hist + plot_maliyet_hist)
