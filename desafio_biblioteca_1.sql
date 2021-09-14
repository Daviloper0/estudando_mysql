/*Esse banco de dados foi feito para resolver o desafio do servidor da Ballerini, e então, para isso, vou contar o que estou fazendo por meios de
comentários, para treinar o MySQL, em uma história fictícia na qual eu fui contratado para uma pequena biblioteca de livros de informática*/

/*Meu chefe chegou, e pediu para eu criar um banco de dados para cadastrar os dados da biblioteca, e então eu usei o comando abaixo para fazer o que
ele pediu*/
create database biblioteca;

/*Depois, ele foi mais específico, falou que queria que eu criasse uma tabela dos livros, onde era necessário ter: Um identificador único para cada
livro, e que aumentasse toda vez que um livro novo fosse adicionado, o nome da obra , uma descrição, e o autor, e então, usei o comando abaixo para
cumprir esses requisitos*/
CREATE TABLE livros (
    id INT(9) NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(250),
    author VARCHAR(50),
    PRIMARY KEY (`id`)
)  DEFAULT CHARSET=UTF8;

/*Agora ele queria adicionar alguns livros de uma tabela que estava anotada em papel. Mas como já era quase o final do meu expediente e eu estava 
cansado eu acabei adicionando um livro de forma incorreta, mas na hora eu acabei não percebendo isso, e usei o comando abaixo para isso*/
insert into livros values 
(DEFAULT, 'MySQL: Comece com banco de dados', 'Aprenda MySQL com o livro de Vinícius Carvalho', 'Vinícius Carvalho'),
(DEFAULT, 'HTML e CSS Projete e Construa Websites', 'Bem-vindo a uma melhor maneira de aprender HTML & CSS.Se você quer projetar, construir do zero ou ter mais controle sobre um site existente, este livro lhe ajudará a criar conteúdos atrativos e amigáveis.', 'Jon Duckett'),
(DEFAULT, 'JavaScript: O Guia Definitivo', 'Um livro de David Flanagan sobre Javascript', 'David Flanagan'),
(DEFAULT, 'AngularJS: Uma abordagem prática e objetiva', 'Um livro de AngularJS por Michael Henrique R. Pereira', 'Michael Henrique R. Pereira'),
(DEFAULT, 'Winderson 10', 'Aprenda a como desinstalar o windows', 'Davi Guimarães');

/*Meu chefe agradeceu, e no dia seguinte me pediu para mostrar o banco de dados que eu havia feito, e para fazer isso, usei a linha abaixo*/
select * from livros;

/*Meu chefe apontou que a última linha de dados (5) estava incorreta, e me mostrou as mudanças que seriam necessárias. Então, para realizar as mudanças
necessárias, fiz as linhas abaixo*/
update livros
set name = 'Windows 10 simples', description = 'Aprenda a usar o windows 10 de maneira simples por Davi Guimarães'
where id = '5';

/*O chefe agradeceu novamente, mas um tempo depois, ele veio me falar que o livro não existia, e então, ele me pediu para excluir esse livro do banco.
Como eu já tinha visto que o id era o 5, ficou fácil remover. E para fazer isso eu usei o comando abaixo*/
delete from livros
where id = '5';

/*Um pouco depois, ele me perguntou sobre um livro sobre JavaScript, mas ele não sabia em que posição esse livro estava, então, para satisfazer a 
vontade dele, eu usei o comando abaixo*/

select * from livros where name like '%JavaScript%';

/*Depois, ele me perguntou sobre o livro de um autor que tinha o nome de Vinícius, já que ele não sabia qual era o nome do livro, e ele queria
esse nome, e então, para resolver esse problema, utilizei a linha abaixo*/

select name from livros where author like 'Vinicius%';

/*E assim, foram resolvidos todos os problemas, mas agora, ele quer que eu crie um banco de dados que cadastre usuários, que seja possível adicionar
ou remover livros emprestados que tenham relação com essa tabela de livros, mas isso é história para outro arquivo :D */
/*Obrigado por ler, sei que é meio bobo, mas é uma das formas de eu estudar!*/