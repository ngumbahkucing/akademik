<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_jadwal extends CI_Model {

	function tampil_data()
	{
		$sql = "SELECT * FROM jadwal
				LEFT JOIN thn_ajaran ON thn_ajaran.id_tahun = jadwal.id_tahun
				LEFT JOIN makul ON makul.id_makul = jadwal.id_makul
				LEFT JOIN dosen ON dosen.nip = jadwal.nip
				LEFT JOIN ruang ON ruang.id_ruang = jadwal.id_ruang";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function tampil_data1()
	{
		$sql = "SELECT * FROM thn_ajaran
				WHERE thn_ajaran.status = '1'";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function tampil_data2()
	{
		$sql = "SELECT * FROM jadwal
				LEFT JOIN thn_ajaran ON thn_ajaran.id_tahun = jadwal.id_tahun
				LEFT JOIN makul ON makul.id_makul = jadwal.id_makul
				LEFT JOIN dosen ON dosen.nip = jadwal.nip
				LEFT JOIN ruang ON ruang.id_ruang = jadwal.id_ruang
				WHERE thn_ajaran.status = '1'";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function input_data($data)
	{
		$this->db->insert('jadwal',$data);
	}

	function edit_data($where,$table)
	{		
		return $this->db->get_where($table,$where);
	}

	function update_data($where,$data)
	{
		$this->db->where($where);
		$this->db->update('jadwal',$data);
	}

	public function hapus_data($data) 
	{
		$this->db->where($data);
		$this->db->delete('jadwal');
	}

	function cetak()
	{
		$sql = "SELECT * FROM jadwal
				LEFT JOIN thn_ajaran ON thn_ajaran.id_tahun = jadwal.id_tahun
				LEFT JOIN makul ON makul.id_makul = jadwal.id_makul
				LEFT JOIN dosen ON dosen.nip = jadwal.nip
				LEFT JOIN ruang ON ruang.id_ruang = jadwal.id_ruang
				WHERE thn_ajaran.status = '1'";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function cetak1($id)
	{
		$sql = "SELECT * FROM jadwal
				LEFT JOIN thn_ajaran ON thn_ajaran.id_tahun = jadwal.id_tahun
				LEFT JOIN makul ON makul.id_makul = jadwal.id_makul
				LEFT JOIN dosen ON dosen.nip = jadwal.nip
				LEFT JOIN ruang ON ruang.id_ruang = jadwal.id_ruang
				WHERE thn_ajaran.status = '1' AND jadwal.nip = '$id'";

		$data = $this->db->query($sql);

		return $data->result();
	}
}