<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_thn_ajaran extends CI_Model {

	function tampil_data()
	{
		$sql = "SELECT * FROM thn_ajaran order by id_tahun desc";

		$data = $this->db->query($sql);

		return $data->result();
	}
        
        function get_data($id)
	{
		$sql = "SELECT * FROM thn_ajaran where id_tahun = $id";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function input_data($data)
	{
		$this->db->insert('thn_ajaran',$data);
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
		$this->db->delete('thn_ajaran');
	}
}