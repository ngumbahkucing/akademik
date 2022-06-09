<div class="msg" style="display:none;">
	<?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="box">
	<div class="box-header">
    	<div class="col-md-6" style="padding: 0;">
        	<a href="<?php echo base_url(); ?>makul/add"><button class="form-control btn btn-primary" data-toggle="modal" ><i class="glyphicon glyphicon-plus-sign"></i> Create Mata Kuliah</button></a>
    	</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
    	<table id="list-data" class="table table-bordered table-striped">
	    	<thead>
	        	<tr>
	          		<th>No</th>
	          		<th>Nama Makul</th>
	          		<th>SKS</th>
	          		<th style="text-align: center;">Aksi</th>
	        		</tr>
	      	</thead>
	      	<tbody id="data-makul">
	      		<?php
	        	$no = 1;
	        	foreach ($dataMakul as $makul) {
	        	?>
	        	<tr>
	          		<td><?php echo $no++; ?></td>
	          		<td><?php echo $makul->nama_makul; ?></td>
	          		<td><?php echo $makul->sks; ?></td>
	          		<td class="text-center" style="min-width:230px;">
	            		<a href="<?php echo base_url(); ?>makul/edit/<?php echo $makul->id_makul; ?>">
	              			<button class="btn btn-warning update-datamakul"><i class="glyphicon glyphicon-repeat"></i> Update</button>
	            		</a>
	            		<a href="<?php echo base_url(); ?>makul/delete/<?php echo $makul->id_makul; ?>" onclick="return confirm('Anda yakin akan menghapus data ini...!')">
	              			<button class="btn btn-danger"><i class="glyphicon glyphicon-remove-sign"></i> Delete</button>
	            		</a>
	          		</td>
	        	</tr>
	        	<?php } ?>
	      	</tbody>
    	</table>
  	</div>
</div>