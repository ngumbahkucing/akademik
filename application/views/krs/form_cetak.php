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
  function cekform() {

  }

  function deleteme($id) {
    document.getElementById("delete").value = $id;
    document.frm1.submit();
  }
</script>

<body onLoad="window.print()">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h3 class="box-title"></h3>
    </div>
    <!-- /.box-header -->
    <!-- form start -->
    <div class="modal-dialog">
      <!-- /.row -->
      <div class="row">
        <div class="col-lg-12">
          <div class="panel panel-default">
            <div class="panel-heading">
              <table>
                <tr>
                  <td align="center" width="10%">
                    <img src="<?php echo base_url(); ?>asset/img/logo1.png" width="100%" height="100px">
                  </td>
                  <td align="center">
                    <h3>KARTU RENCANA STUDI<br>
                      SISTEM INFORMASI AKADEMIK</h3>
                  </td>
                  <td width="5%"></td>
                </tr>
              </table>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-lg-12">
                  <form role="form" action="<?php echo base_url(); ?>krs/add" method="POST" onsubmit="return cekform();" id="frm1" name="frm1">
                    <input type="hidden" name="delete" id="delete" value="0">
                    <div class="box-body">
                      <div class="form-group">
                        <?php foreach ($mahasiswa as $m) { ?>
                          <input type="hidden" name="nim" value="<?= $m->nim ?>">
                          <input type="hidden" name="id_krs" value="<?= $id_krs ?>">
                          <input type="hidden" name="id_tahun" value="<?= $tahun_ajaran[0]->id_tahun ?>">
                          <input type="hidden" name="semester" value="<?= $semester ?>">
                          <table class="table table-striped table-bordered table-hover" style="width: 100%">
                            <tr>
                              <td>Nama Mahasiswa</td>
                              <td><?php echo $m->nama_mhs; ?></td>
                            </tr>
                            <tr>
                              <td>NIM</td>
                              <td><?php echo $m->nim; ?></td>
                            </tr>
                            <tr>
                              <td>Tahun Ajaran</td>
                              <td><?php echo $tahun_ajaran[0]->nama_tahun; ?></td>
                            </tr>
                            <tr>
                              <td>Semester</td>
                              <td><?php echo $semester == 0 ? "Ganjil" : "Genap"; ?></td>
                            </tr>
                          <?php } ?>
                          </table>
                      </div>
                    </div>
                    <!-- /.box-body -->
                  </form>
                  <table class="table table-striped table-bordered table-hover" style="width: 100%">
                    <thead>
                      <tr>
                        <th>No.</th>
                        <th>Makul</th>
                        <th>Dosen Pengampu</th>
                        <th>SKS</th>
                        <th>Hari</th>
                        <th>Ruang</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                      $i = 0;
                      $totalsks = 0;
                      foreach ($krs_detail as $k) {
                        $i++;
                      ?>
                        <tr>
                          <td align="center"><?= $i ?>.</td>
                          <td align="left"><?= $k->jenis . " " . $k->nama_makul ?></td>
                          <td align="left"><?= $k->nama_dosen ?></td>
                          <td align="left"><?= $k->sks ?></td>
                          <td align="left"><?= $k->hari . ", " . substr($k->jam, 0, 5) ?></td>
                          <td align="left"><?= $k->nama_ruang ?></td>
                        </tr>
                    </tbody>
                  <?php
                        $totalsks += $k->sks;
                      } ?>
                  <tr>
                    <th align="left" colspan="3">Total SKS</th>
                    <th colspan="3"><?= $totalsks ?></th>
                  </tr>
                  </table>
                </div>
              </div>
              <!-- /.row (nested) -->
            </div>
            <!-- /.panel-body -->
          </div>
          <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
      </div>
</body>
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
  $(function() {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', {
      'placeholder': 'dd/mm/yyyy'
    })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', {
      'placeholder': 'mm/dd/yyyy'
    })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({
      timePicker: true,
      timePickerIncrement: 30,
      format: 'MM/DD/YYYY h:mm A'
    })
    //Date range as a button
    $('#daterange-btn').daterangepicker({
        ranges: {
          'Today': [moment(), moment()],
          'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days': [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month': [moment().startOf('month'), moment().endOf('month')],
          'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate: moment()
      },
      function(start, end) {
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
      radioClass: 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass: 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass: 'iradio_flat-green'
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