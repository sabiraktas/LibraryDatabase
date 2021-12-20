--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 14.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: my; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA my;


ALTER SCHEMA my OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Bolge; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Bolge" (
    "BolgeAdi" character varying,
    "BolgeNo" smallint NOT NULL
);


ALTER TABLE my."Bolge" OWNER TO postgres;

--
-- Name: Bolum; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Bolum" (
    "BolumAdi" character varying(60),
    "BolumNo" character varying NOT NULL,
    "FakulteNo" character varying
);


ALTER TABLE my."Bolum" OWNER TO postgres;

--
-- Name: Dil; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Dil" (
    "DilAdi" character varying,
    "DilNo" character varying NOT NULL
);


ALTER TABLE my."Dil" OWNER TO postgres;

--
-- Name: Fakulte; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Fakulte" (
    "FakulteNo" character varying NOT NULL,
    "UniveriteNo" smallint,
    "FakulteAdi" character varying
);


ALTER TABLE my."Fakulte" OWNER TO postgres;

--
-- Name: Ilce; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Ilce" (
    "IlceAdi" character varying,
    "IlceNo" bigint NOT NULL,
    "SehirNo" smallint NOT NULL
);


ALTER TABLE my."Ilce" OWNER TO postgres;

--
-- Name: IletisimBilgileri; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."IletisimBilgileri" (
    "IletisimNo" smallint NOT NULL,
    "TelefonNo" character varying,
    "BolgeNo" smallint
);


ALTER TABLE my."IletisimBilgileri" OWNER TO postgres;

--
-- Name: KapakTuru; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."KapakTuru" (
    "KapakTuruNo" character varying NOT NULL,
    "KapakTuruAdi" character varying
);


ALTER TABLE my."KapakTuru" OWNER TO postgres;

--
-- Name: Kategori; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Kategori" (
    "KategoriNo" character varying NOT NULL,
    "KategoriAdi" character varying
);


ALTER TABLE my."Kategori" OWNER TO postgres;

--
-- Name: Kitap; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Kitap" (
    "KitapNo" character varying NOT NULL,
    "KategoriNo" character varying,
    "YazarNo" character varying,
    "KapakTuruNo" character varying,
    "BasımEvi" character varying,
    "BasımYili" smallint,
    "KitapAdi" character varying,
    "DilNo" character varying
);


ALTER TABLE my."Kitap" OWNER TO postgres;

--
-- Name: Kutuphaneci; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Kutuphaneci" (
    "KutuphaneciNo" character varying NOT NULL,
    "KutuphaneciAdi" character varying,
    "KutuphaneciSoyadi" character varying
);


ALTER TABLE my."Kutuphaneci" OWNER TO postgres;

--
-- Name: OduncKitapListesi; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."OduncKitapListesi" (
    "OduncNo" smallint NOT NULL,
    "KitapNo" character varying,
    "OgrenciNo" bigint,
    "KutuphaneciNo" character varying,
    "VerilisTarihi" date,
    "IadeTarihi" date
);


ALTER TABLE my."OduncKitapListesi" OWNER TO postgres;

--
-- Name: Ogrenci; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Ogrenci" (
    "Adi" character varying,
    "SoyAdi" character varying,
    "BolumNo" character varying,
    "IletisimNo" smallint,
    "OgrenciNo" bigint NOT NULL
);


ALTER TABLE my."Ogrenci" OWNER TO postgres;

--
-- Name: Sehir; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Sehir" (
    "SehirNo" smallint NOT NULL,
    "SehirAdi" character varying,
    "BolgeNo" smallint NOT NULL
);


ALTER TABLE my."Sehir" OWNER TO postgres;

--
-- Name: Universite; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Universite" (
    "UniversiteAdi" character varying,
    "UniversiteNo" smallint NOT NULL
);


ALTER TABLE my."Universite" OWNER TO postgres;

--
-- Name: Yazar; Type: TABLE; Schema: my; Owner: postgres
--

CREATE TABLE my."Yazar" (
    "YazarNo" character varying NOT NULL,
    "YazarAdi" character varying,
    "YazarSoyadi" character varying
);


ALTER TABLE my."Yazar" OWNER TO postgres;

--
-- Data for Name: Bolge; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Bolge" VALUES
	('MARMARA', 1),
	('KARADENİZ', 2);


--
-- Data for Name: Bolum; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Bolum" VALUES
	('Elektrik-Elektronik Mühendisliği Bölümü', 'EEM', 'M1'),
	('Makine Mühendisliği Bölümü', 'MMUH', 'M1'),
	('Bilgisayar Mühendisliği Bölümü', 'BMS', 'B1'),
	('Yazılım Mühendisliği Bölümü', 'YMS', 'B1');


--
-- Data for Name: Dil; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Dil" VALUES
	('Türkçe', 'TUR'),
	('İngilizce', 'ING'),
	('Almanca', 'ALM');


--
-- Data for Name: Fakulte; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Fakulte" VALUES
	('B1', 54, 'BİLGİSAYAR VE BİLİŞİM BİLİMLERİ FAKÜLTESİ'),
	('F1', 54, 'FEN-EDEBİYAT FAKÜLTESİ'),
	('M1', 54, 'MÜHENDİSLİK FAKÜLTESİ');


--
-- Data for Name: Ilce; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Ilce" VALUES
	('BAKIRKOY', 34140, 34),
	('ZEYTINBURNU', 34025, 34),
	('ARSIN', 61900, 61),
	('SURMENE', 61600, 61),
	('ADAPAZARI', 54100, 54),
	('SERDİVAN', 54050, 54);


--
-- Data for Name: IletisimBilgileri; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."IletisimBilgileri" VALUES
	(2, '+905546545454', 1),
	(3, '+905343343434', 1),
	(4, '+905346661661', 1),
	(5, '+905556555555', 2),
	(8, '+905856323232', 1),
	(9, '+905322223322', 1),
	(10, '+905457778899', 2),
	(7, '+905553332211', 1),
	(1, '+905454549666', 1),
	(6, '+905616616161', 2);


--
-- Data for Name: KapakTuru; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."KapakTuru" VALUES
	('C1', 'Ciltli'),
	('C0', 'Ciltsiz');


--
-- Data for Name: Kategori; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Kategori" VALUES
	('BILIM', 'Bilim ve Teknoloji'),
	('POL', 'Polisiye'),
	('CIZGI', 'Çizgi Roman'),
	('TARIH', 'Tarih'),
	('SIIR', 'Şiir'),
	('FEL', 'Felsefe'),
	('HIK', 'Hikaye'),
	('BIYO', 'Biyografi'),
	('TIY', 'Tiyatro');


--
-- Data for Name: Kitap; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Kitap" VALUES
	('YAS35', 'SIIR', 'CAHSIT', 'C0', 'Kırmızı Kedi', 2010, 'YAŞ 35', 'TUR'),
	('MADONNA', 'HIK', 'SAALI', 'C0', 'Yapı Kredi Yayınları', 1998, 'Kürk Mantolu Madonna', 'TUR'),
	('HAMLET', 'TIY', 'SHAKES', 'C1', 'İş Bankası Yayınları', 2020, 'Hamlet', 'ING'),
	('ROANDJUL', 'TIY', 'SHAKES', 'C0', 'İş Bankası Yayınları', 1980, 'Romeo and Juliet', 'ING'),
	('SHERLOCK', 'POL', 'SIRART', 'C1', 'Martı', 2018, 'Sherlock Holmes', 'TUR');


--
-- Data for Name: Kutuphaneci; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Kutuphaneci" VALUES
	('K1', 'Ahmet', 'ERLİK'),
	('K2', 'Banu', 'YILDIRIM'),
	('K3', 'Serdar', 'KAYA');


--
-- Data for Name: OduncKitapListesi; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."OduncKitapListesi" VALUES
	(1, 'HAMLET', 112233, 'K1', '2021-12-10', '2022-01-10'),
	(2, 'YAS35', 112233, 'K1', '2021-11-15', '2021-12-28'),
	(3, 'ROANDJUL', 112299, 'K2', '2021-08-20', '2022-02-17'),
	(0, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: Ogrenci; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Ogrenci" VALUES
	('Veli', 'ÖZTÜRK', 'BMS', 2, 112258),
	('Alper', 'YILMAZ', 'YMS', 3, 114465),
	('Buğra', 'ÇINAR', 'EEM', 4, 144545),
	('Ali', 'CAN', 'BMS', 1, 112233),
	('Tuğçe', 'ER', 'BMS', 6, 112299),
	('Sena', 'YILDIRIM', 'MMUH', 5, 111125),
	('Derya', 'AKDAĞ', 'YMS', 7, 114448);


--
-- Data for Name: Sehir; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Sehir" VALUES
	(34, 'Istanbul', 1),
	(54, 'SAKARYA', 1),
	(61, 'TRABZON', 2);


--
-- Data for Name: Universite; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Universite" VALUES
	('SAKARYA UNİVERSİTESİ', 54);


--
-- Data for Name: Yazar; Type: TABLE DATA; Schema: my; Owner: postgres
--

INSERT INTO my."Yazar" VALUES
	('CAHSIT', 'Cahit Sıtkı', 'TARANCI'),
	('SAFA', 'Sait Faik', 'ABASIYANIK'),
	('SAALI', 'Sabahattin', 'ALİ'),
	('SHAKES', 'William', 'SHAKESPEARE'),
	('JACKLON', 'Jack', 'LONDON'),
	('ZWEİG', 'Stefan', 'ZWEİG'),
	('SIRART', 'Sir Arthur Conan', 'DOYLE');


--
-- Name: Bolge Bolge_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Bolge"
    ADD CONSTRAINT "Bolge_pkey" PRIMARY KEY ("BolgeNo");


--
-- Name: Bolum Bolum_BolumNo_key; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Bolum"
    ADD CONSTRAINT "Bolum_BolumNo_key" UNIQUE ("BolumNo");


--
-- Name: Bolum Bolum_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Bolum"
    ADD CONSTRAINT "Bolum_pkey" PRIMARY KEY ("BolumNo");


--
-- Name: Dil Dil_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Dil"
    ADD CONSTRAINT "Dil_pkey" PRIMARY KEY ("DilNo");


--
-- Name: Fakulte Fakulte_FakulteAdi_key; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Fakulte"
    ADD CONSTRAINT "Fakulte_FakulteAdi_key" UNIQUE ("FakulteAdi");


--
-- Name: Fakulte Fakulte_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Fakulte"
    ADD CONSTRAINT "Fakulte_pkey" PRIMARY KEY ("FakulteNo");


--
-- Name: Ilce Ilce_IlceNo_key; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Ilce"
    ADD CONSTRAINT "Ilce_IlceNo_key" UNIQUE ("IlceNo");


--
-- Name: Ilce Ilce_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Ilce"
    ADD CONSTRAINT "Ilce_pkey" PRIMARY KEY ("IlceNo", "SehirNo");


--
-- Name: IletisimBilgileri IletisimBilgileri_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."IletisimBilgileri"
    ADD CONSTRAINT "IletisimBilgileri_pkey" PRIMARY KEY ("IletisimNo");


--
-- Name: KapakTuru KapakTuru_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."KapakTuru"
    ADD CONSTRAINT "KapakTuru_pkey" PRIMARY KEY ("KapakTuruNo");


--
-- Name: Kitap Kitap_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Kitap"
    ADD CONSTRAINT "Kitap_pkey" PRIMARY KEY ("KitapNo");


--
-- Name: Kutuphaneci Kutuphaneci_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Kutuphaneci"
    ADD CONSTRAINT "Kutuphaneci_pkey" PRIMARY KEY ("KutuphaneciNo");


--
-- Name: OduncKitapListesi OduncKitapListesi_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."OduncKitapListesi"
    ADD CONSTRAINT "OduncKitapListesi_pkey" PRIMARY KEY ("OduncNo");


--
-- Name: Ogrenci Ogrenci_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Ogrenci"
    ADD CONSTRAINT "Ogrenci_pkey" PRIMARY KEY ("OgrenciNo");


--
-- Name: Sehir Sehir_SehirNo_key; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Sehir"
    ADD CONSTRAINT "Sehir_SehirNo_key" UNIQUE ("SehirNo");


--
-- Name: Sehir Sehir_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Sehir"
    ADD CONSTRAINT "Sehir_pkey" PRIMARY KEY ("SehirNo", "BolgeNo");


--
-- Name: Universite Universite_UniversiteAdi_key; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Universite"
    ADD CONSTRAINT "Universite_UniversiteAdi_key" UNIQUE ("UniversiteAdi");


--
-- Name: Universite Universite_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Universite"
    ADD CONSTRAINT "Universite_pkey" PRIMARY KEY ("UniversiteNo");


--
-- Name: Yazar Yazar_pkey; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Yazar"
    ADD CONSTRAINT "Yazar_pkey" PRIMARY KEY ("YazarNo");


--
-- Name: Bolge unique_Bolge_BolgeAdi; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Bolge"
    ADD CONSTRAINT "unique_Bolge_BolgeAdi" UNIQUE ("BolgeAdi");


--
-- Name: Bolum unique_Bolum_BolumAdi; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Bolum"
    ADD CONSTRAINT "unique_Bolum_BolumAdi" UNIQUE ("BolumAdi");


--
-- Name: Dil unique_Dil_DilAdi; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Dil"
    ADD CONSTRAINT "unique_Dil_DilAdi" UNIQUE ("DilAdi");


--
-- Name: Fakulte unique_Fakulte_FakulteNo; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Fakulte"
    ADD CONSTRAINT "unique_Fakulte_FakulteNo" UNIQUE ("FakulteNo");


--
-- Name: IletisimBilgileri unique_IletisimBilgileri_TelefonNo; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."IletisimBilgileri"
    ADD CONSTRAINT "unique_IletisimBilgileri_TelefonNo" UNIQUE ("TelefonNo");


--
-- Name: KapakTuru unique_KapakTuru_KapakTuruAdi; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."KapakTuru"
    ADD CONSTRAINT "unique_KapakTuru_KapakTuruAdi" UNIQUE ("KapakTuruAdi");


--
-- Name: Kategori unique_Kategori_KategoriAdi; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Kategori"
    ADD CONSTRAINT "unique_Kategori_KategoriAdi" UNIQUE ("KategoriAdi");


--
-- Name: Kategori unique_Kategori_KategoriNo; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Kategori"
    ADD CONSTRAINT "unique_Kategori_KategoriNo" PRIMARY KEY ("KategoriNo");


--
-- Name: Ogrenci unique_Ogrenci_IletisimNo; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Ogrenci"
    ADD CONSTRAINT "unique_Ogrenci_IletisimNo" UNIQUE ("IletisimNo");


--
-- Name: Sehir unique_Sehir_SehirAdi; Type: CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Sehir"
    ADD CONSTRAINT "unique_Sehir_SehirAdi" UNIQUE ("SehirAdi");


--
-- Name: Sehir BolgeNo; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Sehir"
    ADD CONSTRAINT "BolgeNo" FOREIGN KEY ("BolgeNo") REFERENCES my."Bolge"("BolgeNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: IletisimBilgileri BolgeNo_Iletisim; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."IletisimBilgileri"
    ADD CONSTRAINT "BolgeNo_Iletisim" FOREIGN KEY ("BolgeNo") REFERENCES my."Bolge"("BolgeNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ogrenci BolumNo_OgrenciNo; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Ogrenci"
    ADD CONSTRAINT "BolumNo_OgrenciNo" FOREIGN KEY ("BolumNo") REFERENCES my."Bolum"("BolumNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Kitap DilNo_Kitap; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Kitap"
    ADD CONSTRAINT "DilNo_Kitap" FOREIGN KEY ("DilNo") REFERENCES my."Dil"("DilNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Bolum FakulteNo_Bolum; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Bolum"
    ADD CONSTRAINT "FakulteNo_Bolum" FOREIGN KEY ("FakulteNo") REFERENCES my."Fakulte"("FakulteNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ogrenci IletisimNo_Ogrenci; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Ogrenci"
    ADD CONSTRAINT "IletisimNo_Ogrenci" FOREIGN KEY ("IletisimNo") REFERENCES my."IletisimBilgileri"("IletisimNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Kitap KapakTuruNo_Kitap; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Kitap"
    ADD CONSTRAINT "KapakTuruNo_Kitap" FOREIGN KEY ("KapakTuruNo") REFERENCES my."KapakTuru"("KapakTuruNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Kitap KategoriNo_Kitap; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Kitap"
    ADD CONSTRAINT "KategoriNo_Kitap" FOREIGN KEY ("KategoriNo") REFERENCES my."Kategori"("KategoriNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OduncKitapListesi KitapNo_OduncKitapListesi; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."OduncKitapListesi"
    ADD CONSTRAINT "KitapNo_OduncKitapListesi" FOREIGN KEY ("KitapNo") REFERENCES my."Kitap"("KitapNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OduncKitapListesi KutuphaneciNo_OduncKitapListesi; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."OduncKitapListesi"
    ADD CONSTRAINT "KutuphaneciNo_OduncKitapListesi" FOREIGN KEY ("KutuphaneciNo") REFERENCES my."Kutuphaneci"("KutuphaneciNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OduncKitapListesi OgrenciNo_OduncKitapListesi; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."OduncKitapListesi"
    ADD CONSTRAINT "OgrenciNo_OduncKitapListesi" FOREIGN KEY ("OgrenciNo") REFERENCES my."Ogrenci"("OgrenciNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ilce SehirNo; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Ilce"
    ADD CONSTRAINT "SehirNo" FOREIGN KEY ("SehirNo") REFERENCES my."Sehir"("SehirNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Fakulte UniversiteNo_Fakulte; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Fakulte"
    ADD CONSTRAINT "UniversiteNo_Fakulte" FOREIGN KEY ("UniveriteNo") REFERENCES my."Universite"("UniversiteNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Kitap YazarNo_Kitap; Type: FK CONSTRAINT; Schema: my; Owner: postgres
--

ALTER TABLE ONLY my."Kitap"
    ADD CONSTRAINT "YazarNo_Kitap" FOREIGN KEY ("YazarNo") REFERENCES my."Yazar"("YazarNo") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

