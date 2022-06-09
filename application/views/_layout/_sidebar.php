<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">

    <!-- Sidebar Menu -->
    <ul class="sidebar-menu">
      <li class="header">LIST MENU</li>
      <!-- Optionally, you can add icons to the links -->

      <li <?php if ($page == 'home') {echo 'class="active"';} ?>>
        <a href="<?php echo base_url('Home'); ?>">
          <i class="fa fa-home"></i>
          <span>Home</span>
        </a>
      </li>
      
      <?php if ($this->session->userdata("level") == 0) { ?>

      <!--Menu Form-->
      <li class="treeview">
        <a href="#">
          <i class="fa fa-folder"></i> <span>Data Master</span>
          <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li <?php if ($page == 'admin') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Admin'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Admin</span>
            </a>
          </li>
          <li <?php if ($page == 'dosen') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Dosen'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Dosen</span>
            </a>
          </li>
          <li <?php if ($page == 'mahasiswa') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Mahasiswa'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Mahasiswa</span>
            </a>
          </li>
          <li <?php if ($page == 'fakultas') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Fakultas'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Fakultas</span>
            </a>
          </li>
          <li <?php if ($page == 'jurusan') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Jurusan'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Jurusan</span>
            </a>
          </li>
          <li <?php if ($page == 'progdi') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Progdi'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Progdi</span>
            </a>
          </li>
          <li <?php if ($page == 'makul') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Makul'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Mata Kuliah </span>
            </a>
          </li>
          <li <?php if ($page == 'ruang') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('ruang'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Ruang Kelas</span>
            </a>
          </li>
          <li <?php if ($page == 'thn_ajaran') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('thn_ajaran'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Tahun Ajaran</span>
            </a>
          </li>
          <li <?php if ($page == 'jadwal') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('jadwal'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Jadwal</span>
            </a>
          </li>
          <li <?php if ($page == 'informasi') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('informasi'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Informasi</span>
            </a>
          </li>
        </ul> 
      </li>

      <!--Menu Form
      <li class="treeview">
        <a href="#">
          <i class="fa fa-folder"></i> <span>Akademik</span>
          <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li <?php if ($page == 'krs') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('krs/input'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Input KRS</span>
            </a>
          </li>
          <li <?php if ($page == 'krs') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Krs'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>KRS</span>
            </a>
          </li>
          <li <?php if ($page == 'khs') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Khs'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>KHS</span>
            </a>
          </li>
        </ul> 
      </li>-->

      <!--Menu Form-->
      <li class="treeview">
        <a href="#">
          <i class="fa fa-folder"></i> <span>Laporan</span>
          <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li <?php if ($page == 'jadwal') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('jadwal/laporan'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Jadwal Kuliah</span>
            </a>
          </li>
        </ul> 
      </li>
      
      <?php } elseif ($this->session->userdata("level") == 1) { ?>
      
      <!--Menu Form-->
      <li class="treeview">
        <a href="#">
          <i class="fa fa-folder"></i> <span>Akademik</span>
          <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li <?php if ($page == 'krs') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Krs'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Approve KRS</span>
            </a>
          </li>
          <li <?php if ($page == 'khs') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Khs/input_nilai'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Input Nilai</span>
            </a>
          </li>
        </ul> 
      </li>
      
      <li class="treeview">
        <a href="#">
          <i class="fa fa-folder"></i> <span>Jadwal Mengajar</span>
          <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li <?php if ($page == 'jadwal') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('jadwal/jadwalku'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Cetak Jadwalku</span>
            </a>
          </li>
        </ul> 
      </li>

      <?php } else { ?>
      
      <!--Menu Form-->
      <li class="treeview">
        <a href="#">
          <i class="fa fa-folder"></i> <span>Akademik</span>
          <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li <?php if ($page == 'krs') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('krs/input'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Input KRS</span>
            </a>
          </li>
          <li <?php if ($page == 'krs') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Krs/krs_data'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>KRS</span>
            </a>
          </li>
          <li <?php if ($page == 'khs') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Khs/khs_mhs'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>KHS</span>
            </a>
          </li>
          <li <?php if ($page == 'khs') {echo 'class="active"';} ?>>
            <a href="<?php echo base_url('Khs/transkip'); ?>">
              <i class="fa fa-circle-o"></i>
              <span>Transkip</span>
            </a>
          </li>
        </ul> 
      </li>
      <?php } ?>
    </ul>
    <!-- /.sidebar-menu -->
  </section>
  <!-- /.sidebar -->
</aside>