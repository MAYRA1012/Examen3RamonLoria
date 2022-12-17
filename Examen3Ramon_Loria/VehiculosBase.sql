create database VEHICULOS 

use VEHICULOS 

Create table Usuarios 
(
IdUsuario int identity,
Usuario  varchar(50)unique,
Clave varchar(30),
Nombre varchar(50),
Apellido  varchar(50)

constraint PK_IdUsuario primary key(IdUsuario)

)



Create table Placa 
(
IdPlaca int identity,
NumPlaca   varchar(6)unique,
IdUsuario  int ,
Monto money default 0
constraint PK_IdPlaca primary key(IdPlaca)
constraint FK_IdUsuario foreign key (IdUsuario) references Usuarios(IdUsuario)

)


create procedure ConsultaUsuario
as
	begin
		select IdUsuario, Usuario, Clave, nombre, Apellido from Usuarios
	end

		Exec ConsultaUsuario 






	create procedure InsertarUsuario
	@Usuario varchar (50),
	@clave varchar (30),
	@nombre varchar (50),
	@Apellido nvarchar (50) 

as

	begin
		insert into Usuarios (Usuario, clave, Nombre, Apellido) values (@Usuario, @clave, @nombre, @Apellido)


	end

	exec InsertarUsuario 'manuel@gmail.com','123','Manuel','Loria'


	
	create procedure BorrarUsuario
	@IdUsuario int
	as
		begin
		delete Usuarios where IdUsuario =@IdUsuario
		end


		exec BorrarUsuario '1'


create procedure ActualizaUsuario
	@Usuario varchar (50),
	@clave varchar (30),
	@nombre varchar (50),
	@Apellido nvarchar (50), 
	@IdUsuario int
		as
		begin
			update Usuarios set Usuario= @Usuario, clave= @clave, nombre= @nombre, Apellido= @Apellido
			where IdUsuario=@IdUsuario
		end

exec ActualizaUsuario 'rloria@gmail.com','222','ramon','Loria',2



create procedure ConsultaPlaca
as
	begin
		select IdPlaca, NumPlaca, IdUsuario, Monto from Placa
	end

		Exec ConsultaPlaca 


	create procedure InsertarPlaca
	@NumPlaca varchar (6),
	@IdUsuario int,
	@Monto money 


as

	begin
		insert into Placa (NumPlaca, IdUsuario, Monto) values (@NumPlaca, @IdUsuario, @Monto)


	end

	exec InsertarPlaca '885440',2,1500


		create procedure BorrarPlaca
	@IdPlaca int
	as
		begin
		delete Placa where IdPlaca =@IdPlaca
		end


		exec BorrarPlaca '1'



	alter procedure ActualizaPlaca
	@NumPlaca varchar (6),
	@Monto money,
	@IdPlaca int
		as
		begin
			update Placa set NumPlaca=@NumPlaca, Monto=@Monto 

			where IdPlaca=@IdPlaca
		end

exec ActualizaPlaca '717171',3500,2



create procedure ConsultaPlacaFiltro
@IdPlaca int
as
	begin
		select id, correo, clave, nombre, tipo from Mae_usuario
		where IdPlaca =@IdPlaca

	end



	create procedure reporteconFiltro
@IdPlaca int
as
	begin

		select Usuarios.Nombre,	Usuarios.Apellido,Placa.IdPlaca,Placa.Monto
from Placa 
inner join  Usuarios  on Placa.IdUsuario = Usuarios.IdUsuario
		
		where IdPlaca =@IdPlaca

	end

	exec reporteconFiltro 2


	select Usuarios.Nombre,	Usuarios.Apellido,Placa.IdPlaca,Placa.Monto
from Placa 
inner join  Usuarios  on Placa.IdUsuario = Usuarios.IdUsuario


	create procedure ValidarUsuario
	@Usuario varchar(50),
	@clave varchar (30)
	as
	BEGIN
		select nombre, Apellido, Usuario, clave from Usuarios where Usuario=@Usuario and clave=@clave

		end