<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mahasiswa extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_mahasiswa');
		$this->load->model('M_dosen');
		$this->load->model('M_progdi');
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

		$data['dosen'] 		= $this->M_dosen->tampil_data();
		$data['progdi'] 	= $this->M_progdi->tampil_data();
		$this->template->views('mahasiswa/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'nim'			=>$this->input->post('nim'),
			'password'		=>md5($this->input->post('nim')),
			'nama_mhs'		=>$this->input->post('nama_mhs'),
			'jenis_kelamin'	=>$this->input->post('jenis_kelamin'),
			'tempat_lahir'	=>$this->input->post('tempat_lahir'),
			'tanggal_lahir'	=>$this->input->post('tanggal_lahir'),
			'agama'			=>$this->input->post('agama'),
			'alamat'		=>$this->input->post('alamat'),
			'nama_ayah'		=>$this->input->post('nama_ayah'),
			'pekerjaan_ayah'=>$this->input->post('pekerjaan_ayah'),
			'nama_ibu'		=>$this->input->post('nama_ibu'),
			'pekerjaan_ibu'	=>$this->input->post('pekerjaan_ibu'),
			'nama_kelas'	=>$this->input->post('nama_kelas'),
			'angkatan'		=>$this->input->post('angkatan'), 
			'nip'			=>$this->input->post('nip'),
			'id_progdi'		=>$this->input->post('id_progdi'),
			'foto'			=>$this->input->post('foto')
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
		$data['dosen'] 		= $this->M_dosen->tampil_data($nim);
		$data['progdi'] 	= $this->M_progdi->tampil_data($nim);
		$data['mahasiswa'] 	= $this->M_mahasiswa->edit_data($where,'mahasiswa')->result();
		$this->template->views('mahasiswa/form_edit',$data);
	}

	function update()
	{
		$nim 				= $this->input->post('nim');
		$nama_mhs	 		= $this->input->post('nama_mhs');
		$jenis_kelamin 		= $this->input->post('jenis_kelamin');
		$tempat_lahir 		= $this->input->post('tempat_lahir');
		$tanggal_lahir 		= $this->input->post('tanggal_lahir');
		$agama 				= $this->input->post('agama');
		$alamat 			= $this->input->post('alamat');
		$nama_ayah 			= $this->input->post('nama_ayah');
		$pekerjaan_ayah 	= $this->input->post('pekerjaan_ayah');
		$nama_ibu 			= $this->input->post('nama_ibu');
		$pekerjaan_ibu 		= $this->input->post('pekerjaan_ibu');
		$nama_kelas 		= $this->input->post('nama_kelas');
		$angkatan 			= $this->input->post('angkatan');
		$nip	 			= $this->input->post('nip');
		$id_progdi 			= $this->input->post('id_progdi');
		$foto 				= $this->input->post('foto');
	 
		$data = array(
			'nama_mhs'		=>$this->input->post('nama_mhs'),
			'jenis_kelamin'	=>$this->input->post('jenis_kelamin'),
			'tempat_lahir'	=>$this->input->post('tempat_lahir'),
			'tanggal_lahir'	=>$this->input->post('tanggal_lahir'),
			'agama'			=>$this->input->post('agama'),
			'alamat'		=>$this->input->post('alamat'),
			'nama_ayah'		=>$this->input->post('nama_ayah'),
			'pekerjaan_ayah'=>$this->input->post('pekerjaan_ayah'),
			'nama_ibu'		=>$this->input->post('nama_ibu'),
			'pekerjaan_ibu'	=>$this->input->post('pekerjaan_ibu'),
			'nama_kelas'	=>$this->input->post('nama_kelas'),
			'angkatan'		=>$this->input->post('angkatan'), 
			'nip'			=>$this->input->post('nip'),
			'id_progdi'	=>$this->input->post('id_progdi'),
			'foto'			=>$this->input->post('foto')
		);
		
	 
		$where = array(
			'nim' => $nim
		);
	 
		$this->M_mahasiswa->update_data($where,$data,'mahasiswa');
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
		$data['dosen'] 		= $this->M_mahasiswa->tampil_data_dosen($nim);
		$data['progdi'] 	= $this->M_mahasiswa->tampil_data_progdi($nim);
		$data['mahasiswa'] 	= $this->M_mahasiswa->detail_data($where,'nim')->result();
		$this->template->views('mahasiswa/form_detail',$data);
	}

}