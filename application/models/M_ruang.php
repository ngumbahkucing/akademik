<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_ruang extends CI_Model {

	function tampil_data()
	{
		$sql = "SELECT * FROM ruang";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function input_data($data)
	{
		$this->db->insert('ruang',$data);
	}

	function edit_data($where,$table)
	{		
		return $this->db->get_where($table,$where);
	}

	function update_data($where,$data,$table)
	{
		$this->db->where($where);
		$this->db->update($table,$data);
	}

	public function hapus_data($data) 
	{
		$this->db->where($data);
		$this->db->delete('ruang');
	}
}