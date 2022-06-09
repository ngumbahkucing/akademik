<div class="msg" style="display:none;">
	<?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="box">
	<div class="box-header">
    	<div class="col-md-6" style="padding: 0;">
        	<a href="<?php echo base_url(); ?>ruang/add"><button class="form-control btn btn-primary" data-toggle="modal" ><i class="glyphicon glyphicon-plus-sign"></i> Create Ruang</button></a>
    	</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
    	<table id="list-data" class="table table-bordered table-striped">
	    	<thead>
	        	<tr>
	          		<th>No</th>
	          		<th>Nama Ruang</th>
	          		<th>kapasitas</th>
	          		<th style="text-align: center;">Aksi</th>
	        		</tr>
	      	</thead>
	      	<tbody id="data-ruang">
	      		<?php
	        	$no = 1;
	        	foreach ($dataRuang as $ruang) {
	        	?>
	        	<tr>
	          		<td><?php echo $no++; ?></td>
	          		<td><?php echo $ruang->nama_ruang; ?></td>
	          		<td><?php echo $ruang->kapasitas; ?></td>
	          		<td class="text-center" style="min-width:230px;">
	            		<a href="<?php echo base_url(); ?>ruang/edit/<?php echo $ruang->id_ruang; ?>">
	              			<button class="btn btn-warning update-dataruang"><i class="glyphicon glyphicon-repeat"></i> Update</button>
	            		</a>
	            		<a href="<?php echo base_url(); ?>ruang/delete/<?php echo $ruang->id_ruang; ?>" onclick="return confirm('Anda yakin akan menghapus data ini...!')">
	              			<button class="btn btn-danger"><i class="glyphicon glyphicon-remove-sign"></i> Delete</button>
	            		</a>
	          		</td>
	        	</tr>
	        	<?php } ?>
	      	</tbody>
    	</table>
  	</div>
</div>