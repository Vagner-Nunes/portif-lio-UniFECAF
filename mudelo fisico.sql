-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Curso (
id_Curso VARCHAR(10) PRIMARY KEY,
descricao VARCHAR(10),
carga_horaria VARCHAR(10)
)

CREATE TABLE Professor (
nome VARCHAR(10),
id_Professor VARCHAR(10) PRIMARY KEY,
especilidade VARCHAR(10)
)

CREATE TABLE Materia (
id_Materia VARCHAR(10) PRIMARY KEY,
codigo VARCHAR(10),
carga_horaria VARCHAR(10),
nome VARCHAR(10),
id_Curso VARCHAR(10),
id_Professor VARCHAR(10),
FOREIGN KEY(id_Curso) REFERENCES Curso (id_Curso),
FOREIGN KEY(id_Professor) REFERENCES Professor (id_Professor)
)

CREATE TABLE Aluno+matricula (
nome VARCHAR(10),
rg VARCHAR(10),
cpf VARCHAR(10),
rua VARCHAR(10),
logradouro VARCHAR(10),
numero VARCHAR(10),
id_Aluno VARCHAR(10),
id_Matricula VARCHAR(10),
data DATETIME,
PRIMARY KEY(id_Aluno,id_Matricula)
)

CREATE TABLE Nota (
valor DECIMAL(10),
data_avaliacao DATETIME,
id_Nota VARCHAR(10) PRIMARY KEY,
id_Aluno VARCHAR(10),
id_Matricula VARCHAR(10),
FOREIGN KEY(id_Matricula,,) REFERENCES Aluno+matricula (id_Aluno,id_Matricula)
)

CREATE TABLE Turma (
data_fim DATETIME,
id_Turma VARCHAR(10) PRIMARY KEY,
data_inicio DATETIME
)

CREATE TABLE telefone (
telefone_PK INTEGER PRIMARY KEY,
telefone VARCHAR(10),
id_Professor_FK VARCHAR(),
FOREIGN KEY(id_Professor_FK) REFERENCES Professor (id_Professor)
)

CREATE TABLE telefone_aluno (
telefone_PK INTEGER PRIMARY KEY,
telefone VARCHAR(10),
id_Aluno_FK VARCHAR(),
FOREIGN KEY(/*erro: ??*/) REFERENCES Aluno+matricula (id_Aluno,id_Matricula)
)

CREATE TABLE contem (
id_Materia VARCHAR(10),
id_Turma VARCHAR(10),
FOREIGN KEY(id_Materia) REFERENCES Materia (id_Materia),
FOREIGN KEY(id_Turma) REFERENCES Turma (id_Turma)
)

CREATE TABLE classifica (
id_Materia VARCHAR(10),
id_Nota VARCHAR(10),
FOREIGN KEY(id_Materia) REFERENCES Materia (id_Materia),
FOREIGN KEY(id_Nota) REFERENCES Nota (id_Nota)
)

CREATE TABLE administra (
id_Aluno VARCHAR(10),
id_Matricula VARCHAR(10),
id_Turma VARCHAR(10),
FOREIGN KEY(id_Matricula,,) REFERENCES Aluno+matricula (id_Aluno,id_Matricula),
FOREIGN KEY(id_Turma) REFERENCES Turma (id_Turma)
)

