<?php if ($this->session->userdata("level") == 0) { ?>
<div class="msg" style="display:none;">
	<?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="box">
	<div class="box-header">
    	
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
	          		<td class="text-center" style="min-width:230px;">
                        <a href="<?php echo base_url(); ?>khs/detail/<?php echo $krs->id_krs; ?>">
	              			<button class="btn btn-success update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Detail</button>
	            		</a>
	          		</td>
	        	</tr>
	        	<?php } ?>
	      	</tbody>
    	</table>
  	</div>
</div>
<?php } elseif ($this->session->userdata("level") == 1) { ?>
<div class="msg" style="display:none;">
	<?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="box">
	<div class="box-header">
    	
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
	          		<td class="text-center" style="min-width:230px;">
                        <a href="<?php echo base_url(); ?>khs/detail/<?php echo $krs->id_krs; ?>">
	              			<button class="btn btn-success update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Detail</button>
	            		</a>
	          		</td>
	        	</tr>
	        	<?php } ?>
	      	</tbody>
    	</table>
  	</div>
</div>
<?php } else { ?>
<div class="msg" style="display:none;">
	<?php echo @$this->session->flashdata('msg'); ?>
</div>

<div class="box">
	<div class="box-header">
    	
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
	          		<td class="text-center" style="min-width:230px;">
                        <a href="<?php echo base_url(); ?>khs/detail1/<?php echo $krs->id_krs; ?>">
	              			<button class="btn btn-success update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Detail</button>
	            		</a>
	            		<a href="<?php echo base_url(); ?>khs/khs_cetak/<?php echo $krs->id_krs; ?>" target="BLANK">
	              			<button class="btn btn-success update-dataJadwal"><i class="glyphicon glyphicon-repeat"></i> Cetak</button>
	            		</a>
	          		</td>
	        	</tr>
	        	<?php } ?>
	      	</tbody>
    	</table>
  	</div>
</div>
<?php } ?>