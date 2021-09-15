select * from gafanhotos;
/*Mostra uma lista com as profissões dos gafanhotos e as quantidades de cada profissão*/
select profissao, count(profissao) from gafanhotos
group by profissao
order by count(profissao) desc;

/*Mostra uma lista com a quantidade de homens e de mulheres que nasceram após 01/01/2005*/
select sexo, count(sexo) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/*Lista com a quantidade de pessoas que nasceram fora do Brasil, que mostre o país de origem e o total de pessoas nascidas lá, mas só os paises que 
tiverem mais de 3 pessoas com essa nacionalidade*/
select nacionalidade, count(nacionalidade) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3
order by count(nacionalidade);

/*Uma lista agrupada pela altura das pessoas que pesam mais de 100kg e estão acima da media de altura de todos os cadastrados*/
select peso, altura, count(altura) from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);