use Travego;
CREATE TABLE passenger (
    passenger_id INT PRIMARY KEY,
    passenger_name VARCHAR(100),
    category VARCHAR(50),
    gender VARCHAR(10),
    boarding_city VARCHAR(50),
    destination_city VARCHAR(50),
    distance int,
    bus_type VARCHAR(20)
);
CREATE TABLE prices (
    id INT PRIMARY KEY,
    bus_type VARCHAR(20),
    distance FLOAT,
    price int
);
INSERT INTO passenger (passenger_id, passenger_name, category, gender, boarding_city, destination_city, distance, bus_type)
VALUES
    (1, 'Sejal', 'AC', 'F', 'Bengaluru', 'Chennai', 350, 'Sleeper'),
    (2, 'Anmol', 'Non-AC', 'M', 'Mumbai', 'Hyderabad', 700, 'Sitting'),
    (3, 'Pallavi', 'AC', 'F', 'Panaji', 'Bengaluru', 600, 'Sleeper'),
    (4, 'Khusboo', 'AC', 'F', 'Chennai', 'Mumbai', 1500, 'Sleeper'),
    (5, 'Udit', 'Non-AC', 'M', 'Trivandrum', 'Panaji', 1000, 'Sleeper'),
    (6, 'Ankur', 'AC', 'M', 'Nagpur', 'Hyderabad', 500, 'Sitting'),
    (7, 'Hemant', 'Non-AC', 'M', 'Panaji', 'Mumbai', 700, 'Sleeper'),
    (8, 'Manish', 'Non-AC', 'M', 'Hyderabad', 'Bengaluru', 500, 'Sitting'),
    (9, 'Piyush', 'AC', 'M', 'Pune', 'Nagpur', 700, 'Sitting');
INSERT INTO prices (id, bus_type, distance, price)
VALUES
    (1, 'Sleeper', 350, 770),
    (2, 'Sleeper', 500, 1100),
    (3, 'Sleeper', 600, 1320),
    (4, 'Sleeper', 700, 1540),
    (5, 'Sleeper', 1000, 2200),
    (6, 'Sleeper', 1200, 2640),
    (7, 'Sleeper', 1500, 2700),
    (8, 'Sitting', 500, 620),
    (9, 'Sitting', 600, 744),
    (10, 'Sitting', 700, 868),
    (11, 'Sitting', 1000, 1240),
    (12, 'Sitting', 1200, 1488),
    (13, 'Sitting', 1500, 1860);
select gender,distance from passenger where distance>=600 and gender ='M';
select bus_type, round(min(price),0) as min_price from prices where bus_type='Sleeper';
select * from passenger where passenger_name like'S%';
select p.passenger_name,p.boarding_city,p.destination_city,p.bus_type,pr.price from passenger p join prices pr on p.bus_type=pr.bus_type;
select p.passenger_name, p.bus_type,pr.price from passenger p join prices pr on p.bus_type=pr.bus_type where pr.distance=1000 and p.bus_type='Sitting';
SELECT * from prices WHERE distance=600;
select distinct distance from passenger order by  distance desc;
select passenger_name ,distance/(select sum(distance) from passenger)* 100 as totalper from passenger;


