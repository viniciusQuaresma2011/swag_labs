1º Passo: Clonar o projeto -> Branch: justa

git clone https://github.com/viniciusQuaresma2011/swag_labs.git

2º Passo: Entrar na pasta do projeto

cd swag_labs

3º Passo: Acessar os seguintes diretorios

1º cd resources 2º cd data 3º cd Carrinho

4º Passo: Se caso nao possua o Python instalado, execute o comando abaixo

python3 -m pip install robotframework && pip install robotframework-requests &&  pip install selenium==4.9.1 && pip install robotframework-selenium2library
&& pip install xvfbwrapper && pip install robotframework-xvfb && pip install certifi && pip install asn1crypto
&& pip install bcrypt && pip install robotframework-sshlibrary && pip install cryptography && pip install pyOpenSSL
&& pip install idna && pip install requests[security]

5º Passo: Após a instalacao acima, Se caso nao possua o WebDriver, realize o donwload do EdgeDrive.exe(na versão do navegador de sua preferência), configure o WebDrive na variável de ambiente do seu Dispositivo, abra o Terminal e execute o código abaixo:

python -m robot Carrinho.robot

6º Passo: Pronto, agora é só conferir os resultados dos testes, abra no navegador o a página Log.html
