# Praktikum 4
Nama : Anggita Risqi Nur Clarita

NIM : 312210450

Kelas : TI.22.A.4

Mata Kuliah : Basis Data

Dosen Pengampu : Agung Nugroho, S.Kom., M.Kom.

## DAFTAR ISI <br>
| No | Description | Link |
|-----|------|-----|
|1|Soal Praktikum 4|[Click Here](#soal-praktikum-4)|
|2|Praktikum 4 (Pegawai)|[Click Here](#tugas-praktikum-tabel-pegawai)|
|3|Praktikum 4 (Animals)|[Click Here](#tugas-praktikum-tabel-animals)|
|4|Kesimpulan|[Click Here](#kesimpulan)
|5|PDF|[Click Here](https://drive.google.com/file/d/1ljtNGUl0hhkxg6qOjHdbbj5kjCOhSapq/view?usp=sharing)|

## Soal Praktikum 4
[Link Soal](https://drive.google.com/file/d/1-W4QxYX65ikw7GaxmZ-GU2TUUIH8Yo6y/view)

### Tugas Praktikum (Tabel Pegawai)
![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/Tugas%201.png)

#### Script DDL berdasarkan tabel data pegawai
```sql
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
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/1.png)

### Tugas Praktikum
#### 1. Tampilkan pegawai yang gajinya bukan 2.000.000 dan 1.250.000 !
**Script :**
```sql
SELECT * FROM Pegawai WHERE gaji NOT IN (2000000, 1250000);
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/2.png)

**Keterangan :** Operator `NOT IN` digunakan untuk memfilter data yang tidak terdapat pada list IN

#### 2. Tampilkan pegawai yang tunjangannya NULL!
**Script :**
```sql
SELECT * FROM Pegawai WHERE tunjangan IS NULL;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/3.png)

**Keterangan :** Operator `IS NULL` digunakan untuk menampilkan data dengan nilai data NULL

#### 3. Tampilkan pegawai yang tunjangannya tidak NULL!
**Script :**
```sql
SELECT * FROM Pegawai WHERE tunjangan IS NOT NULL;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/4.png)

**Keterangan :** Operator `IS NOT NULL` digunakan untuk menampilkan data dengan nilai data tidak NULL

#### 4. Tampilkan/hitung jumlah baris/record tabel pegawai!
**Script :**
```sql
SELECT COUNT(*) AS jumlah_pegawai FROM Pegawai;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/5.png)

**Keterangan :** `COUNT` adalah perintah yang digunakan untuk menghitung jumlah baris suatu kolom pada tabel.

#### 5. Tampilkan/hitung jumlah total gaji di tabel pegawai!
**Script :**
```sql
SELECT SUM(gaji) AS total_gaji FROM Pegawai;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/6.png)

**Keterangan :** `SUM` adalah perintah yang digunakan untuk menghitung jumlah nilai suatu kolom pada tabel.

#### 6. Tampilkan/hitung rata-rata gaji pegawai!
**Script :**
```sql
SELECT AVG(gaji) AS rata_rata_gaji FROM Pegawai;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/7.png)

**Keterangan :** `AVG` adalah perintah yang digunakan untuk menghitung rata-rata dari nilai suatu kolom pada tabel.

#### 7. Tampilkan gaji terkecil!
**Script :**
```sql
SELECT MIN(gaji) AS gaji_terkecil FROM Pegawai;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/8.png)

**Keterangan :** `MIN` adalah perintah yang digunakan untuk menampilkan nilai terkecil dari suatu kolom pada tabel.

#### 8. Tampilkan gaji terbesar!
**Script :**
```sql
SELECT MAX(gaji) AS gaji_terbesar FROM Pegawai;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/9.png)

**Keterangan :** `MAX` adalah perintah yang digunakan untuk menampilkan nilai terbesar dari suatu kolom pada tabel.

### Tugas Praktikum (Tabel Animals)
![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/Tugas%202.png)

#### Script DDL berdasarkan tabel data hewan/animals
```sql
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
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/10.png)


### Tugas Praktikum
#### 1. Tampilkan jumlah hewan yang dimiliki setiap owner.
**Script :**
```sql
SELECT owner, COUNT(*) AS jumlah_hewan FROM Animals GROUP BY owner;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/11.png)

**Keterangan :** Klausa `GROUP BY` berfungsi untuk mengelompokkan data berdasarkan field tertentu.

#### 2. Tampilkan jumlah hewan berdasarkan spesies
**Script :**
```sql
SELECT species, COUNT(*) AS jumlah_hewan FROM Animals GROUP BY species;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/12.png)

**Keterangan :** Klausa `GROUP BY` berfungsi untuk mengelompokkan data berdasarkan field tertentu.

#### 3. Tampilkan jumlah hewan berdasarkan jenis kelamin
**Script :**
```sql
SELECT sex, COUNT(*) AS jumlah_hewan FROM Animals GROUP BY sex;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/13.png)

**Keterangan :** Klausa `GROUP BY` berfungsi untuk mengelompokkan data berdasarkan field tertentu.

#### 4. Tampilkan jumlah hewan berdasarkan spesies dan jenis kelamin
**Script :**
```sql
SELECT species, sex, COUNT(*) AS jumlah_hewan FROM Animals GROUP BY species, sex;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/14.png)

**Keterangan :** Klausa `GROUP BY` berfungsi untuk mengelompokkan data berdasarkan field tertentu.

#### 5. Tampilkan jumlah hewan berdasarkan spesis (cat dan dog saja) dan jenis kelamin
**Script :**
```sql
SELECT species, sex, COUNT(*) AS jumlah_hewan FROM Animals WHERE species IN ('Cat', 'Dog') GROUP BY species, sex;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/15.png)

**Keterangan :** Klausa `GROUP BY` berfungsi untuk mengelompokkan data berdasarkan field tertentu.

#### 6. Tampilkan jumlah hewan berdasarkan jenis kelamin yang diketahui saja
**Script :**
```sql
SELECT sex, COUNT(*) AS jumlah_hewan FROM Animals WHERE sex IS NOT NULL GROUP BY sex;
```

**Output**

![image](https://github.com/AnggitaRisqiNC/Praktikum-4/blob/main/screenshot/16.png)

**Keterangan :** Klausa `GROUP BY` berfungsi untuk mengelompokkan data berdasarkan field tertentu.


### Kesimpulan
Terdapat beberapa **Query Filter** yang ditemukan pada tugas praktikum 4 :

* Operator `IN` digunakan untuk memfilter data yang terdapat pada list IN
* Operator `NOT IN` digunakan untuk memfilter data yang tidak terdapat pada list IN
* Operator `IS NULL` digunakan untuk menampilkan data dengan nilai data NULL
* Operator `IS NOT NULL` digunakan untuk menampilkan data dengan nilai data tidak NULL
* `COUNT` adalah perintah yang digunakan untuk menghitung jumlah baris suatu kolom pada tabel.
* `SUM` adalah perintah yang digunakan untuk menghitung jumlah nilai suatu kolom pada tabel.
* `AVG` adalah perintah yang digunakan untuk menghitung rata-rata dari nilai suatu kolom pada tabel.
* `MIN` adalah perintah yang digunakan untuk menampilkan nilai terkecil dari suatu kolom pada tabel.
* `MAX` adalah perintah yang digunakan untuk menampilkan nilai terbesar dari suatu kolom pada tabel.
* Klausa `GROUP BY` berfungsi untuk mengelompokkan data berdasarkan field tertentu.


## Finish