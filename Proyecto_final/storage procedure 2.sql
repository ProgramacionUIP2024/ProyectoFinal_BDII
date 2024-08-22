DELIMITER //
CREATE PROCEDURE actualizar_pasantia(
    IN p_id_internships INT,
    IN p_status ENUM('available', 'unavailable')
)
BEGIN
    UPDATE internships
    SET
        status = p_status
    WHERE id_internships = p_id_internships;
END //