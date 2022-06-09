<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_khs extends CI_Model {

	public function cetak($id)
	{
		$sql = "SELECT * FROM krs_detail
				LEFT JOIN mahasiswa ON mahasiswa.nim = krs_detail.nim
				LEFT JOIN progdi ON progdi.id_progdi = mahasiswa.id_progdi
				LEFT JOIN jurusan ON jurusan.id_jurusan = progdi.id_jurusan
				LEFT JOIN fakultas ON fakultas.id_fakultas = jurusan.id_fakultas
				LEFT JOIN krs ON krs.id_krs = krs_detail.id_krs
				LEFT JOIN jadwal ON jadwal.id_jadwal = krs_detail.id_jadwal
				LEFT JOIN makul ON makul.id_makul = jadwal.id_makul
				LEFT JOIN dosen ON dosen.nip = jadwal.nip
				LEFT JOIN khs ON khs.id_krs = krs.id_krs
				WHERE krs_detail.nim = '$id'";

		$data = $this->db->query($sql);

		return $data->result();
	}

	public function wali_dosen($id)
	{
		$sql = "SELECT * FROM mahasiswa
				LEFT JOIN dosen ON dosen.nip = mahasiswa.nip
				WHERE nim = '$id'";

		$data = $this->db->query($sql);

		return $data->result();
	}
        
    function input_nilai($data)
	{
		$this->db->insert('khs',$data);
	}
        
    function delete_nilai($id_krs)
	{
        $this->db->where(array("id_krs"=>$id_krs));
		$this->db->delete('khs');	
               
    }
}