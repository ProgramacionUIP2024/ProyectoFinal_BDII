DELIMITER //
CREATE PROCEDURE actualizar_usuario(
    IN p_id_user INT,
    IN p_username VARCHAR(255),
    IN p_status ENUM('active', 'inactive'),
    IN p_membership ENUM('no', 'yes')
)
BEGIN
    UPDATE users
    SET username = p_username,
        status = p_status,
        membership = p_membership,
        updated_at = NOW()
    WHERE id_user = p_id_user;
END //
