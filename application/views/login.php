<!DOCTYPE html>
<html>
<head>
  <?php require 'head.php'?>
</head>
<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Selamat Datang!</h1>
                  </div>
                  <form class="user" action="<?php echo base_url('auth/aksi_masuk') ?>" method="POST">
                    <div class="form-group">
                      <input name="username" type="text" class="form-control form-control-user" placeholder="Masukkan nama pengguna">
                    </div>
                    <div class="form-group">
                      <input name="password" type="password" class="form-control form-control-user" placeholder="Masukkan password">
                    </div>
                    <button type="submit" class="btn btn-primary btn-user btn-block">
                      Masuk
                    </button>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="<?php echo base_url('auth/daftar') ?>">Buat Akun</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>
