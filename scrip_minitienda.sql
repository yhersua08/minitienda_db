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
