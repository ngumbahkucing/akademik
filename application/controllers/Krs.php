<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Krs extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_krs');
		$this->load->model('M_mahasiswa');
		$this->load->model('M_jadwal');
		$this->load->model('M_thn_ajaran');
	}

	public function index() 
	{
		$data['userdata'] 	= $this->userdata;
		$id 				= $this->userdata->nip;
		$data['dataKrs'] 	= $this->M_krs->tampil_data($id);

		$data['page'] 		= "krs";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data KRS";

		$this->template->views('krs/index', $data, $id);
	}

	public function krs_data() 
	{
		$data['userdata'] 	= $this->userdata;
		$id 				= $this->userdata->nim;
		$data['dataKrs'] 	= $this->M_krs->tampil_data3($id);

		$data['page'] 		= "krs";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data KRS";

		$this->template->views('krs/index', $data, $id);
	}
        
    public function input() 
	{
		$data['userdata']	= $this->userdata;
		$id 				= $this->userdata->nim;
		$data['page'] 		= "krs";
		$data['judul'] 		= "Data KRS";
		$data['deskripsi'] 	= "Data KRS Baru";

		$data['thn_ajaran'] = $this->M_jadwal->tampil_data1();
		$data['mahasiswa'] 	= $this->M_mahasiswa->tampil_dataku($id);
		$this->template->views('krs/form_new', $data, $id);
	}
        
    public function input_insert() 
	{
        $cek = 	$this->M_krs->cek_data(
    	        $this->input->post('id_tahun'), 
                $this->input->post('nim'), 
                $this->input->post('semester')
        );

        if ($cek)
        {
            foreach ($cek as $c)
        	{
                $data['id_krs'] = $c->id_krs;
            }
        }
        else
        {
			$data = array(
            	    'id_tahun'	=> $this->input->post('id_tahun'),
                    'nim'		=> $this->input->post('nim'),
                    'semester'	=> $this->input->post('semester')
            );
		
	        $this->M_krs->input_insert($data);
	        $cek = $this->M_krs->getLastID();
	        foreach ($cek as $c)
	        {
	            $data['id_krs'] = $c->id_krs;
	        }
    	}
                
        $data['userdata']		= $this->userdata;
        $data['page'] 			= "krs";
        $data['judul'] 			= "Data KRS";
        $data['deskripsi'] 		= "Data KRS Baru";
        $where                 	= array('nim' => $this->input->post('nim'));
        $data['mahasiswa'] 		= $this->M_mahasiswa->detail_data($where)->result();
        $data['tahun_ajaran'] 	= $this->M_thn_ajaran->get_data($this->input->post('id_tahun'));
        $data['semester'] 		= $this->input->post('semester');
        $data['jadwal']         = $this->M_jadwal->tampil_data2($this->input->post('id_tahun'));
        $data['krs_detail']     = $this->M_krs->tampil_data_krs($data['id_krs']);
                
        //echo var_dump($data);
        $this->template->views('krs/form_add', $data);
	}

	public function add() 
	{
        $cek =  $this->M_krs->cek_krs(
                $this->input->post('id_jadwal'), 
                $this->input->post('nim'), 
                $this->input->post('id_krs')
        );
            
        //echo $cek; exit;
            
        if ($this->input->post('delete') > 0)
        {
            $this->delete($this->input->post('delete'));
        }
        if ($cek > 0)
        {
            $data['error'] = "Data KRS sudah ada";
        }
        else
        {
            $data = array(
			'id_jadwal'		=>$this->input->post('id_jadwal'),
			'nim'           =>$this->input->post('nim'),
			'id_krs'		=>$this->input->post('id_krs')
			);

        	$this->M_krs->input_krs_detail($data);
        }
            
		$data['userdata']		= $this->userdata;
		$data['page'] 			= "krs";
        $data['judul'] 			= "Data KRS";
        $data['deskripsi'] 		= "Data KRS Baru";
        $data['id_krs'] 		= $this->input->post('id_krs');
        $where              	= array('nim' => $this->input->post('nim'));
                
		$data['mahasiswa'] 		= $this->M_mahasiswa->detail_data($where)->result();
        $data['tahun_ajaran'] 	= $this->M_thn_ajaran->get_data($this->input->post('id_tahun'));
        $data['semester'] 		= $this->input->post('semester');
        $data['jadwal']         = $this->M_jadwal->tampil_data2();
        $data['krs_detail']     = $this->M_krs->tampil_data_krs($this->input->post('id_krs'));
                
		$this->template->views('krs/form_add', $data);
	}

    public function detail($id) 
	{
        $cek = $this->M_krs->tampil_data_krs($id); 
            
		$data['userdata']		= $this->userdata;
		$data['page'] 			= "krs";
        $data['judul'] 			= "Data KRS";
        $data['deskripsi'] 		= "Data KRS Baru";
        $data['id_krs'] 		= $id;
        $where              	= array('nim' => $cek[0]->nim);
                
		$data['mahasiswa'] 		= $this->M_mahasiswa->detail_data($where)->result();
        $data['tahun_ajaran'] 	= $this->M_thn_ajaran->get_data($cek[0]->id_tahun);
        $data['semester'] 		= $cek[0]->semester;
        $data['jadwal']     	= $this->M_jadwal->tampil_data();
        $data['krs_detail'] 	= $this->M_krs->tampil_data_krs($id);
                
		$this->template->views('krs/form_detail', $data);
	}

	public function cetak($id) 
	{
        $cek = $this->M_krs->tampil_data_krs($id); 
            
		$data['userdata']		= $this->userdata;
		$data['page'] 			= "krs";
        $data['judul'] 			= "Data KRS";
        $data['deskripsi'] 		= "Data KRS Baru";
        $data['id_krs'] 		= $id;
        $where              	= array('nim' => $cek[0]->nim);
                
		$data['mahasiswa'] 		= $this->M_mahasiswa->detail_data($where)->result();
        $data['tahun_ajaran'] 	= $this->M_thn_ajaran->get_data($cek[0]->id_tahun);
        $data['semester'] 		= $cek[0]->semester;
        $data['jadwal']     	= $this->M_jadwal->tampil_data();
        $data['krs_detail'] 	= $this->M_krs->tampil_data_krs($id);
                
		$this->load->view('krs/form_cetak', $data);
	}

    public function save()
	{
		$data = array(
			'id_tahun'		=>$this->input->post('id_tahun'),
			'id_makul'		=>$this->input->post('id_makul'),
			'nip'			=>$this->input->post('nip'),
			'semester'		=>$this->input->post('semester'),
			'jenis'			=>$this->input->post('jenis'),
			'hari'			=>$this->input->post('hari'),
			'jam'			=>$this->input->post('jam'),
			'id_ruang'		=>$this->input->post('id_ruang')
		);
		
		$this->M_jadwal->input_data($data);
		redirect('jadwal/index');
	}

	function edit($nim)
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "mahasiswa";
		$data['judul'] 		= "Data Master";
		$data['deskripsi'] 	= "Manage Data Mahasiwa";

		$where 				= array('nim' => $nim);
		$data['mahasiswa'] 	= $this->M_mahasiswa->edit_data($where,'mahasiswa')->result();
		$this->template->views('mahasiswa/form_edit',$data);
	}

	function update()
	{
		$nim 				= $this->input->post('nim');
		$nama_mhs	 		= $this->input->post('nama_mhs');
		$jenis_kelamin 		= $this->input->post('jenis_kelamin');
		$tempat_lahir 		= $this->input->post('tempat_lahir');
		$tanggal_lahir 		= $this->input->post('tanggal_lahir');
		$agama 				= $this->input->post('agama');
		$alamat 			= $this->input->post('alamat');
		$nama_ayah 			= $this->input->post('nama_ayah');
		$pekerjaan_ayah 	= $this->input->post('pekerjaan_ayah');
		$nama_ibu 			= $this->input->post('nama_ibu');
		$pekerjaan_ibu 		= $this->input->post('pekerjaan_ibu');
		$nama_kelas 		= $this->input->post('nama_kelas');
		$angkatan 			= $this->input->post('angkatan');
		//$nis	 			= $this->input->post('nis');
		//$id_progdi 			= $this->input->post('id_progdi');
		$foto 				= $this->input->post('foto');
	 
		$data = array(
			'password'		=>md5($this->input->post('nim')),
			'nama_mhs'		=>$this->input->post('nama_mhs'),
			'jenis_kelamin'	=>$this->input->post('jenis_kelamin'),
			'tempat_lahir'	=>$this->input->post('tempat_lahir'),
			'tanggal_lahir'	=>$this->input->post('tanggal_lahir'),
			'agama'			=>$this->input->post('agama'),
			'alamat'		=>$this->input->post('alamat'),
			'nama_ayah'		=>$this->input->post('nama_ayah'),
			'pekerjaan_ayah'=>$this->input->post('pekerjaan_ayah'),
			'nama_ibu'		=>$this->input->post('nama_ibu'),
			'pekerjaan_ibu'	=>$this->input->post('pekerjaan_ibu'),
			'nama_kelas'	=>$this->input->post('nama_kelas'),
			'angkatan'		=>$this->input->post('angkatan'), 
			//'nis'			=>$this->input->post('nis'),
			//'id_progdi'	=>$this->input->post('id_progdi'),
			'foto'			=>$this->input->post('foto')
		);
		
	 
		$where = array(
			'nim' => $nim
		);
	 
		$this->M_mahasiswa->update_data($where,$data,'mahasiswa');
		redirect('mahasiswa/index');
	}

	public function delete($id) 
	{
		$data = array('id_detailkrs' => $id);
		$this->M_krs->hapus_data($data,'krs_detail');
	}
        
    public function approve($id) 
	{
		$data = array('status' => 1);
		$this->M_krs->update_data(array('id_krs'=>$id),$data);
        
        redirect('krs/index');
	}

}