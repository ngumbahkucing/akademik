<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_krs extends CI_Model {

	function tampil_data($id)
	{
		$sql = "SELECT a.*, b.nama_tahun, c.nama_mhs, d.nilai FROM krs a "
                        . "left join thn_ajaran b on b.id_tahun = a.id_tahun "
                        . "left join mahasiswa c on c.nim = a.nim "
                        . "left join khs d on d.id_krs = a.id_krs "
                        . "where c.nip = '$id' order by id_krs";
                

		$data = $this->db->query($sql);

		return $data->result();
	}

	function tampil_data_input_khs($id)
	{
		$sql = "SELECT a.*, b.nama_tahun, c.nama_mhs, d.nilai FROM krs a "
                        . "left join thn_ajaran b on b.id_tahun = a.id_tahun "
                        . "left join mahasiswa c on c.nim = a.nim "
                        . "left join khs d on d.id_krs = a.id_krs "
                        . "where c.nip = '$id' and a.status = 1 order by id_krs";
                

		$data = $this->db->query($sql);

		return $data->result();
	}

	function tampil_data3($id)
	{
		$sql = "SELECT krs.*,krs.status, thn_ajaran.nama_tahun, mahasiswa.nama_mhs, krs.semester FROM krs
				LEFT JOIN thn_ajaran ON thn_ajaran.id_tahun = krs.id_tahun
				LEFT JOIN mahasiswa ON mahasiswa.nim = krs.nim
				WHERE krs.nim = '$id'";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function tampil_data2($id)
	{
		$sql = "SELECT * FROM krs
				LEFT JOIN mahasiswa ON mahasiswa.nim = krs.nim
				LEFT JOIN thn_ajaran ON thn_ajaran.id_tahun = krs.id_tahun
				LEFT JOIN dosen ON dosen.nip = mahasiswa.nip
				WHERE mahasiswa.nip = '$id'";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function tampil_data1($id)
	{
		$sql = "SELECT * FROM krs
				LEFT JOIN mahasiswa ON mahasiswa.nim = krs.nim
				LEFT JOIN thn_ajaran ON thn_ajaran.id_tahun = krs.id_tahun
				WHERE krs.nim = '$id'";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function tampil_data_mhs($id)
	{
		$sql = "SELECT * FROM krs
				LEFT JOIN mahasiswa ON mahasiswa.nim = krs.nim
				LEFT JOIN thn_ajaran ON thn_ajaran.id_tahun = krs.id_tahun
				WHERE krs.nim = '$id' AND krs.status = '1'";

		$data = $this->db->query($sql);

		return $data->result();
	}
        
    function tampil_data_krs($id_krs)
	{
		$sql = "SELECT a.*, e.nama_makul, b.*, e.*, f.*, g.*, h.*,  c.semester FROM krs_detail a "
                        . "left join jadwal b on b.id_jadwal = a.id_jadwal "
                        . "left join makul e on e.id_makul = b.id_makul "
                        . "left join krs c on c.id_krs = a.id_krs "
                        . "left join mahasiswa d on d.nim = a.nim "
                        . "left join ruang f on f.id_ruang = b.id_ruang "
                        . "left join khs g on g.id_krs = c.id_krs "
                        . "left join dosen h on h.nip = b.nip "
                        . "where a.id_krs = $id_krs";

		$data = $this->db->query($sql);

		return $data->result();
	}

	function tampil_data_krs1($id_krs)
	{
		$sql = "SELECT a.*, e.nama_makul, b.*, e.*, f.*, g.*, h.* FROM krs_detail a "
                        . "left join jadwal b on b.id_jadwal = a.id_jadwal "
                        . "left join makul e on e.id_makul = b.id_makul "
                        . "left join krs c on c.id_krs = a.id_krs "
                        . "left join mahasiswa d on d.nim = a.nim "
                        . "left join ruang f on f.id_ruang = b.id_ruang "
                        . "left join khs g on g.id_krs = c.id_krs "
                        . "left join dosen h on h.nip = b.nip "
                        . "where a.id_krs = $id_krs";

		$data = $this->db->query($sql);

		return $data->result();
	}
        
    function cek_data($id_tahun, $nim, $semester)
	{
		$sql = "SELECT * FROM krs where id_tahun = '$id_tahun' and nim='$nim' and semester='$semester'";

		$data = $this->db->query($sql);

		return $data->result();
	}
        
    function getLastID()
	{
		$sql = "SELECT max(id_krs) as id_krs FROM krs";

		$data = $this->db->query($sql);

		return $data->result();
	}
        
    function cek_krs($id_jadwal, $nim, $id_krs)
	{
		$sql = "SELECT count(*) as jml FROM krs_detail where id_jadwal = $id_jadwal and nim = '$nim' and id_krs='$id_krs'";

		$data = $this->db->query($sql)->result();

		return $data[0]->jml;
	}

	function input_insert($data)
	{
		$this->db->insert('krs',$data);
	}
        
    function input_krs_detail($data)
	{
		$this->db->insert('krs_detail',$data);
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
		$this->db->update('krs',$data);
	}

	public function hapus_data($data) 
	{
		$this->db->where($data);
		$this->db->delete('krs_detail');
	}
}