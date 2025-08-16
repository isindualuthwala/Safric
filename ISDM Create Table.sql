/* Creating Tables */

/*  Manager Table   */

CREATE TABLE Manager
(
	manager_id int NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	dob DATE NOT NULL,
	password varchar(10) NOT NULL,

	CONSTRAINT manager_PK PRIMARY KEY (manager_id),
	CONSTRAINT manager_password_check CHECK(
	LEN(password)BETWEEN 6 AND 10
	AND password LIKE '%[A-Z]%'
	AND password LIKE '%[0-9]%'
	)
);

/*  Web Admin Table  */

CREATE TABLE Web_Admin
(
	admin_id int NOT NULL,
	password varchar(10) NOT NULL,
	house_no varchar(15) NOT NULL,
	street varchar(30) NOT NULL,
	city varchar (30) NOT NULL,
	post_code varchar (20) NOT NULL,
	manager_id int NOT NULL,

	CONSTRAINT admin_PK PRIMARY KEY(admin_id),
	CONSTRAINT admin_FK FOREIGN KEY(manager_id) REFERENCES Manager(manager_id),
	CONSTRAINT admin_password_check CHECK(
	LEN(password) BETWEEN 6 AND 10
	AND password LIKE '%[A-Z]%'
	AND password LIKE '%[0-9]%'
	)
);

/*  Reservation Table  */

CREATE TABLE Reservation
(
	res_id int NOT NULL,
	first_name varchar(30) NOT NULL,
	last_name varchar (30) NOT NULL,
	date DATE NOT NULL,
	time TIME NOT NULL,
	no_of_person int NOT NULL,
	admin_id int NOT NULL,

	CONSTRAINT reservation_PK PRIMARY KEY(res_id),
	CONSTRAINT reservation_FK FOREIGN KEY (admin_id) REFERENCES Web_Admin(admin_id),
);

/* Tour Guid  Table  */

CREATE TABLE Tour_Guid
(
	guid_id int NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	house_no varchar(15) NOT NULL,
	street varchar(30) NOT NULL,
	city varchar(30) NOT NULL,
	post_code varchar(20) NOT NULL,
	dob DATE NOT NULL,
	password varchar(10) NOT NULL,

	CONSTRAINT tour_guid_PK PRIMARY KEY(guid_id),
	CONSTRAINT tour_guid_password_check CHECK(
	LEN(password)BETWEEN 6 AND 10 
	AND password LIKE '%[A-Z]%' 
	AND password LIKE '%[0-9]%'
	)
);

/* Package  Table  */

CREATE TABLE Package
(
	package_id int NOT NULL,
	package_type varchar(20) NOT NULL,
	package_price real NOT NULL,

	CONSTRAINT package_PK PRIMARY KEY(package_id)
);

/* Feedback  Table  */

CREATE TABLE Feedback
(
	feedback_id int NOT NULL,
	date DATE NOT NULL,
	rate varchar(20) NOT NULL,
	manager_id int NOT NULL,

	CONSTRAINT feedback_PK PRIMARY KEY (feedback_id),
	CONSTRAINT feedback_FK FOREIGN KEY (manager_id) REFERENCES Manager(manager_id)
);

/* Registerd User  Table  */

CREATE TABLE Registerd_user
(	
	user_id int NOT NULL,
	password varchar(20) NOT NULL,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	house_no varchar(15) NOT NULL,
	street varchar(30) NOT NULL,
	city varchar (30) NOT NULL,
	post_code varchar (20) NOT NULL,
	package_id int NOT NULL,
	res_id int NOT NULL,

	CONSTRAINT user_PK PRIMARY KEY(user_id),
	CONSTRAINT user_FK1 FOREIGN KEY (package_id) REFERENCES Package(package_id),
	CONSTRAINT user_FK2 FOREIGN KEY (res_id) REFERENCES Reservation(res_id),
	CONSTRAINT user_password_check CHECK(
	LEN(password) BETWEEN 6 AND 20
	AND password LIKE '%[A-Z]%'
	AND password LIKE '%[0-9]%'
	)
	
);


/* Inquires  Table  */

CREATE TABLE Inquire
(
	inquire_id int NOT NULL,
	date DATE NOT NULL,
	inquire varchar(800) NOT NULL,
	user_id int NOT NULL,
	guid_id int NOT NULL,

	CONSTRAINT inquire_PK PRIMARY KEY(inquire_id,user_id),
	CONSTRAINT inquire_FK1 FOREIGN KEY (user_id) REFERENCES Registerd_user(user_id),
	CONSTRAINT inquire_FK2 FOREIGN KEY (guid_id) REFERENCES Tour_Guid(guid_id),

);

/* User Contacts  Table  */

CREATE TABLE User_Contacts
(
	user_id int NOT NULL,
	email varchar(30) NOT NULL,
	phone_no varchar(10) NOT NULL,

	CONSTRAINT user_contact_PK PRIMARY KEY (user_id,email),
	CONSTRAINT user_contact_FK FOREIGN KEY (user_id) REFERENCES Registerd_User(user_id),
	CONSTRAINT check_uc_email CHECK(email LIKE '%_@_%._%'),
	CONSTRAINT check_uc_phone CHECK (phone_no BETWEEN 0000000000 AND 9999999999)
);

/* Manager Contacts  Table  */

CREATE TABLE Manager_Contact
(
	manager_id int NOT NULL,
	email varchar(30) NOT NULL,
	phone_no varchar(10) NOT NULL,

	CONSTRAINT manager_contact_PK PRIMARY KEY (manager_id,email),
	CONSTRAINT manager_contact_FK FOREIGN KEY (manager_id) REFERENCES Manager(Manager_id),
	CONSTRAINT check_mc_email CHECK(email LIKE '%_@_%._%'),
	CONSTRAINT check_mc_phone CHECK (phone_no BETWEEN 0000000000 AND 9999999999)
);

/* Web Admin Contacts  Table  */

CREATE TABLE Web_Admin_Contact
(
	admin_id int NOT NULL,
	email varchar(30) NOT NULL,
	phone_no varchar(10) NOT NULL,

	CONSTRAINT admin_contact_PK PRIMARY KEY (admin_id,email),
	CONSTRAINT admin_contact_FK FOREIGN KEY (admin_id) REFERENCES Web_Admin(admin_id),
	CONSTRAINT check_ac_email CHECK(email LIKE '%_@_%._%'),
	CONSTRAINT check_ac_phone CHECK (phone_no BETWEEN 0000000000 AND 9999999999)
);

/* Reservation Contacts  Table  */

CREATE TABLE Reservation_Contact
(
	res_id int NOT NULL,
	email varchar(30) NOT NULL,
	phone_no varchar(10) NOT NULL,

	CONSTRAINT Reservation_contact_PK PRIMARY KEY (res_id,email),
	CONSTRAINT Reservation_contact_FK FOREIGN KEY (res_id) REFERENCES Reservation(res_id),
	CONSTRAINT check_rc_email CHECK(email LIKE '%_@_%._%'),
	CONSTRAINT check_rc_phone CHECK (phone_no BETWEEN 0000000000 AND 9999999999)
);

/*  User Inquires  Table  */

CREATE TABLE User_Inquire
(
    user_id INT NOT NULL,
    inquire_id INT NOT NULL,

    CONSTRAINT user_inquire_PK PRIMARY KEY (user_id, inquire_id),
    CONSTRAINT user_inquir_FK1 FOREIGN KEY (user_id) REFERENCES Registerd_User(user_id),
    CONSTRAINT user_inquir_FK2 FOREIGN KEY (inquire_id,user_id) REFERENCES Inquire(inquire_id,user_id),
);

/*  Feedback Comment  Table  */

CREATE TABLE Feedback_Comment
(
	feedback_id int NOT NULL,
	comment varchar(800) NOT NULL,

	CONSTRAINT feedback_Comment_PK PRIMARY KEY(feedback_id,comment),
	CONSTRAINT feedback_Comment_FK FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

/*  Register User Feedback  Table  */

CREATE TABLE Registerd_User_Feedback
(
	user_id int NOT NULL,
	feedback_id int NOT NULL,

	CONSTRAINT  Registerd_User_Feedback_PK PRIMARY KEY(user_id,feedback_id),
	CONSTRAINT Registerd_User_Feedback_FK1 FOREIGN KEY (user_id) REFERENCES Registerd_user(user_id),
	CONSTRAINT Registerd_User_Feedback_FK2 FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);
