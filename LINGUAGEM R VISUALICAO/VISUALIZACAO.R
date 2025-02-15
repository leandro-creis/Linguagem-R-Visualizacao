#############################################################################
################################### VISUALIZA��O ############################

library(ggplot2)
library(dplyr)
library(forcats)

########## QUANTIDADE DE PONTO DE VENDA POR ESTADO ############################
GLP_clean %>%
  ggplot(aes(Estado)) + 
  geom_bar() + 
labs(
  x = "ESTADO",
  y = "PONTOS DE VENDA",
  title = "QUANTIDADE DE PONTO DE VENDA POR ESTADO"
)
########## DENSIDADE DE PRE�O DO GLP ############################

GLP_clean %>%
  ggplot(aes(Valor)) + 
  geom_density(fill = "steelblue", size = 1)

########## DATA DE COLETA DE GLP NOS ESTADOS ############################
GLP_clean %>%
  ggplot(aes(Coleta, Estado)) +
  geom_point() +
  labs(
    x = "DATE DE COLETA",
    y = "ESTADOS",
    title = "DATA DE COLETA DE GLP NOS ESTADOS"
)
########## VALOR DO GLP NA DATA DA COLETA ############################
GLP_clean  %>%
  ggplot(aes(Coleta,Valor)) +
  geom_point() +
  scale_y_continuous(labels = scales::label_number())+
  labs(
      x = "DATE DE COLETA",
      y = "VALOR",
      title = "VALOR DO GLP NA DATA DA COLETA"
 )

########## VALOR M�DIO DO GLP POR ESTADO ############################
preco_estado %>%
  ggplot(aes(Estado,Total)) +
  geom_boxplot() +
  scale_y_continuous(labels = scales::label_dollar(
    prefix = "R$" ,
    big.mark = ".",
    decimal.mark = ",",
    accuracy = NULL)) +
  labs(
    x = "ESTADO",
    y = "VALOR M�DIO GLP",
    title = "VALOR M�DIO DO GLP POR ESTADO")

########## VALOR M�DIO DO GLP POR REGI�O ############################

preco_regiao %>%
  ggplot(aes(Regiao,Total)) +
  geom_boxplot() +
  scale_y_continuous(labels = scales::label_dollar(
    prefix = "R$" ,
    big.mark = ".",
    decimal.mark = ",",
    accuracy = NULL)) +
  labs(
    x = "REGI�O",
    y = "VALOR M�DIO GLP",
    title = "VALOR M�DIO DO GLP POR REGI�O")

########## QUANTIDADE DE BANDEIRA DE GLP ############################
GLP_clean %>%
  ggplot(aes(Bandeira)) + 
  geom_bar() + 
  labs(
    x = "BANDEIRA",
    y = "PONTOS DE VENDA",
    title = "QUANTIDADE DE BANDEIRA DE GLP "
  )

