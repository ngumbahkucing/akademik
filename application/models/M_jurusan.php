<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_jurusan extends CI_Model {

	function tampil_data()
	{
		$sql = "SELECT * FROM jurusan	";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function input_data($data)
	{
		$this->db->insert('jurusan',$data);
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
		$this->db->delete('jurusan');
	}

	public function detail_data($id_jurusan)
	{
		$query = $this->db->query("SELECT * FROM progdi
								LEFT JOIN jurusan ON jurusan.id_jurusan =progdi.id_jurusan
								WHERE progdi.id_jurusan = '$id_jurusan' ");
   		return $query->result();
   	}

   	public function detail_data1($id_jurusan)
	{
		$query = $this->db->query("SELECT * FROM jurusan
								WHERE id_jurusan = '$id_jurusan' ");
   		return $query->result();
   	}
}