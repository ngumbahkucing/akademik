<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->model('M_auth');
		$this->load->model('M_informasi');
	}
	
	public function index() {
		$session = $this->session->userdata('status');

		if ($session == '') {
			$data['dataInformasi']	= $this->M_informasi->tampil_data();
			$this->load->view('login',$data);
		} else {
			redirect('Home');
		}
	}

	public function login() {
		$this->form_validation->set_rules('username', 'Username', 'required|min_length[4]|max_length[15]');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run() == TRUE) {
			$username 	= trim($_POST['username']);
			$password 	= trim($_POST['password']);
			$level 		= trim($_POST['level']);

			$data = $this->M_auth->login($username, $password, $level);

			if ($data == false) {
				$this->session->set_flashdata('error_msg', 'Username / Password Anda Salah.');
				redirect('Auth');
			} else {
				$session = [
					'userdata' 	=> $data,
					'status' 	=> "Loged in",
					'level' 	=> $level
				];
				$this->session->set_userdata($session);
				redirect('Home');
			}
		} else {
			$this->session->set_flashdata('error_msg', validation_errors());
			redirect('Auth');
		}
	}

	public function logout() {
		$this->session->sess_destroy();
		redirect('Auth');
	}

	function detail($id_informasi)
	{
		$where 				= array('id_informasi' => $id_informasi);
		$data['informasi'] 	= $this->M_informasi->detail_data($where,'informasi')->result();
		$this->load->views('login',$data);
	}
}