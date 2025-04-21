# Projeto: Análise Estatística de Dados do Agronegócio

Este projeto tem como objetivo aplicar técnicas de estatística descritiva utilizando a linguagem R, com foco em dados relacionados ao setor agropecuário brasileiro.

## 📛 Integrantes

- Amanda Pires - RM565045
- Ana Gabriela - RM565235
- Bianca Santa Cruz - RM561390
- Milena Silva - RM565464
- Nayana Miazaki - RM565045

## 🧭 Objetivo

Criar uma base de dados com 30 linhas e 7 variáveis que represente, de forma realista e fundamentada, aspectos da agricultura no Brasil. Em seguida, realizar análises descritivas e gráficas com base nesses dados.

## 📚 Fontes Oficiais Utilizadas

Os dados foram inspirados em fontes públicas confiáveis:

- [IBGE – Censo Agropecuário 2017](https://censoagro2017.ibge.gov.br/)
- [CONAB – Companhia Nacional de Abastecimento](https://www.conab.gov.br/)
- [MAPA – Ministério da Agricultura, Pecuária e Abastecimento](https://www.gov.br/agricultura/)
- [EMBRAPA – Empresa Brasileira de Pesquisa Agropecuária](https://www.embrapa.br/)
- [CNA – Confederação da Agricultura e Pecuária do Brasil](https://www.cnabrasil.org.br/)

## 🧱 Estrutura da Base de Dados

A base contém as seguintes variáveis:

| Variável                | Tipo                    | Descrição                                                       |
|-------------------------|-------------------------|-----------------------------------------------------------------|
| id_fazenda              | Qualitativa Nominal     | Identificador único para cada propriedade                       |
| estado                  | Qualitativa Nominal     | UF da propriedade (ex: MT, SP, BA, RS...)                       |
| uso_irrigacao           | Qualitativa Nominal     | Indica se a propriedade utiliza irrigação (`Sim` ou `Não`)      |
| tipo_assistencia        | Qualitativa Ordinal     | Tipo de assistência técnica recebida (`Nenhuma`, `Pública`, `Privada`)   |
| grau_instrucao          | Qualitativa Ordinal     | Grau de instrução do produtor (`Fundamental`, `Médio`, `Superior`) |
| area_ha                 | Quantitativa Contínua   | Tamanho da propriedade em hectares                              |
| produtividade_kg_ha     | Quantitativa Contínua   | Produtividade média em kg por hectare                           |

**Nota sobre o tratamento ordinal:** A variável `tipo_assistencia` foi considerada como ordinal com base em uma interpretação funcional da escalada de suporte técnico oferecido: `Nenhuma` < `Pública` < `Privada`. Esse ordenamento representa um grau crescente de suporte potencial à produção agrícola, sendo uma hipótese comum em análises de impacto tecnológico no campo.

## 🛠️ Processo de Criação da Base de Dados (Excel)

A base de dados foi construída com 30 linhas, representando diferentes propriedades rurais, com variáveis simuladas de forma coerente e fundamentada em estatísticas públicas confiáveis. A seguir, descrevemos o racional adotado para cada variável.

### Variável: `estado`
Selecionamos estados com forte atuação no setor agropecuário, conforme os dados da CONAB e IBGE:
- MT (Mato Grosso)
- GO (Goiás)
- BA (Bahia)
- SP (São Paulo)
- RS (Rio Grande do Sul)
- PR (Paraná)

Cada estado aparece em aproximadamente 5 linhas.

### Variável: `uso_irrigacao`
Segundo o IBGE, cerca de 10% dos estabelecimentos utilizam irrigação. Para enriquecer a análise, simulamos:
- 5 fazendas com "Sim"
- 25 fazendas com "Não"

### Variável: `tipo_assistencia`
Dados do Censo Agro 2017 indicam:
- 45% dos produtores não recebem assistência
- 35% recebem assistência pública
- 20% recebem assistência privada

Na base, isso se traduz em:
- 13 “Nenhuma”
- 10 “Pública”
- 7 “Privada”

### Variável: `grau_instrucao`
Com base no perfil educacional dos produtores no Censo Agropecuário:
- 15 produtores com nível Fundamental
- 10 com Ensino Médio
- 5 com Ensino Superior

### Variável: `area_ha`
A distribuição das propriedades seguiu o modelo de tipificação do IBGE:
- Pequenas (5–20 ha): 10 fazendas
- Médias (30–100 ha): 10 fazendas
- Grandes (100–300 ha): 10 fazendas

Valores foram sorteados aleatoriamente dentro dessas faixas.

### Variável: `produtividade_kg_ha`
A produtividade foi gerada entre:
- 2.500 a 4.200 kg/ha

Critérios de coerência:
- Propriedades com irrigação, assistência privada e grau de instrução mais alto tendem a ter produtividade maior.
- Propriedades com “Nenhuma” assistência ou sem irrigação tendem a ficar na faixa mais baixa.

## 📊 Análises Realizadas

### 🔹 Análise da variável quantitativa: `produtividade_kg_ha`

- Foram calculadas as medidas de tendência central (média, mediana, moda), dispersão (desvio padrão, variância, amplitude) e separatrizes (quartis).
- A variável foi analisada graficamente por meio de:
  - **Boxplot segmentado por `tipo_assistencia`**: escolhido por permitir comparação direta entre grupos, evidenciando mediana, dispersão e outliers.
  - **Violin plot segmentado por `grau_instrucao`**: utilizado para mostrar, além das medidas centrais, a forma e concentração da distribuição dos dados.

### 🔹 Análise da variável qualitativa: `uso_irrigacao`

- A variável qualitativa `uso_irrigacao` foi analisada graficamente por meio de um **gráfico de densidade da produtividade**, segmentado por grupos (Sim/Não).
- A escolha da densidade se justifica pelo fato de `uso_irrigacao` ser uma variável binária, o que permite a sobreposição clara das curvas e revela o deslocamento da distribuição da produtividade para valores maiores nas propriedades que utilizam irrigação.

## 📌 Resultados e Insights

### 📊 Produtividade

- Fazendas com **assistência privada** apresentaram maior produtividade mediana, ainda que com maior variabilidade entre casos. Isso sugere alto potencial com dependência da qualidade do serviço.
- Fazendas com **assistência pública** tiveram produtividade mediana mais baixa e distribuição mais concentrada, o que pode refletir padronização, mas pouca efetividade.
- A variável `grau_instrucao` demonstrou relação direta: níveis mais altos de formação apresentaram concentração de produtividade em faixas superiores, reforçando a importância da qualificação técnica.

### 🌱 Uso de Irrigação

- A densidade da produtividade nas fazendas com irrigação apresenta um pico deslocado para faixas mais altas, indicando que a prática está associada a melhores desempenhos produtivos.
- A curva do grupo que **não utiliza irrigação** é mais alta, refletindo maior número de fazendas, porém concentradas em faixas de produtividade mais baixas.

## 📁 Estrutura de Arquivos

- `README.md` → Documentação do projeto
- `agriculture_dataset.xlsx` → Base de dados simulada
- `agriculture-project.R` → Script com as análises em R
- `agriculture-project.Rproj`: Arquivo de projeto RStudio

## ▶️ Como Rodar o Projeto

1. Clone este repositório em sua máquina local:
```bash
git clone https://github.com/seu-usuario/seu-repositorio.git
```

2. Abra o projeto no RStudio usando o arquivo `.Rproj`:
```
agriculture-project.Rproj
```

3. Certifique-se de ter as bibliotecas necessárias instaladas:
```r
install.packages(c("ggplot2", "readxl"))
```

4. Rode o script principal:
```r
source("agriculture_analysis.R")
```

Isso irá executar todas as análises estatísticas e gerar os gráficos descritos no README.
