# agriculture_analysis.R
# Autor: Amanda Pires RM565045, Ana Gabriela RM565235, Bianca Santa Cruz RM561390, Milena Silva RM565464, Nayana Miazaki RM565045
# Objetivo: Análise estatística exploratória de dados agrícolas

# Carregar pacotes utilizados
library(readxl)     # para ler o arquivo Excel
library(ggplot2)    # para gráficos

# Carregar Base de Dados
agriculture_dataset <- read_excel("agriculture_dataset.xlsx")

# Visualizar estrutura e dados da base 
head(agriculture_dataset)
str(agriculture_dataset)

# Converter variáveis qualitativas para fator
agriculture_dataset$estado <- as.factor(agriculture_dataset$estado)
agriculture_dataset$uso_irrigacao <- as.factor(agriculture_dataset$uso_irrigacao)
agriculture_dataset$tipo_assistencia <- factor(agriculture_dataset$tipo_assistencia, 
                                               levels = c("Nenhuma", "Pública", "Privada"), 
                                               ordered = TRUE)
agriculture_dataset$grau_instrucao <- factor(agriculture_dataset$grau_instrucao, 
                                             levels = c("Fundamental", "Médio", "Superior"), 
                                             ordered = TRUE)

# Análise da variável quantitativa: produtividade_kg_ha
# Tendência Central (Média, Mediana e Moda (via função construida))
productivity_mean <- mean(agriculture_dataset$
                            produtividade_kg_ha)
productivity_median <- median(agriculture_dataset$produtividade_kg_ha)
productivity_mode <- as.numeric(names(sort(table(agriculture_dataset$produtividade_kg_ha), decreasing = TRUE))[1])

# Medidas de Dispersão (Desvio padrão, Variância e Amplitude)
productivity_sd <- sd(agriculture_dataset$produtividade_kg_ha)
productivity_var <- var(agriculture_dataset$produtividade_kg_ha)
productivity_max <- max(agriculture_dataset$produtividade_kg_ha)
productivity_min <- min(agriculture_dataset$produtividade_kg_ha)
productivity_range <- productivity_max - productivity_min

# Quartis
productivity_quartiles <- quantile(agriculture_dataset$produtividade_kg_ha, probs = c(0.25,0.5,0.75))

# Mostrar Resultados
cat("Média:", productivity_mean, "\n")
cat("Mediana:", productivity_median, "\n")
cat("Moda:", productivity_mode, "\n")
cat("Desvio Padrã:o", productivity_sd, "\n")
cat("Variância:", productivity_var, '\n')
cat("Amplitude:", productivity_range, '\n')
cat("Q1:", productivity_quartiles[1],
    "Q2 (Median):", productivity_quartiles[2],
    "Q3:", productivity_quartiles[3], "\n")

# Visualização Gráfica da Variável Quantitativa: produtividade_kg_ha
# Gráfico Violino: Produtividade por Grau de Instrução
ggplot(agriculture_dataset, aes(x = grau_instrucao, y = produtividade_kg_ha)) +
  geom_violin(fill = "lightblue") +
  labs(title = "Produtividade por Grau de Instrução",
       x = "Grau de Instrução",
       y = "Produtividade (kg/ha)") +
  theme_minimal()

# Boxplot de Produtividade por tipo de assistência
ggplot(agriculture_dataset, aes(x = tipo_assistencia, y = produtividade_kg_ha)) +
  geom_boxplot(fill = "coral") +
  labs(title = "Produtividade por Tipo de Assistência",
       x = "Tipo de Assistência", y = "Produtividade (kg/ha)") +
  theme_minimal()

# Visualização Gráfica da Variável Qualitativa: uso_irrigacao
#Gráfico de Densidade da Produtividade por Uso de Irrigação
ggplot(agriculture_dataset, aes(x = produtividade_kg_ha, fill = uso_irrigacao)) +
  geom_density(alpha = 0.5) +
  labs(title = "Distribuição da Produtividade por Uso de Irrigação",
       x = "Produtividade (kg/ha)",
       y = "Densidade",
       fill = "Usa Irrigação") +
  theme_minimal()



  