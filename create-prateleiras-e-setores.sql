-- Insert data into the Setor table
INSERT INTO Setor (Nome)
VALUES
('Eletrônicos'),
('Livros'),
('Roupas'),
('Alimentos'),
('Bebidas'),
('Brinquedos'),
('Móveis'),
('Ferramentas'),
('Cosméticos'),
('Esportes');

-- Insert data into the Prateleira table, referencing the Setor table
INSERT INTO Prateleira (Setor)
VALUES
((SELECT idSetor FROM Setor WHERE Nome = 'Eletrônicos')),
((SELECT idSetor FROM Setor WHERE Nome = 'Livros')),
((SELECT idSetor FROM Setor WHERE Nome = 'Roupas')),
((SELECT idSetor FROM Setor WHERE Nome = 'Alimentos')),
((SELECT idSetor FROM Setor WHERE Nome = 'Bebidas')),
((SELECT idSetor FROM Setor WHERE Nome = 'Brinquedos')),
((SELECT idSetor FROM Setor WHERE Nome = 'Móveis')),
((SELECT idSetor FROM Setor WHERE Nome = 'Ferramentas')),
((SELECT idSetor FROM Setor WHERE Nome = 'Cosméticos')),
((SELECT idSetor FROM Setor WHERE Nome = 'Esportes'));
