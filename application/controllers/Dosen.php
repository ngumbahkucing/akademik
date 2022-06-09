<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dosen extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_dosen');
	}

	public function index() 
	{
		$data['userdata'] 	= $this->userdata;
		$data['dataDosen'] 	= $this->M_dosen->tampil_data();

		$data['page'] 		= "dosen";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Dosen";

		$this->template->views('dosen/index', $data);
	}

	public function add() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "dosen";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Dosen";

		$this->template->views('dosen/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'nip'			=> $this->input->post('nip'),
			'password'		=> md5($this->input->post('nip')),
			'nidn'			=> $this->input->post('nidn'),
			'nama_dosen'	=> $this->input->post('nama_dosen'),
			'jenis_kelamin'	=> $this->input->post('jenis_kelamin'),
			'tempat_lahir'	=> $this->input->post('tempat_lahir'),
			'tanggal_lahir'	=> $this->input->post('tanggal_lahir'),
			'agama'			=> $this->input->post('agama'),
			'alamat'		=> $this->input->post('alamat'),
			'foto'			=> $this->input->post('foto')
		);
		
		$this->M_dosen->input_data($data);
		redirect('dosen/index');
	}

	function edit($nis)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "dosen";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Dosen";

		$where 				= array('nip' => $nis);
		$data['dosen'] 		= $this->M_dosen->edit_data($where,'dosen')->result();
		$this->template->views('dosen/form_edit',$data);
	}

	function update()
	{
		$nis 			= $this->input->post('nip');
		$nidn 			= $this->input->post('nidn');
		$nama_dosen 	= $this->input->post('nama_dosen');
		$jenis_kelamin 	= $this->input->post('jenis_kelamin');
		$tempat_lahir 	= $this->input->post('tempat_lahir');
		$tanggal_lahir 	= $this->input->post('tanggal_lahir');
		$agama 			= $this->input->post('agama');
		$alamat 		= $this->input->post('alamat');
		$foto 			= $this->input->post('foto');
	 
		$data = array(
			'nidn'			=> $this->input->post('nidn'),
			'nama_dosen'	=> $this->input->post('nama_dosen'),
			'jenis_kelamin'	=> $this->input->post('jenis_kelamin'),
			'tempat_lahir'	=> $this->input->post('tempat_lahir'),
			'tanggal_lahir'	=> $this->input->post('tanggal_lahir'),
			'agama'			=> $this->input->post('agama'),
			'alamat'		=> $this->input->post('alamat'),
			'foto'			=> $this->input->post('foto')
		);
		
	 
		$where = array(
			'nip' => $nis
		);
	 
		$this->M_dosen->update_data($where,$data,'dosen');
		redirect('dosen/index');
	}

	public function delete($nip) 
	{
		$data = array('nip' => $nip);
		$this->M_dosen->hapus_data($data,'dosen');
		redirect('dosen/index');
	}

	function detail($nis)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "dosen";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Dosen";

		$where                  = array('nip' => $nis);
		$data['dosen'] 		= $this->M_dosen->detail_data($where,'dosen')->result();
		$this->template->views('dosen/form_detail',$data);
	}


}