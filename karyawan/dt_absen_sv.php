<?php
include '../koneksi.php';
if (isset($_POST['simpan'])) {
	$id_karyawan = $_POST['id_karyawan'];
	$nama = $_POST['nama'];
	$waktu = $_POST['waktu'];
}

$save = "INSERT INTO tb_absen SET id_karyawan='$id_karyawan', nama='$nama', waktu_masuk='$waktu', waktu_pulang = '0'";
mysqli_query($koneksi, $save);

if ($save) {
	echo "<script>alert('Terima kasih anda sudah absen tepat waktu hari ini') </script>";
	echo "<script>window.location.href = \"index.php\" </script>";
} else {
	echo "Data gagal disimpan";
}
