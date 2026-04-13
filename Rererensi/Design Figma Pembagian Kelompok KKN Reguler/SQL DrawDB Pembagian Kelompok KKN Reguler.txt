CREATE TABLE IF NOT EXISTS `dpl` (
	`nik` CHAR(18),
	`nidn` CHAR(10),
	`nama` VARCHAR(255),
	`email` VARCHAR(255),
	`no_telp` CHAR(15),
	PRIMARY KEY(`nik`)
);


CREATE TABLE IF NOT EXISTS `apl` (
	`nim` CHAR(8),
	`nama` VARCHAR(255),
	`email` VARCHAR(255),
	`no_telp` CHAR(15),
	PRIMARY KEY(`nim`)
);


CREATE TABLE IF NOT EXISTS `user` (
	`id_user` BIGINT UNSIGNED AUTO_INCREMENT,
	`username` VARCHAR(50) UNIQUE,
	`password` VARCHAR(255),
	`role` VARCHAR(255),
	PRIMARY KEY(`id_user`)
);


CREATE TABLE IF NOT EXISTS `kelompok` (
	`id_kelompok` BIGINT UNSIGNED AUTO_INCREMENT,
	`nomor_kelompok` INTEGER,
	`desa` VARCHAR(255),
	`dusun` VARCHAR(255),
	`faskes` BOOLEAN,
	`kapasitas` INTEGER,
	`semester` VARCHAR(10),
	`tahun_kkn` YEAR,
	`nama_dukuh` VARCHAR(255),
	`tuan_rumah` VARCHAR(255),
	`alamat` VARCHAR(255),
	`nomor_telp` CHAR(15),
	`latidute` DECIMAL(10,8),
	`longitude` DECIMAL(11,8),
	`nik` CHAR(18),
	`nim` CHAR(8),
	`id_periode` BIGINT UNSIGNED,
	PRIMARY KEY(`id_kelompok`)
);


CREATE TABLE IF NOT EXISTS `peserta` (
	`nim` CHAR(8),
	`nama` VARCHAR(255),
	`email` VARCHAR(255),
	`prodi` VARCHAR(255),
	`gender` VARCHAR(255),
	`bahasa_jawa` BOOLEAN,
	`riwayat_penyakit` BOOLEAN,
	`detail_penyakit` VARCHAR(255),
	`berkebutuhan_khusus` BOOLEAN,
	`detail_khusus` VARCHAR(255),
	`id_kelompok` BIGINT UNSIGNED,
	PRIMARY KEY(`nim`)
);


CREATE TABLE IF NOT EXISTS `activity_log` (
	`id_log` BIGINT UNSIGNED AUTO_INCREMENT,
	`aktivitas` VARCHAR(255),
	`username` VARCHAR(50),
	PRIMARY KEY(`id_log`)
);


CREATE TABLE IF NOT EXISTS `periode` (
	`id_periode` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	`nama_kkn` VARCHAR(255),
	`tahun_kkn` VARCHAR(255),
	`tanggal_mulai` DATE,
	`tanggal_selesai` DATE,
	`lokasi` VARCHAR(255),
	PRIMARY KEY(`id_periode`)
);


ALTER TABLE `kelompok`
ADD FOREIGN KEY(`nik`) REFERENCES `dpl`(`nik`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `kelompok`
ADD FOREIGN KEY(`nim`) REFERENCES `apl`(`nim`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `peserta`
ADD FOREIGN KEY(`id_kelompok`) REFERENCES `kelompok`(`id_kelompok`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `activity_log`
ADD FOREIGN KEY(`username`) REFERENCES `user`(`username`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `periode`
ADD FOREIGN KEY(`id_periode`) REFERENCES `kelompok`(`id_periode`)
ON UPDATE NO ACTION ON DELETE NO ACTION;