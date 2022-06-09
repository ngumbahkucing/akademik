<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_fakultas extends CI_Model {

	function tampil_data()
	{
		$sql = "SELECT * FROM fakultas";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function input_data($data)
	{
		$this->db->insert('fakultas',$data);
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
		$this->db->delete('fakultas');
	}

	public function detail_data($id_fakultas)
	{
		$query = $this->db->query("SELECT * FROM jurusan
								LEFT JOIN fakultas ON fakultas.id_fakultas =jurusan.id_fakultas
								WHERE jurusan.id_fakultas = '$id_fakultas' ");
   		return $query->result();
   	}

   	public function detail_data1($id_fakultas)
	{
		$query = $this->db->query("SELECT * FROM fakultas
								WHERE id_fakultas = '$id_fakultas' ");
   		return $query->result();
   	}
}