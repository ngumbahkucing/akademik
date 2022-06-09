	<div class="msg" style="display:none;">
	<?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="box">
	<div class="box-header">
    	<div class="col-md-6" style="padding: 0;">
        	<!--<a href="<?php echo base_url(); ?>krs/input"><button class="form-control btn btn-primary" data-toggle="modal" ><i class="glyphicon glyphicon-plus-sign"></i> Create Krs</button></a>-->
    	</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
    	<table id="list-data" class="table table-bordered table-striped">
	    	<thead>
	        	<tr>
	          		<th>No</th>
	          		<th>Tahun Ajaran</th>
	          		<th>Semester</th>
	          		<th>NIM</th>
	          		<th>Nama Mahasiswa</th>
	          		<th>Status</th>
	          		<th style="text-align: center;">Aksi</th>
	        		</tr>
	      	</thead>
	      	<tbody id="data-krs">
	      		<?php
	        	$no = 1;
	        	foreach ($dataKrs as $krs) {
	        	?>
	        	<tr>
	          		<td><?php echo $no++; ?></td>
	          		<td><?php echo $krs->nama_tahun; ?></td>
	          		<td><?php echo $krs->semester == 0? "Ganjil": "Genap"; ?></td>
	          		<td><?php echo $krs->nim; ?></td>
	          		<td><?php echo $krs->nama_mhs; ?></td>
	          		<td><?php echo $krs->status == 0? "Pending" : "Disetujui"; ?></td>
	          		<td class="text-center" style="min-width:230px;">
                        <?php if ($this->session->userdata("level") == 0) { ?>
	                        <?php if ($krs->status == 0) {?>
		            		<a href="<?php echo base_url(); ?>krs/approve/<?php echo $krs->id_krs; ?>">
		              			<button class="btn btn-warning update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Approve</button>
		            		</a>
	                        <?php } ?>
	                        <a href="<?php echo base_url(); ?>krs/detail/<?php echo $krs->id_krs; ?>">
	              			<button class="btn btn-success update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Detail</button>
	            			</a>
                        <?php } elseif ($this->session->userdata("level") == 1) { ?>
	                        <?php if ($krs->status == 0) {?>
		            		<a href="<?php echo base_url(); ?>krs/approve/<?php echo $krs->id_krs; ?>">
		              			<button class="btn btn-warning update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Approve</button>
		            		</a>
	                        <?php } ?>
	                        <a href="<?php echo base_url(); ?>krs/detail/<?php echo $krs->id_krs; ?>">
	              			<button class="btn btn-success update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Detail</button>
	            			</a>
	                    <?php } else { ?>
                        <a href="<?php echo base_url(); ?>krs/detail/<?php echo $krs->id_krs; ?>">
	              			<button class="btn btn-success update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Detail</button>
	            		</a>
                        <a href="<?php echo base_url(); ?>krs/cetak/<?php echo $krs->id_krs; ?>" target="BLANK">
	              			<button class="btn btn-success update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Cetak</button>
	            		</a>
	            		<?php } ?>
	          		</td>
	        	</tr>
	        	<?php } ?>
	      	</tbody>
    	</table>
  	</div>
</div>