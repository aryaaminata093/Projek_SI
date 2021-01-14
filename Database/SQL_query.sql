#Query Membuat Database

CREATE SCHEMA `nuansaloka` ;


#Query Membuat Tabel dan Atribut

##Tabel Pengelola Wisata
CREATE TABLE `nuansaloka`.`pengelola_wisata` (
  `no_ktp` INT(16) NOT NULL,
  `nama_lengkap_pw` VARCHAR(50) NOT NULL,
  `password_pw` VARCHAR(20) NOT NULL,
  `email_pw` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`no_ktp`),
  UNIQUE INDEX `no_ktp_UNIQUE` (`no_ktp` ASC) );

##Tabel Admin
CREATE TABLE `nuansaloka`.`admin` (
  `nip` INT(20) NOT NULL,
  `nama_lengkap_admin` VARCHAR(50) NOT NULL,
  `password_admin` VARCHAR(20) NOT NULL,
  `email_admin` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`nip`),
  UNIQUE INDEX `nip_UNIQUE` (`nip` ASC) );

##Tabel Objek Wisata
CREATE TABLE `nuansaloka`.`objek_wisata` (
  `id_wisata` INT(10) NOT NULL,
  `id_pengelola` INT(16) NOT NULL,
  `id_izinwisata` INT(10) NOT NULL,
  `nama_wisata` VARCHAR(50) NOT NULL,
  `deskripsi_wisata` LONGTEXT NOT NULL,
  `lokasi_wisata` MEDIUMTEXT NOT NULL,
  `rute_wisata` MEDIUMTEXT NOT NULL,
  `tarif_masuk` INT NOT NULL,
  `hari_operasional` VARCHAR(45) NOT NULL,
  `jam_operasional` VARCHAR(45) NOT NULL,
  `dokumentasi_foto_wisata` LONGBLOB NULL,
  PRIMARY KEY (`id_wisata`),
  UNIQUE INDEX `id_wisata_UNIQUE` (`id_wisata` ASC) );

##Tabel Event Lokal
CREATE TABLE `nuansaloka`.`event_lokal` (
  `id_event` INT(10) NOT NULL,
  `nama_event` VARCHAR(45) NOT NULL,
  `deskripsi_event` LONGTEXT NOT NULL,
  `penyelenggara_event` VARCHAR(45) NOT NULL,
  `lokasi_event` MEDIUMTEXT NOT NULL,
  `rute_event` MEDIUMTEXT NOT NULL,
  `tanggal_event` DATE NOT NULL,
  `jam_event` VARCHAR(45) NOT NULL,
  `dokumentasi_foto_event` LONGBLOB NOT NULL,
  PRIMARY KEY (`id_event`));

##Tabel Pengajuan Izin
CREATE TABLE `nuansaloka`.`pengajuan_izin` (
  `nomor_pengajuan` INT(10) NOT NULL,
  `id_pengelola_izin` INT(16) NOT NULL,
  `id_admin_izin` INT(20) NOT NULL,
  `nama_wisata` VARCHAR(45) NOT NULL,
  `jenis_wisata` VARCHAR(45) NOT NULL,
  `lokasi_wisata` VARCHAR(45) NOT NULL,
  `rute` VARCHAR(45) NOT NULL,
  `dokumen_lampiran` LONGBLOB NOT NULL,
  `tanggal_pengajuan` DATE NOT NULL,
  `status_pengajuan` VARCHAR(10) NULL,
  PRIMARY KEY (`nomor_pengajuan`),
  UNIQUE INDEX `nomor_pengajuan_UNIQUE` (`nomor_pengajuan` ASC) );

##Tabel Pengajuan Promosi
CREATE TABLE `nuansaloka`.`pengajuan_promosi` (
  `nomor_promosi` INT(10) NOT NULL,
  `id_wisata_promosi` INT(10) NOT NULL,
  `id_admin_promosi` INT(20) NOT NULL,
  `deskripsi_promosi` LONGTEXT NOT NULL,
  `tanggal_pengajuan` DATE NOT NULL,
  `file_pendukung_promosi` LONGBLOB NOT NULL,
  `status_promosi` VARCHAR(45) NULL,
  PRIMARY KEY (`nomor_promosi`),
  UNIQUE INDEX `nomor_promosi_UNIQUE` (`nomor_promosi` ASC) );

##Tabel Postingan
CREATE TABLE `nuansaloka`.`postingan` (
  `nomor_postingan` INT(10) NOT NULL,
  `id_wisata/event_postingan` INT(10) NOT NULL,
  `id_admin_postingan` INT(20) NOT NULL,
  `kategori_postingan` VARCHAR(45) NOT NULL,
  `judul_postingan` VARCHAR(50) NOT NULL,
  `dokumentasi_utama` LONGBLOB NOT NULL,
  `dokumentasi_tambahan` LONGBLOB NULL,
  `tanggal_postingan` DATE NOT NULL,
  PRIMARY KEY (`nomor_postingan`),
  UNIQUE INDEX `nomor_postingan_UNIQUE` (`nomor_postingan` ASC) );

#Query Membuat Relasi antar Tabel

##Objek Wisata - Pengelola Wisata,Pengajuan Izin
ALTER TABLE `nuansaloka`.`objek_wisata` 
ADD INDEX `id_pengelola_idx` (`id_pengelola` ASC) ,
ADD INDEX `id_izinwisata_idx` (`id_izinwisata` ASC) ;
;
ALTER TABLE `nuansaloka`.`objek_wisata` 
ADD CONSTRAINT `id_pengelola`
  FOREIGN KEY (`id_pengelola`)
  REFERENCES `nuansaloka`.`pengelola_wisata` (`no_ktp`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `id_izinwisata`
  FOREIGN KEY (`id_izinwisata`)
  REFERENCES `nuansaloka`.`pengajuan_izin` (`nomor_pengajuan`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

##Pengajuan Izin - Pengelola Wisata, Admin
ALTER TABLE `nuansaloka`.`pengajuan_izin` 
ADD CONSTRAINT `id_pengelola_izin`
  FOREIGN KEY (`id_pengelola_izin`)
  REFERENCES `nuansaloka`.`pengelola_wisata` (`no_ktp`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `id_admin_izin`
  FOREIGN KEY (`id_admin_izin`)
  REFERENCES `nuansaloka`.`admin` (`nip`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

##Pengajuan Promosi - Objek Wisata, Admin
ALTER TABLE `nuansaloka`.`pengajuan_promosi` 
ADD INDEX `id_wisata_promosi_idx` (`id_wisata_promosi` ASC) ,
ADD INDEX `id_admin_promosi_idx` (`id_admin_promosi` ASC) ;
;
ALTER TABLE `nuansaloka`.`pengajuan_promosi` 
ADD CONSTRAINT `id_wisata_promosi`
  FOREIGN KEY (`id_wisata_promosi`)
  REFERENCES `nuansaloka`.`objek_wisata` (`id_wisata`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `id_admin_promosi`
  FOREIGN KEY (`id_admin_promosi`)
  REFERENCES `nuansaloka`.`admin` (`nip`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

##Postingan - Objek Wisata, Event Lokal, Admin
ALTER TABLE `nuansaloka`.`postingan` 
ADD INDEX `id_event_postingan_idx` (`id_wisata/event_postingan` ASC) ,
ADD INDEX `id_admin_postingan_idx` (`id_admin_postingan` ASC) ;
;
ALTER TABLE `nuansaloka`.`postingan` 
ADD CONSTRAINT `id_wisata_postingan`
  FOREIGN KEY (`id_wisata/event_postingan`)
  REFERENCES `nuansaloka`.`objek_wisata` (`id_wisata`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `id_event_postingan`
  FOREIGN KEY (`id_wisata/event_postingan`)
  REFERENCES `nuansaloka`.`event_lokal` (`id_event`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `id_admin_postingan`
  FOREIGN KEY (`id_admin_postingan`)
  REFERENCES `nuansaloka`.`admin` (`nip`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
