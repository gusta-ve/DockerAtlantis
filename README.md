# AtlantisBurguer - Aplicação Web Conteinerizada

## Descrição do Projeto

Este projeto consiste no desenvolvimento e conteinerização de uma aplicação web estática para a hamburgueria fictícia "AtlantisBurguer". A aplicação foi desenvolvida como parte da disciplina de **Desenvolvimento de Sistemas em Nuvem**.

O objetivo principal foi criar uma presença online para a hamburgueria, apresentando seu cardápio e informações, e em seguida, empacotar esta aplicação utilizando Docker para garantir portabilidade e facilitar sua implantação em ambientes de nuvem.

## Contexto Acadêmico

* **Disciplina:** Desenvolvimento de Sistemas em Nuvem
* **Professor:** Aparecido
* **Instituição:** USCS - Universidade de São Caetano do Sul
* **Curso:** Bacharelado em Ciência da Computação

## Tecnologias Utilizadas

* **Front-end:**
    * HTML5
    * CSS3
    * JavaScript
* **Design e Prototipação:**
    * Figma
* **Servidor Web (no container):**
    * Nginx (via imagem `nginx:alpine`)
* **Conteinerização:**
    * Docker

## Funcionalidades Principais do Site

* Página Inicial (`index.html`) com destaques e informações gerais.
* Página de Cardápio (`cardapio.html`) detalhando os produtos.
* Página "Sobre Nós" (`sobre.html`) com informações sobre o estabelecimento.
* Design responsivo, adaptável a diferentes tamanhos de tela.
* Navegação intuitiva entre as seções.

## Configuração e Execução Local (via Docker)

Para executar este projeto localmente utilizando Docker, siga os passos abaixo:

1.  **Clone o Repositório:**
    ```bash
    git clone [https://github.com/gusta-ve/DockerAtlantis.git](https://github.com/gusta-ve/DockerAtlantis.git)
    cd DockerAtlantis
    ```

2.  **Construa a Imagem Docker:**
    Navegue até a raiz do projeto (onde o `Dockerfile` está localizado) e execute:
    ```bash
    sudo docker build -t atlantisburguer-app .
    ```

3.  **Execute o Container Docker:**
    Após a imagem ser construída, rode o container:
    ```bash
    sudo docker run -d -p 8080:80 atlantisburguer-app
    ```

4.  **Acesse a Aplicação:**
    Abra seu navegador e acesse `http://localhost:8080`.

## Imagem Docker no Docker Hub

A imagem Docker desta aplicação está disponível publicamente no Docker Hub e pode ser baixada utilizando:

```bash
docker pull gustavofacul/atlantisburguer-app:latest
