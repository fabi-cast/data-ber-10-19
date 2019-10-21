USE cars_database;

INSERT INTO cars 
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
(3,'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
(4,'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
(5,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

INSERT INTO customers 
VALUES (1, 10001, 	'Pablo Picasso', 	'+34 636 17 63 82', ''  ,	'Paseo de la Chopera 14', 'Madrid', 'Madrid' ,'Spain' , '28045'),
(2, 40057, 'Asami Tsuzuki', '+81 70 4812 5782', 'asami.tsuzuki@gmail.com', 'Nakasujicho 103', 'Kyoto', 'Osaka', 'Japan', '604-0901' ),
(3, 40061, 'Olivia  Fjord Sloth', '+45 51 91 37 71', 'oli@gmail.com', 'Charlotte Muncks Vej 22 st.', 'Copenhagen', 'Region Hovedstaden', 'Denmark', '2400' ),
(4, 7520, 'Rhona Smith' , '+44 7748 336246 ', 'r.s@hotmail.com', '3/4 White Park', 'Edimburgo', 'Scotland' , 'United Kingdom', 'EH11 1TZ'), 
(5, 20001, 'Abraham Lincoln', 	'+1 305 907 7086', ''  ,	'120 SW 8th St', 'Miami', 'Florida' ,'United States' , '33130'),
 (6, 30001, 'Napoleón Bonaparte', 	'+33 1 79 75 40 00', ''  ,	'40 Rue du Colisée', 	'Paris', 'Île-de-France' ,'France' , '75008');

INSERT INTO stores  VALUES
(1, 'Calle de Embajadores 147', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, "Carrer de la Ciutat d'Asuncion 24" , 'Barcelona', 'Catalonya', 'Spain', '08030'),
(3, 'Franklinstraße 28-29', 'Berlin', 'Berlin', 'Germany', '10587'),
(7, '31 Rue Saint-Amand' ,'Paris', 'Île-de-France' ,'France', '75015'),
(8, '8800 NW 27th Ave' ,'Mimia', 'Florida', 'United States', 'FL 33147'),
(10, 'Av. Insurgentes Sur 1572' , 'Mexico City', 'Mexico City', 'Mexico', '03940'),
(12, ' Klokkenbergweg 15' , 'Amsterdam', 'North Holland', 'Netherlands', ' 1101 AK'),
(15, ' 2 Chome-20-11 Shinmachi' , 'Osaka', 'Kansai', 'Japan', '550-0013'),
(20, ' Av. El Dorado #77-04' , 'Bogotá', 'Bogotá', 'Colombia', '110911'),
(25, ' Av. Europa, 110' , 'São Paulo', 'São Paulo', 'Brazil', '01449-000');


INSERT INTO sales_persons VALUES
(1, 'Petey Cruiser', 1),
(2, 'Anna Sthesia', 2),
(3, 'Paul Molive', 	3),
(4, 'Gail Forcewind', 7),
(5, 'Paige Turner', 8),
(6, 'Bob Frapples', 10),
(7, 'Walter Melon', 12),
(8, 'Celia Bezerra', 25),
(9, 'Mariko Sugino', 15),
(10, 'Gladys Quiroga', 20);

INSERT INTO invoices
VALUES (1, 852, '2018-12-22', 3, 1, 3),
 (2, 925, '2018-12-31', 	4, 	4, 	7),
(3, 1024, '2019-01-15' ,2 ,	2, 	7),
(4, 2735, '2019-03-27', 1,  4, 10),
(5, 3567, '2019-12-17', 2, 3, 3);


