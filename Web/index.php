<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="assets/img/50kota.png">
    <title>Nuansaloka | Kab. Lima Puluh Kota</title>

    <!-- Bootstrap -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- CSS -->
    <link href="assets/styleindex.css" rel="stylesheet">
  </head>
    
  <body>
     <!-- navigasi -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top navbar navbar-dark">
        <div class="container">
            <a class="navbar-brand">
              <img src="assets/img/50kota.png" alt="Logo" style="width:40px;">
            </a>
            <a class="navbar-brand">NUANSALOKA</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                <a class="nav-link" href="index.php">Beranda</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="page_tempatwisata.php">Tempat Wisata</a>
                </li>
                <li class="nav-item ">
                <a class="nav-link" href="page_eventlokal.php">Event Lokal</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="login.php">Register/Login</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>
    <!-- slider -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
            <img class="d-block w-100" src="assets/img/s1.jpg" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Selamat Datang di Nuansaloka</h5>
                <p>Partner Terbaikmu untuk Menjelajahi Wisata Kabupaten Lima Puluh Kota</p>
            </div>
            </div>
            <div class="carousel-item">
            <img class="d-block w-100" src="assets/img/s2.png" alt="Second slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Selamat Datang di Nuansaloka</h5>
                <p>Partner Terbaikmu untuk Menjelajahi Wisata Kabupaten Lima Puluh Kota</p>
            </div>
            </div>
            <div class="carousel-item">
            <img class="d-block w-100" src="assets/img/s3.png" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h5>Selamat Datang di Nuansaloka</h5>
                <p>Partner Terbaikmu untuk Menjelajahi Wisata Kabupaten Lima Puluh Kota</p>
            </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- kategori wisata -->
    <div class="container kategori mt-5">
      <div class="row">
        <div class="col-lg-12">
          <div class="text-center">
            <p style="font-weight: bold; color: #3577E8; font-size: 20px; margin-bottom: 40px;">
              Nikmati Berbagai Wisata Kabupaten Lima Puluh Kota
            </p>
          </div>
        </div>
        <div class="col-lg-12"></div>
        <div class="col-lg-4">
          <a class="btn btn-default" href="wisata_alam.php" role="button">
            <img class="rounded-circle" src="assets/img/k1.jpg" width="140" height="140">
          </a>
          <h2>Wisata Alam</h2>
        </div>
        <div class="col-lg-4">
          <a class="btn btn-default" href="wisata_sejarah.php" role="button">
            <img class="rounded-circle" src="assets/img/k2.png" width="140" height="140">
          </a>
          <h2>Wisata Sejarah</h2>
        </div>
        <div class="col-lg-4">
          <a class="btn btn-default" href="wisata_budaya.php" role="button">
            <img class="rounded-circle" src="assets/img/k3.jpg" width="140" height="140">
          </a>
          <h2>Wisata Budaya</h2>
        </div>
      </div>
    </div>

    <script src="assets/jquery/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/custom.js"></script>
  </body>
</html>