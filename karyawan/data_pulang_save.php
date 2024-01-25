<?php
include '../koneksi.php';
if (isset($_POST['simpan'])) {
    $id_karyawan = $_POST['id_karyawan'];
    $nama = $_POST['nama'];
    $waktu = $_POST['waktu'];
    $dateTime = DateTime::createFromFormat('l, d-m-Y H:i:s a', $waktu);
    $masuk = $dateTime->format('l, d-m-Y');
}
$data = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tb_absen WHERE id_karyawan = '$id_karyawan' AND waktu_masuk LIKE '%$masuk%' AND waktu_pulang = '0'"));

$masuk_time = new DateTime($data['waktu_masuk']);
$pulang_time = new DateTime($waktu);

$interval = $masuk_time->diff($pulang_time);
$jam_kerja = $interval->format('%h jam');


$save = "UPDATE tb_absen SET waktu_pulang = '$waktu', waktu_kerja = '$jam_kerja' WHERE id_karyawan='$id_karyawan' AND waktu_masuk LIKE '%$masuk%' AND waktu_pulang = '0'";
mysqli_query($koneksi, $save);


if ($save) {
    echo "<script>alert('Terimakasih, Anda sudah absen pulang') </script>";
    echo "<script>window.location.href = \"index.php\" </script>";
} else {
    echo "kryptosssss";
}
