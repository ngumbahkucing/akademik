<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_informasi extends CI_Model {

	function tampil_data()
	{
		$sql = "SELECT * FROM informasi
				ORDER BY tanggal DESC";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function input_data($data)
	{
		$this->db->insert('informasi',$data);
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
		$this->db->delete('informasi');
	}

	public function detail_data($where)
	{
		return $this->db->get_where('informasi',$where);
	}
}