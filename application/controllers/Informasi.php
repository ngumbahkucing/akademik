<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Informasi extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_informasi');
	}

	public function index() 
	{
		$data['userdata'] 	= $this->userdata;
		$data['dataInformasi']	= $this->M_informasi->tampil_data();

		$data['page'] 		= "thn_ajaran";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Informasi";

		$this->template->views('informasi/index', $data);
	}

	public function add() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "informasi";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Informasi";

		$this->template->views('informasi/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'tanggal'		=>$this->input->post('tanggal'),
			'judul'			=>$this->input->post('judul'),
			'isi'			=>$this->input->post('isi')
		);
		
		$this->M_informasi->input_data($data);
		redirect('informasi/index');
	}

	function edit($id_informasi)
	{
		$data['userdata']		= $this->userdata;
		$data['page'] 			= "informasi";
		$data['judul'] 			= "Data Master";
		$data['deskripsi'] 		= "Manage Data Informasi";

		$where 					= array('id_informasi' => $id_informasi);
		$data['informasi']	 	= $this->M_informasi->edit_data($where,'informasi')->result();
		$this->template->views('informasi/form_edit',$data);
	}

	function update()
	{
		$id_informasi 			= $this->input->post('id_informasi');
		$tanggal		 		= $this->input->post('tanggal');
		$judul		 			= $this->input->post('judul');
		$isi		 			= $this->input->post('isi');
	 
		$data = array(
			'id_informasi'		=>$this->input->post('id_informasi'),
			'tanggal'			=>$this->input->post('tanggal'),
			'judul'				=>$this->input->post('judul'),
			'isi'				=>$this->input->post('isi')
		);
		
		$where = array(
			'id_informasi' 		=> $id_informasi
		);
	 
		$this->M_informasi->update_data($where,$data,'informasi');
		redirect('informasi/index');
	}

	public function delete($id_informasi) 
	{
		$data = array('id_informasi' => $id_informasi);
		$this->M_informasi->hapus_data($data,'informasi');
		redirect('informasi/index');
	}

	function detail($id_informasi)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "informasi";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Informasi";

		$where 				= array('id_informasi' => $id_informasi);
		$data['informasi'] 	= $this->M_informasi->detail_data($where,'informasi')->result();
		$this->template->views('informasi/form_detail',$data);
	}
}