<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_mahasiswa extends CI_Model {

	function tampil_data()
	{
		$sql 	= "SELECT * FROM mahasiswa";

		$data 	= $this->db->query($sql);

		return $data->result();
	}

	function tampil_dataku($id)
	{
		$sql 	= "SELECT * FROM mahasiswa
				   WHERE nim = '$id'";

		$data 	= $this->db->query($sql);

		return $data->result();
	}

	function tampil_data_dosen($nim)
	{
		$sql 	= "SELECT * FROM mahasiswa
				   LEFT JOIN dosen ON dosen.nip = mahasiswa.nip
				   WHERE mahasiswa.nim = '$nim'";

		$data 	= $this->db->query($sql);

		return $data->result();
	}

	function tampil_data_progdi($nim)
	{
		$sql 	= "SELECT * FROM mahasiswa
				   LEFT JOIN progdi ON progdi.id_progdi = mahasiswa.id_progdi
				   WHERE mahasiswa.nim = '$nim'";

		$data 	= $this->db->query($sql);

		return $data->result();
	}

	function input_data($data)
	{
		$this->db->insert('mahasiswa',$data);
	}

	function edit_data($where,$table)
	{		
		return $this->db->get_where($table,$where);
	}

	function update_data($where,$data)
	{
		$this->db->where($where);
		$this->db->update('mahasiswa',$data);
	}

	public function hapus_data($data) 
	{
		$this->db->where($data);
		$this->db->delete('mahasiswa');
	}

	public function detail_data($where)
	{
		return $this->db->get_where('mahasiswa',$where);
	}
}