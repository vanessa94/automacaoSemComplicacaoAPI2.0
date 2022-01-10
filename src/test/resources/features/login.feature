#language:pt
@login
Funcionalidade: Realizar Login
  Testes da API de Login

  @loginValido @regressivo
  Cenario: Realizar login com sucesso
    Dado que tenha um payload valido da API de Login
    Quando envio uma requisicao do tipo POST de Login
    Entao valido que recebo status 200 no response
    E armazeno o token que recebo do response de Login

  @loginInvalido @regressivo
  Esquema do Cenario: Realizar login com <cenario>
    Dado que tenha um payload da API de Login cm as seguintes informacoes
      | email | <email> |
      | senha | <senha> |
    Quando envio uma requisicao do tipo POST de Login
    Entao valido que recebo status 400 no response

    @loginEmailInvalido
    Exemplos:
      | cenario          | email              | senha    |
      | usuario invalido | invalido@email.com | 123456   |

    @loginSenhaInvalida
    Exemplos:
      | cenario          | email              | senha    |
      | senha invalida   | aluno@email.com    | invalido |