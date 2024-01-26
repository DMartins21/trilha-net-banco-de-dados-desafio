---1---
Select Nome, Ano From Filmes

--2--
Select Nome, Ano From Filmes Order By Ano Asc

--3--
Select Nome, Ano, Duracao
From Filmes
Where Nome Like 'De Volta para o Futuro'

--4--
Select * From Filmes
Where Ano = 1997

--5--
Select * From Filmes
Where Ano >= 2000

--6--
Select * From Filmes
Where Duracao > 100 and Duracao < 150
Order By Duracao Asc

--7--
Select Ano, Count(*) as Quantidade From Filmes 
Group By Ano
Order By Quantidade DESC

--8--
Select * From Atores
Where Genero Like 'M'

--9--
Select * From Atores
Where Genero Like 'F'

--10--
Select F.Nome, G.Genero From Filmes F
Inner Join FilmesGenero FG on F.Id = FG.IdFilme
inner join Generos G on FG.IdGenero = G.Id

--11--
Select F.Nome, G.Genero From Filmes F
Inner Join FilmesGenero FG on F.Id = FG.IdFilme
Inner Join Generos G on FG.IdGenero = G.Id
Where Genero Like 'Mistério'

--12--
Select F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel From Filmes F
Inner Join ElencoFilme E on F.Id = E.IdFilme
Inner Join Atores A on E.IdAtor = A.Id