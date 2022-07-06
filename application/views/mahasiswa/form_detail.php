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
            <div class="panel-heading text-center">
                <img class="img-rounded" src="../../uploads/images/<?php echo $m->foto; ?>" id="img" alt="maaf foto tidak ada" height="150">
            </div>
            <div class="panel-body">
                <div class="row">
            	    <div class="col-lg-12">
                        <form role="form" action="#" method="post" enctype="multipart/form-data" name="form" class="form" id="form" onsubmit="return validate(this)" onClick="highlight(event)" onKeyUp="highlight(event)">
                            <div class="form-group">
	                            <table class="table table-striped table-bordered table-hover" style="width: 100%">
	                              	<tr>
	                                	<td>Tahun Ajaran</td>
	                                   	<td>
										   	<?php foreach($thn_ajaran as $ta){}?>
	                                   		<?php echo $ta->nama_tahun; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Nama Mahasiswa</td>
	                                   	<td>
	                                   		<?php echo $m->nama_mhs; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Progdi</td>
	                                   	<td>
										   	<?php foreach($progdi as $pd){}?>
	                                   		<?php echo $pd->nama_progdi; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Angkatan</td>
	                                   	<td>
	                                   		<?php echo $m->angkatan; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Dosen Wali</td>
	                                   	<td>
										   	<?php foreach($dosen as $d){}?>
	                                   		<?php echo $d->nama_dosen; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Nama Kelas</td>
	                                   	<td>
	                                   		<?php echo $m->nama_kelas; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Gender</td>
	                                   	<td>
	                                   		<?php echo $m->jenis_kelamin; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>TTL</td>
	                                   	<td>
	                                   		<?php echo $m->tempat_lahir.", ".$m->tanggal_lahir; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Agama</td>
	                                   	<td>
	                                   		<?php echo $m->agama; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Alamat</td>
	                                   	<td>
	                                   		<?php echo $m->alamat; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>No. NIK</td>
	                                   	<td>
	                                   		<?php echo $m->no_nik; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>No. KK</td>
	                                   	<td>
	                                   		<?php echo $m->no_kk; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Nama Ayah</td>
	                                   	<td>
	                                   		<?php echo $m->nama_ayah; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Pekerjaan Ayah</td>
	                                   	<td>
	                                   		<?php echo $m->pekerjaan_ayah; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Nama Ibu</td>
	                                   	<td>
	                                   		<?php echo $m->nama_ibu; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Pekerjaan Ibu</td>
	                                   	<td>
	                                   		<?php echo $m->pekerjaan_ibu; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>No. HP</td>
	                                   	<td>
	                                   		<?php echo $m->no_hp; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Email</td>
	                                   	<td>
	                                   		<?php echo $m->email; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Sekolah Asal</td>
	                                   	<td>
	                                   		<?php echo $m->sekolah_asal; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Alamat Sekolah Asal</td>
	                                   	<td>
	                                   		<?php echo $m->alamat_sekolah_asal; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>No. Ijasah</td>
	                                   	<td>
	                                   		<?php echo $m->no_ijasah; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Nilai Masuk</td>
	                                   	<td>
	                                   		<?php echo $m->nilai_masuk; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Sumber Info</td>
	                                   	<td>
	                                   		<?php echo $m->sumber_info; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Pembawa</td>
	                                   	<td>
	                                   		<?php echo $m->pembawa; ?>
	                                   	</td>
	                                </tr>
									<tr>
	                                	<td>Ukuran Jas</td>
	                                   	<td>
	                                   		<?php echo $m->ukuran_jas; ?>
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