<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jadwal extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_jadwal');
		$this->load->model('M_thn_ajaran');
		$this->load->model('M_makul');
		$this->load->model('M_ruang');
		$this->load->model('M_dosen');
	}

	public function index() 
	{
		$data['userdata'] 	= $this->userdata;
		$data['dataJadwal'] = $this->M_jadwal->tampil_data();

		$data['page'] 		= "jadwal";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Jadwal";

		$this->template->views('jadwal/index', $data);
	}

	public function add() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "jadwal";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Jadwal";

		$data['thn_ajaran'] = $this->M_thn_ajaran->tampil_data();
		$data['makul'] 		= $this->M_makul->tampil_data();
		$data['ruang'] 		= $this->M_ruang->tampil_data();
		$data['dosen'] 		= $this->M_dosen->tampil_data();
		$this->template->views('jadwal/form_add', $data);
	}

	public function save()
	{
		$data = array(
			'id_tahun'		=>$this->input->post('id_tahun'),
			'id_makul'		=>$this->input->post('id_makul'),
			'nip'			=>$this->input->post('nip'),
			'semester'		=>$this->input->post('semester'),
			'jenis'			=>$this->input->post('jenis'),
			'hari'			=>$this->input->post('hari'),
			'jam'			=>$this->input->post('jam'),
			'id_ruang'		=>$this->input->post('id_ruang')
		);
		
		$this->M_jadwal->input_data($data);
		redirect('jadwal/index');
	}

	function edit($id)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "jadwal";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Jadwal";

		$where              = array('id_jadwal' => $id);
		$data['jadwal'] 	= $this->M_jadwal->edit_data($where,'jadwal')->result();
        $data['thn_ajaran'] = $this->M_thn_ajaran->tampil_data();
		$data['makul'] 		= $this->M_makul->tampil_data();
		$data['ruang'] 		= $this->M_ruang->tampil_data();
		$data['dosen'] 		= $this->M_dosen->tampil_data();
		$this->template->views('jadwal/form_edit',$data);
	}

	function update()
	{
		$data = array(
			'id_tahun'		=>$this->input->post('id_tahun'),
			'id_makul'		=>$this->input->post('id_makul'),
			'nip'			=>$this->input->post('nip'),
			'semester'		=>$this->input->post('semester'),
			'jenis'			=>$this->input->post('jenis'),
			'hari'			=>$this->input->post('hari'),
			'jam'			=>$this->input->post('jam'),
			'id_ruang'		=>$this->input->post('id_ruang')
		);
		
		
		
	 
		$where = array(
			'id_jadwal' => $this->input->post('id_jadwal')
		);
	 
		$this->M_jadwal->update_data($where,$data,'jadwal');
		redirect('jadwal/index');
	}

	public function delete($id_jadwal) 
	{
		$data = array('id_jadwal' => $id_jadwal);
		$this->M_jadwal->hapus_data($data,'jadwal');
		redirect('jadwal/index');
	}

	public function laporan() 
	{
		$data['userdata'] 	= $this->userdata;

		$data['page'] 		= "laporan jadwal";
		$data['judul'] 		= "Laporan";
		$data['deskripsi'] 	= "Manage Laporan Jadwal Kuliah";

		$data['dataJadwal'] = $this->M_jadwal->cetak();
		$this->template->views('jadwal/laporan', $data);
	}

	public function cetak()
	{
		$data['dataJadwal'] = $this->M_jadwal->cetak();
		$this->load->view('jadwal/cetak', $data);
	}

	public function jadwalku() 
	{
		$data['userdata'] 	= $this->userdata;
		$id 				= $this->userdata->nip;

		$data['page'] 		= "jadwalku";
		$data['judul'] 		= "Jadwal";
		$data['deskripsi'] 	= "Cetak Jadwal Kuliah";

		$data['dataJadwal'] = $this->M_jadwal->cetak1($id);
		$this->template->views('jadwal/jadwalku', $data, $id);
	}

	public function cetak1()
	{
		$data['userdata'] 	= $this->userdata;
		$id 				= $this->userdata->nip;
		
		$data['dataJadwal'] = $this->M_jadwal->cetak1($id);
		$this->load->view('jadwal/cetak', $data, $id);
	}

}