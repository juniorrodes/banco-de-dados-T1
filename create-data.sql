insert into setor(nome) values ('A');

insert into prateleira values (1, 1);

insert into livro(titulo, autor, editora, genero, edicao)
values ('Clean Code', 'Robert Cecil Martin', 'Prentice Hall', 'Academico', '3');

insert into fornecedor(nome, responsavel, telefoneprincipal, emailfornecedor, pais, estado, cidade, bairro, rua, numero, complemento)
values ('fornecedor 1', 'Gabriel', '911111111', 'forncedor1@email.com', 'Brasil', 'RS', 'Porto Alegre', 'Auxiliadora', 'Rua Anita Garibaldi', '111', '11');

insert into exemplar(livro, prateleira, fornecedor, dataaquisicao, custoaquisicao)
values (1, 1, 1, '2015-03-18', 230.43);

insert into usuario(nome, cpf, rg, datanascimento, emailusuario) 
values ('José', '11111111111', '111111111', '1999-10-08', 'jose.rodes@email.com');

insert into emprestimo(exemplar, usuario, dataemprestimo, tempoemprestimo, datadevolucao, multa)
values (1, 1, '2023-04-15', 10, '2023-04-20', 0.00);
