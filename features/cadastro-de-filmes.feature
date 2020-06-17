#language: pt

Funcionalidade: Cadastro de filmes
    Para que eue possa disponibilizar novos títulos no catálogo
    Sendo um gestor de catálogo
    Posso cadastrar um novo filme

    Esquema do Cenario: Novo Filme

      Dado que <titulo> é um novo filme
      E o status deste filme é <status>
      E o ano de lançamento é <ano>
      E a data de estréia é <data>
      E os atores são <atores>
      E a sinopse do filme é <sinopse>
      E escolhi uma <capa> muito bonita
      Quando eu faço o cadastro deste filme
      Então devo ver o novo filme na lista.

      Exemplos:
      | titulo                     | status    | ano  | data       | atores                                                       | sinopse                                                                                 | capa        |
      | Vingadores Ultimato        | Disponível| 2019 | 24/04/2019 | Robert Downey Jr, Chris Evans, Brie Larson, Scarlett Johansso| Após Thanos eliminar metade do universo, os vingadores terão que resolver esta treta.   | ultimato.jpg|
      | Homem Aranha Longe de Casa | Pré Venda | 2019 | 04/07/2019 | Tom Holland, Samuel L. Jackson, Marisa Tomei                 | Peter Parker está em uma viagem pela Europa e é convocado por Nick Fury para uma missão.| spider.jpg  |
      | Coringa                    | Em breve  | 2019 | 04/07/2019 |     Joaquin Phoenix                                          | O comediante falido Arthur Fleck encontra violentos bandidos pelas ruas de Gotham City. | coringa.jpg |

 
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

