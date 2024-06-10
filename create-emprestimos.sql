-- Insert data into the Emprestimo table with some users having a fine
INSERT INTO Emprestimo (Exemplar, Usuario, DataEmprestimo, TempoEmprestimo, DataDevolucao, Multa)
VALUES
((SELECT idExemplar FROM Exemplar LIMIT 1 OFFSET 0), 
 (SELECT idUsuario FROM Usuario WHERE Nome LIKE 'José'), 
 '2023-01-10', 30, '2023-02-09', 0.00),

((SELECT idExemplar FROM Exemplar LIMIT 1 OFFSET 1), 
 (SELECT idUsuario FROM Usuario WHERE Nome LIKE 'José'), 
 '2023-02-15', 20, '2023-03-07', 0.00),

((SELECT idExemplar FROM Exemplar LIMIT 1 OFFSET 2), 
 (SELECT idUsuario FROM Usuario WHERE Nome LIKE 'Gabriel'), 
 '2023-03-01', 15, '2023-03-16', 5.00),

((SELECT idExemplar FROM Exemplar LIMIT 1 OFFSET 3), 
 (SELECT idUsuario FROM Usuario WHERE Nome LIKE 'Guilherme'), 
 '2023-04-05', 25, '2023-04-30', 0.00),

((SELECT idExemplar FROM Exemplar LIMIT 1 OFFSET 4), 
 (SELECT idUsuario FROM Usuario WHERE Nome LIKE 'Ilva'), 
 '2023-05-12', 30, '2023-06-11', 10.00),

((SELECT idExemplar FROM Exemplar LIMIT 1 OFFSET 5), 
 (SELECT idUsuario FROM Usuario WHERE Nome LIKE 'Fernando'), 
 '2023-06-20', 15, '2023-07-05', 2.50),

((SELECT idExemplar FROM Exemplar LIMIT 1 OFFSET 6), 
 (SELECT idUsuario FROM Usuario WHERE Nome LIKE 'Everton'), 
 '2023-07-10', 20, '2023-07-30', 0.00),

((SELECT idExemplar FROM Exemplar LIMIT 1 OFFSET 7), 
 (SELECT idUsuario FROM Usuario WHERE Nome LIKE 'Marcos'), 
 '2023-08-15', 25, '2023-09-09', 7.00),

((SELECT idExemplar FROM Exemplar LIMIT 1 OFFSET 8), 
 (SELECT idUsuario FROM Usuario WHERE Nome LIKE 'Mayara'), 
 '2023-09-05', 30, '2023-10-05', 0.00),

((SELECT idExemplar FROM Exemplar LIMIT 1 OFFSET 9), 
 (SELECT idUsuario FROM Usuario WHERE Nome LIKE 'Evelyn'), 
 '2023-10-10', 30, '2023-11-09', 4.50);
