<!DOCTYPE html>
<html>

<head>
	<title></title>
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
</head>

<body onLoad="window.print()">
	<table border="1" align="center">
		<tr>
			<td align="center" width="80">
				<img src="<?php echo base_url(); ?>asset/img/logo1.png" width="50%" height="100px">
			</td>
			<td align="center">
				<h3>Jadwal Mata Kuliah<br>
					Tahun Ajaran <?php foreach ($dataJadwal as $jadwal) {
									} ?><?php echo $jadwal->nama_tahun; ?></h3>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<table class="table">
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
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</td>
		</tr>
	</table>
</body>

</html>