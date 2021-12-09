
-- CREACION DE TABLAS, ASIGNACION DE CONSTRAINT PRIMARY Y FOREIGN KEY

Create table Cliente (
	IdCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR (50) NOT NULL,
	Apellidos VARCHAR (50) NOT NULL,
	Direccion VARCHAR(100) NOT NULL,
    DNI INT NOT NULL,
	Celular INT NOT NULL
);
Create table Alquiler (
	IdAlquiler INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	IdCliente INT NOT NULL,
    IdPelicula Int NOT NULL,
	Fecha_Alquiler DATE NOT NULL,
	Fecha_Devolucion DATE NOT NULL,
	Precio_Alquiler DECIMAL (6,2) NOT NULL
);

Create table Pelicula (
	IdPelicula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Titulo VARCHAR (100) NOT NULL,
	IdGenero INT NOT NULL,
    IdIdioma INT NOT NULL,
	Año INT NULL
);

Create table Genero (
	IdGenero INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Genero VARCHAR (100) NOT NULL
);

Create table Idioma ( 
	IdIdioma INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	Idioma VARCHAR (100) NOT NULL
);

ALTER TABLE Alquiler ADD CONSTRAINT FK_Alquiler_Cliente FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCLiente);
ALTER TABLE Alquiler ADD CONSTRAINT FK_Alquiler_Pelicula FOREIGN KEY (IdPelicula) REFERENCES Pelicula(IdPelicula);
ALTER TABLE Pelicula ADD CONSTRAINT Fk_Pelicula_Genero FOREIGN KEY (IdGenero) REFERENCES Genero(IdGenero);
ALTER TABLE Pelicula ADD CONSTRAINT Fk_Pelicula_Idioma FOREIGN KEY (IdIdioma) REFERENCES Idioma(IdIdioma);

-- Creacion (Insert) de datos a las tablas.

INSERT INTO Cliente(Nombre, Apellidos, Direccion, DNI, Celular) VALUES ('Nancy','King Davolio','San Vicente','86561321','985632164');
INSERT INTO Cliente(Nombre, Apellidos, Direccion, DNI, Celular) VALUES ('Ruben','Ruiz Torres','Imperial','15456892','985632745');
INSERT INTO Cliente(Nombre, Apellidos, Direccion, DNI, Celular) VALUES ('Elizabeth','Lu Young','Lunahuana','17584932','998547236');
INSERT INTO Cliente(Nombre, Apellidos, Direccion, DNI, Celular) VALUES ('Breydin','Mejia Cahuana','San Vicente','76132160','972849331');

INSERT INTO Genero(Genero) VALUES ('Drama');
INSERT INTO Genero(Genero) VALUES ('Accion');
INSERT INTO Genero(Genero) VALUES ('Comedia');
INSERT INTO Genero(Genero) VALUES ('Terror');

INSERT INTO Idioma(Idioma) VALUES ('Español');
INSERT INTO Idioma(Idioma) VALUES ('Ingles');
INSERT INTO Idioma(Idioma) VALUES ('Frances');
INSERT INTO Idioma(Idioma) VALUES ('Coreano');

INSERT INTO Pelicula(Titulo, IdGenero, IdIdioma, año) VALUES ('Titanic','1','1','1997');
INSERT INTO Pelicula(Titulo, IdGenero, IdIdioma, año ) VALUES ('Chucky 2','4','2','1990');
INSERT INTO Pelicula(Titulo, IdGenero, IdIdioma, año) VALUES ('Pasante de moda','3','1','2015');
INSERT INTO Pelicula(Titulo, IdGenero, IdIdioma, año) VALUES ('busqueda implacable','2','3','2008');

INSERT INTO Alquiler(IdCliente, IdPelicula, Fecha_Alquiler, Fecha_Devolucion, Precio_Alquiler) VALUES ('1','4','2021-11-25','2021-11-27','15.50');
INSERT INTO Alquiler(IdCliente, IdPelicula, Fecha_Alquiler, Fecha_Devolucion, Precio_Alquiler) VALUES ('2','2','2021-11-29','2021-11-30','10.00');
INSERT INTO Alquiler(IdCliente, IdPelicula, Fecha_Alquiler, Fecha_Devolucion, Precio_Alquiler) VALUES ('3','3','2021-12-03','2021-12-05','13.50');
INSERT INTO Alquiler(IdCliente, IdPelicula, Fecha_Alquiler, Fecha_Devolucion, Precio_Alquiler) VALUES ('4','2','2021-12-04','2021-12-05','10.00');

-- Actualizacion (Update) de datos a las tablas.

Update Cliente set Celular='985453492' WHERE Nombre = 'Ruben';

-- Leer o consultar (SELECT) los datos de las tablas.

Select * from alquiler;

Select * from Cliente
where direccion like  'S%';

-- Delete de datos a ala tabla

Delete from Cliente where nombre='Breydin';

