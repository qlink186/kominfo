SELECT
	sd_d_subdomain.`id_subdomain` AS `id_subdomain`,
	sd_d_subdomain.`id_opd` AS `id_opd`,
	m_opd.`nama_opd` AS `nama_opd`,
	m_opd.`akronim_opd` AS `akronim_opd`,
	sd_d_subdomain.`nama_subdomain` AS `nama_subdomain`,
	sd_d_subdomain.`subdomain` AS `subdomain`,
	'.tanjungpinangkota.go.id' AS `prefix`,
	sd_d_subdomain.`ip_point` AS `ip_pointing`,
	sd_d_subdomain.`fungsi` AS `fungsi`,
	sd_d_subdomain.`status` AS `status_subdomain`,
	if(sd_d_subdomain.`status`='1','UP','DOWN') AS `status_subdomainnya`,
	sd_d_subdomain.`pj_admin` AS `pj_admin`,
	concat(if(isnull(`pjadmin`.`gelar_depan`),'',concat(`pjadmin`.`gelar_depan`,' ')),`pjadmin`.`nama`,if(isnull(`pjadmin`.`gelar_belakang`),'',concat(', ',`pjadmin`.`gelar_belakang`))) AS `nama_pj_admin`,
	`pjadmin`.`email` AS `email_pj_admin`,
	`pjadmin`.`email2` AS `email2_pj_admin`,
	`pjadmin`.`ponsel1` AS `ponsel1_pj_admin`,
	`pjadmin`.`ponsel2` AS `ponsel2_pj_admin`,
	concat('https://twitter.com/',replace(`pjadmin`.`twitter`,'@','')) AS `twitter_pj_admin`,
	concat('https://facebook.com/',`pjadmin`.`facebook`) AS `facebook_pj_admin`,
	concat('https://t.me/',replace(`pjadmin`.`telegram`,'@','')) AS `telegram_pj_admin`,
	`pjadmin`.`foto_peg` AS `foto_peg_pj_admin`,
	concat('http://tanjungpinangkota.go.id/images/pegawai/big/',ifnull(`pjadmin`.`foto_peg`,'peg.jpg')) AS `alamat_foto_peg_big_pj_admin`,
	concat('http://tanjungpinangkota.go.id/images/pegawai/small/',ifnull(`pjadmin`.`foto_peg`,'peg.jpg')) AS `alamat_foto_peg_small_pj_admin`,
	concat('http://tanjungpinangkota.go.id/images/pegawai/tiny/',ifnull(`pjadmin`.`foto_peg`,'peg.jpg')) AS `alamat_foto_peg_tiny_pj_admin`,
	`pjadmin`.`tentang_peg` AS `tentang_peg_pj_admin`,
	sd_d_subdomain.`pj_teknis` AS pj_teknis,
	concat(if(isnull(`pjteknis`.`gelar_depan`),'',concat(`pjteknis`.`gelar_depan`,' ')),`pjteknis`.`nama`,if(isnull(`pjteknis`.`gelar_belakang`),'',concat(', ',`pjteknis`.`gelar_belakang`))) AS `nama_pj_teknis`,
	`pjteknis`.`email` AS `email_pj_teknis`,
	`pjteknis`.`email2` AS `email2_pj_teknis`,
	`pjteknis`.`ponsel1` AS `ponsel1_pj_teknis`,
	`pjteknis`.`ponsel2` AS `ponsel2_pj_teknis`,
	concat('https://twitter.com/',replace(`pjteknis`.`twitter`,'@','')) AS `twitter_pj_teknis`,
	concat('https://facebook.com/',`pjteknis`.`facebook`) AS `facebook_pj_teknis`,
	concat('https://t.me/',replace(`pjteknis`.`telegram`,'@','')) AS `telegram_pj_teknis`,
	`pjteknis`.`foto_peg` AS `foto_peg_pj_teknis`,
	concat('http://tanjungpinangkota.go.id/images/pegawai/big/',ifnull(`pjteknis`.`foto_peg`,'peg.jpg')) AS `alamat_foto_peg_big_pj_teknis`,
	concat('http://tanjungpinangkota.go.id/images/pegawai/small/',ifnull(`pjteknis`.`foto_peg`,'peg.jpg')) AS `alamat_foto_peg_small_pj_teknis`,
	concat('http://tanjungpinangkota.go.id/images/pegawai/tiny/',ifnull(`pjteknis`.`foto_peg`,'peg.jpg')) AS `alamat_foto_peg_tiny_pj_teknis`,
	`pjteknis`.`tentang_peg` AS `tentang_peg_pj_teknis`,
	sd_d_subdomain.`surat_permohonan` AS `ada_surat_permohonan`,
	`filepermohonan`.`link_file` AS `file_surat_permohonan`,
	concat('http://tanjungpinangkota.go.id/data-download/sd/',`filepermohonan`.`link_file`) AS `alamat_surat_permohonan`,
	sd_d_subdomain.`surat_kuasa` AS `ada_surat_kuasa`,
	`filekuasa`.`link_file` AS `file_surat_kuasa`,
	concat('http://tanjungpinangkota.go.id/data-download/sd/',`filekuasa`.`link_file`) AS `alamat_surat_kuasa`,
	sd_d_subdomain.`form_sd` AS `ada_form_sd`,
	`fileformsd`.`link_file` AS `file_form_sd`,
	concat('http://tanjungpinangkota.go.id/data-download/sd/',`fileformsd`.`link_file`) AS `alamat_form_sd`,
	sd_d_subdomain.`ktp_admin` AS `ada_ktp_admin`,
	`filektpadmin`.`link_file` AS `file_ktp_admin`,
	concat('http://tanjungpinangkota.go.id/data-download/sd/',`filektpadmin`.`link_file`) AS `alamat_ktp_admin`,
	sd_d_subdomain.`ktp_teknis` AS `ada_ktp_teknis`,
	`filektpteknis`.`link_file` AS `file_ktp_teknis`,
	concat('http://tanjungpinangkota.go.id/data-download/sd/',`filektpteknis`.`link_file`) AS `alamat_ktp_teknis`,
	sd_d_subdomain.`ket` AS `ket`,
	date_format(sd_d_subdomain.`tgl_registrasi`,'%d %b %Y') AS `tgl_reg`,
	date_format(sd_d_subdomain.`tgl_edit`,'%d %b %Y') AS `tgl_edit`,
	concat(if(isnull(`yg_ngubah`.`gelar_depan`),'',concat(`yg_ngubah`.`gelar_depan`,' ')),`yg_ngubah`.`nama`,if(isnull(`yg_ngubah`.`gelar_belakang`),'',concat(', ',`yg_ngubah`.`gelar_belakang`))) AS `nama_yg_ngubah`,
	ifnull(sd_d_subdomain.`logo`,'logo_pemko.jpg') AS `logo`,
	concat('http://tanjungpinangkota.go.id/images/link-opd/big/',ifnull(sd_d_subdomain.`logo`,'logo_pemko.jpg')) AS `alamat_logo_big`,
	concat('http://tanjungpinangkota.go.id/images/link-opd/small/',ifnull(sd_d_subdomain.`logo`,'logo_pemko.jpg')) AS `alamat_logo_small`,
	concat('http://tanjungpinangkota.go.id/images/link-opd/tiny/',ifnull(sd_d_subdomain.`logo`,'logo_pemko.jpg')) AS `alamat_logo_tiny`
FROM
sd_d_subdomain
LEFT JOIN `m_opd` ON sd_d_subdomain.`id_opd` = `m_opd`.`id_opd`
LEFT JOIN `d_download` `filepermohonan` ON sd_d_subdomain.`file_surat_permohonan` = `filepermohonan`.`id_download`
LEFT JOIN `d_download` `filekuasa` ON sd_d_subdomain.`file_surat_kuasa` = `filekuasa`.`id_download`
LEFT JOIN `d_download` `fileformsd` ON sd_d_subdomain.`file_form_sd` = `fileformsd`.`id_download`
LEFT JOIN `d_download` `filektpadmin` ON sd_d_subdomain.`file_ktp_admin` = `filektpadmin`.`id_download`
LEFT JOIN `d_download` `filektpteknis` ON sd_d_subdomain.`file_ktp_teknis` = `filektpteknis`.`id_download`
LEFT JOIN `m_peg` `pjadmin` ON sd_d_subdomain.`pj_admin` = `pjadmin`.`id_peg` 
LEFT JOIN `m_peg` `pjteknis` ON sd_d_subdomain.`pj_teknis` = `pjteknis`.`id_peg`
LEFT JOIN `m_peg` `yg_ngubah` ON sd_d_subdomain.`pj_teknis` = `yg_ngubah`.`id_peg`