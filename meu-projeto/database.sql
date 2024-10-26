-- Criar tabela para armazenar usuários
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL, -- Armazene senhas de forma segura
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criar tabela para armazenar projetos
CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Criar tabela para armazenar tarefas
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE
);

-- Inserir usuários
INSERT INTO users (username, password) VALUES 
('admin', '123456'), -- Substitua por uma senha hash na prática
('user1', 'password1'), -- Substitua por uma senha hash na prática
('user2', 'password2'); -- Substitua por uma senha hash na prática

-- Inserir projetos
INSERT INTO projects (user_id, name, description, start_date, end_date) VALUES 
(1, 'Projeto A', 'Descrição do Projeto A', '2024-01-01', '2024-01-31'),
(1, 'Projeto B', 'Descrição do Projeto B', '2024-02-01', '2024-02-28'),
(2, 'Projeto C', 'Descrição do Projeto C', '2024-03-01', '2024-03-31');

-- Inserir tarefas
INSERT INTO tasks (project_id, name, description, start_date, end_date) VALUES 
(1, 'Tarefa 1A', 'Descrição da Tarefa 1A', '2024-01-02', '2024-01-15'),
(1, 'Tarefa 1B', 'Descrição da Tarefa 1B', '2024-01-10', '2024-01-20'),
(2, 'Tarefa 2A', 'Descrição da Tarefa 2A', '2024-02-02', '2024-02-15'),
(3, 'Tarefa 3A', 'Descrição da Tarefa 3A', '2024-03-02', '2024-03-20');
