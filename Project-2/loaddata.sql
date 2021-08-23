-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the parent tables!

-- This is only an example of how you add INSERT statements to this file.
--   You may remove it.
-- A more complex syntax that saves you typing effort.
INSERT INTO Category VALUES('Health Care workers',1);
INSERT INTO Category VALUES('Elderly',1);
INSERT INTO Category VALUES('Immunologically Compromised',1);
INSERT INTO Category VALUES('Teachers',2);
INSERT INTO Category VALUES('Children below 10',2);
INSERT INTO Category VALUES('Those in physical proximity to first priority',2);
INSERT INTO Category VALUES('Essential Service Workers',3);
INSERT INTO Category VALUES('Those in physical proximity to second priority',3);
INSERT INTO Category VALUES('Everybody else',4);

INSERT INTO Person VALUES(229294707,'Marie V Howe','female','2015-08-28','819-386-0827','Trois Rivieres', 'G9A 5S8','2929 rue Saint-Édouard','2020-12-20', 'Children below 10');
INSERT INTO Person VALUES(680393717,'Donald J Brown','male','1940-10-30','514-913-9374','Montreal', 'H3C 5K4','3000 rue Levy','2020-12-20', 'Elderly');
INSERT INTO Person VALUES(704263052,'Yanira C Wilson','female','1956-01-14','418-568-1800','Hauterive', 'G5C 1M1','3048 Paradise Crescent','2020-12-20', 'Elderly');
INSERT INTO Person VALUES(341772598,'Ivan M Kennedy','male','1940-10-27','819-765-0977','Laverlochere', 'J0Z 2P0','4375 rue des Églises Est','2020-12-20', 'Elderly');
INSERT INTO Person VALUES(192166445,'John J Foster','male','1955-08-14','450-525-6603','Granby', 'J2H 2H5','2237 rue Saint-Antoine','2021-01-09', 'Elderly');
INSERT INTO Person VALUES(279142244,'Odessa R Moore','female','1977-09-03','418-529-4538','Montreal', 'G1R 1B8','3175 Boulevard Cremazie','2020-12-05', 'Essential Service Workers');
INSERT INTO Person VALUES(360583785,'Sandra C Johnson','female','1989-01-17','514-912-5479','Montreal', 'H3C 5K4','1682 rue Levy','2020-12-20', 'Essential Service Workers');
INSERT INTO Person VALUES(364885731,'Bessie S Kennedy','female','1986-02-02','514-895-9345','Montreal', 'H4N 3C5','3332 De L','2020-12-20', 'Everybody else');
INSERT INTO Person VALUES(459085841,'Tonya J Royston','female','1986-06-20','819-816-0967','Drummondville', 'J2B 1G6','2499 rue Saint-Antoine','2020-12-20', 'Everybody else');
INSERT INTO Person VALUES(529781924,'Kenisha H Henderson','female','1993-04-23','514-237-6189','Montreal', 'H4S 1H3','3011 Duke Street','2020-12-20', 'Everybody else');
INSERT INTO Person VALUES(219956390,'James M Chang','male','1983-10-07','819-827-0679','Montreal', 'J0X 1N0','993 rue des Églises Est','2021-01-08', 'Everybody else');
INSERT INTO Person VALUES(446047177,'Jeremy R Gonzalez','male','1983-11-24','819-955-0768','Hull', 'S4P 3Y2','1043 Promenade du Portage','2020-12-11', 'Everybody else');
INSERT INTO Person VALUES(671629673,'Matthew S Thornton','male','1961-07-02','819-374-4253','Trois Rivieres', 'G9A 5S8','2966 rue Saint-Édouard','2021-01-08', 'Everybody else');
INSERT INTO Person VALUES(406215947,'Darryl J Webb','male','1991-01-22','450-880-6224','Montreal', 'J3P 4M9','3872 rue St-Paul','2020-12-20', 'Everybody else');
INSERT INTO Person VALUES(718719800,'Dale J Johnson','female','2009-08-10','514-448-4497','Montreal', 'H3A 4G4','1023 Ste. Catherine Ouest','2020-12-20', 'Everybody else');
INSERT INTO Person VALUES(252179783,'Duane E Lawler','male','2000-04-11','819-432-7846','Sherbrooke', 'J1E 3B2','202 rue Parc','2020-12-20', 'Everybody else');
INSERT INTO Person VALUES(665129243,'Theresa E Jenkins','female','1995-11-01','819-949-5182','Angliers', 'J0Z 1A0','1204 rue des Églises Est','2020-12-21', 'Everybody else');
INSERT INTO Person VALUES(322955397,'Joseph M Ward','male','1984-08-19','514-709-5412','Montreal', 'H3C 5K4','817 rue Levy','2020-12-22', 'Everybody else');
INSERT INTO Person VALUES(523495554,'Willie M Killough','male','1986-02-25','514-591-5214','Montreal', 'H3B 2M3','4074 rue de la Gauchetière','2020-12-01', 'Health Care workers');
INSERT INTO Person VALUES(484684576,'Russell C Jones','male','1981-09-07','514-758-6198','Montreal', 'H2K 4J5','4825 Papineau Avenue','2020-12-20', 'Health Care workers');
INSERT INTO Person VALUES(218084424,'Rachel V Mallory','female','1983-03-19','418-636-8627','St Luc', 'G0S 1L0','2314 St Jean Baptiste St','2021-01-13', 'Health Care workers');
INSERT INTO Person VALUES(675308522,'Jane Doe','female','1994-04-18','514-496-0155','Montreal', 'H2X 1Y8','1758 rue Ontario Ouest','2020-12-12', 'Health Care workers');
INSERT INTO Person VALUES(180637621,'Joan M Nolan','female','1966-03-10','819-297-6655','Sainte-Gertrude', 'G0X 2S0','4471 St Jean Baptiste St','2020-12-20', 'Immunologically Compromised');
INSERT INTO Person VALUES(116018441,'Matthew C Ortiz','male','1940-12-13','514-919-7975','Montreal', 'H3C 5K4','3223 rue Levy','2020-12-20', 'Immunologically Compromised');
INSERT INTO Person VALUES(172814899,'Elisa C Scott','female','1977-09-01','450-541-9541','Montreal', 'J0K 1H0','566 chemin Georges','2020-12-11', 'Teachers');
INSERT INTO Person VALUES(399167626,'Christine G Yarbrough','female','1975-03-16','514-429-7295','Montreal', 'H9R 3J4','4491 Saint-Denis Street','2020-12-20', 'Teachers');
INSERT INTO Person VALUES(567672779,'Roger E Ritzman','male','1976-05-21','450-515-6773','Bonaventure', 'J2X 4W8','4421 rue Saint-Antoine','2020-12-20', 'Teachers');
INSERT INTO Person VALUES(669770976,'Lisa D Mayo','female','1956-06-05','819-674-1915','Montreal', 'J1L 1C9','2186 rue Parc','2021-01-07', 'Those in physical proximity to first priority');
INSERT INTO Person VALUES(455215467,'William P Shelton','male','1961-08-03','819-350-8667','Arthabaska', 'G6P 5V8','3405 St-Jacques Est','2021-01-14', 'Those in physical proximity to first priority');
INSERT INTO Person VALUES(784343162,'Catherine J McMullen','female','1959-06-20','418-774-3407','Beauceville', 'G5X 2Y7','3096 Boulevard Laflèche','2021-01-11', 'Those in physical proximity to first priority');

INSERT INTO Vaccine VALUES('Pfizer-BioNTech',30,2);
INSERT INTO Vaccine VALUES('Moderna',30,2);
INSERT INTO Vaccine VALUES('AAA',45,2);
INSERT INTO Vaccine VALUES('BBB',20,3);
INSERT INTO Vaccine VALUES('CCC',15,4);
INSERT INTO Vaccine VALUES('DDD',20,3);
INSERT INTO Vaccine VALUES('EEE',10,4);
INSERT INTO Vaccine VALUES('FFF',21,3);

INSERT INTO VaccLocation VALUES('Jewish General','Montreal','H2K 4J5', '4590 Papineau Avenue');
INSERT INTO VaccLocation VALUES('location 1','Montreal','H3C 5K4', '1901 Duke Street');
INSERT INTO VaccLocation VALUES('McGill General','Montreal','H3H 2S1', '741 Papineau Avenue');
INSERT INTO VaccLocation VALUES('location 2','Montreal','H3B 2M3', '755 rue de la Gauchetière');
INSERT INTO VaccLocation VALUES('Lambert Hospital','St Lambert','J4P 1W3', '1763 chemin du Lac');
INSERT INTO VaccLocation VALUES('Sherbrooke Hospital','Sherbrooke','J1H 1R4', '4953 Rue King');
INSERT INTO VaccLocation VALUES('location 3','Montreal','H4J 1M9', '2088 chemin Hudson');
INSERT INTO VaccLocation VALUES('Escoumins Hospital','Les Escoumins','G0T 1K0', '4149 St Jean Baptiste St');

INSERT INTO VaccineBatch VALUES('Pfizer-BioNTech', 1,'2020-12-19','2021-06-17', 13, 'Jewish General');
INSERT INTO VaccineBatch VALUES('Moderna', 2,'2020-12-12','2021-06-10', 15, 'location 1');
INSERT INTO VaccineBatch VALUES('AAA', 3,'2020-12-30','2021-06-28', 12, 'McGill General');
INSERT INTO VaccineBatch VALUES('BBB', 4,'2020-12-18','2021-06-16', 10, 'location 2');
INSERT INTO VaccineBatch VALUES('CCC', 5,'2020-12-07','2021-06-05', 18, 'Lambert Hospital');
INSERT INTO VaccineBatch VALUES('DDD', 6,'2021-01-06','2021-07-05', 20, 'Sherbrooke Hospital');
INSERT INTO VaccineBatch VALUES('EEE', 7,'2021-01-11','2021-07-10', 15, 'location 3');
INSERT INTO VaccineBatch VALUES('FFF', 8,'2020-12-20','2021-06-18', 12, 'Escoumins Hospital');
INSERT INTO VaccineBatch VALUES('Pfizer-BioNTech', 9,'2021-01-08','2021-07-07', 15, 'Jewish General');
INSERT INTO VaccineBatch VALUES('Pfizer-BioNTech', 10,'2020-12-06','2021-06-04', 10, 'location 1');
INSERT INTO VaccineBatch VALUES('Moderna', 11,'2020-12-20','2021-06-18', 20, 'McGill General');
INSERT INTO VaccineBatch VALUES('CCC', 12,'2021-01-16','2021-07-15', 15, 'location 2');
INSERT INTO VaccineBatch VALUES('FFF', 13,'2021-01-16','2021-07-15', 12, 'Lambert Hospital');
INSERT INTO VaccineBatch VALUES('EEE', 14,'2021-01-06','2021-07-05', 15, 'Sherbrooke Hospital');
INSERT INTO VaccineBatch VALUES('Moderna', 15,'2021-01-25','2021-07-24', 10, 'Jewish General');

INSERT INTO Vial VALUES('Pfizer-BioNTech',1,1001);
INSERT INTO Vial VALUES('Pfizer-BioNTech',1,1002);
INSERT INTO Vial VALUES('Pfizer-BioNTech',1,1003);
INSERT INTO Vial VALUES('Pfizer-BioNTech',1,1004);
INSERT INTO Vial VALUES('Moderna',2,2001);
INSERT INTO Vial VALUES('Moderna',2,2002);
INSERT INTO Vial VALUES('BBB',4,4001);
INSERT INTO Vial VALUES('DDD',6,6001);
INSERT INTO Vial VALUES('DDD',6,6002);
INSERT INTO Vial VALUES('DDD',6,6003);
INSERT INTO Vial VALUES('DDD',6,6004);
INSERT INTO Vial VALUES('EEE',7,7001);
INSERT INTO Vial VALUES('EEE',7,7002);
INSERT INTO Vial VALUES('EEE',7,7003);
INSERT INTO Vial VALUES('Pfizer-BioNTech',9,9001);
INSERT INTO Vial VALUES('Pfizer-BioNTech',9,9002);
INSERT INTO Vial VALUES('Pfizer-BioNTech',9,9003);
INSERT INTO Vial VALUES('Pfizer-BioNTech',9,9004);
INSERT INTO Vial VALUES('Pfizer-BioNTech',10,10001);
INSERT INTO Vial VALUES('Pfizer-BioNTech',10,10002);
INSERT INTO Vial VALUES('Pfizer-BioNTech',10,10003);
INSERT INTO Vial VALUES('Pfizer-BioNTech',10,10004);
INSERT INTO Vial VALUES('Moderna',11,11001);
INSERT INTO Vial VALUES('Moderna',11,11002);
INSERT INTO Vial VALUES('EEE',14,14001);
INSERT INTO Vial VALUES('EEE',14,14002);

INSERT INTO Hospital Values('Jewish General');
INSERT INTO Hospital Values('McGill General');
INSERT INTO Hospital Values('Lambert Hospital');
INSERT INTO Hospital Values('Sherbrooke Hospital');
INSERT INTO Hospital Values('Escoumins Hospital');

INSERT INTO Nurse Values(520757162, 'Sharon S Fowler', 'Jewish General');
INSERT INTO Nurse Values(292516754, 'Bob R Bobby', 'Jewish General');
INSERT INTO Nurse Values(118836246, 'Joshua L Brewer', 'Jewish General');
INSERT INTO Nurse Values(701108441, 'Violet C Alfonso', 'Jewish General');
INSERT INTO Nurse Values(717627640, 'Janet W Huynh', 'Jewish General');
INSERT INTO Nurse Values(177724887, 'Annie A Zambrano', 'McGill General');
INSERT INTO Nurse Values(689864957, 'Sarah W West', 'McGill General');
INSERT INTO Nurse Values(465045003, 'Anne D Stoddard', 'McGill General');
INSERT INTO Nurse Values(593855778, 'Sheila G King', 'Lambert Hospital');
INSERT INTO Nurse Values(582973111, 'Vanessa J Parker', 'Lambert Hospital');
INSERT INTO Nurse Values(469858070, 'Kitty M Nelson', 'Sherbrooke Hospital');
INSERT INTO Nurse Values(257415570, 'Kenneth M Thompson', 'Sherbrooke Hospital');
INSERT INTO Nurse Values(490083227, 'William M Furst', 'Escoumins Hospital');
INSERT INTO Nurse Values(300672508, 'Pauline J McCoy', 'Escoumins Hospital');

INSERT INTO VaccDates Values('Jewish General', '2021-03-20');
INSERT INTO VaccDates Values('location 1', '2021-02-25');
INSERT INTO VaccDates Values('McGill General', '2021-02-25');
INSERT INTO VaccDates Values('location 2', '2021-02-24');
INSERT INTO VaccDates Values('Sherbrooke Hospital', '2021-02-17');
INSERT INTO VaccDates Values('location 3', '2021-02-09');
INSERT INTO VaccDates Values('Jewish General', '2021-02-06');
INSERT INTO VaccDates Values('location 1', '2021-01-18');
INSERT INTO VaccDates Values('Sherbrooke Hospital', '2021-02-28');

INSERT INTO VaccSlot Values('Jewish General', '2021-03-20', '16:59', 'JG001', 360583785, '2021-02-27', 520757162, 'Pfizer-BioNTech', 1, 1001);
INSERT INTO VaccSlot Values('Jewish General', '2021-03-20', '15:32', 'JG002', 446047177, '2021-02-27', 292516754, 'Pfizer-BioNTech', 1, 1002);
INSERT INTO VaccSlot Values('Jewish General', '2021-03-20', '14:55', 'JG003', NULL, NULL, 118836246, 'Pfizer-BioNTech', 1, 1003);
INSERT INTO VaccSlot Values('Jewish General', '2021-03-20', '13:34', 'JG004', NULL, NULL, 701108441, 'Pfizer-BioNTech', 1, 1004);
INSERT INTO VaccSlot Values('location 1', '2021-02-25', '11:57', 'L1001', 784343162, '2021-02-24', 717627640, 'Moderna', 2, 2001);
INSERT INTO VaccSlot Values('location 1', '2021-02-25', '17:02', 'L1002', 364885731, '2021-02-24', 177724887, 'Moderna', 2, 2002);
INSERT INTO VaccSlot Values('location 2', '2021-02-24', '15:53', 'L2001', 455215467, '2021-02-23', 689864957, 'BBB', 4, 4001);
INSERT INTO VaccSlot Values('Sherbrooke Hospital', '2021-02-17', '10:00', 'SH001', 669770976, '2021-02-14', 118836246, 'DDD', 6, 6001);
INSERT INTO VaccSlot Values('Sherbrooke Hospital', '2021-02-17', '11:00', 'SH002', 567672779, '2021-02-14', 701108441, 'DDD', 6, 6002);
INSERT INTO VaccSlot Values('Sherbrooke Hospital', '2021-02-17', '16:41', 'SH003', 399167626, '2021-02-14', 465045003, 'DDD', 6, 6003);
INSERT INTO VaccSlot Values('Sherbrooke Hospital', '2021-02-17', '14:52', 'SH004', 172814899, '2021-02-14', 593855778, 'DDD', 6, 6004);
INSERT INTO VaccSlot Values('location 3', '2021-02-09', '10:07', 'L3001', 116018441, '2021-02-06', 582973111, 'EEE', 7, 7001);
INSERT INTO VaccSlot Values('location 3', '2021-02-09', '12:59', 'L3002', 229294707, '2021-02-06', 469858070, 'EEE', 7, 7002);
INSERT INTO VaccSlot Values('location 3', '2021-02-09', '10:02', 'L3003', 180637621, '2021-02-06', 257415570, 'EEE', 7, 7003);
INSERT INTO VaccSlot Values('Jewish General', '2021-02-06', '10:00', 'JG001', 523495554, '2021-02-03', 689864957, 'Pfizer-BioNTech', 9, 9001);
INSERT INTO VaccSlot Values('Jewish General', '2021-02-06', '11:00', 'JG002', 484684576, '2021-02-03', 465045003, 'Pfizer-BioNTech', 9, 9002);
INSERT INTO VaccSlot Values('Jewish General', '2021-02-06', '12:54', 'JG003', 675308522, '2021-02-03', 490083227, 'Pfizer-BioNTech', 9, 9003);
INSERT INTO VaccSlot Values('Jewish General', '2021-02-06', '10:45', 'JG004', 218084424, '2021-02-03', 300672508, 'Pfizer-BioNTech', 9, 9004);
INSERT INTO VaccSlot Values('location 1', '2021-01-18', '10:18', 'L1001', 680393717, '2021-01-16', 520757162, 'Pfizer-BioNTech', 10, 10001);
INSERT INTO VaccSlot Values('location 1', '2021-01-18', '16:31', 'L1002', 704263052, '2021-01-16', 292516754, 'Pfizer-BioNTech', 10, 10002);
INSERT INTO VaccSlot Values('location 1', '2021-01-18', '10:19', 'L1003', 341772598, '2021-01-16', 118836246, 'Pfizer-BioNTech', 10, 10003);
INSERT INTO VaccSlot Values('location 1', '2021-01-18', '10:15', 'L1004', 192166445, '2021-01-16', 701108441, 'Pfizer-BioNTech', 10, 10004);
INSERT INTO VaccSlot Values('McGill General', '2021-02-25', '12:17', 'MG001', 360583785, '2021-02-24', 490083227, 'Moderna', 11, 11001);
INSERT INTO VaccSlot Values('McGill General', '2021-02-25', '11:59', 'MG002', 279142244, '2021-02-24', 300672508, 'Moderna', 11, 11002);
INSERT INTO VaccSlot Values('Sherbrooke Hospital', '2021-02-28', '11:13', 'SH001', 459085841, '2021-02-27', 689864957, 'EEE', 14, 14001);
INSERT INTO VaccSlot Values('Sherbrooke Hospital', '2021-02-28', '13:47', 'SH002', 529781924, '2021-02-27', 465045003, 'EEE', 14, 14002);

INSERT INTO NurseAssignments Values(520757162, 'Jewish General', '2021-03-20');
INSERT INTO NurseAssignments Values(292516754, 'Jewish General', '2021-03-20');
INSERT INTO NurseAssignments Values(118836246, 'Jewish General', '2021-03-20');
INSERT INTO NurseAssignments Values(701108441, 'Jewish General', '2021-03-20');
INSERT INTO NurseAssignments Values(717627640, 'location 1', '2021-02-25');
INSERT INTO NurseAssignments Values(177724887, 'location 1', '2021-02-25');
INSERT INTO NurseAssignments Values(689864957, 'location 2', '2021-02-24');
INSERT INTO NurseAssignments Values(118836246, 'Sherbrooke Hospital', '2021-02-17');
INSERT INTO NurseAssignments Values(701108441, 'Sherbrooke Hospital', '2021-02-17');
INSERT INTO NurseAssignments Values(465045003, 'Sherbrooke Hospital', '2021-02-17');
INSERT INTO NurseAssignments Values(593855778, 'Sherbrooke Hospital', '2021-02-17');
INSERT INTO NurseAssignments Values(582973111, 'location 3', '2021-02-09');
INSERT INTO NurseAssignments Values(469858070, 'location 3', '2021-02-09');
INSERT INTO NurseAssignments Values(257415570, 'location 3', '2021-02-09');
INSERT INTO NurseAssignments Values(689864957, 'Jewish General', '2021-02-06');
INSERT INTO NurseAssignments Values(465045003, 'Jewish General', '2021-02-06');
INSERT INTO NurseAssignments Values(490083227, 'Jewish General', '2021-02-06');
INSERT INTO NurseAssignments Values(300672508, 'Jewish General', '2021-02-06');
INSERT INTO NurseAssignments Values(520757162, 'location 1', '2021-01-18');
INSERT INTO NurseAssignments Values(292516754, 'location 1', '2021-01-18');
INSERT INTO NurseAssignments Values(118836246, 'location 1', '2021-01-18');
INSERT INTO NurseAssignments Values(701108441, 'location 1', '2021-01-18');
INSERT INTO NurseAssignments Values(490083227, 'McGill General', '2021-02-25');
INSERT INTO NurseAssignments Values(300672508, 'McGill General', '2021-02-25');
INSERT INTO NurseAssignments Values(689864957, 'Sherbrooke Hospital', '2021-02-28');
INSERT INTO NurseAssignments Values(465045003, 'Sherbrooke Hospital', '2021-02-28');