<?php
session_start();
include '../koneksi.php';
include_once "sesi_karyawan.php";

$id = $_SESSION['idsi'];

date_default_timezone_set('Asia/Jakarta');
$today = date('l, d-m-Y');

$query = mysqli_fetch_array(mysqli_query($koneksi, "SELECT waktu_masuk FROM tb_absen WHERE id_karyawan = '$id' AND waktu_masuk LIKE '%$today%' AND waktu_pulang = '0'"));

$modul = ($query) ? "pulang" : "awal";
$modul = (isset($_GET['m'])) ? $_GET['m'] : (($query) ? "pulang" : "awal");

$jawal = "Login Karyawan || SI Karyawan";
switch ($modul) {
    case 'awal':
    default:
        $aktif = "Beranda";
        $judul = "Beranda $jawal";
        include "awal.php";
        break;
    case 'karyawan':
        $aktif = "Karyawan";
        $judul = "Modul Karyawan $jawal";
        include "modul/karyawan/index.php";
        break;
    case 'pulang':
        $aktif = "Beranda";
        $judul = "Beranda $jawal";
        include "pulang.php";
        break;
}
