<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/Ionicons/css/ionicons.min.css">
<!-- daterange picker -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap datepicker -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/iCheck/all.css">
<!-- Bootstrap Color Picker -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
<!-- Bootstrap time Picker -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/timepicker/bootstrap-timepicker.min.css">
<!-- Select2 -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/select2/dist/css/select2.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/skins/_all-skins.min.css">
<script type="text/javascript">
  	function cekform()
  	{
	    if (!$("#nim").val()) 
	    {
	      	alert('NIM Tidak boleh kosong');
	      	$("#nim").focus()
	      	return false;
	    }
  	}
</script>
<div class="box box-primary">
  	<div class="box-header with-border">
    	<h3 class="box-title">Edit Data</h3>
  	</div>
  	<!-- /.box-header -->
  	<!-- form start -->
  	<?php foreach($mahasiswa as $m){ ?>
  	<div class="modal-dialog">
    <!-- /.row -->
    <div class="row">
  	<div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
              Input Data
            </div>
            <div class="panel-heading text-center">
                <img class="img-rounded" src="../../uploads/images/<?php echo $m->foto; ?>" id="img" alt="maaf foto tidak ada" height="150">
            </div>
            <div class="panel-body">
                <div class="row">
            	    <div class="col-lg-12">
        				  	<form role="form" action="<?php echo base_url(); ?>mahasiswa/update" method="POST" enctype="multipart/form-data" onsubmit="return cekform();">
        				    <div class="box-body">
                    <div class="form-group">
        				        	<label>Tahun Ajaran</label>
        				        	<select class="form-control select2" name="id_tahun" id="id_tahun" data-placeholder="Select Tahun Ajaran">
                            <?php foreach ($thn_ajaran as $t) { ?>
                            <option></option>
                            <option value="<?php echo $t->id_tahun; ?>" <?php if ($t->id_tahun == $m->id_tahun) echo "selected"?>><?php echo $t->nama_tahun; ?></option>
                            <?php } ?>
                          </select>
        				      	</div>
        				      	<div class="form-group">
        				        	<label>NIM</label>
        				        	<input type="text" class="form-control" name="nim" id="nim" data-placehoder="NIM" value="<?php echo $m->nim;?>">
        				      	</div>
        				      	<div class="form-group">
        				        	<label>Nama Mahasiswa</label>
        				        	<input type="text" class="form-control" name="nama_mhs" id="nama_mhs" data-placehoder="Nama Mahasiswa" value="<?php echo $m->nama_mhs;?>">
        				      	</div>
                        <div class="form-group">
                          <label>Program Studi</label>
                          <select class="form-control select2" name="id_progdi" id="id_progdi" data-placeholder="Select a Program Studi">
                            <?php foreach ($progdi as $p) { ?>
                            <option></option>
                            <option value="<?php echo $p->id_progdi; ?>" <?php if ($p->id_progdi == $m->id_progdi) echo "selected"?>><?php echo $p->nama_progdi; ?></option>
                            <?php } ?>
                          </select>
                        </div>
                        <div class="form-group">
                          <label>Angkatan</label>
                          <input type="text" class="form-control" name="angkatan" id="angkatan" placeholder="Angkatan" value="<?php echo $m->angkatan;?>">
                        </div>
                        <div class="form-group">
                          <label>Dosen Wali</label><br>
                          <select class="form-control select2" name="nama_dosen" id="nama_dosen" data-placeholder="Select a Dosen Wali">
                            <?php foreach ($dosen as $d) { ?>
                            <option></option>
                            <option value="<?php echo $d->nama_dosen;?>" <?php if($d->nama_dosen == $m->nama_dosen) echo "selected"?>><?php echo $d->nama_dosen;?></option>
                            <?php } ?>
                          </select>
                        </div>
                        <div class="form-group">
                          <label>Nama Kelas</label>
                          <input type="text" class="form-control" name="nama_kelas" id="nama_kelas" placeholder="Nama Kelas" value="<?php echo $m->nama_kelas;?>">
                        </div>
        				      	<div class="form-group">
        				        	<label>Jenis Kelamin</label><br>
        				        	<select class="form-control select2" name="jenis_kelamin" data-placeholder="Gender">
        				            	<option value="Pria" <?php if($m->jenis_kelamin == "Pria") echo "selected"?>>Pria</option>
        				            	<option>Wanita <?php if($m->jenis_kelamin == "Wanita") echo "selected"?></option>
        				       		</select>
        				      	</div>
        				      	<div class="form-group">
        				        	<label>Tempat Lahir</label>
        				        	<input type="text" class="form-control" name="tempat_lahir" id="tempat_lahir" placeholder="Tempat Lahir" value="<?php echo $m->tempat_lahir;?>">
        				      	</div>
        				      	<div class="form-group">
        				        	<label>Tanggal Lahir</label>
        				        	<div class="input-group date">
        				            	<div class="input-group-addon">
        				            		<i class="fa fa-calendar"></i>
        				            	</div>
        				            	<input type="text" name="tanggal_lahir" class="form-control pull-right" id="datepicker" value="<?php echo $m->tanggal_lahir;?>">
        				        	</div>
        				       	</div>
        				        <div class="form-group">
        				        	<label>Agama</label>
        				        	<select name="agama" id="agama" class="form-control">
                            <option value="Islam" <?php if($m->agama == "Islam") echo "selected"?>>Islam</option>
                            <option value="Katholik" <?php if($m->agama == "Katholik") echo "selected"?>>Katholik</option>
                            <option value="Kristen" <?php if($m->agama == "Kristen") echo "selected"?>>Kristen</option>
                            <option value="Hindu" <?php if($m->agama == "Hindu") echo "selected"?>>Hindu</option>
                            <option value="Budha" <?php if($m->agama == "Budha") echo "selected"?>>Budha</option>
                            <option value="Konghucu" <?php if($m->agama == "Konghucu") echo "selected"?>>Konghucu</option>
                          </select>
        				      	</div>
        				      	<div class="form-group">
        				        	<label>Alamat</label>
        				        	<textarea class="form-control" name="alamat" rows="3" placeholder="..."><?php echo nl2br($m->alamat);?></textarea>
        				      	</div>
                        <div class="form-group">
        				        	<label>No. NIK</label>
        				        	<input type="text" class="form-control" name="no_nik" id="no_nik" placeholder="NIK" value="<?php echo $m->no_nik;?>">
        				      	</div>
                        <div class="form-group">
        				        	<label>No. KK</label>
        				        	<input type="text" class="form-control" name="no_kk" id="no_kk" placeholder="No. KK" value="<?php echo $m->no_kk;?>">
        				      	</div>
                        <div class="form-group">
                          <label>Nama Ayah</label>
                          <input type="text" class="form-control" name="nama_ayah" id="nama_ayah" placeholder="Nama Ayah" value="<?php echo $m->nama_ayah;?>">
                        </div>
                        <div class="form-group">
                          <label>Pekerjaan Ayah</label>
                          <input type="text" class="form-control" name="pekerjaan_ayah" id="pekerjaan_ayah" placeholder="Pekerjaan Ayah" value="<?php echo $m->pekerjaan_ayah;?>">
                        </div>
                        <div class="form-group">
                          <label>Nama Ibu</label>
                          <input type="text" class="form-control" name="nama_ibu" id="nama_ibu" placeholder="Nama Ibu" value="<?php echo $m->nama_ibu;?>">
                        </div>
                        <div class="form-group">
                          <label>Pekerjaan Ibu</label>
                          <input type="text" class="form-control" name="pekerjaan_ibu" id="pekerjaan_ibu" placeholder="Pekerjaan Ibu" value="<?php echo $m->pekerjaan_ibu;?>">
                        </div>
                        <div class="form-group">
                          <label>No. HP</label>
                          <input type="text" class="form-control" name="no_hp" id="no_hp" placeholder="No. HP" value="<?php echo $m->no_hp;?>">
                        </div>
                        <div class="form-group">
                          <label>Email</label>
                          <input type="text" class="form-control" name="email" id="email" placeholder="Email" value="<?php echo $m->email;?>">
                        </div>
                        <div class="form-group">
                          <label>Sekolah Asal</label>
                          <input type="text" class="form-control" name="sekolah_asal" id="sekolah_asal" placeholder="Sekolah Asal" value="<?php echo $m->sekolah_asal;?>">
                        </div>
                        <div class="form-group">
                          <label>Alamat Sekolah Asal</label>
                          <input type="text" class="form-control" name="alamat_sekolah_asal" id="alamat_sekolah_asal" placeholder="Alamat Sekolah Asal" value="<?php echo $m->alamat_sekolah_asal;?>">
                        </div>
                        <div class="form-group">
                          <label>No. Ijasah</label>
                          <input type="text" class="form-control" name="no_ijasah" id="no_ijasah" placeholder="No. Ijasah" value="<?php echo $m->no_ijasah;?>">
                        </div>
                        <div class="form-group">
                          <label>Nilai Masuk</label>
        				        	<select name="nilai_masuk" id="nilai_masuk" class="form-control">
                            <option value="1L" <?php if($m->nilai_masuk == "1L") echo "selected"?>>1L</option>
                            <option value="2L" <?php if($m->nilai_masuk == "2L") echo "selected"?>>2L</option>
                            <option value="3L" <?php if($m->nilai_masuk == "3L") echo "selected"?>>3L</option>
                            <option value="4L" <?php if($m->nilai_masuk == "4L") echo "selected"?>>4L</option>
                            <option value="PMDP" <?php if($m->nilai_masuk == "PMDP") echo "selected"?>>PMDP</option>
                          </select>
                        </div>
                        <div class="form-group">
                          <label>Sumber Info</label>
                          <input type="text" class="form-control" name="sumber_info" id="sumber_info" placeholder="Sumber Info" value="<?php echo $m->sumber_info;?>">
                        </div>
                        <div class="form-group">
                          <label>Pembawa</label>
                          <input type="text" class="form-control" name="pembawa" id="pembawa" placeholder="Pembawa" value="<?php echo $m->pembawa;?>">
                        </div>
                        <div class="form-group">
                          <label>Ukuran Jas</label>
        				        	<select name="ukuran_jas" id="ukuran_jas" class="form-control">
                            <option value="S" <?php if($m->ukuran_jas == "S") echo "selected"?>>S</option>
                            <option value="M" <?php if($m->ukuran_jas == "M") echo "selected"?>>M</option>
                            <option value="L" <?php if($m->ukuran_jas == "L") echo "selected"?>>L</option>
                            <option value="XL" <?php if($m->ukuran_jas == "XL") echo "selected"?>>XL</option>
                            <option value="XXL" <?php if($m->ukuran_jas == "XXL") echo "selected"?>>XXL</option>
                            <option value="XXXL" <?php if($m->ukuran_jas == "XXXL") echo "selected"?>>XXXL</option>
                          </select>
                        </div>
        				      	<div class="form-group">
        					        <label>Foto</label>
        					        <input type="file" class="form-control" name="foto" id="foto">
        				      	</div>
        				    </div>
        				    <!-- /.box-body -->
        				    <div class="box-footer">
        				      	<button type="submit" class="btn btn-primary">Update</button>
                        <a href="<?php echo base_url(); ?>mahasiswa/index" class="btn btn-primary">Batal</a>
        				    </div>
        				  	</form>
      				  	</div>
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.panel-body -->
        </div>
       	<!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
  	<?php } ?>
</div>
<!-- jQuery 3 -->
<script src="<?php echo base_url(); ?>assets/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url(); ?>assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="<?php echo base_url(); ?>assets/bower_components/select2/dist/js/select2.full.min.js"></script>
<!-- InputMask -->
<script src="<?php echo base_url(); ?>assets/plugins/input-mask/jquery.inputmask.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="<?php echo base_url(); ?>assets/bower_components/moment/min/moment.min.js"></script>
<script src="<?php echo base_url(); ?>assets/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="<?php echo base_url(); ?>assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap color picker -->
<script src="<?php echo base_url(); ?>assets/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="<?php echo base_url(); ?>assets/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url(); ?>assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="<?php echo base_url(); ?>assets/plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="../..<?php echo base_url(); ?>assets/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/dist/js/demo.js"></script>
<script type="text/javascript">
	$(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  })
</script>