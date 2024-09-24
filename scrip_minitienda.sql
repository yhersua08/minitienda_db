-- Categorias****************
-- Insertar
DELIMITER // 
create procedure procInsertCategory(IN v_description VARCHAR(45))
begin 
 insert into tbl_categorias(cat_descripcion) values (v_description);
end//
DELIMITER ;
-- Actualizar
DELIMITER // 
create procedure procUpdateCategory( In v_id INT , IN V_description VARCHAR(45))
begin
 Update  tbl_categorias
 set cat_descripcion = v_description 
 where cat_id =v_id;
end//
DELIMITER ;
-- Mostrar
DELIMITER //
create procedure procSelectCategory()
begin
select cat_id,cat_descripcion from tbl_categorias;
end//
DELIMITER ;
-- Eliminar
DELIMITER // 
create procedure procDeleteCategory( IN v_id INT)
begin
  delete from tbl_categorias where cat_id = v_id;
end// 
DELIMITER ;

-- Productos******************
 -- insertar
 DELIMITER // 
CREATE PROCEDURE procInsertProducts(
    IN v_codigo VARCHAR(45), 
    IN v_description VARCHAR(100), 
    IN v_cantidad INT, 
    IN v_precio DOUBLE, 
    IN v_proveedor_id INT, 
    IN v_categoria_id INT
)
BEGIN 
    INSERT INTO tbl_productos (
        pro_codigo, 
        pro_descripccion, 
        pro_cantidad, 
        pro_precio, 
        tbl_proveedores_prov_id, 
        tbl_categorias_cat_id
    ) 
    VALUES (
        v_codigo, 
        v_description, 
        v_cantidad, 
        v_precio, 
        v_proveedor_id, 
        v_categoria_id
    );
END//
DELIMITER ;procInsertProductsprocInsertProducts

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateProduct(
    IN v_id INT, 
    IN v_codigo VARCHAR(20), 
    IN v_description VARCHAR(45), 
    IN v_cantidad INT, 
    IN v_precio DECIMAL(10,2), 
    IN v_proveedor_id INT, 
    IN v_categoria_id INT
)
BEGIN
    UPDATE tbl_productos
    SET pro_codigo = v_codigo, 
        pro_descripccion = v_description, 
        pro_cantidad = v_cantidad, 
        pro_precio = v_precio, 
        tbl_proveedores_prov_id = v_proveedor_id, 
        tbl_categorias_cat_id = v_categoria_id
    WHERE pro_id = v_id;
END//
DELIMITER ;

-- Mostrar
DELIMITER // 
CREATE PROCEDURE procSelectProducts()
BEGIN
    SELECT pro_id, pro_codigo, pro_descripccion, pro_cantidad, pro_precio, 
           tbl_proveedores_prov_id, tbl_categorias_cat_id 
    FROM tbl_productos;
END//
DELIMITER ;
-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteProduct(IN v_id INT)
BEGIN
    DELETE FROM tbl_productos 
    WHERE pro_id = v_id;
END//
DELIMITER ;
-- Usuarios****************
-- insertar
 DELIMITER // 
CREATE PROCEDURE procInsertUsers(
    IN v_correo VARCHAR(80), 
    IN v_contrasena TEXT, 
    IN v_salt TEXT, 
    IN v_estado VARCHAR(15)
)
BEGIN 
    INSERT INTO tbl_usuarios (usu_correo, usu_contrasena, usu_salt, usu_estado) 
    VALUES (v_correo, v_contrasena, v_salt, v_estado);
END//
DELIMITER ;

-- Actualizar
 DELIMITER //
CREATE PROCEDURE procUpdateUsers(
    IN v_id INT,
    IN v_correo VARCHAR(80), 
    IN v_contrasena TEXT, 
    IN v_salt TEXT, 
    IN v_estado VARCHAR(15)
)
BEGIN
    UPDATE tbl_usuarios
    SET usu_correo = v_correo, 
        usu_contrasena = v_contrasena, 
        usu_salt = v_salt, 
        usu_estado = v_estado
    WHERE usu_id = v_id;
END//
DELIMITER ;

-- Mostrar
 DELIMITER //
CREATE PROCEDURE procSelectUsers()
BEGIN
    SELECT usu_id, usu_correo, usu_contrasena, usu_salt ,usu_estado
    FROM tbl_usuarios;
END//
DELIMITER ;

-- Eliminar
 DELIMITER //
CREATE PROCEDURE procDeleteUsers(IN v_id INT)
BEGIN
    DELETE FROM tbl_usuarios 
    WHERE usu_id = v_id;
END//
DELIMITER ;
