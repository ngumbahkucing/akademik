<div class="box box-primary">
  	<div class="box-header with-border">
    	<h3 class="box-title">Detail Data</h3>
  	</div>
  	<!-- /.box-header -->
  	<!-- form start -->
  	<?php foreach($informasi as $i){ ?>
  	<div class="modal-dialog">
    <!-- /.row -->
    <div class="row">
  	<div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <label><?php echo $i->tanggal; ?></label>
            </div>
            <div class="panel-body">
                <div class="row">
            	    <div class="col-lg-12">
                        <form role="form" action="#" method="post" enctype="multipart/form-data" name="form" class="form" id="form" onsubmit="return validate(this)" onClick="highlight(event)" onKeyUp="highlight(event)">
                            <div class="form-group">
	                            <label>Judul :</label><br><?php echo $i->judul; ?><br>
	                            <label>Isi :</label><br><?php echo $i->isi; ?>
                            </div>
                            <a href="<?php echo base_url(); ?>informasi/index" class="btn btn-primary">Kembali</a>
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
  	<?php } ?>
</div>