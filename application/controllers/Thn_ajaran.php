<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Thn_ajaran extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_thn_ajaran');
	}

	public function index() 
	{
		$data['userdata'] 	= $this->userdata;
		$data['dataThn_ajaran']	= $this->M_thn_ajaran->tampil_data();

		$data['page'] 		= "thn_ajaran";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Tahun Ajaran";

		$this->template->views('thn_ajaran/index', $data);
	}

	public function add() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "thn_ajaran";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Tahun Ajaran";

		$this->template->views('thn_ajaran/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'nama_tahun'	=>$this->input->post('nama_tahun'),
			'status'		=>$this->input->post('status')
		);
		
		$this->M_thn_ajaran->input_data($data);
		redirect('thn_ajaran/index');
	}

	function edit($id_tahun)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "thn_ajaran";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Tahun Ajaran";

		$where 				= array('id_tahun' => $id_tahun);
		$data['thn_ajaran'] = $this->M_thn_ajaran->edit_data($where,'thn_ajaran')->result();
		$this->template->views('thn_ajaran/form_edit',$data);
	}

	function update()
	{
		$id_tahun 			= $this->input->post('id_tahun');
		$nama_tahun 		= $this->input->post('nama_tahun');
		$status 			= $this->input->post('status');
	 
		$data = array(
			'nama_tahun'	=>$this->input->post('nama_tahun'),
			'status'		=>$this->input->post('status')
		);
		
		$where = array(
			'id_tahun' 		=> $id_tahun
		);
	 
		$this->M_thn_ajaran->update_data($where,$data,'thn_ajaran');
		redirect('thn_ajaran/index');
	}

	public function delete($id_tahun) 
	{
		$data = array('id_tahun' => $id_tahun);
		$this->M_thn_ajaran->hapus_data($data,'thn_ajaran');
		redirect('thn_ajaran/index');
	}
}