<div class="box box-primary">
  	<div class="box-header with-border">
    	<h3 class="box-title">Detail Data</h3>
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
                <img class="img-rounded" src="<?php echo $m->foto; ?>" id="img" alt="maaf foto tidak ada" width=150 height=150>
            </div>
            <div class="panel-body">
                <div class="row">
            	    <div class="col-lg-12">
                        <form role="form" action="#" method="post" enctype="multipart/form-data" name="form" class="form" id="form" onsubmit="return validate(this)" onClick="highlight(event)" onKeyUp="highlight(event)">
                            <div class="form-group">
	                            <table class="table table-striped table-bordered table-hover" style="width: 100%">
	                              	<tr>
	                                	<td>NIS</td>
	                                   	<td><?php echo $m->nim; ?></td>
	                                </tr>
	                                	<td>Nama Dosen</td>
	                                   	<td><?php echo $m->nama_mhs; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Password</td>
	                                   	<td><?php echo $m->password; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Jenis Kelamin</td>
	                                   	<td><?php echo $m->jenis_kelamin; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Tempat Lahir</td>
	                                   	<td><?php echo $m->tempat_lahir; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Tanggal Lahir</td>
	                                   	<td><?php echo $m->tanggal_lahir; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Agama</td>
	                                   	<td><?php echo $m->agama; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Alamat</td>
	                                   	<td><?php echo $m->alamat; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Nama Ayah</td>
	                                   	<td><?php echo $m->nama_ayah; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Pekerjaan Ayah</td>
	                                   	<td><?php echo $m->pekerjaan_ayah; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Nama Ibu</td>
	                                   	<td><?php echo $m->nama_ibu; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Pekerjaan Ibu</td>
	                                   	<td><?php echo $m->pekerjaan_ibu; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Angkatan</td>
	                                   	<td><?php echo $m->angkatan; ?></td>
	                                </tr>
	                                <tr>
	                                	<td>Dosen Wali</td>
	                                   	<td>
	                                   		<?php foreach($dosen as $d){}?>
	                                   		<?php echo $d->nama_dosen; ?>
	                                   	</td>
	                                </tr>
	                                <tr>
	                                	<td>Program Studi</td>
	                                   	<td>
	                                   		<?php foreach($progdi as $p){}?>
	                                   		<?php echo $p->nama_progdi; ?>
	                                   	</td>
	                                </tr>	
	                            </table>
                            </div>
                            <a href="<?php echo base_url(); ?>mahasiswa/index" class="btn btn-primary">Kembali</a>
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