<div class="box box-primary">
  	<div class="box-header with-border">
    	<h3 class="box-title">Detail Data</h3>
  	</div>
  	<!-- /.box-header -->
  	<!-- form start -->
  	<div class="modal-dialog">
    <!-- /.row -->
    <div class="row">
  	<div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
              <?php foreach ($j as $d) {
              } ?>
            	<label><?php echo $d->nama_jurusan; ?></label>
            </div>
            <div class="panel-body">
                <div class="row">
            	    <div class="col-lg-12">
                        <form role="form" action="#" method="post" enctype="multipart/form-data" name="form" class="form" id="form" onsubmit="return validate(this)" onClick="highlight(event)" onKeyUp="highlight(event)">
                            <div class="form-group">
	                            <table class="table table-striped table-bordered table-hover" style="width: 100%">
	                              	<tr>
	                              		<td>No</td>
	                              		<td>Nama Progdi</td>
	                              	</tr>
	                              	<?php $no = 1; foreach($jurusan as $j){ ?>
	                              	<tr>
	                              		<td><?php echo $no++; ?></td>
	                              		<td><?php echo $j->nama_progdi; ?></td>
	                              	</tr>
                        			     <?php } ?>
	                            </table>
                            </div>
                            <a href="<?php echo base_url(); ?>jurusan/index" class="btn btn-primary">Kembali</a>
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
	</div>
	</div>
</div>