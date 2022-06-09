<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Makul extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_makul');
	}

	public function index() 
	{
		$data['userdata'] 	= $this->userdata;
		$data['dataMakul']	= $this->M_makul->tampil_data();

		$data['page'] 		= "makul";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Mata Kuliah";

		$this->template->views('makul/index', $data);
	}

	public function add() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "makul";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Mata Kuliah";

		$this->template->views('makul/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'nama_makul'	=>$this->input->post('nama_makul')
			,'sks'	=>$this->input->post('sks')
		);
		
		$this->M_makul->input_data($data);
		redirect('makul/index');
	}

	function edit($id_makul)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "makul";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Mata Kuliah";

		$where 				= array('id_makul' => $id_makul);
		$data['makul'] 		= $this->M_makul->edit_data($where,'makul')->result();
		$this->template->views('makul/form_edit',$data);
	}

	function update()
	{
		$id_makul 			= $this->input->post('id_makul');
		$nama_makul 		= $this->input->post('nama_makul');
	 
		$data = array(
			'nama_makul'	=>$this->input->post('nama_makul')
			,'sks'	=>$this->input->post('sks')
		);
		
		$where = array(
			'id_makul' 		=> $id_makul
		);
	 
		$this->M_makul->update_data($where,$data,'makul');
		redirect('makul/index');
	}

	public function delete($id_makul) 
	{
		$data = array('id_makul' => $id_makul);
		$this->M_makul->hapus_data($data,'makul');
		redirect('makul/index');
	}
}