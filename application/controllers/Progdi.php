<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Progdi extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_progdi');
		$this->load->model('M_jurusan');
	}

	public function index() 
	{
		$data['userdata'] 		= $this->userdata;
		$data['dataProgdi'] 	= $this->M_progdi->tampil_data();

		$data['page'] 			= "progdi";
		$data['judul'] 			= "Data Master";
		$data['deskripsi'] 		= "Manage Data Progdi";

		$this->template->views('progdi/index', $data);
	}

	public function add() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "progdi";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Progdi";

		$data['progdi'] 	= $this->M_progdi->tampil_data();
		$data['jurusan'] 	= $this->M_jurusan->tampil_data();
		$this->template->views('progdi/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'nama_progdi'	=>$this->input->post('nama_progdi'),
			'id_jurusan'	=>$this->input->post('id_jurusan')
		);
		
		$this->M_progdi->input_data($data);
		redirect('progdi/index');
	}

	function edit($id_progdi)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "progdi";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Progdi";

		$where 				= array('id_progdi' => $id_progdi);
		$data['jurusan'] 	= $this->M_jurusan->tampil_data($id_progdi);
		$data['progdi'] 	= $this->M_progdi->edit_data($where,'progdi')->result();
		$this->template->views('progdi/form_edit',$data);
	}

	function update()
	{
		$id_progdi 			= $this->input->post('id_progdi');
		$nama_progdi 		= $this->input->post('nama_progdi');
		$id_jurusan 		= $this->input->post('id_jurusan');
	 
		$data = array(
			'nama_progdi'	=>$this->input->post('nama_progdi'),
			'id_jurusan'	=>$this->input->post('id_jurusan')
		);
		
		$where = array(
			'id_progdi' 	=> $id_progdi
		);
	 
		$this->M_progdi->update_data($where,$data,'progdi');
		redirect('progdi/index');
	}

	public function delete($id_progdi) 
	{
		$data = array('id_progdi' => $id_progdi);
		$this->M_progdi->hapus_data($data,'progdi');
		redirect('progdi/index');
	}
}