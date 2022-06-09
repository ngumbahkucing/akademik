<div class="msg" style="display:none;">
	<?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="box">
	<div class="box-header">
    	<div class="col-md-6" style="padding: 0;">
        	<a href="<?php echo base_url(); ?>jurusan/add"><button class="form-control btn btn-primary" data-toggle="modal" ><i class="glyphicon glyphicon-plus-sign"></i> Create Jurusan</button></a>
    	</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
    	<table id="list-data" class="table table-bordered table-striped">
	    	<thead>
	        	<tr>
	          		<th>No</th>
	          		<th>Nama Jurusan</th>
	          		<th style="text-align: center;">Aksi</th>
	        		</tr>
	      	</thead>
	      	<tbody id="data-jurusan">
	      		<?php
	        	$no = 1;
	        	foreach ($dataJurusan as $jurusan) {
	        	?>
	        	<tr>
	          		<td><?php echo $no++; ?></td>
	          		<td><?php echo $jurusan->nama_jurusan; ?></td>
	          		<td class="text-center" style="min-width:230px;">
	            		<a href="<?php echo base_url(); ?>jurusan/edit/<?php echo $jurusan->id_jurusan; ?>">
	              			<button class="btn btn-warning update-datajurusan"><i class="glyphicon glyphicon-repeat"></i> Update</button>
	            		</a>
	            		<a href="<?php echo base_url(); ?>jurusan/delete/<?php echo $jurusan->id_jurusan; ?>" onclick="return confirm('Anda yakin akan menghapus data ini...!')">
	              			<button class="btn btn-danger"><i class="glyphicon glyphicon-remove-sign"></i> Delete</button>
	            		</a>
	            		<a href="<?php echo base_url(); ?>jurusan/detail/<?php echo $jurusan->id_jurusan; ?>">
	            			<button class="btn btn-info"><i class="glyphicon glyphicon-info-sign"></i> Detail</button>
	            		</a>
	          		</td>
	        	</tr>
	        	<?php } ?>
	      	</tbody>
    	</table>
  	</div>
</div>