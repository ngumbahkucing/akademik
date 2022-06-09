<div class="box box-primary">
  	<div class="box-header with-border">
    	<h3 class="box-title">Detail Data</h3>
  	</div>
  	<!-- /.box-header -->
  	<!-- form start -->
  	<?php foreach($dosen as $d){ ?>
  	<div class="modal-dialog">
    <!-- /.row -->
    <div class="row">
  	<div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <img class="img-rounded" src="<?php echo $d->foto; ?>" id="img" alt="maaf foto tidak ada" width=150 height=150>
            </div>
            <div class="panel-body">
                <div class="row">
            	    <div class="col-lg-12">
                        <form role="form" action="#" method="post" enctype="multipart/form-data" name="form" class="form" id="form" onsubmit="return validate(this)" onClick="highlight(event)" onKeyUp="highlight(event)">
                            <div class="form-group">
	                            <table class="table table-striped table-bordered table-hover" style="width: 100%">
	                              	<tr>
	                                	<td>NIP</td>
	                                   	<td><?php echo $d->nip; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>NIDN</td>
	                                   	<td><?php echo $d->nidn; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Nama Dosen</td>
	                                   	<td><?php echo $d->nama_dosen; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Jenis Kelamin</td>
	                                   	<td><?php echo $d->jenis_kelamin; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Tempat Lahir</td>
	                                   	<td><?php echo $d->tempat_lahir; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Tanggal Lahir</td>
	                                   	<td><?php echo $d->tanggal_lahir; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Agama</td>
	                                   	<td><?php echo $d->agama; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Alamat</td>
	                                   	<td><?php echo $d->alamat; ?></td>
	                                </tr>
	                               
	                            </table>
                            </div>
                            <a href="<?php echo base_url(); ?>dosen/index" class="btn btn-primary">Kembali</a>
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