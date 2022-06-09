<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ruang extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_ruang');
	}

	public function index() 
	{
		$data['userdata'] 	= $this->userdata;
		$data['dataRuang']	= $this->M_ruang->tampil_data();

		$data['page'] 		= "ruang";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Ruang";

		$this->template->views('ruang/index', $data);
	}

	public function add() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "ruang";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Ruang";

		$this->template->views('ruang/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'nama_ruang'	=>$this->input->post('nama_ruang'),
			'kapasitas'		=>$this->input->post('kapasitas')
		);
		
		$this->M_ruang->input_data($data);
		redirect('ruang/index');
	}

	function edit($id_ruang)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "ruang";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Ruang";

		$where 				= array('id_ruang' => $id_ruang);
		$data['ruang'] 		= $this->M_ruang->edit_data($where,'ruang')->result();
		$this->template->views('ruang/form_edit',$data);
	}

	function update()
	{
		$id_ruang 			= $this->input->post('id_ruang');
		$nama_ruang 		= $this->input->post('nama_ruang');
		$kapasitas 			= $this->input->post('kapasitas');
	 
		$data = array(
			'nama_ruang'	=>$this->input->post('nama_ruang'),
			'kapasitas'		=>$this->input->post('kapasitas')
		);
		
		$where = array(
			'id_ruang' 		=> $id_ruang
		);
	 
		$this->M_ruang->update_data($where,$data,'ruang');
		redirect('ruang/index');
	}

	public function delete($id_ruang) 
	{
		$data = array('id_ruang' => $id_ruang);
		$this->M_ruang->hapus_data($data,'ruang');
		redirect('ruang/index');
	}
}