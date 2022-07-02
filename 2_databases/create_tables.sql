DROP TABLE IF EXISTS sales_transaction;
DROP TABLE IF EXISTS car;

-- create all the tables
CREATE TABLE sales_transaction (
    customer_name varchar(255),
    customer_phone varchar(255),
    salesperson varchar(255),
    car_characteristics text,
    car_sold varchar(255),
    txn_date date,
    txn_time time
);

CREATE TABLE car (
    manufacturer varchar(255),
    model_name varchar(255),
    serial_number varchar(255) primary key,
    weight float,
    price numeric(10,2)
);

-- inserting data into the table
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Nigel Stevens', '89540303', 'Jasper Cooke', '5-Star Overall NHTSA Rating', 'WDXPD944565869668', '2021-04-03', '17:33:00');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Tamara Barlow', '84930145', 'Jasper Cooke', 'Multiple bluetooth connections', '2G1WG5E39D1252130', '2021-03-04', '11:35:23');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Benjamin Johnson', '90493012', 'Justine Floyd', 'Accelerates from 0-100 in 2.41s', 'JHMZF1D60BS077547', '2021-05-21', '13:25:54');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Dennis Tucker', '94856392', 'Justine Floyd', 'Sports car', '1FMCU0HX7DUD53882', '2021-04-21', '14:25:54');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Humbert Stone', '90493012', 'Edmund Leonard', 'S-Star Overall NHTSA Rating', '1C4RDHAG3CC111506', '2021-03-01', '14:19:32');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Eileen Wolfe', '98409392', 'Edmund Leonard', 'Accelerates from 0-100 in 2.41s', '5TFLU4EN4EX111825', '2021-03-31', '13:43:32');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Howard Rodgers', '93758930', 'Edmund Leonard', 'Accelerates from 0-100 in 2.41s', '1FTEW1EG7FFA01510', '2021-04-25', '13:45:52');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Tammy Sims', '93857202', 'Jasper Cooke', 'Unique colour', '1C4RDHAG3CC111506', '2021-05-11', '13:34:34');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Elbert Bennett', '94028463', 'Edmund Leonard', 'Accelerates from 0-100 in 2.41s', '19UUA66236A041785', '2021-03-23', '12:32:23');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Elbert Bennett', '94028463', 'Justine Floyd', 'Hatchback', '1GNES16S536216594', '2021-04-24', '16:00:32');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Amy Benson', '89302945', 'Justine Floyd', 'Good battery life', '1C4PJLAB4FW602807', '2021-05-23', '20:00:32');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Dennis Tucker', '94028463', 'Jasper Cooke', 'Hatchback', '1FUYSSEB9YPB37259', '2021-05-03', '16:00:32');
INSERT INTO sales_transaction (customer_name, customer_phone, salesperson, car_characteristics, car_sold, txn_date, txn_time) VALUES ('Elbert Bennett', '94028463', 'Edmund Leonard', 'Hatchback', '2HGFG12846H546305', '2021-05-31', '16:00:32');


INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Tesla', 'Model 3', 'WDXPD944565869668', 1700, 112845);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Tesla', 'Model S Plaid', '2G1WG5E39D1252130', 2192, 115730.88);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Tesla', 'Model X', 'JHMZF1D60BS077547', 2390, 122416.83);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Honda', 'All-New Jazz 1.5 Base CVT', '1FDWW37P56ED38109', 1119, 100999);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Honda', 'All-New Jazz 1.5 Home CVT', '1N6AD0ER0FN773673', 1119, 1102999);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Honda', 'All-New Jazz 1.5 Luxe Hybrid', 'YV140MEKXF1274404', 1220, 107999);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Honda', 'All-New City 1.5 SV', '1GNFK16K3RJ340020', 1119, 101999);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Honda', 'Accord', '1C4RDHAG3CC111506', 1408, 173999);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Honda', 'Civic 1.6 Sedan', '5TFLU4EN4EX111825', 1096, 108999);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Honda', 'Civic 1.6 Sedan LX', '1FMCU0HX7DUD53882', 1096, 112999);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Toyota', 'Vios E', '1GNES16S536216594', 1085, 98888);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Toyota', 'Vios G', '2C3CCAET7DH656649', 1100, 104888);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Toyota', 'Prius+', '1N4AL3AP6DC280591', 1570, 143888);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Toyota', 'Harrier Elegance', '1FTEW1EG7FFA01510', 1830, 171888);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Toyota', 'Harrier Premium', '1C4PJLAB4FW602807', 1705, 169888);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Toyota', 'Camry Standard', '4T1BK36B66U046801', 1495, 135888);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Toyota', 'Camry Elegance', 'JTEGD20VX40096392', 1615, 151888);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Toyota', 'Sienta Standard', '1N4AL3AP7FC189008', 1210, 115888);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('Toyota', 'Sienta Elegance', '19UUA66236A041785', 1350, 121888);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('BMW', '7 Series F1 Auto Cars Edition', '1FUYSSEB9YPB37259', 1955, 396000);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('BMW', '1 Series Hatchback', '2HGFG12846H546305', 1360, 155888);
INSERT INTO car (manufacturer, model_name, serial_number, weight, price) VALUES('BMW', '3 Series Sedan', '1GCGC29RXWE213939', 1707, 217888);
