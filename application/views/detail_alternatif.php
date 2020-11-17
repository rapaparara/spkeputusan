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
            <h1 class="h3 mb-0 text-gray-800">Detail Hasil Alternatif</h1>
          </div>

          <!-- Cards -->
          <div class="row">

            <div class="col-lg-6">
              <!-- Basic Card Example -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Hasil Pembobotan Alternatif</h6>
                </div>
                <div class="card-body">
                  <table class="table">
                    <tr>
                      <th>Alternatif</th>
                      <th>Nilai Pembobotan Alternatif</th>
                    </tr>
                    <?php foreach($alternatif as $a){?>
                    <tr>
                      <td><?php echo $a->nama_alternatif; ?></td>
                      <td><?php echo $a->nilai_alternatif; ?></td>
                    </tr>
                    <?php } ?>
                  </table>
                  <button type="button" class="btn btn-warning" onclick="history.back(-1)">Kembali</button>
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