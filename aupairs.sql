CREATE TABLE Nacionalidades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nacionalidade VARCHAR(100) NOT NULL
);

CREATE TABLE Idades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idade INT NOT NULL
);

CREATE TABLE Idiomas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idioma VARCHAR(100) NOT NULL
);

CREATE TABLE ExperienciasComCriancas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    experiencia TEXT NOT NULL
);

CREATE TABLE HabilidadesEspeciais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    habilidade VARCHAR(100) NOT NULL
);

CREATE TABLE PaisesPreferencia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pais VARCHAR(100) NOT NULL
);

CREATE TABLE AuPairs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade_id INT,
    idade_id INT,
    idioma_id INT,
    experiencia_id INT,
    habilidade_id INT,
    pais_preferencia_id INT,
    FOREIGN KEY (nacionalidade_id) REFERENCES Nacionalidades(id),
    FOREIGN KEY (idade_id) REFERENCES Idades(id),
    FOREIGN KEY (idioma_id) REFERENCES Idiomas(id),
    FOREIGN KEY (experiencia_id) REFERENCES ExperienciasComCriancas(id),
    FOREIGN KEY (habilidade_id) REFERENCES HabilidadesEspeciais(id),
    FOREIGN KEY (pais_preferencia_id) REFERENCES PaisesPreferencia(id)
);