<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="assets/img/50kota.png">
    <title>Nuansaloka | Login/Register</title>

    <!-- Bootstrap -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- CSS -->
    <link href="assets/stylelogin.css" rel="stylesheet">

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-12 judul">
                    <p style="font-weight: bold;">NUANSALOKA</p>
                    <p>Kabupaten Lima Puluh Kota</p>
                </div>
                <div class="col-lg-4"></div>
                <div class="col-lg-4 text-center">
                    <img src="assets/img/50kota.png" alt="logo" class="center" width="150">
                </div>
                <div class="col-lg-4"></div>
                <div class="col-lg-4"></div>
                <div class="col-lg-4 login-box">
                    <div class="col-lg-12 login-title">
                        Login sebagai :
                    </div>

                    <div class="col-lg-12 login-form">
                        <div class="col-lg-12 login-form">
                            <form action="login-admin.php">
                                <div class="col-lg-12 loginbttm">
                                    <div class="col-lg-12 login-btm login-button">
                                        <button style="width: 200px;" type="submit" class="btn btn-outline-primary">Admin</button>
                                    </div>
                            </form>
                            <form action="login-pengelola.php">
                                    <div class="col-lg-12 login-btm login-button">
                                        <button style="width: 200px;" type="submit" class="btn btn-outline-primary">Pengelola Wisata</button>
                                    </div>
                                </div>
                            </form>
                            <p>
                                <p style="color:white; text-align:center; font-size: 14px;">Belum punya akun*? 
                                    <a href="register.php" style="text-decoration:none;"><b>Register</b></a>
                                </p>
                                <p style="color:white; text-align:center; font-size: 10px;"k><b>*khusus Pengelola Wisata</b></p>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="assets/jquery/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/custom.js"></script>
    </body>
</html>