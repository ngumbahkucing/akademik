<div class="msg" style="display:none;">
	<?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="box">
	<div class="box-header">
    	<div class="col-md-6" style="padding: 0;">
        	<a href="<?php echo base_url(); ?>dosen/add"><button class="form-control btn btn-primary" data-toggle="modal" ><i class="glyphicon glyphicon-plus-sign"></i> Create Dosen</button></a>
    	</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
    	<table id="list-data" class="table table-bordered table-striped">
	    	<thead>
	        	<tr>
	          		<th>No</th>
	          		<th>NIP</th>
	          		<th>NIDN</th>
	          		<th>Nama Dosen</th>
	          		<th>Alamat</th>
	          		<th style="text-align: center;">Aksi</th>
	        		</tr>
	      	</thead>
	      	<tbody id="data-dosen">
	      		<?php
	        	$no = 1;
	        	foreach ($dataDosen as $dosen) {
	        	?>
	        	<tr>
	          		<td><?php echo $no++; ?></td>
	          		<td><?php echo $dosen->nip; ?></td>
	          		<td><?php echo $dosen->nidn; ?></td>
	          		<td><?php echo $dosen->nama_dosen; ?></td>
	          		<td><?php echo $dosen->alamat; ?></td>
	          		<td class="text-center" style="min-width:230px;">
	            		<a href="<?php echo base_url(); ?>dosen/edit/<?php echo $dosen->nip; ?>">
	              			<button class="btn btn-warning update-dataDosen"><i class="glyphicon glyphicon-repeat"></i> Update</button>
	            		</a>
	            		<a href="<?php echo base_url(); ?>dosen/delete/<?php echo $dosen->nip; ?>" onclick="return confirm('Anda yakin akan menghapus data ini...!')">
	              			<button class="btn btn-danger"><i class="glyphicon glyphicon-remove-sign"></i> Delete</button>
	            		</a>
	            		<a href="<?php echo base_url(); ?>dosen/detail/<?php echo $dosen->nip; ?>">
	            			<button class="btn btn-info"><i class="glyphicon glyphicon-info-sign"></i> Detail</button>
	            		</a>
	          		</td>
	        	</tr>
	        	<?php } ?>
	      	</tbody>
    	</table>
  	</div>
</div>