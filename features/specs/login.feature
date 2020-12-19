#language:pt

@login
Funcionalidade: Quero realizar login
Eu quero acessar minha conta e realizar compras 

Cenario: Login

Dado que quero realizar login
Quando preencho 'rogerio@yahoo.com.br','123456' 
Entao acesso a minha conta e vejo 'My account'


Esquema do Cenario: Login alternativo 

Dado que quero realizar login
Quando preencho <email>,<senha> 
Entao acesso a minha conta e vejo mensagem <mensagem>

Exemplos:
|email                   |senha   |mensagem                |

|'rogerio@yahoo.com.br'  |'123456'|"My account"                |
|'rogerio@hotmail.com.br'|'123456'|"Authentication failed."    |
|'rogerio@yahoo.com.br'  |'12345' |"Authentication failed."    |
|'rogerio@yahoo.com.br'  |'     ' |"Password is required."     |
|'  '                    |'12345' |"An email address required."|