/*Faz uma lista com o nome de todas as mulheres e ordena pelo alfabeto*/
select * from gafanhotos where sexo = 'f' order by nome asc;

/*Faz uma lista das pessoas que nasceram entre 1/01/2000 e 31/12/2015 e ordena do mais antigo para o mais novo*/
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31' order by nascimento asc;

/*Faz uma lista de todos os nomes dos homens que trabalham como programadores*/
select * from gafanhotos where sexo = 'M' and profissao = 'Programador';

/*Faz uma lista de todas as mulheres que tem nacionalidade brasileira e que o nome começa com a letra J*/
select * from gafanhotos where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

/*Faz uma lista com o nome e a nacionalidade (apenas) de todos os homens que têm Silva, não nasceram no Brasil, e pesam menos de 100 kg*/
select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%Silva%' and nacionalidade != 'Brasil' and peso < 100;

/*Pega o valor da maior altura entre os homens que moram no Brasil*/
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';

/*Pega a média de peso das pessoas cadastradas*/
select avg(peso) from gafanhotos;

/*Pega o menor peso entre as mulheres que nasceram fora do Brasil entre 01/01/1990 e 31/12/2000*/
select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

/*Pega a quantidade de mulheres com mais de 1.90 de altura.*/
select count(altura) from gafanhotos where sexo = 'F' and altura > 1.90;
