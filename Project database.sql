CREATE TABLE Students (
    user_id CHAR VARYING(10),
    email CHAR VARYING(20),
    students_pw CHAR VARYING(20),
    PRIMARY KEY (user_id)
);
 
CREATE TABLE Events (
    rating INT,
    event_type CHAR VARYING(20),
    event_id CHAR VARYING(10),
    event_name CHAR VARYING(25),
    event_location CHAR VARYING(25),
    c_phone CHAR VARYING(25),
    time CHAR(5),
    c_email CHAR VARYING(25),
    date DATE,
    PRIMARY KEY (event_id)
);

CREATE TABLE University (
    university_name CHAR VARYING(25),
    university_location CHAR VARYING(25),
    university_id CHAR VARYING(10),
    PRIMARY KEY (university_id)
);

CREATE TABLE Super_admin (
    super_admin_pw CHAR VARYING(25),
    super_admin_id CHAR VARYING(20),
    PRIMARY KEY (super_admin_pw)
);

CREATE TABLE Admin (
    admin_name CHAR VARYING(25),
    admin_id CHAR VARYING(10),
    admin_pw CHAR VARYING(25),
    PRIMARY KEY (admin_id)
);

CREATE TABLE RSO (
    rso_id CHAR VARYING(10),
    rso_name CHAR VARYING(20),
    PRIMARY KEY (rso_id)
);

CREATE TABLE Owns (
    admin_id CHAR VARYING(10),
    rso_id CHAR VARYING(10),
    PRIMARY KEY (admin_id , rso_id),
    FOREIGN KEY (admin_id)
        REFERENCES Admin (admin_id),
    FOREIGN KEY (rso_id)
        REFERENCES RSO (rso_id)
);

