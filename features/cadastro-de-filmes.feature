#language: pt

@login
Funcionalidade: Cadastro de filmes
    Para que eue possa disponibilizar novos títulos no catálogo
    Sendo um gestor de catálogo
    Posso cadastrar um novo filme

    @new_movie
    Esquema do Cenario: Novo Filme
        O gestor de catálogo cadastra um novo filme através do formulário
        e um novo registro é inserido no catálogo Ninjaflix

      Dado que <codigo> é um novo filme
      Quando eu faço o cadastro deste filme
      Então devo ver o novo filme na lista.

      Exemplos:
          | codigo      |
          | "ultimato"  |
          | "spider"    |
          | "jocker"    |

      Cenario: Sem nome
        Quando eu tento cadastrar um filme sem o nome
        Então devo ver a notificação "Oops - Filme sem titulo. Pode isso Arnaldo?"

      Cenario: Sem status
        Quando eu tento cadastrar um filme sem o status
        Então devo ver a notificação "Oops - O status deve ser informado!"

      Cenario: Ano de lançamento não informado
        Quando eu tento cadastrar um filme sem a data de estréia
        Então devo ver a notificação "Opps - Faltou o ano de lançamento também!"

      Cenario: Data de estréia não informada
        Quando eu tento cadastrar um filme sem a data de estréia
        Então devo ver a notificação "Opps - Quase lá, só falta a data de estréia!"

      Cenario: Duplicado
        Quando que "Deadpool 2" já foi cadastrado
        Quando eu faço o cadastrado deste filme
        Então devo ver a notificação "Opps - Este título já existe no Ninjaflix."

