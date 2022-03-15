
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <!-- <h1 class="h3 mb-4 text-gray-800"><?= $judul;?></h1> -->


   <!-- Content Row -->
   <div class="row">

<!-- Earnings (Monthly) Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
  <div class="card border-left-primary shadow h-100 py-2">
    <div class="card-body">
      <div class="row no-gutters align-items-center">
        <div class="col mr-2">
          <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Jumlah Arsip Surat Masuk</div>
          <div class="h5 mb-0 font-weight-bold text-gray-800">Total : <?= $jml?></div>
        </div>
        <div class="col-auto">
          <!-- <i class="fas fa-book fa-2x text-gray-300"></i> -->
          <img class="img-thumbnail" src="<?= base_url('assets/');?>img/3.svg" width="80" alt="">
        </div>
      </div>
    </div>
  </div>
</div>

<div class="col-xl-3 col-md-6 mb-4">
  <div class="card border-left-primary shadow h-100 py-2">
    <div class="card-body">
      <div class="row no-gutters align-items-center">
        <div class="col mr-2">
          <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Jumlah Arsip Surat Keluar</div>
          <div class="h5 mb-0 font-weight-bold text-gray-800">Total : <?= $keluar?></div>
        </div>
        <div class="col-auto">
          <!-- <i class="fas fa-book fa-2x text-gray-300"></i> -->
          <img class="img-thumbnail" src="<?= base_url('assets/');?>img/3.svg" width="80" alt="">
        </div>
      </div>
    </div>
  </div>
</div>

<div class="col-xl-3 col-md-6 mb-4">
  <div class="card border-left-primary shadow h-100 py-2">
    <div class="card-body">
      <div class="row no-gutters align-items-center">
        <div class="col mr-2">
          <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Arsip Surat</div>
          <div class="h5 mb-0 font-weight-bold text-gray-800">Total : <?=$jml + $keluar?></div>
        </div>
        <div class="col-auto">
          <!-- <i class="fas fa-book fa-2x text-gray-300"></i> -->
          <img class="img-thumbnail" src="<?= base_url('assets/');?>img/2.svg" width="80" alt="">
        </div>
      </div>
    </div>
  </div>
</div>

<div class="col-xl-3 col-md-6 mb-4">
  <div class="card border-left-primary shadow h-100 py-2">
    <div class="card-body">
      <div class="row no-gutters align-items-center">
        <div class="col mr-2">
          <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Jumlah Penggguna Sistem</div>
          <div class="h5 mb-0 font-weight-bold text-gray-800">Total : <?=$pengguna?></div>
        </div>
        <div class="col-auto">
          <!-- <i class="fas fa-users fa-2x text-gray-300"></i> -->
          <img class="img-thumbnail" src="<?= base_url('assets/');?>img/1.svg" width="80" alt="">
        </div>
      </div>
    </div>
  </div>
</div>
</div>

         
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

</div>