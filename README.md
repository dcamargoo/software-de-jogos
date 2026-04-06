# Software de Jogos

## Projeto de Banco de Dados

Este projeto tem como objetivo modelar e implementar um banco de dados relacional para uma plataforma de venda de jogos online. A proposta consiste em desenvolver uma estrutura capaz de armazenar, organizar e relacionar informações importantes do sistema, permitindo o gerenciamento eficiente de usuários, jogos, expansões e avaliações.

A plataforma foi idealizada para possibilitar que usuários comprem jogos, descubram novos títulos, adquiram expansões e realizem avaliações sobre os produtos disponíveis. Nesse contexto, o banco de dados exerce papel fundamental no suporte às operações da aplicação, contribuindo para o controle das informações e para futuras análises estratégicas do negócio.

O desenvolvimento do projeto se inicia na modelagem do banco de dados, passando pela construção do Modelo Entidade-Relacionamento (MER) e do modelo relacional, até chegar à implementação das tabelas e à realização de análises com apoio de consultas SQL e visualizações gráficas.

## Objetivos do Projeto

- Modelar um banco de dados consistente para uma plataforma de jogos online.
- Representar corretamente os relacionamentos entre usuários, jogos, expansões e avaliações.
- Implementar a estrutura lógica do banco de dados.
- Permitir consultas para extração de informações relevantes do sistema.
- Apoiar análises de dados por meio de gráficos, visando gerar insights para o negócio.

## Entidades Principais

O banco de dados foi projetado para armazenar informações sobre:

- Usuários
- Jogos
- Expansões
- Avaliações

## Funcionalidades Representadas no Banco

A modelagem contempla as seguintes regras de negócio:

- Um usuário pode comprar vários jogos, e um jogo pode ser comprado por vários usuários.
- Um usuário pode comprar várias expansões, desde que elas pertençam a jogos existentes.
- Um jogo pode possuir várias expansões, mas cada expansão pertence a apenas um jogo.
- Um usuário pode realizar no máximo uma avaliação para um mesmo jogo.
- Um jogo pode receber avaliações de vários usuários.

## Etapas do Projeto

O projeto foi desenvolvido nas seguintes etapas:

1. Levantamento das regras de negócio.
2. Construção do Modelo Entidade-Relacionamento (MER).
3. Elaboração do modelo relacional lógico.
4. Criação das tabelas no banco de dados.
5. Inserção de dados para simulação.
6. Desenvolvimento de consultas SQL.
7. Geração de análises com gráficos a partir dos dados obtidos.

## Tecnologias Utilizadas

- MySQL
- Python
- Excel
- DBeaver

## Como Executar o Projeto

### 1. Pré-requisitos
Certifique-se de ter instalado:

- MySQL  
- DBeaver  
- Python 3.10+  

---

### 2. Configurar o Banco de Dados

1. Abra o DBeaver e conecte ao MySQL  
2. Crie um novo banco de dados (ex: `software_jogos`)  
3. Execute os scripts SQL na seguinte ordem:

```bash
create.sql
insert.sql
```

---

## 3. Instalar Dependências

No terminal, dentro da pasta do projeto:

```bash
pip install -r requirements.txt
```

---

## 4. Configurar o Banco de Dados e a Conexão no Python

Se for necessário, mude o host e password nessa linha do arquivo main.py:

```python
engine = create_engine("mysql+mysqlconnector://daniel:1234@localhost/software_jogos")
```
