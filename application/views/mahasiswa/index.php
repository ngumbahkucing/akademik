<div class="msg" style="display:none;">
	<?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="box">
	<div class="box-header">
    	<div class="col-md-6" style="padding: 0;">
        	<a href="<?php echo base_url(); ?>mahasiswa/add"><button class="form-control btn btn-primary" data-toggle="modal" ><i class="glyphicon glyphicon-plus-sign"></i> Create Mahasiswa</button></a>
    	</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
    	<table id="list-data" class="table table-bordered table-striped">
	    	<thead>
	        	<tr>
	          		<th>No</th>
	          		<th>NIM</th>
	          		<th>Nama Mahasiswa</th>
	          		<th>Password</th>
	          		<th style="text-align: center;">Aksi</th>
	        		</tr>
	      	</thead>
	      	<tbody id="data-mahasiswa">
	      		<?php
	        	$no = 1;
	        	foreach ($dataMahasiswa as $mahasiswa) {
	        	?>
	        	<tr>
	          		<td><?php echo $no++; ?></td>
	          		<td><?php echo $mahasiswa->nim; ?></td>
	          		<td><?php echo $mahasiswa->nama_mhs; ?></td>
	          		<td><?php echo $mahasiswa->password; ?></td>
	          		<td class="text-center" style="min-width:230px;">
	            		<a href="<?php echo base_url(); ?>mahasiswa/edit/<?php echo $mahasiswa->nim; ?>">
	              			<button class="btn btn-warning update-dataMahasiswa"><i class="glyphicon glyphicon-repeat"></i> Update</button>
	            		</a>
	            		<a href="<?php echo base_url(); ?>mahasiswa/delete/<?php echo $mahasiswa->nim; ?>" onclick="return confirm('Anda yakin akan menghapus data ini...!')">
	              			<button class="btn btn-danger"><i class="glyphicon glyphicon-remove-sign"></i> Delete</button>
	            		</a>
	            		<a href="<?php echo base_url(); ?>mahasiswa/detail/<?php echo $mahasiswa->nim; ?>">
	            			<button class="btn btn-info"><i class="glyphicon glyphicon-info-sign"></i> Detail</button>
	            		</a>
	          		</td>
	        	</tr>
	        	<?php } ?>
	      	</tbody>
    	</table>
  	</div>
</div>