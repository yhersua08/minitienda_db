-- Inserta un proveedor
DELIMITER //
CREATE PROCEDURE spInsertProvider(IN p_nit VARCHAR(45),IN p_name VARCHAR(100))
BEGIN
    insert into tbl_proveedor(prov_nit,prov_nombre) values(p_nit,p_name);
END//
DELIMITER ;

-- Selecciona unicamente el id y el nombre de los provedores
DELIMITER //
CREATE PROCEDURE spSelectProvidersDDL()
BEGIN
	select prov_id,prov_nombre
    from tbl_proveedor;
END//
DELIMITER ;

-- Selecciona todos los atributos de los proveedores
DELIMITER //
CREATE PROCEDURE spSelectProviders()
BEGIN
	select prov_id,prov_nit,prov_nombre
    from tbl_proveedor;
END//
DELIMITER ;

-- Actualiza un proveedor
DELIMITER //
CREATE PROCEDURE spUpdateProvider(IN p_id INT, IN p_nit VARCHAR(45),IN p_name VARCHAR(100))
BEGIN
    update tbl_proveedor
    set prov_nit = p_nit, prov_nombre = p_name  where prov_id = p_id;
END//
DELIMITER ;