# Projeto: Análise Estatística de Dados do Agronegócio

Este projeto tem como objetivo aplicar técnicas de estatística descritiva utilizando a linguagem R, com foco em dados relacionados ao setor agropecuário brasileiro.

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


## 📈 Análises Previstas

- Medidas de tendência central (média, mediana, moda)
- Medidas de dispersão (amplitude, desvio padrão, variância)
- Medidas separatrizes (quartis)
- Gráficos de barras, histogramas e boxplots
- Comparações de produtividade por tipo de assistência e uso de irrigação
- Análise regional da produtividade (por estado)


## 📁 Estrutura de Arquivos

- `README.md` → Documentação do projeto
- `agriculture_dataset.xlsx` → Base de dados simulada
- `agriculture-project.R` → Script com as análises em R
