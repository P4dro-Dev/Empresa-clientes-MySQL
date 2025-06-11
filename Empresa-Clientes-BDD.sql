-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS empresa_ifce;
USE empresa_ifce;

-- Criação da tabela clientes
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10),
    cep VARCHAR(10) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL,
    data_cadastro DATE
);

-- Inserção dos dados
INSERT INTO clientes (nome, email, rua, numero, cep, cidade, estado, data_cadastro)
VALUES 
    ('João Silva', 'joao.silva@gmail.com', 'Rua das Flores', '123', '01001-000', 'São Paulo', 'SP', '2024-03-15'),
    ('Maria Oliveira', 'maria.oliveira@yahoo.com', 'Av. Atlântica', '456', '22021-001', 'Rio de Janeiro', 'RJ', '2024-04-10'),
    ('Carlos Souza', 'carlos.souza@hotmail.com', 'Rua Timbiras', '789', '30140-061', 'Belo Horizonte', 'MG', '2024-05-20'),
    ('Ana Lima', 'ana.lima@gmail.com', 'Rua XV de Novembro', '101', '80020-310', 'Curitiba', 'PR', '2024-06-01'),
    ('Fernanda Costa', 'fernanda.costa@outlook.com', 'Av. Ipiranga', '202', '90010-320', 'Porto Alegre', 'RS', '2024-06-10');
    
select * from clientes; 
select nome, email from clientes; 
select * from clientes where estado = "SP";
SELECT * FROM clientes WHERE data_cadastro > '2024-04-01';
SELECT * FROM clientes where nome LIKE 'A%' ;