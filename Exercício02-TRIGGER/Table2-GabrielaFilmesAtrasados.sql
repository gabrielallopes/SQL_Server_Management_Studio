USE dbETEC
/*Filmes devolvidos com atraso*/
create table GabrielaFilmesAtrasados
(Id SMALLINT PRIMARY KEY IDENTITY(100,1),
Nome_FilmeAtra VARCHAR (50) NOT NULL,
AtorProtagonista_FilmeAtra VARCHAR (50) NULL,
Genero_FilmeAtra VARCHAR (50) NULL,
PrecoAluguel_FilmeAtra MONEY NOT NULL,
Data_AluguelAtra DATETIME NOT NULL,
Data_DevolucaoAtra DATETIME NOT NULL)

