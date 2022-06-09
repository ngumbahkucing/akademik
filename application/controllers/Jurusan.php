<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jurusan extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_jurusan');
		$this->load->model('M_fakultas');
	}

	public function index() 
	{
		$data['userdata'] 		= $this->userdata;
		$data['dataJurusan'] 	= $this->M_jurusan->tampil_data();

		$data['page'] 			= "jurusan";
		$data['judul'] 			= "Data Master";
		$data['deskripsi'] 		= "Manage Data Jurusan";

		$this->template->views('jurusan/index', $data);
	}

	public function add() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "jurusan";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Jurusan";

		$data['fakultas'] 	= $this->M_fakultas->tampil_data();
		$data['jurusan'] 	= $this->M_jurusan->tampil_data();
		$this->template->views('jurusan/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'nama_jurusan'	=>$this->input->post('nama_jurusan'),
			'id_fakultas'	=>$this->input->post('id_fakultas')
		);
		
		$this->M_jurusan->input_data($data);
		redirect('jurusan/index');
	}

	function edit($id_jurusan)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "jurusan";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Jurusan";

		$where 				= array('id_jurusan' => $id_jurusan);
		$data['fakultas'] 	= $this->M_fakultas->tampil_data($id_jurusan);
		$data['jurusan'] 	= $this->M_jurusan->edit_data($where,'jurusan')->result();
		$this->template->views('jurusan/form_edit',$data);
	}

	function update()
	{
		$id_jurusan 		= $this->input->post('id_jurusan');
		$nama_jurusan 		= $this->input->post('nama_jurusan');
		$id_fakultas 		= $this->input->post('id_fakultas');
	 
		$data = array(
			'nama_jurusan'	=>$this->input->post('nama_jurusan'),
			'id_fakultas'	=>$this->input->post('id_fakultas')
		);
		
		$where = array(
			'id_jurusan' 	=> $id_jurusan
		);
	 
		$this->M_jurusan->update_data($where,$data,'jurusan');
		redirect('jurusan/index');
	}

	public function delete($id_jurusan) 
	{
		$data = array('id_jurusan' => $id_jurusan);
		$this->M_jurusan->hapus_data($data,'jurusan');
		redirect('jurusan/index');
	}

	function detail($id_jurusan)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "jurusan";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Jurusan";

		$data['j'] 			= $this->M_jurusan->detail_data1($id_jurusan,'jurusan');
		$data['jurusan'] 	= $this->M_jurusan->detail_data($id_jurusan,'jurusan');
		$this->template->views('jurusan/form_detail',$data);
	}
}