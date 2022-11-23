CREATE DATABASE VirtualDrive;

CREATE TABLE Usuarios (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(50) UNIQUE NOT NULL,
  nome VARCHAR(100) ,
  idade INT,
  espaco BIGINT,
  plano INT,
  numero_de_arquivos int , 
  PRIMARY KEY (id_usuario));
  
 CREATE TABLE Arquivos (
  id_arquivo INT NOT NULL AUTO_INCREMENT,  
  nome VARCHAR(100) ,
  tamanho INT,
  atributo VARCHAR(45),
  id_usuario INT,
  PRIMARY KEY (id_arquivo),
  CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario));
  
  
  
  
  
  