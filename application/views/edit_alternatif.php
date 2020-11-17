<!DOCTYPE html>
<html lang="en">

<head>
<?php include 'head.php'?>
</head>

<body id="page-top">
<?php include 'navbar.php' ?>
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Alternatif</h1>
          </div>

          <!-- Cards -->
          <div class="row">

            <div class="col-lg-6">
              <!-- Basic Card Example -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Edit Alternatif</h6>
                </div>
                <div class="card-body">
                  <!-- form tambah keputusan -->
                  <form role="form" action="<?php echo base_url('dashboard/update_alternatif') ?>" method="post">
                  <div class="card-body">
                  <?php foreach($alternatif as $a) {?>
                  <div class="form-group">
                    <label for="Nama Alternatif">Nama Alternatif</label>
                    <input name="nama" type="text" class="form-control" value="<?php echo $a->nama_alternatif ?>">
                  </div>
                  <input type="hidden" name="id_alternatif" value="<?php echo $a->id_alternatif ?>">
                  <?php } ?>
                  <button type="submit" class="btn btn-primary">Simpan</button>
                  <button type="button" class="btn btn-warning" onclick="history.back(-1)">Kembali</button>
                  </form>
                  <!-- end of form tambah keputusan -->
                </div>
              </div>
            </div>

          </div>

          <!-- End of Cards -->

        </div>
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
<?php include 'footer.php'?>