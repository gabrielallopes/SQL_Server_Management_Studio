USE dbETEC

create table GabrielaLopesFilmes
(Id SMALLINT PRIMARY KEY IDENTITY(100,1),
Nome_Filme VARCHAR (50) NOT NULL,
AtorProtagonista_Filme VARCHAR (50) NULL,
Genero_Filme VARCHAR (50) NULL,
PrecoAluguel_Filme MONEY NOT NULL,
Data_Aluguel DATETIME NOT NULL,
Data_Devolucao DATETIME NOT NULL)


insert into GabrielaLopesFilmes (Nome_Filme, AtorProtagonista_Filme, Genero_Filme, PrecoAluguel_Filme, Data_Aluguel, Data_Devolucao) VALUES
('Gente Grande','Adam Sandler','Comédia','5.90','2020-05-03','2020-05-12'),
('O Iluminado','Jack Nicholson','Terror','5.50','2020-05-11','2020-05-22'),
('Corra!','Daniel Kaluuya','Terror','4.30','2020-05-20','2020-05-30'),
('After','Josephine Langford','Romance','4.90','2020-06-01','2020-06-09'),
('Se beber não case',' Zach Galifianakis','Comédia','6.50','2020-06-05','2020-06-18'),
('O Rei','Timothée Chalamet','Guerra e Drama','6.99','2020-06-15','2020-06-30'),
('O Homem Invisível','Elisabeth Moss','Suspense','6.10','2020-06-22','2020-07-02'),
('Meu Malvado Favorito','Steve Carell','Animação e Comédia','3.90','2020-07-05','2020-07-10'),
('6 Years','Taissa Farmiga','Romance e Drama','4.20','2020-07-09','2020-07-18'),
('Boneco do Mal','Lauren Cohan','Terror','4.70','2020-07-12','2020-07-22'),
('Norbit','Eddie Murphy','Comédia Romântica','6.99','2020-07-16','2020-07-29');


update GabrielaLopesFilmes set Nome_Filme= 'O Paizão' where Nome_Filme= 'Gente Grande';
update GabrielaLopesFilmes set AtorProtagonista_Filme= 'Ben Rosenfield' where AtorProtagonista_Filme= 'Taissa Farmiga';

delete from GabrielaLopesFilmes where Nome_Filme= 'After';

select Nome_Filme, Genero_Filme, PrecoAluguel_Filme from GabrielaLopesFilmes where Genero_Filme='Terror'; 
select Nome_Filme, PrecoAluguel_Filme, Data_Aluguel, Data_Devolucao from GabrielaLopesFilmes where month(Data_Aluguel)='06'; 