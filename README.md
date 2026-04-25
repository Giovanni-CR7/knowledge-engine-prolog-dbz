# Dragon Ball Z Knowledge Engine (Prolog)

## Descrição

Este projeto implementa um mecanismo de inferência baseado em Lógica de Primeira Ordem utilizando Prolog. A partir de um dataset de personagens de Dragon Ball Z, foi construída uma base de conhecimento capaz de responder consultas por meio de regras lógicas.

O objetivo é transformar dados estruturados em fatos Prolog e permitir consultas mais elaboradas utilizando inferência.


## Dataset

Fonte:
https://www.kaggle.com/datasets/sujithmandala/dragon-ball-z-characters-information

O dataset contém informações sobre os principais personagens de dragon ball, incluindo nome, raça, gênero, nível de poder, velocidade, ataque especial e transformações.


## Etapas

### 1. ETL em Python

O script em Python realiza:

* Leitura do arquivo CSV
* Limpeza e padronização dos dados
* Conversão para fatos Prolog

Exemplo gerado:

```prolog
character(goku, saiyan, male, 9000, fast, spirit_bomb, super_saiyan).
```

---

### 2. Base de Conhecimento

Arquivo: `base.pl`

Define o predicado:

```prolog
character(Nome, Raca, Genero, Power, Speed, Attack, Transformation).
```

---

### 3. Regras e Consultas

Arquivo: `queries.pl`

Foram implementadas regras que permitem consultas mais complexas, incluindo agregação, ordenação e agrupamento.

---

## Consultas

### Qual é a raça mais forte?

```prolog
?- raca_mais_forte(R).
```

---

### Quais são os 3 personagens mais fortes e seus níveis de poder?

```prolog
?- top_3_fortes(T).
```

---

### Qual é a média de poder por raça?

```prolog
?- media_poder(R, M).
```

---

## Execução

1. Executar o script Python:

```bash
python script.py
```

2. Abrir o SWI-Prolog:

```bash
swipl
```

3. Carregar os arquivos:

```prolog
?- ['base.pl'].
?- ['queries.pl'].
```

4. Executar as consultas:

```prolog
?- raca_mais_forte(R).
?- top_3_fortes(T).
?- media_poder(R, M).
```
