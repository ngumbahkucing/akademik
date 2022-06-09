<?php if ($this->session->userdata("level") == 0) { ?>
<div class="row">
  <div class="col-md-3">
    <!-- Profile Image -->
    <div class="box box-primary">
      <div class="box-body box-profile">
        <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url(); ?>assets/img/<?php echo $userdata->foto; ?>" alt="User profile picture">

        <h3 class="profile-username text-center"><?php echo $userdata->nama; ?></h3>

        <p class="text-muted text-center">Administrator</p>

        <ul class="list-group list-group-unbordered">
          <li class="list-group-item">
            <b>Username</b> <a class="pull-right"><?php echo $userdata->username; ?></a>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#settings" data-toggle="tab">Settings</a></li>
        <li><a href="#password" data-toggle="tab">Ubah Password</a></li>
      </ul>
      <div class="tab-content">
        <div class="active tab-pane" id="settings">
          <form class="form-horizontal" action="<?php echo base_url('Profile/update') ?>" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <label for="inputUsername" class="col-sm-2 control-label">Username</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id= placeholder="Username" name="username" value="<?php echo $userdata->username; ?>">
              </div>
            </div>
            <div class="form-group">
              <label for="inputNama" class="col-sm-2 control-label">Name</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="Name" name="nama" value="<?php echo $userdata->nama; ?>">
              </div>
            </div>
            <div class="form-group">
              <label for="inputFoto" class="col-sm-2 control-label">Foto</label>
              <div class="col-sm-10">
                <input type="file" class="form-control" placeholder="Foto" name="foto">
              </div>
            </div>
            
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-danger">Submit</button>
              </div>
            </div>
          </form>
        </div>
        <div class="tab-pane" id="password">
          <form class="form-horizontal" action="<?php echo base_url('Profile/ubah_password') ?>" method="POST">
            <div class="form-group">
              <label for="passLama" class="col-sm-2 control-label">Password Lama</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" placeholder="Password Lama" name="passLama">
              </div>
            </div>
            <div class="form-group">
              <label for="passBaru" class="col-sm-2 control-label">Password Baru</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" placeholder="Password Baru" name="passBaru">
              </div>
            </div>
            <div class="form-group">
              <label for="passKonf" class="col-sm-2 control-label">Konfirmasi Password</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" placeholder="Konfirmasi Password" name="passKonf">
              </div>
            </div>
            
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-danger">Submit</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="msg" style="display:none;">
      <?php echo $this->session->flashdata('msg'); ?>
    </div>
  </div>
</div>

<?php } elseif ($this->session->userdata("level") == 1) { ?>
<div class="row">
  <div class="col-md-3">
    <!-- Profile Image -->
    <div class="box box-primary">
      <div class="box-body box-profile">
        <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url(); ?>assets/img/<?php echo $userdata->foto; ?>" alt="User profile picture">

        <h3 class="profile-username text-center"><?php echo $userdata->nama_dosen; ?></h3>

        <p class="text-muted text-center">Dosen</p>

        <ul class="list-group list-group-unbordered">
          <li class="list-group-item">
            <b>Username</b> <a class="pull-right"><?php echo $userdata->nip; ?></a>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#settings" data-toggle="tab">Settings</a></li>
        <li><a href="#password" data-toggle="tab">Ubah Password</a></li>
      </ul>
      <div class="tab-content">
        <div class="active tab-pane" id="settings">
          <form class="form-horizontal" action="<?php echo base_url('Profile/update1') ?>" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <label for="inputNama" class="col-sm-2 control-label">NIDN</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="nidn" name="nidn" value="<?php echo $userdata->nidn; ?>">
              </div>
            </div>
            <div class="form-group">
              <label for="inputNama" class="col-sm-2 control-label">Name</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="Name" name="nama_dosen" value="<?php echo $userdata->nama_dosen; ?>">
              </div>
            </div>
            <div class="form-group">
              <label for="SelectJenisKelamin" class="col-sm-2 control-label">Jenis Kelamin</label>
              <div class="col-sm-10">
                <select class="form-control select2" name="jenis_kelamin" data-placeholder="Select a State">
                  <option><?php echo $userdata->jenis_kelamin; ?></option>
                  <option>Pria</option>
                  <option>Wanita</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label for="inputTlahir" class="col-sm-2 control-label">Tempat Lahir</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="tempat_lahir" id="tempat_lahir" placeholder="Enter Tempat Lahir" value="<?php echo $userdata->tempat_lahir; ?>">
              </div>
            </div>
            <div class="form-group">
              <label for="inputTgl" class="col-sm-2 control-label">Tanggal Lahir</label>
              <div class="col-sm-10">
                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" name="tanggal_lahir" class="form-control pull-right" id="datepicker" value="<?php echo $userdata->tanggal_lahir; ?>">
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="inputAgama" class="col-sm-2 control-label">Agama</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="agama" id="agama" placeholder="Enter Agama" value="<?php echo $userdata->agama; ?>">
               </div> 
            </div>
            <div class="form-group">
              <label for="inputAlamat" class="col-sm-2 control-label">Alamat</label>
              <div class="col-sm-10">
                <textarea class="form-control" name="alamat" rows="3" placeholder="Enter ..."><?php echo $userdata->alamat; ?></textarea>
              </div>
            </div>
            <div class="form-group">
              <label for="inputFoto" class="col-sm-2 control-label">Foto</label>
              <div class="col-sm-10">
                <input type="file" class="form-control" placeholder="Foto" name="foto">
              </div>
            </div>
            
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-danger">Submit</button>
              </div>
            </div>
          </form>
        </div>
        <div class="tab-pane" id="password">
          <form class="form-horizontal" action="<?php echo base_url('Profile/ubah_password1') ?>" method="POST">
            <div class="form-group">
              <label for="passLama" class="col-sm-2 control-label">Password Lama</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" placeholder="Password Lama" name="passLama">
              </div>
            </div>
            <div class="form-group">
              <label for="passBaru" class="col-sm-2 control-label">Password Baru</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" placeholder="Password Baru" name="passBaru">
              </div>
            </div>
            <div class="form-group">
              <label for="passKonf" class="col-sm-2 control-label">Konfirmasi Password</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" placeholder="Konfirmasi Password" name="passKonf">
              </div>
            </div>
            
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-danger">Submit</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="msg" style="display:none;">
      <?php echo $this->session->flashdata('msg'); ?>
    </div>
  </div>
</div>    

<?php } else { ?>
<div class="row">
  <div class="col-md-3">
    <!-- Profile Image -->
    <div class="box box-primary">
      <div class="box-body box-profile">
        <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url(); ?>assets/img/<?php echo $userdata->foto; ?>" alt="User profile picture">

        <h3 class="profile-username text-center"><?php echo $userdata->nama_mhs; ?></h3>

        <p class="text-muted text-center">Mahasiswa</p>

        <ul class="list-group list-group-unbordered">
          <li class="list-group-item">
            <b>Username</b> <a class="pull-right"><?php echo $userdata->nim; ?></a>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <div class="col-md-9">
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#settings" data-toggle="tab">Settings</a></li>
        <li><a href="#password" data-toggle="tab">Ubah Password</a></li>
      </ul>
      <div class="tab-content">
        <div class="active tab-pane" id="settings">
          <form class="form-horizontal" action="<?php echo base_url('Profile/update2') ?>" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <label for="inputNama" class="col-sm-2 control-label">Name</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" placeholder="Name" name="nama_mhs" value="<?php echo $userdata->nama_mhs; ?>">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">Jenis Kelamin</label><br>
                 <div class="col-sm-10">
                    <select class="form-control select2" name="jenis_kelamin" data-placeholder="Select a State">
                      <option><?php echo $userdata->jenis_kelamin; ?></option>
                      <option>Pria</option>
                      <option>Wanita</option>
                    </select>
                  </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">Tempat Lahir</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control" name="tempat_lahir" id="tempat_lahir" placeholder="Enter Tempat Lahir" value="<?php echo $userdata->tempat_lahir; ?>">
                </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">Tanggal Lahir</label>
                <div class="col-sm-10">
                  <div class="input-group date">
                    <div class="input-group-addon">
                      <i class="fa fa-calendar"></i>
                    </div>
                    <input type="text" name="tanggal_lahir" class="form-control pull-right" id="datepicker" value="<?php echo $userdata->tanggal_lahir; ?>">
                </div> 
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">Agama</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="agama" id="agama" placeholder="Enter Agama" value="<?php echo $userdata->agama; ?>">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">Alamat</label>
              <div class="col-sm-10">
                <textarea class="form-control" name="alamat" rows="3" placeholder="Enter ..."><?php echo $userdata->alamat; ?></textarea>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">Nama Ayah</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="nama_ayah" id="nama_ayah" placeholder="Enter Nama Ayah" value="<?php echo $userdata->nama_ayah; ?>">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">Pekerjaan Ayah</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="pekerjaan_ayah" id="pekerjaan_ayah" placeholder="Enter Pekerjaan Ayah" value="<?php echo $userdata->pekerjaan_ayah; ?>">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">Nama Ibu</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="nama_ibu" id="nama_ibu" placeholder="Enter Nama Ibu" value="<?php echo $userdata->nama_ibu; ?>">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">Pekerjaan Ibu</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="pekerjaan_ibu" id="pekerjaan_ibu" placeholder="Enter Pekerjaan Ibu" value="<?php echo $userdata->pekerjaan_ibu; ?>">
              </div>
            </div>
            <div class="form-group">
              <label for="inputFoto" class="col-sm-2 control-label">Foto</label>
              <div class="col-sm-10">
                <input type="file" class="form-control" placeholder="Foto" name="foto">
              </div>
            </div>
            
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-danger">Submit</button>
              </div>
            </div>
          </form>
        </div>
        <div class="tab-pane" id="password">
          <form class="form-horizontal" action="<?php echo base_url('Profile/ubah_password2') ?>" method="POST">
            <div class="form-group">
              <label for="passLama" class="col-sm-2 control-label">Password Lama</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" placeholder="Password Lama" name="passLama">
              </div>
            </div>
            <div class="form-group">
              <label for="passBaru" class="col-sm-2 control-label">Password Baru</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" placeholder="Password Baru" name="passBaru">
              </div>
            </div>
            <div class="form-group">
              <label for="passKonf" class="col-sm-2 control-label">Konfirmasi Password</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" placeholder="Konfirmasi Password" name="passKonf">
              </div>
            </div>
            
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-danger">Submit</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="msg" style="display:none;">
      <?php echo $this->session->flashdata('msg'); ?>
    </div>
  </div>
</div>
<?php } ?>