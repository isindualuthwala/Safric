/* Insert Data Into Tables */

/* Inset Data Into Manager Table */

INSERT INTO Manager VALUES(001,'Nimal','Karunarathne','1973-5-8','M11234');
INSERT INTO Manager VALUES(002,'Kamal','Abesinghe','1970-2-1','M21234');
INSERT INTO Manager VALUES(003,'Amal','Gunarathne','1965-5-20','M31234');
INSERT INTO Manager VALUES(004,'Piyal','Nishantha','1971-4-8','M41234');
INSERT INTO Manager VALUES(005,'Nuwan','Perera','1971-1-15','M51234');

/* Inset Data Into Web Admin Table */

INSERT INTO Web_Admin VALUES (001,'A11234','A1','1st Lane','Kiribathgoda','32100',001);
INSERT INTO Web_Admin VALUES (002,'A21234','A2','2nd Lane','Nugegoda','33100',002);
INSERT INTO Web_Admin VALUES (003,'A31234','A3','3rd Lane','Malabe','35100',003);
INSERT INTO Web_Admin VALUES (004,'A41234','A4','4th Lane','Nittabuwa','36100',004);
INSERT INTO Web_Admin VALUES (005,'A51234','A5','5th Lane','Kelaniya','37100',005);

/* Inset Data Into Reservation Table */

INSERT INTO Reservation VALUES (001,'Chanupa','Athsara','2023-12-02','12:32:00',5,001);
INSERT INTO Reservation VALUES (002,'Amali','Senarathne','2024-02-10','14:12:00',10,002);
INSERT INTO Reservation VALUES (003,'Ruwan','Harshana','2024-03-15','06:25:00',2,002);
INSERT INTO Reservation VALUES (004,'Chamali','Jayawardhane','2024-03-20','15:30:00',4,003);
INSERT INTO Reservation VALUES (005,'Nipun','Suranga','2024-04-02','17:42:00',15,005);

/* Inset Data Into Tour Guid Table */

INSERT INTO Tour_Guid VALUES (001,'Pasindu','Sathsara','B1','1st Lane','Kurunegala','71200','1991-05-10','TG11234');
INSERT INTO Tour_Guid VALUES (002,'Keshana','Kavindu','B2','2nd Lane','Kegalle','41300','1991-05-10','TG21234');
INSERT INTO Tour_Guid VALUES (003,'Radeesh','Nisal','B3','3rd Lane','Kandy','85400','1991-05-10','TG31234');
INSERT INTO Tour_Guid VALUES (004,'Sithara','Wijesinghe','B4','4th Lane','Hatton','36400','1991-05-10','TG41234');
INSERT INTO Tour_Guid VALUES (005,'Nuwani','Sashikala','B5','5th Lane','Mathara','12400','1991-05-10','TG51234');

/* Inset Data Into Package Table */

INSERT INTO Package VALUES (001,'BRONZE PACKAGE',2500.00);
INSERT INTO Package VALUES (002,'SILVER PACKAGE',3500.00);
INSERT INTO Package VALUES (003,'GOLD PACKAGE',5000.00);
INSERT INTO Package VALUES (004,'CHILD PACKAGE',1000.00);
INSERT INTO Package VALUES (005,'SPECIAL PACKAGE',7500.00);

/* Inset Data Into Feedback Table */

INSERT INTO Feedback VALUES (001,'2023-05-10','Poor',005);
INSERT INTO Feedback VALUES (002,'2023-07-20','Good',004);
INSERT INTO Feedback VALUES (003,'2023-08-11','Good',003);
INSERT INTO Feedback VALUES (004,'2023-10-15','Satisfide',002);
INSERT INTO Feedback VALUES (005,'2024-01-13','Exelent',002);

/* Inset Data Into Registerd User Table */

INSERT INTO Registerd_User VALUES (001,'Nuwan1234','Nuwan','Sagara','C1','1st Lane','Galle','41300',005,001);
INSERT INTO Registerd_User VALUES (002,'Pasindu1234','Pasindu','Randula','C2','2nd Lane','Ruwanwella','25300',004,002);
INSERT INTO Registerd_User VALUES (003,'Akash1234','Akash','Viduranga','C3','3rd Lane','Gampaha','423600',003,003);
INSERT INTO Registerd_User VALUES (004,'Chanuka1234','Chanuka','Gayan','C4','4th Lane','Dehiwala','30300',002,004);
INSERT INTO Registerd_User VALUES (005,'Piyumi1234','Piyumi','Maleesha','C5','4th Lane','Anuradhapura','50100',001,005);

/* Inset Data Into Inquires Table */

INSERT INTO Inquire VALUES (001,'2023-05-05','What are the top five wildlife species that visitors are most likely to encounter during a safari in our designated area?',001,005);
INSERT INTO Inquire VALUES (002,'2023-06-13','How does our safari tour contribute to wildlife conservation efforts in the region?',002,004);
INSERT INTO Inquire VALUES (003,'2023-08-02','What measures are in place to ensure the safety and well-being of both wildlife and visitors during safari excursions?',003,003);
INSERT INTO Inquire VALUES (004,'2023-11-01','Can visitors expect to witness any seasonal migrations or unique behaviors of wildlife during specific times of the year?',004,002);
INSERT INTO Inquire VALUES (005,'2023-12-25','How does our safari experience cater to both seasoned wildlife enthusiasts and those who are new to safari adventures?',005,001);

/* Inset Data User Contacts Table */

INSERT INTO User_Contacts VALUES (001,'Nuwan@gmail.com','0712345698');
INSERT INTO User_Contacts VALUES (002,'Pasindu@gmail.com','0765254569');
INSERT INTO User_Contacts VALUES (003,'Akash@gmail.com','0745858552');
INSERT INTO User_Contacts VALUES (004,'Chanuka@gmail.com','0712526321');
INSERT INTO User_Contacts VALUES (005,'Piyumi@gmail.com','0773139865');

/* Inset Data Manager Contacts Table */

INSERT INTO Manager_Contact VALUES(001,'M1@gmail.com','0714525365');
INSERT INTO Manager_Contact VALUES(002,'M2@gmail.com','0774541236');
INSERT INTO Manager_Contact VALUES(003,'M3@gmail.com','0711489632');
INSERT INTO Manager_Contact VALUES(004,'M4@gmail.com','0765459365');
INSERT INTO Manager_Contact VALUES(005,'M5@gmail.com','0771489741');

/* Inset Data Web Admin Contacts Table */

INSERT INTO Web_Admin_Contact VALUES (001,'A1@gmail.com','0712369852');
INSERT INTO Web_Admin_Contact VALUES (002,'A2@gmail.com','0774547135');
INSERT INTO Web_Admin_Contact VALUES (003,'A3@gmail.com','0712525220');
INSERT INTO Web_Admin_Contact VALUES (004,'A4@gmail.com','0774523698');
INSERT INTO Web_Admin_Contact VALUES (005,'A5@gmail.com','0782469321');

/* Inset Data Reservation Contacts Table */

INSERT INTO Reservation_Contact VALUES (001,'Chanupa@gmail.com','0712489632');
INSERT INTO Reservation_Contact VALUES (002,'Amali@gmail.com','0774541256');
INSERT INTO Reservation_Contact VALUES (003,'Ruwan@gmail.com','0785247896');
INSERT INTO Reservation_Contact VALUES (004,'Chamali@gmail.com','0711214156');
INSERT INTO Reservation_Contact VALUES (005,'Nipun@gmail.com','0762541789');

/* Inset Data User Inquires Table */

INSERT INTO User_Inquire VALUES (001,001);
INSERT INTO User_Inquire VALUES (002,002);
INSERT INTO User_Inquire VALUES (003,003);
INSERT INTO User_Inquire VALUES (004,004);
INSERT INTO User_Inquire VALUES (005,005);

/* Inset Data Feedback Comment Table */

INSERT INTO Feedback_Comment VALUES(001,'Absolutely breathtaking! Seeing the majestic lions up close was an experience I will never forget. The guides were knowledgeable and respectful of the animals space.');
INSERT INTO Feedback_Comment VALUES(002,'A safari like no other! From spotting elusive leopards to witnessing a herd of elephants bathing in the river, every moment was filled with wonder and excitement. Highly recommend!');
INSERT INTO Feedback_Comment VALUES(003,'I was blown away by the diversity of wildlife on this safari. From the tiny dung beetles to the massive rhinos, every creature played a vital role in the ecosystem. Truly a humbling experience.');
INSERT INTO Feedback_Comment VALUES(004,'The conservation efforts of this safari company are commendable. Its clear they prioritize the well-being of the animals and their habitats above all else. Proud to support such a responsible tourism initiative.');
INSERT INTO Feedback_Comment VALUES(005,'As a first-time safari-goer, I couldnt have asked for a better introduction to the wonders of the African wilderness. The guides were patient and passionate, and I left with a newfound appreciation for nature.');

/* Inset Data Register User Feedback Table */

INSERT INTO Registerd_User_Feedback VALUES(001,005);
INSERT INTO Registerd_User_Feedback VALUES(002,004);
INSERT INTO Registerd_User_Feedback VALUES(003,003);
INSERT INTO Registerd_User_Feedback VALUES(004,002);
INSERT INTO Registerd_User_Feedback VALUES(005,001);

