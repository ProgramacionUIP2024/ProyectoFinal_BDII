CREATE TABLE users (
  id_user INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(255) DEFAULT NULL,
  email VARCHAR(255) DEFAULT NULL,
  password VARCHAR(255) DEFAULT NULL,
  created_at DATETIME DEFAULT NULL,
  updated_at DATETIME DEFAULT NULL,
  first_name VARCHAR(255) DEFAULT NULL,
  last_name VARCHAR(255) DEFAULT NULL,
  phone VARCHAR(50) DEFAULT NULL,
  country VARCHAR(255) DEFAULT NULL,
  status ENUM ('active','inactive'),
  membership ENUM ('no','yes'),  #se agrego este campo
  user_type ENUM ('mentor','aprentice','company','event hosting') DEFAULT NULL
);  

CREATE TABLE companies (
  id_company INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) DEFAULT NULL,
  email VARCHAR(255),
  location VARCHAR(255) DEFAULT NULL,
  phone VARCHAR(25) DEFAULT NULL,
  created_at DATETIME DEFAULT NULL,
  updated_at DATETIME DEFAULT NULL,
  country VARCHAR(255) DEFAULT NULL,
  created_by_id INT DEFAULT NULL,
  FOREIGN KEY (created_by_id) REFERENCES users (id_user)
);

CREATE TABLE events (
  id_event INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) DEFAULT NULL,
  description TEXT DEFAULT NULL,
  date_start DATE DEFAULT NULL,
  date_end DATE DEFAULT NULL,
  time_start TIME DEFAULT NULL,
  time_end TIME DEFAULT NULL,
  location TEXT DEFAULT NULL,
  created_at DATETIME DEFAULT NULL,
  updated_at DATETIME DEFAULT NULL,
  created_by_id INT DEFAULT NULL,
  asocieted_company INT DEFAULT NULL,
  type_event VARCHAR(255) DEFAULT NULL,
  country TEXT,
  FOREIGN KEY (created_by_id) REFERENCES users (id_user),
  FOREIGN KEY (asocieted_company) REFERENCES companies (id_company)
);

CREATE TABLE internships (
  id_internships INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) DEFAULT NULL,
  description TEXT DEFAULT NULL,
  date_start DATE DEFAULT NULL,
  date_end DATE DEFAULT NULL,
  requirement TEXT DEFAULT NULL,
  work_area VARCHAR(255) DEFAULT NULL,
  status ENUM ('available', 'unavailable') DEFAULT NULL,
  company INT DEFAULT NULL,
  created_at DATETIME DEFAULT NULL,
  updated_at DATETIME DEFAULT NULL,
  published_at DATETIME DEFAULT NULL,
  created_by_id INT DEFAULT NULL,
  country VARCHAR(255) DEFAULT NULL,
  FOREIGN KEY (created_by_id) REFERENCES users (id_user),
  FOREIGN KEY (company) REFERENCES companies (id_company)
);

CREATE TABLE mentors (
  id_mentor INT PRIMARY KEY AUTO_INCREMENT,
  id_user INT DEFAULT NULL,
  specialty VARCHAR(255) DEFAULT NULL,
  profession VARCHAR(255) DEFAULT NULL,
  created_at DATETIME DEFAULT NULL,
  updated_at DATETIME DEFAULT NULL,
  FOREIGN KEY (id_user) REFERENCES users (id_user)
);

CREATE TABLE mentorings (
  id_mentoring INT PRIMARY KEY AUTO_INCREMENT,
  mentor INT DEFAULT NULL,
  aprentice INT DEFAULT NULL,
  date DATE DEFAULT NULL,
  topics TEXT DEFAULT NULL,
  created_at DATETIME DEFAULT NULL,
  updated_at DATETIME DEFAULT NULL,
  created_by_id INT DEFAULT NULL,
  country VARCHAR(255) DEFAULT NULL,
  FOREIGN KEY (created_by_id) REFERENCES users (id_user),
  FOREIGN KEY (aprentice) REFERENCES users (id_user),
  FOREIGN KEY (mentor) REFERENCES mentors (id_mentor)
);

CREATE TABLE projects (
  id_project INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  description TEXT DEFAULT NULL,
  skill TEXT DEFAULT NULL,
  goals TEXT DEFAULT NULL,
  date_start DATE DEFAULT NULL,
  date_end DATE DEFAULT NULL,
  status ENUM ('in_progress','completed','on_hold','cancell') DEFAULT NULL,
  created_at DATETIME DEFAULT NULL,
  updated_at DATETIME DEFAULT NULL,
  created_by_id INT DEFAULT NULL,
  country VARCHAR(255) DEFAULT NULL,
  FOREIGN KEY (created_by_id) REFERENCES users (id_user)
);