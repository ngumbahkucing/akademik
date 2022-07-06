<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_dosen extends CI_Model {

	function tampil_data()
	{
		$sql = "SELECT * FROM dosen order by nama_dosen asc ";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function input_data($data)
	{
		$this->db->insert('dosen',$data);
	}

	function edit_data($where,$table)
	{		
		return $this->db->get_where($table,$where);
	}

	function update_data($where,$data)
	{
		$this->db->where($where);
		$this->db->update('dosen',$data);
	}

	public function hapus_data($data) 
	{
		$this->db->where($data);
		$this->db->delete('dosen');
	}

	public function detail_data($where)
	{
		return $this->db->get_where('dosen',$where);
	}

}