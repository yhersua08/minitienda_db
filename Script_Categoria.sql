-- Insertar una Categoria 
DELIMITER //
CREATE PROCEDURE spInsertCategory(IN p_description VARCHAR(45))
BEGIN
    insert into tbl_categoria(cat_descripcion) values(p_description);
END//
DELIMITER ;

-- Seleccionar todas las Categorias 
DELIMITER //
CREATE PROCEDURE spSelectCategory()
BEGIN
	select cat_id,cat_descripcion from tbl_categoria;
END//
DELIMITER ;

-- Actualizar una Categoria 
DELIMITER //
CREATE PROCEDURE spUpdateCategory(IN p_id INT,IN p_description VARCHAR(45))
BEGIN
    update tbl_categoria
    set cat_descripcion = p_description where cat_id = p_id;
END//
DELIMITER ;

-- Borrar una Categoria 
DELIMITER //
CREATE PROCEDURE spDeleteCategory(IN p_id INT)
BEGIN
    delete from tbl_categoria where cat_id = p_id;
END//
DELIMITER ;