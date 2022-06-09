<div class="msg" style="display:none;">
	<?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="box">
	<div class="box-header">
    	<div class="col-md-6" style="padding: 0;">
        	<a href="<?php echo base_url(); ?>jadwal/add"><button class="form-control btn btn-primary" data-toggle="modal" ><i class="glyphicon glyphicon-plus-sign"></i> Create Jadwal</button></a>
    	</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
    	<table id="list-data" class="table table-bordered table-striped">
	    	<thead>
	        	<tr>
	          		<th>No</th>
	          		<th>Tahun</th>
	          		<th>Mata Kuliah</th>
	          		<th>Nama Dosen</th>
	          		<th>Jenis</th>
	          		<th>SKS</th>
	          		<th>Hari</th>
	          		<th>Jam</th>
	          		<th>Ruang</th>
	          		<th style="text-align: center;">Aksi</th>
	        		</tr>
	      	</thead>
	      	<tbody id="data-jadwal">
	      		<?php
	        	$no = 1;
	        	foreach ($dataJadwal as $jadwal) {
	        	?>
	        	<tr>
	          		<td><?php echo $no++; ?></td>
	          		<td><?php echo $jadwal->nama_tahun; ?></td>
	          		<td><?php echo $jadwal->nama_makul; ?></td>
	          		<td><?php echo $jadwal->nama_dosen; ?></td>
	          		<td><?php echo $jadwal->jenis; ?></td>
	          		<td><?php echo $jadwal->sks; ?></td>
	          		<td><?php echo $jadwal->hari; ?></td>
	          		<td><?php echo $jadwal->jam; ?></td>
	          		<td><?php echo $jadwal->nama_ruang; ?></td>
	          		<td class="text-center" style="min-width:230px;">
	            		<a href="<?php echo base_url(); ?>jadwal/edit/<?php echo $jadwal->id_jadwal; ?>">
	              			<button class="btn btn-warning update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Update</button>
	            		</a>
	            		<a href="<?php echo base_url(); ?>jadwal/delete/<?php echo $jadwal->id_jadwal; ?>" onclick="return confirm('Anda yakin akan menghapus data ini...!')">
	              			<button class="btn btn-danger"><i class="glyphicon glyphicon-remove-sign"></i> Delete</button>
	            		</a>
	          		</td>
	        	</tr>
	        	<?php } ?>
	      	</tbody>
    	</table>
  	</div>
</div>