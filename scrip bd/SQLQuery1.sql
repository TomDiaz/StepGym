Use stepgymbd

CREATE TABLE Usuarios (
  IdUsuario int IDENTITY(1,1),
  NombreUsuario varchar(255)NOT NULL, 
  Contraseña varchar(255)NOT NULL, 
  CONSTRAINT PK_USUARIOS PRIMARY KEY (IdUsuario)
);

/*DROP TABLE Clientes*/

DROP TABLE Horarios
TRUNCATE TABLE Profesores

CREATE TABLE Clientes (
  IdCliente int IDENTITY(1,1),
  Nombre varchar(255)NOT NULL, 
  Apellido varchar(255)NOT NULL, 
  Mail varchar(255), 
  Telefono int,
  foto varchar(255), 
  Activo bit NOT NULL,
  
  CONSTRAINT PK_CLIENTES PRIMARY KEY (IdCliente)
);

CREATE TABLE Usuarios_x_Cliente(
   IdUsuario int NOT NULL,
   IdCliente int NOT NULL,
  
  CONSTRAINT PK_USUARIO_X_CLIENTE PRIMARY KEY CLUSTERED(IdUsuario,IdCliente),
  CONSTRAINT FK_USUARIO_X_CLIENTE_USUARIO FOREIGN KEY (IdUsuario)REFERENCES Usuarios(IdUsuario),
  CONSTRAINT FK_USUARIO_X_CLIENTE_CLIENTE FOREIGN KEY (IdCliente)REFERENCES Clientes(IdCliente)
  
);


CREATE TABLE Profesores (
  IdProfesor int NOT NULL,
  IdUsuario int NOT NULL,
  Nombre varchar(255)NOT NULL, 
  Apellido varchar(255)NOT NULL, 
  Mail varchar(255)NOT NULL, 
  Telefono int, 
  
  
  CONSTRAINT PK_PROFESORES PRIMARY KEY (IdProfesor),
  CONSTRAINT FK_PROFESORES_USUARIO FOREIGN KEY (IdUsuario)REFERENCES Usuarios(IdUsuario)
);



CREATE TABLE Salarios(
   
  IdSalario int IDENTITY(1,1),
  IdProfesor int NOT NULL,
  Sueldo money,
  
  CONSTRAINT PK_SALARIOS PRIMARY KEY (IdSalario),
  CONSTRAINT FK_SALARIOS_PROFESORES FOREIGN KEY (IdProfesor)REFERENCES Profesores(IdProfesor)
);


CREATE TABLE Clases(
	IdClase int IDENTITY(1,1),
	IdProfesor int NOT NULL,
	Nombre varchar(255)NOT NULL,
	Descripcion varchar(255)NOT NULL,
	Precio float NOT NULL,

	
  CONSTRAINT PK_CLASES PRIMARY KEY (IdClase),
  CONSTRAINT FK_CLASES_PROFESORES FOREIGN KEY (IdProfesor)REFERENCES Profesores(IdProfesor)
	
	
);

CREATE TABLE Cliente_x_Clase(
   IdCliente int NOT NULL,
   IdClase int NOT NULL,
  
  CONSTRAINT PK_CLIENTES_X_CLASE PRIMARY KEY CLUSTERED(IdCliente,IdClase),
  CONSTRAINT FK_CLIENTES_X_CLASE_CLIENTES FOREIGN KEY (IdCliente)REFERENCES Clientes(IdCliente),
  CONSTRAINT FK_CLIENTES_X_CLASE_CLASES FOREIGN KEY (IdClase)REFERENCES Clases(IdClase)
);

CREATE TABLE Horarios(
	IdHorario int IDENTITY(1,1),
	HoraInicio time NOT NULL,
	HoraFin time NOT NULL,
	Dia varchar(10) NOT NULL,
    
    CONSTRAINT PK_HORARIOS PRIMARY KEY (IdHorario)
);



CREATE TABLE Horario_x_Clase(
   IdHorario int NOT NULL,
   IdClase int NOT NULL,
  
  CONSTRAINT PK_HORARIO_X_CLASE PRIMARY KEY CLUSTERED(IdHorario,IdClase),
  CONSTRAINT FK_HORARIO_X_CLASE_HORARIOS FOREIGN KEY (IdHorario)REFERENCES Horarios(IdHorario),
  CONSTRAINT FK_HORARIO_X_CLASE_CLASES FOREIGN KEY (IdClase)REFERENCES Clases(IdClase)
);


INSERT INTO Usuarios (NombreUsuario,Contraseña )
VALUES ('Tomas', 'tomasdiaz');

INSERT INTO Profesores (IdProfesor,IdUsuario,Nombre,Apellido,Mail,Telefono )
VALUES (1,2,'Oscar','Diaz','oscar@gmail.com',1131383912);

INSERT INTO Clases (IdProfesor, Nombre, Descripcion, Precio)
VALUES (1, 'crossfit','Ejercicio de alto rendimiento',1300);

INSERT INTO Clientes (IdCliente, IdClase, IdUsuario, Nombre, Apellido,Mail, Telefono, Activo )
VALUES (1,1,6,'Tomas','Diaz','tomdiazsk8@gmail.com',1131383912,1);




CREATE PROCEDURE addCliente

 @Nombre varchar(255), 
 @Apellido varchar(255),
 @Mail varchar(255), 
 @Telefono int,
 @Foto varchar(255)
AS

BEGIN
	INSERT INTO Clientes VALUES(@Nombre,@Apellido,@Mail,@Telefono,@Foto,1)
END


exec addCliente 'Tomas','Diaz','tom@gmail.com',1131383912, 'sin-foto.jpg'


CREATE PROCEDURE addCliente_x_Clase
  @IdCliente int,
  @IdClase int
AS

BEGIN
    INSERT INTO Cliente_x_Clase VALUES(@IdCliente,@IdClase)
END


CREATE PROCEDURE eliminarClienteActivo
    @IdCliente int
AS

BEGIN
   UPDATE Clientes SET Activo = 0 WHERE IdCliente = @IdCliente 
END

CREATE PROCEDURE modificarCliente
    @IdCliente int,
    @Nombre varchar(255), 
 @Apellido varchar(255),
 @Mail varchar(255), 
 @Telefono int,
 @Foto varchar(255)
AS

BEGIN
   UPDATE Clientes SET Nombre = @Nombre, Apellido = @Apellido, Mail = @Mail, Telefono = @Telefono, foto = @Foto  WHERE IdCliente = @IdCliente 
END


exec addCliente_x_Clase 1,3
select * from Clientes where Activo = 1

UPDATE Clientes SET Activo = 1 WHERE Activo = 0

exec modificarCliente 5, 'jorguito', 'diaz', 'jorgito@gmail.com',123131, 'sin-foto.jpg'

select * from Clases



CREATE PROCEDURE addClase

 @IdProfesor int, 
 @Nombre varchar(255), 
 @Descripcion varchar(255),
 @Precio float,
 @FotoBanner varchar(255)
AS

BEGIN
	INSERT INTO Clases VALUES(@IdProfesor,@Nombre,@Descripcion,@Precio,@FotoBanner)
END


exec addClase 1, "boxeo", "Aprende a boxear como rocky", 850, '~/img/clases/boxeo.jpg'