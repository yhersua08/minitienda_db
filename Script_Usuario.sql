-- Selecciona todos los usuarios
DELIMITER //
CREATE PROCEDURE spSelectUsers()
BEGIN
	select *
    from tbl_usuario;
END//
DELIMITER ;

-- Selecciona un usuario por su correo
DELIMITER //
CREATE PROCEDURE spSelectUsersMail(IN p_mail VARCHAR(80))
BEGIN
	select usu_correo, usu_contrasena,usu_salt,usu_estado
    from tbl_usuario
    where usu_correo = p_mail;
END//
DELIMITER ;

-- Inserta un nuevo usuario
DELIMITER //
CREATE PROCEDURE spInsertUsers(IN p_mail VARCHAR(80),IN p_password TEXT, IN p_salt TEXT, IN p_state VARCHAR(15))
BEGIN
    insert into tbl_usuario(usu_correo, usu_contrasena, usu_salt, usu_estado) values(p_mail, p_password, p_salt, p_state);
END//
DELIMITER ;

-- Actualiza un usuario
DELIMITER //
CREATE PROCEDURE spUpdateUsers(IN p_id INT,IN p_mail VARCHAR(80),IN p_password TEXT, IN p_salt TEXT, IN p_state VARCHAR(15))
BEGIN
	update tbl_usuario
    set usu_correo = p_mail, usu_contrasena = p_password, usu_salt = p_salt, usu_estado = p_state  where usu_id = p_id;
END//
DELIMITER ;