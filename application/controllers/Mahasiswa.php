<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mahasiswa extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_mahasiswa');
		$this->load->model('M_dosen');
		$this->load->model('M_progdi');
		$this->load->model('M_thn_ajaran');
	}

	public function index() 
	{
		$data['userdata'] 	= $this->userdata;
		$data['dataMahasiswa'] 	= $this->M_mahasiswa->tampil_data();

		$data['page'] 		= "mahasiswa";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Mahasiswa";

		$this->template->views('mahasiswa/index', $data);
	}

	public function add() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "mahasiswa";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Mahasiswa";

		$data['thn_ajaran'] = $this->M_thn_ajaran->tampil_data();
		$data['dosen'] 		= $this->M_dosen->tampil_data();
		$data['progdi'] 	= $this->M_progdi->tampil_data();
		$this->template->views('mahasiswa/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'nim' =>$this->input->post('nim'),
			'password' =>md5($this->input->post('nim')),
			'nama_mhs' =>$this->input->post('nama_mhs'),
			'id_progdi' =>$this->input->post('id_progdi'),
			'angkatan' =>$this->input->post('angkatan'),
			'nama_dosen' =>$this->input->post('nama_dosen'),
			'nama_kelas' =>$this->input->post('nama_kelas'),
			'jenis_kelamin' =>$this->input->post('jenis_kelamin'),
			'tempat_lahir' =>$this->input->post('tempat_lahir'),
			'tanggal_lahir' =>$this->input->post('tanggal_lahir'),
			'agama' =>$this->input->post('agama'),
			'alamat' =>$this->input->post('alamat'),
			'no_nik' =>$this->input->post('no_nik'),
			'no_kk' =>$this->input->post('no_kk'),
			'nama_ayah' =>$this->input->post('nama_ayah'),
			'pekerjaan_ayah'=>$this->input->post('pekerjaan_ayah'),
			'nama_ibu' =>$this->input->post('nama_ibu'),
			'pekerjaan_ibu'	=>$this->input->post('pekerjaan_ibu'),			
			'no_hp' =>$this->input->post('no_hp'),
			'email' =>$this->input->post('email'),
			'sekolah_asal' =>$this->input->post('sekolah_asal'),
			'alamat_sekolah_asal' =>$this->input->post('alamat_sekolah_asal'),
			'no_ijasah' =>$this->input->post('no_ijasah'),
			'nilai_masuk' =>$this->input->post('nilai_masuk'),
			'sumber_info' =>$this->input->post('sumber_info'),
			'pembawa' =>$this->input->post('pembawa'),
			'ukuran_jas' =>$this->input->post('ukuran_jas'),
			'foto' =>$this->input->post('foto')
		);
		
		$this->M_mahasiswa->input_data($data);
		redirect('mahasiswa/index');
	}

	function edit($nim)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "mahasiswa";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Mahasiwa";

		$where 				= array('nim' => $nim);
		$data['thn_ajaran'] = $this->M_thn_ajaran->tampil_data();
		$data['dosen'] 		= $this->M_dosen->tampil_data($nim);
		$data['progdi'] 	= $this->M_progdi->tampil_data($nim);
		$data['mahasiswa'] 	= $this->M_mahasiswa->edit_data($where,'mahasiswa')->result();
		$this->template->views('mahasiswa/form_edit',$data);
	}

	function update()
	{
		// CEK DULU SUDAH ADA GAMBAR BELUM
		$data_lama = $this->M_mahasiswa->tampil_dataku($this->input->post('nim'));
		foreach($data_lama as $dl) {};
		$foto_lama = $dl->foto;
		
		// KALAU FOTO LAMA KOSONG UPLOAD DUL
		if (!empty($_FILES['foto']['name'])) {
			// UPLOAD FILE MANUAL DUL
			$target_dir = "./uploads/images/";
			$target_file = $target_dir . basename($_FILES["foto"]["name"]);
			$uploadOk = 1;
			$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
			
			// cek image/file gambar
			if(isset($_POST["submit"])) {
				$check = getimagesize($_FILES["foto"]["tmp_name"]);
				if($check !== false) {
					echo "File adalah image - " . $check["mime"] . ".";
					$uploadOk = 1;
				} else {
					echo "File bukan image.";
					$uploadOk = 0;
				}
			}
			
			// Cek error
			if ($uploadOk == 0) {
				$pesan = "File gagal diupload";
			
			// jika ok, try to upload
			} else {
				if (move_uploaded_file($_FILES["foto"]["tmp_name"], $target_file)) {
					$pesan = "File sukses diupload";
				} else {
					$pesan = "File gagal diupload";
				}
			}
			// EO UPLOAD FILE MANUAL CUK
			$foto = $_FILES['foto']['name'];			
		} 
		
		// KALAU ADA FOTO LAMA YA SUDAH LAH
		else {
			$foto = $foto_lama;
		}
		
		/*echo "<br>foto_lama = ".$foto_lama;
		echo "<br>foto_baru = ".$_FILES['foto']['name'];
		echo "<br>foto_akhir = ".$foto;
		exit();*/

		$nim 				= $this->input->post('nim');
		$nama_mhs	 		= $this->input->post('nama_mhs');
		$id_progdi 			= $this->input->post('id_progdi');
		$angkatan			= $this->input->post('angkatan');
		$nama_dosen			= $this->input->post('nama_dosen');
		$nama_kelas 		= $this->input->post('nama_kelas');
		$jenis_kelamin 		= $this->input->post('jenis_kelamin');
		$tempat_lahir 		= $this->input->post('tempat_lahir');
		$tanggal_lahir 		= $this->input->post('tanggal_lahir');
		$agama 				= $this->input->post('agama');
		$alamat 			= $this->input->post('alamat');
		$no_nik 			= $this->input->post('no_nik');
		$no_kk 				= $this->input->post('no_kk');
		$nama_ayah 			= $this->input->post('nama_ayah');
		$pekerjaan_ayah 	= $this->input->post('pekerjaan_ayah');
		$nama_ibu 			= $this->input->post('nama_ibu');
		$pekerjaan_ibu 		= $this->input->post('pekerjaan_ibu');
		$no_hp 				= $this->input->post('no_hp');
		$email 				= $this->input->post('email');
		$sekolah_asal 		= $this->input->post('sekolah_asal');
		$alamat_sekolah_asal= $this->input->post('alamat_sekolah_asal');
		$no_ijasah 			= $this->input->post('no_ijasah');
		$nilai_masuk 		= $this->input->post('nilai_masuk');
		$sumber_info 		= $this->input->post('sumber_info');
		$pembawa 			= $this->input->post('pembawa');
		$ukuran_jas 		= $this->input->post('ukuran_jas');
		$foto 				= $foto;

		$data = array(
			'nim' =>$this->input->post('nim'),
			'password' =>md5($this->input->post('nim')),
			'nama_mhs' =>$this->input->post('nama_mhs'),
			'id_progdi' =>$this->input->post('id_progdi'),
			'angkatan' =>$this->input->post('angkatan'),
			'nama_dosen' =>$this->input->post('nama_dosen'),
			'nama_kelas' =>$this->input->post('nama_kelas'),
			'jenis_kelamin' =>$this->input->post('jenis_kelamin'),
			'tempat_lahir' =>$this->input->post('tempat_lahir'),
			'tanggal_lahir' =>$this->input->post('tanggal_lahir'),
			'agama' =>$this->input->post('agama'),
			'alamat' =>$this->input->post('alamat'),
			'no_nik' =>$this->input->post('no_nik'),
			'no_kk' =>$this->input->post('no_kk'),
			'nama_ayah' =>$this->input->post('nama_ayah'),
			'pekerjaan_ayah'=>$this->input->post('pekerjaan_ayah'),
			'nama_ibu' =>$this->input->post('nama_ibu'),
			'pekerjaan_ibu'	=>$this->input->post('pekerjaan_ibu'),			
			'no_hp' =>$this->input->post('no_hp'),
			'email' =>$this->input->post('email'),
			'sekolah_asal' =>$this->input->post('sekolah_asal'),
			'alamat_sekolah_asal' =>$this->input->post('alamat_sekolah_asal'),
			'no_ijasah' =>$this->input->post('no_ijasah'),
			'nilai_masuk' =>$this->input->post('nilai_masuk'),
			'sumber_info' =>$this->input->post('sumber_info'),
			'pembawa' =>$this->input->post('pembawa'),
			'ukuran_jas' =>$this->input->post('ukuran_jas'),
			'foto' => $foto
		);

		$where = array(
			'nim' => $nim
		);

		$this->M_mahasiswa->update_data($where, $data, 'mahasiswa');
		redirect('mahasiswa/index');
	}

	public function delete($nim) 
	{
		$data = array('nim' => $nim);
		$this->M_mahasiswa->hapus_data($data,'mahasiswa');
		redirect('mahasiswa/index');
	}

	function detail($nim)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "mahasiswa";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Mahasiswa";

		$where 				= array('nim' => $nim);
		$data['thn_ajaran'] = $this->M_thn_ajaran->tampil_data();
		$data['dosen'] 		= $this->M_mahasiswa->tampil_data_dosen($nim);
		$data['progdi'] 	= $this->M_mahasiswa->tampil_data_progdi($nim);
		$data['mahasiswa'] 	= $this->M_mahasiswa->detail_data($where,'nim')->result();
		$this->template->views('mahasiswa/form_detail',$data);
	}

}