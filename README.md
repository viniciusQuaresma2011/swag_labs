![Captura de tela_13-2-2024_132012_www saucedemo com](https://github.com/viniciusQuaresma2011/swag_labs/assets/85623269/f4c21482-736e-46bd-9f1a-d572161a5832)

<h1>Projeto de automação Web em um E-commerce de Produtos com Robot-Framework(Scripts) + Selenium + Gherkin(Cenários de Testes)</h1>

> ATENÇÃO -> Projeto configurado para rodar em Container :D

### 1º Passo: Clonar o projeto -> Branch: master

+ git clone https://github.com/viniciusQuaresma2011/swag_labs.git

### 2º Passo: Entrar na pasta do projeto

+ cd swag_labs

### 3º Passo: Crie uma imagem docker

+ docker build -t testando .

### 4º Passo: Execute o comando para rodar o teste

 docker run --user=nonroot -v ${PWD}\output:/output testando

### 5º Passo: acesse a pasta output e veja o resultado dos testes.




