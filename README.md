# Software de Jogos

## Projeto de Banco de Dados

Este projeto tem como objetivo modelar e implementar um banco de dados para uma plataforma de venda de jogos online. A proposta consiste em desenvolver uma estrutura capaz de armazenar, organizar e relacionar informações importantes do sistema, permitindo o gerenciamento eficiente de usuários, jogos, expansões e avaliações.

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
