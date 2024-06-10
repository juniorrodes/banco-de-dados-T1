-- query para ver as maiores multas registradas no sistema
select * from emprestimo e order by multa desc;

-- query para ter uma visão geral de qual fornecedor está vinculado a qual exemplar
select f.nome, f.responsavel, f.telefoneprincipal, f.emailfornecedor, f.pais, f.estado, f.cidade, f.bairro, f.rua, f.numero, f.complemento,
e.livro, e.prateleira, e.fornecedor, e.dataaquisicao, e.custoaquisicao
from fornecedor f, exemplar e where f.idfornecedor = e.fornecedor;

-- query para ter uma visão geral de qual usúario está com qual exemplar
select ex.livro, ex.prateleira, ex.prateleira, ex.fornecedor, ex.dataaquisicao, ex.custoaquisicao,
e.dataemprestimo, e.tempoemprestimo, e.datadevolucao, e.multa,
u.nome, u.cpf , u.rg , u.emailusuario
from emprestimo e, usuario u, exemplar ex where e.usuario = u.idusuario and e.exemplar = ex.idexemplar;

-- query para ver os empréstimos em um certo periodo de tempo
select e.exemplar, e.usuario, e.dataemprestimo, e.tempoemprestimo, e.datadevolucao, e.multa
from emprestimo e where e.dataemprestimo between '2023-01-01' and '2023-03-01';

-- query para pesquisar usuários pelo seu sobrenome
select u.nome, u.cpf, u.rg, u.datanascimento, u.emailusuario
from usuario u
where u.nome like '%maciel%';

-- query para se ver o total de multa devidas
select sum(e.multa) as totalmulta
from emprestimo e;

-- query para pegar todos os livros e seus exemplares, incluindo os livros sem exemplares
select
    livro.titulo,
    livro.autor,
    livro.editora,
    livro.edicao,
    livro.genero,
    exemplar.dataaquisicao,
    exemplar.custoaquisicao,
    exemplar.prateleira,
    exemplar.fornecedor
from
    livro
left outer join
    exemplar on livro.idlivro = exemplar.livro;

 -- query para pegar todos usuário e seus emprétimos, incluindo os usuários sem empréstimos
select
    usuario.nome as usuarionome,
    usuario.cpf,
    usuario.rg,
    usuario.datanascimento,
    usuario.emailusuario,
    emprestimo.exemplar,
    emprestimo.dataemprestimo,
    emprestimo.tempoemprestimo,
    emprestimo.datadevolucao,
    emprestimo.multa
from
    emprestimo
right outer join
    usuario on emprestimo.usuario = usuario.idusuario;
   
select distinct
    genero
from
    livro;

-- query para ver a quantidade de exemplares que um livro tem
select
    livro.titulo,
    count(exemplar.idexemplar) as numeroexemplares
from
    livro l, exemplar e where l.idlivro = e.livro
group by
    l.titulo;
