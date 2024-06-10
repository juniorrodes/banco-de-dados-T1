-- Insert data into the Exemplar table
INSERT INTO Exemplar (livro, prateleira, fornecedor, DataAquisicao, CustoAquisicao)
VALUES
((SELECT idLivro FROM Livro WHERE Titulo = 'Dom Casmurro'), 
 (SELECT Numero FROM Prateleira WHERE Setor = (SELECT idSetor FROM Setor WHERE Nome = 'Livros')), 
 (SELECT idFornecedor FROM Fornecedor WHERE Nome = 'Distribuidora São Paulo'), '2023-01-15', 45.50),

((SELECT idLivro FROM Livro WHERE Titulo = 'O Alquimista'), 
 (SELECT Numero FROM Prateleira WHERE Setor = (SELECT idSetor FROM Setor WHERE Nome = 'Livros')), 
 (SELECT idFornecedor FROM Fornecedor WHERE Nome = 'Fornecedor Rio'), '2023-02-20', 30.00),

((SELECT idLivro FROM Livro WHERE Titulo = 'Grande Sertão: Veredas'), 
 (SELECT Numero FROM Prateleira WHERE Setor = (SELECT idSetor FROM Setor WHERE Nome = 'Livros')), 
 (SELECT idFornecedor FROM Fornecedor WHERE Nome = 'TecnoSul'), '2023-03-18', 55.75),

((SELECT idLivro FROM Livro WHERE Titulo = 'Grande Sertão: Veredas'), 
 (SELECT Numero FROM Prateleira WHERE Setor = (SELECT idSetor FROM Setor WHERE Nome = 'Livros')), 
 (SELECT idFornecedor FROM Fornecedor WHERE Nome = 'TecnoSul'), '2023-03-18', 55.75),

((SELECT idLivro FROM Livro WHERE Titulo = 'Memórias Póstumas de Brás Cubas'), 
 (SELECT Numero FROM Prateleira WHERE Setor = (SELECT idSetor FROM Setor WHERE Nome = 'Livros')), 
 (SELECT idFornecedor FROM Fornecedor WHERE Nome = 'Centro-Oeste Distribuidora'), '2023-05-10', 38.40),

((SELECT idLivro FROM Livro WHERE Titulo = 'Vidas Secas'), 
 (SELECT Numero FROM Prateleira WHERE Setor = (SELECT idSetor FROM Setor WHERE Nome = 'Livros')), 
 (SELECT idFornecedor FROM Fornecedor WHERE Nome = 'Leste Fornecimentos'), '2023-06-15', 29.90),

((SELECT idLivro FROM Livro WHERE Titulo = 'Capitães da Areia'), 
 (SELECT Numero FROM Prateleira WHERE Setor = (SELECT idSetor FROM Setor WHERE Nome = 'Livros')), 
 (SELECT idFornecedor FROM Fornecedor WHERE Nome = 'Fornecedor Nordeste'), '2023-07-22', 50.00),

((SELECT idLivro FROM Livro WHERE Titulo = 'O Cortiço'), 
 (SELECT Numero FROM Prateleira WHERE Setor = (SELECT idSetor FROM Setor WHERE Nome = 'Livros')), 
 (SELECT idFornecedor FROM Fornecedor WHERE Nome = 'Sul Export'), '2023-08-14', 35.25),

((SELECT idLivro FROM Livro WHERE Titulo = 'Iracema'), 
 (SELECT Numero FROM Prateleira WHERE Setor = (SELECT idSetor FROM Setor WHERE Nome = 'Livros')), 
 (SELECT idFornecedor FROM Fornecedor WHERE Nome = 'Centro Import'), '2023-09-05', 33.15),

((SELECT idLivro FROM Livro WHERE Titulo = 'O Primo Basílio'), 
 (SELECT Numero FROM Prateleira WHERE Setor = (SELECT idSetor FROM Setor WHERE Nome = 'Livros')), 
 (SELECT idFornecedor FROM Fornecedor WHERE Nome = 'MegaFornecedora'), '2023-10-01', 40.00);
