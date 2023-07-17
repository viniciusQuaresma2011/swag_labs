ATENÇÃO -> Projeto configurado para rodar em Container :D

1º Passo: Clonar o projeto -> Branch: justa

git clone https://github.com/viniciusQuaresma2011/swag_labs.git

2º Passo: Entrar na pasta do projeto

cd swag_labs

3º Passo: Crie uma imagem docker

docker build -t testando .

4º Passo: Execute o comando para rodar o teste

docker run --user=nonroot -v ${PWD}\output:/output testando
