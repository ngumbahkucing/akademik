<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_auth extends CI_Model {
	public function login($user, $pass, $level) {

            if ($level == 0)
            {
                $this->db->select('*');
        		$this->db->from('admin');
        		$this->db->where('username', $user);
        		$this->db->where('password', md5($pass));
            }
            elseif ($level == 1)
            {
                $this->db->select('*');
        		$this->db->from('dosen');
        		$this->db->where('nip', $user);
        		$this->db->where('password', md5($pass));
            }
            else
            {
                $this->db->select('*');
        		$this->db->from('mahasiswa');
        		$this->db->where('nim', $user);
        		$this->db->where('password', md5($pass));
            }

            $data = $this->db->get();

            if ($data->num_rows() == 1) {
                    return $data->row();
            } else {
                    return false;
            }
	}
}