CREATE DATABASE praktikum4;
USE praktikum4;
CREATE TABLE Pegawai (
  id_pegawai VARCHAR(5) PRIMARY KEY,
  nama_depan VARCHAR(50),
  nama_belakang VARCHAR(50),
  email VARCHAR(100),
  telepon VARCHAR(20),
  tgl_kontrak DATE,
  id_job VARCHAR(5),
  gaji INT,
  tunjangan INT
);

INSERT INTO Pegawai (id_pegawai, nama_depan, nama_belakang, email, telepon, tgl_kontrak, id_job, gaji, tunjangan)
VALUES	('E001', 'Ferry', 'Gustiawan', 'ferry@yahoo.com', '07117059004', '2005-09-01', 'L0001', 2000000, 500000),
		('E002', 'Aris', 'Ganiardi', 'aris@yahoo.com', '081312345678', '2006-09-01', 'L0002', 2000000, 200000),
		('E003', 'Faiz', 'Ahnad', 'faiz@gmail.com', '081367384322', '2006-10-01', 'L0003', 1500000, NULL),
		('E004', 'Emna', 'Bunton', 'emna@gmail.com', '081363484342', '2006-10-01', 'L0004', 1500000, 9),
		('E005', 'Mike', 'Scoff', 'mike@plasa.com', '08163454555', '2007-09-01', 'L0005', 1250000, 9),
		('E006', 'Lincoln', 'Burrows', 'linc@yahoo.com', '08527388432', '2008-09-01', 'L0006', 1750000, NULL);
SELECT * FROM Pegawai;
SELECT * FROM Pegawai WHERE gaji NOT IN (2000000, 1250000);
SELECT * FROM Pegawai WHERE tunjangan IS NULL;
SELECT * FROM Pegawai WHERE tunjangan IS NOT NULL;
SELECT COUNT(*) AS jumlah_pegawai FROM Pegawai;
SELECT SUM(gaji) AS total_gaji FROM Pegawai;
SELECT AVG(gaji) AS rata_rata_gaji FROM Pegawai;
SELECT MIN(gaji) AS gaji_terkecil FROM Pegawai;
SELECT MAX(gaji) AS gaji_terbesar FROM Pegawai;

CREATE TABLE Animals (
  id VARCHAR(2),
  name VARCHAR(20),
  owner VARCHAR(20),
  species VARCHAR(20),
  sex CHAR(1)
);

INSERT INTO Animals (id, name, owner, species, sex)
VALUES ('p1', 'Puffball', 'Diane', 'Hamster', 'F'),
       ('p2', 'Claws', 'Gwen', 'Cat', 'M'),
       ('p3', 'Fluffy', 'Haro 1d', 'Cat', 'F'),
       ('p4', 'Buffy', 'Haro 1d', 'Dog', 'F'),
       ('p5', 'Fang', 'Benny', 'Dog', 'M'),
       ('p6', 'Bowser', 'Diane', 'Dog', 'M'),
       ('p7', 'Chirpy', 'Gwen', 'Bird', 'F'),
       ('p8', 'Whistler', 'Gwen', 'Bird', NULL),
       ('p9', 'Slim', 'Benny', 'Snake', 'M');
SELECT * from Animals;
SELECT owner, COUNT(*) AS jumlah_hewan FROM Animals GROUP BY owner;
SELECT species, COUNT(*) AS jumlah_hewan FROM Animals GROUP BY species;
SELECT sex, COUNT(*) AS jumlah_hewan FROM Animals GROUP BY sex;
SELECT species, sex, COUNT(*) AS jumlah_hewan FROM Animals GROUP BY species, sex;
SELECT species, sex, COUNT(*) AS jumlah_hewan FROM Animals WHERE species IN ('Cat', 'Dog') GROUP BY species, sex;
SELECT sex, COUNT(*) AS jumlah_hewan FROM Animals WHERE sex IS NOT NULL GROUP BY sex;