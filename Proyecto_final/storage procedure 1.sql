DELIMITER //
CREATE PROCEDURE actualizar_proyectos(
IN p_id_project INT,
IN p_status ENUM('in_progress', 'completed', 'on_hold', 'cancell'),
IN p_country VARCHAR(255)
)
BEGIN
    UPDATE projects
    SET
        status = p_status,
        country = p_country
    WHERE id_project = p_id_project;
END //