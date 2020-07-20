
-- ********************************JAWABAN NO 14 ************************************************************
-- SYNTAX

CREATE TABLE Mahasiswa
(
    NIM TEXT primary key,
    Nama_Mahasiswa varchar(50) not null,
    Alamat TEXT not null,
    Jurusan Varchar(50),
    umur INT
);
CREATE TABLE MataKuliah
(
    Id_Matkul TEXT primary key,
    Nama_Matkul varchar(50),
    SKS INT
);
CREATE TABLE Dosen
(
    NIP TEXT primary key,
    Nama_Dosen varchar(50) not null
);
CREATE TABLE Krs
(
    NIM TEXT,
    Id_Matkul TEXT,
    Id_Dosen TEXT,
    Nilai Varchar(2)
);
CREATE TABLE Jurusan
(
    Kode_Jurusan TEXT primary key,
    Nama_Jurusan varchar(50)
);


-- DATA ENTRY Mahasiswa

INSERT INTO Mahasiswa
    (NIM, Nama_Mahasiswa, Alamat, Jurusan, umur)
values
    ("11415001", "Danu", "Jakarta, DKI Jakarta", "Rekayasa Pertanian", 18),
    ("11415038", "Toto", "Solo, Jawa Tengah", "Rekayasa Pertanian", 19),
    ("11415020", "Dayat", "Padang, Sumatera Barat", "Rekayasa Pertanian", 20),
    ("11215002", "Azis", "Bekasi, Jawa Barat", "Bioengineering", 21),
    ("11215003", "Stanley", "Medan, Sumatera Utara", "Bioengineering", 18),
    ("11215013", "Romario", "Bandung, Jawa Barat", "Bioengineering", 19),
    ("11515023", "Yopi", "Banda Aceh, Aceh ", "Rekayasa Kehutanan", 21),
    ("11515006", "Rahman", "Bandung, Jawa Barat", "Rekayasa Kehutanan", 21),
    ("12114001", "Ali", "Sumbawa, NTT", "Pasca Panen", 19),
    ("12114003", "Doni", "Bandung, Jawa Barat", "Pasca Panen", 21);

-- OUTPUT::
-- NIM         Nama_Mahasiswa  Alamat                   Jurusan             umur      
-- ----------  --------------  --------------------     ------------------  ----------
-- 11415001    Danu            Jakarta, DKI Jakarta     Rekayasa Pertanian  18        
-- 11415038    Toto            Solo, Jawa Tengah        Rekayasa Pertanian  19        
-- 11415020    Dayat           Padang, Sumatera Barat   Rekayasa Pertanian  20        
-- 11215002    Azis            Bekasi, Jawa Barat       Bioengineering      21        
-- 11215003    Stanley         Medan, Sumatera Utara    Bioengineering      18        
-- 11215013    Romario         Bandung, Jawa Barat      Bioengineering      19        
-- 11515023    Yopi            Banda Aceh, Aceh         Rekayasa Kehutanan  21        
-- 11515006    Rahman          Bandung, Jawa Barat      Rekayasa Kehutanan  21        
-- 12114001    Ali             Sumbawa, NTT             Pasca Panen         19        
-- 12114003    Doni            Bandung, Jawa Barat      Pasca Panen         21   


-- DATA ENTRY MataKuliah
INSERT INTO MataKuliah
    (Id_Matkul, Nama_Matkul, SKS)
values
    ("RKG1", "Rekayasa Genetika Tumbuhan", 2),
    ("BI01", "Biologi Dasar", 2),
    ("RH02", "Rekayasa Hayati I", 3),
    ("DM02", "Data Mining", 3),
    ("STD1", "Statistik Dasar", 3),
    ("PB01", "Perancangan Bioreaktor", 2),
    ("SM01", "Sensor dan Instrumentasi", 3),
    ("NME1", "Neraca Masa dan Energi", 3),
    ("TDN1", "Termodinamika", 3),
    ("BKO1", "Bio Kimia", 2),
    ("RSH1", "Rekayasa Sel Hewan", 2);



/*/OUTPUT::
Id_Matkul   Nama_Matkul                 SKS       
----------  --------------------------  ----------
RKG1        Rekayasa Genetika Tumbuhan  2         
BI01        Biologi Dasar               2         
RH02        Rekayasa Hayati I           3         
DM02        Data Mining                 3         
STD1        Statistik Dasar             3         
PB01        Perancangan Bioreaktor      2         
SM01        Sensor dan Instrumentasi    3         
NME1        Neraca Masa dan Energi      3         
TDN1        Termodinamika               3         
BKO1        Bio Kimia                   2         
RSH1        Rekayasa Sel Hewan          2    
/*/

/*/DATA ENTRY DOSEN/*/
INSERT INTO Dosen(NIP, Nama_Dosen) values
("1231237","Dr. Robert Manurung, S.T, M.T."), 
("1231231","Dr. Duma Wardoyo, S.T, M.T."),
("1231232","Prof. Dr. Stanley"),
("1231233","Dr. Tatang, S.T, M.T."),
("1231234","Dr. Albert Ginting, S.T, M.T."),
("1231235","Prof. Arief, S.T, M.T."),
("1231236","Dr. Ahmad, S.T, M.T."),
("1231238","Dr. Muhammad Yusuf, S.T, M.T."),
("1231239","Dr. Acep, S.T, M.T."),
("1231240","Dr. Dudung, S.T, M.T.");



/*/OUTPUT::
NIP         Nama_Dosen                    
----------  ------------------------------
1231237     Dr. Robert Manurung, S.T, M.T.
1231231     Dr. Duma Wardoyo, S.T, M.T.   
1231232     Prof. Dr. Stanley             
1231233     Dr. Tatang, S.T, M.T.         
1231234     Dr. Albert Ginting, S.T, M.T. 
1231235     Prof. Arief, S.T, M.T.        
1231236     Dr. Ahmad, S.T, M.T.          
1231238     Dr. Muhammad Yusuf, S.T, M.T. 
1231239     Dr. Acep, S.T, M.T.           
1231240     Dr. Dudung, S.T, M.T.  
/*/


/*/ENTRY JURUSAN /*/
INSERT INTO Jurusan(Kode_Jurusan, Nama_Jurusan) VALUES 
("114","Rekayasa Pertanian"),
("112","Bioengineering"),
("121","Pasca Panen"),
("115","Rekayasa Kehutanan");

-- OUTPUT::
-- Kode_Jurusan  Nama_Jurusan      
-- ------------  ------------------
-- 114           Rekayasa Pertanian
-- 112           Bioengineering    
-- 121           Pasca Panen       
-- 115           Rekayasa Kehutanan
 


-- ENTRY KRS
INSERT INTO Krs(NIM, Id_Matkul, Id_Dosen, Nilai) values 
("11215002","RH02","1231232","A"),
("11215002","DM02","1231233","AB"),
("11215002","NME1","1231237","AB"),
("11215003","RSH1","1231240","C"),
("11215003","DM02","1231233","C"),
("11215003","BK01","1231239","BC"),
("11215013","DM02","1231233","AB"),
("11215013","RSH1","1231240","AB"),
("11215013","SM01","1231236","D"),
("11415038","DM02","1231233","E"),
("11415038","NME1","1231237","E"),
("11415038","TDN1","1231238","E"),
("11415001","DM02","1231233","A"),
("11415020","RH02","1231232","C"),
("11515023","DM02","1231233","C"),
("11515006","DM02","1231233","E"),
("12114001","DM02","1231233","D"),
("12114003","DM02","1231233","A"),
("11215002","STD1","1231234","E"),
("11215003","STD1","1231234","C"),         
("11215003","PB01","1231235","E"),         
("11215013","NME1","1231237","AB");   



-- OUTPUT::
-- NIM         Id_Matkul   Id_Dosen    Nilai     
-- ----------  ----------  ----------  ----------
-- 11215002    RH02        1231232     A         
-- 11215002    DM02        1231233     AB        
-- 11215002    NME1        1231237     AB        
-- 11215003    RSH1        1231240     C         
-- 11215003    DM02        1231233     C         
-- 11215003    BK01        1231239     BC        
-- 11215013    DM02        1231233     AB        
-- 11215013    RSH1        1231240     AB        
-- 11215013    SM01        1231236     D         
-- 11415038    DM02        1231233     E         
-- 11415038    NME1        1231237     E         
-- 11415038    TDN1        1231238     E         
-- 11415001    DM02        1231233     A         
-- 11415020    RH02        1231232     C         
-- 11515023    DM02        1231233     C         
-- 11515006    DM02        1231233     E         
-- 12114001    DM02        1231233     D         
-- 12114003    DM02        1231233     A         
-- 11215002    STD1        1231234     E         
-- 11215003    STD1        1231234     C         
-- 11215003    PB01        1231235     E         
-- 11215013    NME1        1231237     AB  
-- NO .15

-- ******************JAWABAN NO 15**************************

-- 1.Tampilkan Seluruh data mahasiswa dan nama jurusannya
SELECT*FROM Mahasiswa;

-- OUTPUT::
-- NIM         Nama_Mahasiswa  Alamat                   Jurusan             umur      
-- ----------  --------------  --------------------     ------------------  ----------
-- 11415001    Danu            Jakarta, DKI Jakarta     Rekayasa Pertanian  18        
-- 11415038    Toto            Solo, Jawa Tengah        Rekayasa Pertanian  19        
-- 11415020    Dayat           Padang, Sumatera Barat   Rekayasa Pertanian  20        
-- 11215002    Azis            Bekasi, Jawa Barat       Bioengineering      21        
-- 11215003    Stanley         Medan, Sumatera Utara    Bioengineering      18        
-- 11215013    Romario         Bandung, Jawa Barat      Bioengineering      19        
-- 11515023    Yopi            Banda Aceh, Aceh         Rekayasa Kehutanan  21        
-- 11515006    Rahman          Bandung, Jawa Barat      Rekayasa Kehutanan  21        
-- 12114001    Ali             Sumbawa, NTT             Pasca Panen         19        
-- 12114003    Doni            Bandung, Jawa Barat      Pasca Panen         21   


-- 2.Tampilkan Mahasiswa yang berumur dibawah 20 tahun

SELECT*FROM Mahasiswa
WHERE umur<20; 

-- OUTPUT::
-- NIM         Nama_Mahasiswa  Alamat                    Jurusan             umur      
-- ----------  --------------  --------------------      ------------------  ----------
-- 11415001    Danu            Jakarta, DKI Jakarta      Rekayasa Pertanian  18        
-- 11415038    Toto            Solo, Jawa Tengah         Rekayasa Pertanian  19        
-- 11215003    Stanley         Medan, Sumatera Utara     Bioengineering      18        
-- 11215013    Romario         Bandung, Jawa Barat       Bioengineering      19        
-- 12114001    Ali             Sumbawa, NTT              Pasca Panen         19 


-- 3.Tampilkan mahasiswa yang memiliki nilai B keatas
SELECT Mahasiswa.Nama_Mahasiswa, Krs.Nilai, MataKuliah.Nama_Matkul AS MataKuliah
FROM ((Mahasiswa JOIN Krs on Mahasiswa.NIM =Krs.NIM)JOIN Matakuliah ON Krs.Id_Matkul=MataKuliah.Id_Matkul)
WHERE Krs.Nilai ="A" OR Krs.Nilai="AB";

--OUTPUT::

-- Nama_Mahasiswa  Nilai       MataKuliah       
-- --------------  ----------  -----------------
-- Azis            A           Rekayasa Hayati I
-- Azis            AB          Data Mining      
-- Azis            AB          Neraca Masa dan Energi
-- Romario         AB          Data Mining      
-- Romario         AB          Rekayasa Sel Hewan
-- Danu            A           Data Mining      
-- Doni            A           Data Mining      
-- Romario         AB          Neraca Masa dan Energi



-- 4.Tampilkan Mahasiswa yang memili SKS lebih dari 10
SELECT Mahasiswa.Nama_Mahasiswa,SUM(MataKuliah.SKS) AS Total_SKS
FROM((Mahasiswa JOIN Krs ON Mahasiswa.NIM=Krs.NIM)
JOIN MataKuliah ON Krs.Id_Matkul=Matakuliah.Id_Matkul )
GROUP BY Mahasiswa.Nama_Mahasiswa
HAVING Total_SKS>10;

-- OUTPUT::
-- Nama_Mahasiswa  Total_SKS 
-- --------------  ----------
-- Azis            12        
-- Romario         11        
 

--5 Tampilkan Mahasiswa yang mengontrak "data mining"
SELECT Mahasiswa.Nama_Mahasiswa AS Mahasiswa_DataMining, Mahasiswa.NIM, Krs.Nilai
FROM((Mahasiswa JOIN Krs ON Mahasiswa.NIM=Krs.NIM)
JOIN MataKuliah ON Krs.Id_Matkul=Matakuliah.Id_Matkul)
WHERE MataKuliah.Nama_Matkul="Data Mining";

-- Mahasiswa_DataMining  NIM         Nilai     
-- --------------------  ----------  ----------
-- Azis                  11215002    AB        
-- Stanley               11215003    C         
-- Romario               11215013    AB        
-- Toto                  11415038    E         
-- Danu                  11415001    A         
-- Yopi                  11515023    C         
-- Rahman                11515006    E         
-- Ali                   12114001    D         
-- Doni                  12114003    A 


--6 Tampilkan Jumlah Mahasiswa untuk setiap dosen
SELECT Dosen.Nama_Dosen,COUNT(Krs.NIM) as Jumlah_Mahasiswa
FROM Dosen JOIN Krs ON Dosen.NIP=Krs.Id_Dosen
GROUP BY Dosen.Nama_Dosen;

-- OUTPUT::
-- Nama_Dosen           Jumlah_Mahasiswa
-- -------------------  ----------------
-- Dr. Acep, S.T, M.T.  1               
-- Dr. Ahmad, S.T, M.T  1               
-- Dr. Albert Ginting,  2               
-- Dr. Dudung, S.T, M.  2               
-- Dr. Muhammad Yusuf,  1               
-- Dr. Robert Manurung  3               
-- Dr. Tatang, S.T, M.  9               
-- Prof. Arief, S.T, M  1               
-- Prof. Dr. Stanley    2  


--7 Urutkan Mahasiswa berdasarkan umurnya(default ASC: kecil ke besar)
SELECT Nama_Mahasiswa, umur FROM Mahasiswa
ORDER BY umur;

-- Nama_Mahasiswa  umur      
-- --------------  ----------
-- Danu            18        
-- Toto            19        
-- Dayat           20        
-- Azis            21        
-- Stanley         18        
-- Romario         19        
-- Yopi            21        
-- Rahman          21        
-- Ali             19        
-- Doni            21  

-- Mengurutkan dari yang lebih tua ke muda
SELECT Nama_Mahasiswa, umur FROM Mahasiswa
ORDER BY umur DESC;

-- Nama_Mahasiswa  umur      
-- --------------  ----------
-- Azis            21        
-- Yopi            21        
-- Rahman          21        
-- Doni            21        
-- Dayat           20        
-- Toto            19        
-- Romario         19        
-- Ali             19        
-- Danu            18        
-- Stanley         18  

--8.Menampilkan Kontrak Mahasiswa yang mengulang Matakuliah
SELECT Mahasiswa.Nama_Mahasiswa,Mahasiswa.Jurusan,Krs.NIM,MataKuliah.Nama_Matkul As MataKuliah_Mengulang, Krs.Id_Matkul As Kode_MataKuliah,Dosen.Nama_Dosen AS Dosen, Krs.Nilai, MataKuliah.SKS AS Jumlah_SKS
FROM(((Mahasiswa JOIN Krs ON Mahasiswa.NIM=Krs.NIM)
JOIN MataKuliah ON Krs.Id_Matkul=Matakuliah.Id_Matkul)join Dosen ON Krs.Id_Dosen=Dosen.NIP)
WHERE Krs.nilai ="D" OR Krs.Nilai="E";

--OUTPUT::
-- Nama_Mahasiswa  Jurusan         NIM         MataKuliah_Mengulang      Kode_MataKuliah  Dosen                 Nilai       Jumlah_SKS
-- --------------  --------------  ----------  ------------------------  ---------------  --------------------  ----------  ----------
-- Romario         Bioengineering  11215013    Sensor dan Instrumentasi  SM01             Dr. Ahmad, S.T, M.T.  D           3         
-- Toto            Rekayasa Perta  11415038    Data Mining               DM02             Dr. Tatang, S.T, M.T  E           3         
-- Toto            Rekayasa Perta  11415038    Neraca Masa dan Energi    NME1             Dr. Robert Manurung,  E           3         
-- Toto            Rekayasa Perta  11415038    Termodinamika             TDN1             Dr. Muhammad Yusuf,   E           3         
-- Rahman          Rekayasa Kehut  11515006    Data Mining               DM02             Dr. Tatang, S.T, M.T  E           3         
-- Ali             Pasca Panen     12114001    Data Mining               DM02             Dr. Tatang, S.T, M.T  D           3         
-- Azis            Bioengineering  11215002    Statistik Dasar           STD1             Dr. Albert Ginting,   E           3         
-- Stanley         Bioengineering  11215003    Perancangan Bioreaktor    PB01             Prof. Arief, S.T, M.  E           2   

