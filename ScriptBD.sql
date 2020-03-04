CREATE DATABASE VIDEOS;

CREATE TABLE video(
idVideo int primary key,
titulo varchar(100),
repro int,
url varchar(100)
)

CREATE PROCEDURE sp_video_insertar
	@idVideo int,
	@titulo varchar(100),
	@repro int,
	@url varchar(100)
as
begin
	INSERT INTO video
	VALUES(@idVideo, @titulo, @repro, @url)
end

EXEC sp_video_insertar 1,'Video', 1, 'x'
EXEC sp_video_insertar 6,'Video 2', 4, 'e'



CREATE PROCEDURE sp_video_eliminar
	@idVideo int
as
begin
	DELETE FROM video WHERE idVideo=@idVideo
end

CREATE PROCEDURE sp_video_actualizar
	@idVideo int,
	@titulo varchar(100),
	@repro int,
	@url varchar(100)
as
begin
	UPDATE video 
	SET idVideo=@idVideo,
	titulo=@titulo,
	repro=@repro,
	url=@url
	WHERE idVideo=@idVideo
end

CREATE PROCEDURE sp_video_mostrar
	@idVideo int,
	@titulo varchar(100),
	@repro int,
	@url varchar(100)
as
begin
	SELECT * FROM video;
end

select * from video