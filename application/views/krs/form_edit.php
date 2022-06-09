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
            <div class="panel-body">
                <div class="row">
            	    <div class="col-lg-12">
        				  	<form role="form" action="<?php echo base_url(); ?>mahasiswa/update" method="POST" onsubmit="return cekform();">
        				    <div class="box-body">
        				      	<div class="form-group">
        				        	<label>NIM</label>
        				        	<input type="text" class="form-control" name="nim" id="nim" placeholder="Enter NIM" value="<?php echo $m->nim; ?>" >
        				      	</div>
        				      	<div class="form-group">
        				        	<label>Nama Mahasiswa</label>
        				        	<input type="text" class="form-control" name="nama_mhs" id="nama_mhs" placeholder="Enter Nama Mahasiswa" value="<?php echo $m->nama_mhs; ?>">
        				      	</div>
        				      	<div class="form-group">
        				        	<label>Jenis Kelamin</label><br>
        					        <select class="form-control select2" name="jenis_kelamin" data-placeholder="Select a State">
        					        	<option><?php echo $m->jenis_kelamin; ?></option>
        					            <option>Pria</option>
        					            <option>Wanita</option>
        					        </select>
        				      	</div>
        				      	<div class="form-group">
        					        <label>Tempat Lahir</label>
        					        <input type="text" class="form-control" name="tempat_lahir" id="tempat_lahir" placeholder="Enter Tempat Lahir" value="<?php echo $m->tempat_lahir; ?>">
        				      	</div>
        				      	<div class="form-group">
        					        <label>Tanggal Lahir</label>
        					        <div class="input-group date">
        					            <div class="input-group-addon">
        					            	<i class="fa fa-calendar"></i>
        					            </div>
        					            <input type="text" name="tanggal_lahir" class="form-control pull-right" id="datepicker" value="<?php echo $m->tanggal_lahir; ?>">
        					        </div>
        				       	</div>
        				        <div class="form-group">
        				        	<label>Agama</label>
        				        	<input type="text" class="form-control" name="agama" id="agama" placeholder="Enter Agama" value="<?php echo $m->agama; ?>">
        				      	</div>
        				      	<div class="form-group">
        					        <label>Alamat</label>
        					        <textarea class="form-control" name="alamat" rows="3" placeholder="Enter ..."><?php echo $m->alamat; ?></textarea>
        				      	</div>
                        <div class="form-group">
                          <label>Nama Ayah</label>
                          <input type="text" class="form-control" name="nama_ayah" id="nama_ayah" placeholder="Enter Nama Ayah" value="<?php echo $m->nama_ayah; ?>">
                        </div>
                        <div class="form-group">
                          <label>Pekerjaan Ayah</label>
                          <input type="text" class="form-control" name="pekerjaan_ayah" id="pekerjaan_ayah" placeholder="Enter Pekerjaan Ayah" value="<?php echo $m->pekerjaan_ayah; ?>">
                        </div>
                        <div class="form-group">
                          <label>Nama Ibu</label>
                          <input type="text" class="form-control" name="nama_ibu" id="nama_ibu" placeholder="Enter Nama Ibu" value="<?php echo $m->nama_ibu; ?>">
                        </div>
                        <div class="form-group">
                          <label>Pekerjaan Ibu</label>
                          <input type="text" class="form-control" name="pekerjaan_ibu" id="pekerjaan_ibu" placeholder="Enter Pekerjaan Ibu" value="<?php echo $m->pekerjaan_ibu; ?>">
                        </div>
                        <div class="form-group">
                          <label>Nama Kelas</label>
                          <input type="text" class="form-control" name="nama_kelas" id="nama_kelas" placeholder="Enter Nama Kelas" value="<?php echo $m->nama_kelas; ?>">
                        </div>
                        <div class="form-group">
                          <label>Angkatan</label>
                          <input type="text" class="form-control" name="angkatan" id="angkatan" placeholder="Enter Angkatan" value="<?php echo $m->angkatan; ?>">
                        </div>
        				      	<div class="form-group">
        					        <label for="exampleInputFile">Foto</label>
        					        <input type="file" name="foto" id="exampleInputFile">
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