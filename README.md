# ExerciciosBancoDeDados-AC2-9
Exercícios para AC2 da matéria de Banco de Dados do 2º semestre de ADS

Reproduza os códigos da aula, execute e explique detalhadamente o que acontece em cada etapa

---
### ETAPA 1 
* Criação da tabela "pedidos" e trigger "RegistroDataCriacaoPedido": [Exercicio9_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/Exercicio9_1.sql) <br>
 ![ExercicioTela9_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/ExercicioTela9_1.png)

* Inserção de dados na tabela: [Exercicio9_2.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/Exercicio9_2.sql) <br>
![ExercicioTela9_2.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/ExercicioTela9_2.png)


**RESULTADO:** <br>
A execução foi bem sucedida, o dado foi inserido com sucesso e, apesar do campo "DataPedido" não ser preenchido no "INSERT VALUES", devido ao trigger, o campo da nova linha foi preenchida com a data e hora em que o pedido foi criado.
 
---
### ETAPA 2
* Criação das tabelas "filmes", "log_deletions" e dos triggers "chk_minutos" e "log_deletions": [Exercicio9_3.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/Exercicio9_3.sql) <br>
 ![ExercicioTela3_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/ExercicioTela3_1.png)
 ![ExercicioTela3_2.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/ExercicioTela3_2.png)


* Inserção de dados na tabela "filmes": [Exercicio9_4.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/Exercicio9_4.sql) <br>
![ExercicioTela9_4.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/ExercicioTela9_4.png)

**RESULTADO:** <br>
Os dados foram inseridos com sucesso até a 4ª inserção. Durante a 5ª tentativa houve um erro identificado pelo trigger "chk_minutos", pois, o filme em questão possuia uma quantidade de minutos negativa e, por causa disso, foi lançado o erro 2022.

* Deleção de dados na tabela "filmes": [Exercicio9_5.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/Exercicio9_5.sql) <br>
![ExercicioTela9_5.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AC2-9/blob/main/ExercicioTela9_5.png)

**RESULTADO:** <br>
Os filmes de ids 2 e 4 foram deletados da tabela e, devido ao trigger "log_deletions" as deleções foram registradas na tabela "log_deletions" com o nome do filme, hora da deleção e usuário responsável.
