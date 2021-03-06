
drop database mypet;
CREATE SCHEMA IF NOT EXISTS `mypet` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mypet` ;

DROP TABLE IF EXISTS tabla_postal ;
CREATE TABLE IF NOT EXISTS tabla_postal (
  CODIGO VARCHAR(100) NOT NULL,
  DESCRIPCION VARCHAR(100) NULL,
  PRIMARY KEY (CODIGO)
);


DROP TABLE IF EXISTS sexo ;
CREATE TABLE IF NOT EXISTS sexo (
  ID INT NOT NULL AUTO_INCREMENT,
  DESCRIPCION VARCHAR(45) NULL,
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS estado ;
CREATE TABLE IF NOT EXISTS estado (
  ID INT NOT NULL AUTO_INCREMENT,
  DESCRIPCION VARCHAR(30) NULL,
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS tipo_usuario ;
CREATE TABLE IF NOT EXISTS tipo_usuario (
  ID INT NOT NULL AUTO_INCREMENT,
  DESCRIPCION VARCHAR(45) NULL,
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS usuario ;

CREATE TABLE IF NOT EXISTS usuario (
  CODIGO VARCHAR(8) NOT NULL,
  CLAVE VARCHAR(30) NOT NULL,
  FECHA_INGRESO DATETIME NULL,
  ESTADO INT NULL,
  TIPO_USUARIO INT NULL,
  PRIMARY KEY (CODIGO, CLAVE),
	FOREIGN KEY (ESTADO) REFERENCES estado(ID),
	FOREIGN KEY (TIPO_USUARIO) REFERENCES tipo_usuario(ID)
);

DROP TABLE IF EXISTS cliente ;
CREATE TABLE IF NOT EXISTS cliente (
  DNI VARCHAR(8) NOT NULL,
  NOMBRE VARCHAR(100) NULL,
  APELLIDO_PATERNO VARCHAR(100) NULL,
  APELLIDO_MATERNO VARCHAR(100) NULL,
  DIRECCION VARCHAR(100) NULL,
  CODIGO_POSTAL VARCHAR(100) NULL,
  ID_SEXO INT NULL,
  EMAIL VARCHAR(100) NULL,
  PRIMARY KEY (`DNI`),
	FOREIGN KEY (CODIGO_POSTAL) REFERENCES tabla_postal(CODIGO),
	FOREIGN KEY (ID_SEXO) REFERENCES sexo(ID),
	FOREIGN KEY (DNI) REFERENCES usuario(CODIGO)
);

DROP TABLE IF EXISTS especie ;
CREATE TABLE IF NOT EXISTS especie (
  ID INT NOT NULL AUTO_INCREMENT,
  DESCRIPCION VARCHAR(45) NULL,
  PRIMARY KEY (ID)
);


DROP TABLE IF EXISTS raza ;
CREATE TABLE IF NOT EXISTS raza (
  ID_ESPECIE INT NOT NULL,
  ID INT NOT NULL,
  DESCRIPCION VARCHAR(45) NULL,
  PRIMARY KEY (`ID_ESPECIE`, `ID`),
  FOREIGN KEY (ID_ESPECIE) REFERENCES especie(ID)
);


DROP TABLE IF EXISTS mascota ;
CREATE TABLE IF NOT EXISTS mascota (
  DNI VARCHAR(8) NOT NULL,
  ID INT NOT NULL,
  NOMBRE VARCHAR(45) NULL,
  ID_ESPECIE INT NULL,
  ID_RAZA INT NULL,
  FECHA_NACIMIENTO DATETIME NULL,
  PRIMARY KEY (DNI, ID),
	FOREIGN KEY (ID_ESPECIE) REFERENCES Especie(ID),
	FOREIGN KEY (ID_ESPECIE , ID_RAZA) REFERENCES Raza(ID_ESPECIE , ID),
	FOREIGN KEY (DNI) REFERENCES Cliente(DNI)
);

DROP TABLE IF EXISTS producto ;
CREATE TABLE IF NOT EXISTS producto (
  CODIGO VARCHAR(20) NOT NULL,
  DESCRIPCION VARCHAR(100) NULL,
  STOCK_ACTUAL INT NULL,
  STOCK_DISPONIBLE INT NULL,
  PRECIO DECIMAL(10,2) NULL,
  PRIMARY KEY (CODIGO)
);


DROP TABLE IF EXISTS boleta ;
CREATE TABLE IF NOT EXISTS boleta (
  NUMERO INT NOT NULL AUTO_INCREMENT,
  DNI VARCHAR(8) NULL,
  RAZON_SOCIAL VARCHAR(150) NULL,
  BRUTOS DECIMAL(10,2) NULL,
  DESCUENTO DECIMAL(10,2) NULL,
  IGV DECIMAL(10,2) NULL,
  VALOR_VENTA DECIMAL(10,2) NULL,
  PRIMARY KEY (NUMERO),
  FOREIGN KEY (DNI) REFERENCES Cliente(DNI)
);

DROP TABLE IF EXISTS detalle_boleta ;
CREATE TABLE IF NOT EXISTS detalle_boleta (
  NUMERO INT NOT NULL,
  ID INT NOT NULL,
  CODIGO VARCHAR(20) NULL,
  DESCRIPCION VARCHAR(100) NULL,
  CANTIDAD INT NULL,
  BRUTO DECIMAL(10,2) NULL,
  DESCUENTO DECIMAL(10,2) NULL,
  IGV DECIMAL(10,2) NULL,
  VALOR_VENTA DECIMAL(10,2) NULL,
  PRIMARY KEY (NUMERO, ID),
  FOREIGN KEY (NUMERO) REFERENCES boleta(NUMERO),
  FOREIGN KEY (CODIGO) REFERENCES producto(CODIGO)
);

DROP TABLE IF EXISTS especialidad ;
CREATE TABLE IF NOT EXISTS especialidad (
  ID INT NOT NULL AUTO_INCREMENT,
  DESCRIPCION VARCHAR(100) NULL,
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS medico ;
CREATE TABLE IF NOT EXISTS medico (
  CODIGO VARCHAR(8) NOT NULL,
  NOMBRE VARCHAR(100) NULL,
  APELLIDO_PATERNO VARCHAR(100) NULL,
  APELLIDO_MATERNO VARCHAR(100) NULL,
  ID_ESPECIALIDAD INT NULL,
  FECHA_NACIMIENTO DATETIME NULL,
  PRIMARY KEY (CODIGO),
  FOREIGN KEY (ID_ESPECIALIDAD) REFERENCES especialidad(ID),
  FOREIGN KEY (CODIGO) REFERENCES usuario(CODIGO)
);

DROP TABLE IF EXISTS variables ;

CREATE TABLE IF NOT EXISTS variables (
  ID INT NOT NULL,
  RAZON_SOCIAL VARCHAR(100) NULL,
  PORCENTAJE_IGV DECIMAL(3,2) NULL,
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS historia_clinica ;
CREATE TABLE IF NOT EXISTS historia_clinica (
  DNI_CLIENTE VARCHAR(8) NOT NULL,
  ID_MASCOTA INT NOT NULL,
  ID INT NOT NULL,
  CITA INT NULL,
  RECETA INT NULL,
  DESCRIPCION VARCHAR(200) NULL,
  PRIMARY KEY (ID_MASCOTA, ID),
  FOREIGN KEY (DNI_CLIENTE, ID_MASCOTA) REFERENCES mascota(DNI, ID)
);

DROP TABLE IF EXISTS cita ;
CREATE TABLE IF NOT EXISTS cita (
  ID INT NOT NULL AUTO_INCREMENT,
  CODIGO_MEDICO VARCHAR(8) NULL,
  DNI_CLIENTE VARCHAR(8) NULL,
  ID_MASCOTA INT NULL,
  FECHA DATETIME NULL,
  HORA VARCHAR(5) NULL,
  ESTADO INT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (CODIGO_MEDICO) REFERENCES medico(CODIGO),
  FOREIGN KEY (DNI_CLIENTE, ID_MASCOTA) REFERENCES mascota(DNI, ID),
  FOREIGN KEY (DNI_CLIENTE) REFERENCES cliente(DNI)
);

insert into estado values (1,"ACTIVO");
insert into estado values (2,"INACTIVO");

INSERT INTO tipo_usuario VALUES (1,"ADMINISTRADOR");
INSERT INTO tipo_usuario VALUES (2,"CLIENTE");
INSERT INTO tipo_usuario VALUES (3,"EMPLEADO");

insert into sexo values (1,"MASCULINO");
insert into sexo values (2,"FEMENINO");
insert into usuario values ("45747226","123","2014-01-01",1,1);

insert into especie values (1,"PERRO");
insert into especie values (2,"GATO");
insert into especie values (3,"HAMSTER");

select * from usuario;
Select * from cliente;