-- Criação do banco
CREATE DATABASE IF NOT EXISTS agendapro_beauty;
USE agendapro_beauty;

-- Tabela de áreas do salão
CREATE TABLE areas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    perfil ENUM('admin', 'cliente') DEFAULT 'cliente'
);

-- Tabela de profissionais
CREATE TABLE profissionais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES areas(id)
);

-- Tabela de serviços
CREATE TABLE servicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    duracao INT NOT NULL,
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES areas(id)
);

-- Tabela de status de agendamento
CREATE TABLE status_agendamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

-- Dados iniciais
INSERT INTO status_agendamento (descricao)
VALUES
('Confirmado'),
('Cancelado'),
('Concluido');