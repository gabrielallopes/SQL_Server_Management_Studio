CREATE TRIGGER [dbo].[GabrielaAtrasados]
   ON  [dbo].[GabrielaLopesFilmes]
   AFTER INSERT
AS
BEGIN
  
      DECLARE @Nome_Filme VARCHAR(50)
      DECLARE @AtorProtagonista_Filme VARCHAR(50)
      DECLARE @Genero_Filme VARCHAR(50)
      DECLARE @PrecoAluguel_Filme MONEY
      DECLARE @Data_Aluguel DATETIME
      DECLARE @Data_Devolucao DATETIME

	  SELECT
 
      @Nome_Filme = Nome_Filme,
      @AtorProtagonista_Filme = AtorProtagonista_Filme,
      @Genero_Filme = Genero_Filme,
      @PrecoAluguel_Filme = PrecoAluguel_Filme,
      @Data_Aluguel = Data_Aluguel,
      @Data_Devolucao = Data_Devolucao
      FROM Inserted

   INSERT INTO GabrielaFilmesAtrasados(Nome_FilmeAtra, AtorProtagonista_FilmeAtra , Genero_FilmeAtra, PrecoAluguel_FilmeAtra, Data_AluguelAtra, Data_DevolucaoAtra)
      VALUES
      (@Nome_Filme, @AtorProtagonista_Filme, @Genero_Filme, @PrecoAluguel_Filme, @Data_Aluguel, @Data_Devolucao);
	  END
	  