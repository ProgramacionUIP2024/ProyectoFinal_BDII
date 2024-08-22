CREATE VIEW informe_compañias AS
SELECT c.id_company, c.name, c.email, c.location, c.phone, c.country,
COUNT(DISTINCT e.id_event) AS total_events,
COUNT(DISTINCT i.id_internships) AS total_internships
FROM companies c
LEFT JOIN events e ON c.id_company = e.asocieted_company
LEFT JOIN internships i ON c.id_company = i.company
GROUP BY c.id_company;
--------------------------------------------------------------------------------------
CREATE VIEW Pasantia_disponible AS
SELECT i.id_internships, i.title, i.date_start, i.date_end, i.status, c.name AS company
FROM internships i
JOIN companies c ON i.company = c.id_company
WHERE i.status = 'available';
----------------------------------------------------------------------------------------
CREATE VIEW tipos_usuarios AS
SELECT user_type, COUNT(*) AS count
FROM users
GROUP BY user_type;
------------------------------------------------------------------------------------------
CREATE VIEW usuarios_mienbros AS
SELECT membership, COUNT(*) AS count
FROM users
GROUP BY membership;
-------------------------------------------------------------------------------------------
CREATE VIEW especialidades_mentores AS
SELECT m.id_mentor, CONCAT(u.first_name,' ',u.last_name) AS fullname, m.specialty, m.profession
FROM mentors m
JOIN users u ON m.id_user = u.id_user;
--------------------------------------------------------------------------------------------
CREATE VIEW compañia_pais AS
SELECT country, COUNT(*) AS count 
FROM companies
GROUP BY country;
--------------------------------------------------------------------------------------------
CREATE VIEW analisis_proyecto AS
SELECT p.id_project, p.title, p.description, p.status, p.date_start, p.date_end, p.country,
(p.date_end - p.date_start) AS duration_days
FROM projects p;
---------------------------------------------------------------------------------------------
CREATE VIEW proyectos_estado AS
SELECT status, COUNT(*) AS count
FROM projects
GROUP BY status;
---------------------------------------------------------------------------------------------
CREATE VIEW pasantia_estado AS
SELECT status, COUNT(*) AS count
FROM internships
GROUP BY status;
------------------------------------------------------------------------------------------------
CREATE VIEW Mentoria_mentor_total AS
SELECT m.id_mentor,CONCAT(u.first_name,' ',u.last_name) AS fullname,m.specialty, COUNT(mento.id_mentoring) AS total_mentorings
FROM mentors m
JOIN users u ON m.id_user = u.id_user
LEFT JOIN mentorings mento ON m.id_mentor = mento.mentor
GROUP BY m.id_mentor, u.username, m.specialty;
--------------------------------------------------------------------------------------------------
CREATE VIEW compañia_estado AS
SELECT c.id_company,c.name AS company_name,c.email,c.location,c.phone,c.country,u.status AS user_status
FROM companies c
JOIN users u ON c.created_by_id = u.id_user;
------------------------------------------------------------------------------------------------------
CREATE VIEW compañia_activa AS
SELECT c.id_company,c.name AS company_name,c.email,c.location,c.phone,c.country,u.status AS user_status
FROM companies c
JOIN users u ON c.created_by_id = u.id_user
WHERE u.status = 'active';
----------------------------------------------------------------------------------------------------------
CREATE VIEW usuarios_pais AS
SELECT country, COUNT(*) AS count
FROM users
GROUP BY country;