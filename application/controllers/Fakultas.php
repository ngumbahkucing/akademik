<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Fakultas extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_fakultas');
	}

	public function index() 
	{
		$data['userdata'] 		= $this->userdata;
		$data['dataFakultas']	= $this->M_fakultas->tampil_data();

		$data['page'] 			= "fakultas";
		$data['judul'] 			= "Data Master";
		$data['deskripsi'] 		= "Manage Data Fakultas";

		$this->template->views('fakultas/index', $data);
	}

	public function add() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "fakultas";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Fakultas";

		$this->template->views('fakultas/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'nama_fakultas'	=>$this->input->post('nama_fakultas')
		);
		
		$this->M_fakultas->input_data($data);
		redirect('fakultas/index');
	}

	function edit($id_fakultas)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "fakultas";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Fakultas";

		$where 				= array('id_fakultas' => $id_fakultas);
		$data['fakultas'] 	= $this->M_fakultas->edit_data($where,'fakultas')->result();
		$this->template->views('fakultas/form_edit',$data);
	}

	function update()
	{
		$id_fakultas 		= $this->input->post('id_fakultas');
		$nama_fakultas 		= $this->input->post('nama_fakultas');
	 
		$data = array(
			'nama_fakultas'	=>$this->input->post('nama_fakultas')
		);
		
		$where = array(
			'id_fakultas' 	=> $id_fakultas
		);
	 
		$this->M_fakultas->update_data($where,$data,'fakultas');
		redirect('fakultas/index');
	}

	public function delete($id_fakultas) 
	{
		$data = array('id_fakultas' => $id_fakultas);
		$this->M_fakultas->hapus_data($data,'fakultas');
		redirect('fakultas/index');
	}

	function detail($id_fakultas)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "fakultas";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Fakultas";

		$data['f'] 			= $this->M_fakultas->detail_data1($id_fakultas,'fakultas');
		$data['fakultas'] 	= $this->M_fakultas->detail_data($id_fakultas,'fakultas');
		$this->template->views('fakultas/form_detail',$data);
	}
}