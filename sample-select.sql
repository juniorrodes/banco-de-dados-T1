select * from usuario;

select * from exemplar;

select * from fornecedor;

select * from livro;

select * from prateleira;

select * from setor;

select * from usuario;

select * from emprestimo e 
	inner join usuario u on u.idusuario = e.usuario
	inner join exemplar e2 on e.exemplar = e2.idexemplar 
	inner join livro l on l.idlivro = e2.livro;