<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Khs extends AUTH_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('M_krs');
		$this->load->model('M_mahasiswa');
		$this->load->model('M_jadwal');
		$this->load->model('M_thn_ajaran');
		$this->load->model('M_khs');
	}

	public function index() 
	{
		$data['userdata'] 	= $this->userdata;
		$id 				= $this->userdata->nip;
		$data['dataKrs'] 	= $this->M_krs->tampil_data($id);

		$data['page'] 		= "khs";
		$data['judul'] 		= "Data KHS";
		$data['deskripsi'] 	= "Manage Data KHS";

		$this->template->views('khs/index', $data, $id);
	}

	public function input_nilai() 
	{
		$data['userdata'] 	= $this->userdata;
		$id 				= $this->userdata->nip;
		$data['dataKrs'] 	= $this->M_krs->tampil_data_input_khs($id);

		$data['page'] 		= "khs";
		$data['judul'] 		= "Data KHS";
		$data['deskripsi'] 	= "Manage Data KHS";

		$this->template->views('khs/index', $data, $id);
	}

	public function khs_mhs() 
	{
		$data['userdata'] 	= $this->userdata;
		$id 				= $this->userdata->nim;
		$data['dataKrs'] 	= $this->M_krs->tampil_data_mhs($id);

		$data['page'] 		= "khs";
		$data['judul'] 		= "Data KHS";
		$data['deskripsi'] 	= "Manage Data KHS";

		$this->template->views('khs/index', $data, $id);
	}
      
        
    public function input() 
	{
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "krs";
		$data['judul'] 		= "Data KRS";
		$data['deskripsi'] 	= "Data KRS Baru";

		$data['thn_ajaran'] = $this->M_thn_ajaran->tampil_data();
		$data['mahasiswa'] 	= $this->M_mahasiswa->tampil_data();
		$this->template->views('krs/form_new', $data);
	}
        
    public function input_insert() 
	{
        $cek =  $this->M_krs->cek_data(
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
        		    'id_tahun'	=>$this->input->post('id_tahun'),
                    'nim'		=>$this->input->post('nim'),
                    'semester'	=>$this->input->post('semester')
            );
		
            $this->M_krs->input_insert($data);
            $cek = $this->M_krs->getLastID();
            foreach ($cek as $c)
            {
                $data['id_krs'] = $c->id_krs;
            }
        }
                
        $data['userdata']	= $this->userdata;
        $data['page'] 		= "krs";
        $data['judul'] 		= "Data KRS";
        $data['deskripsi'] 	= "Data KRS Baru";
        $where              = array('nim' => $this->input->post('nim'));
        $data['mahasiswa'] 	= $this->M_mahasiswa->detail_data($where)->result();
        $data['tahun_ajaran'] 	= $this->M_thn_ajaran->get_data($this->input->post('id_tahun'));
        $data['semester'] 	= $this->input->post('semester');
        $data['jadwal']     = $this->M_jadwal->tampil_data();
        $data['krs_detail'] = $this->M_krs->tampil_data_krs($data['id_krs']);
                
        //echo var_dump($data);
        $this->template->views('krs/form_add', $data);		
	}

	public function add() 
	{
            $i=0;
            foreach ($this->input->post('nilai') as $d)
            {
                /*
                $uas = $this->input->post('uas')[$i];
                $total = ($d * 0.4) + ($uas * 0.6);
                $nilai = "E";
                if ($total < 30)
                {
                    $nilai = "E";
                }
                elseif ($total >=30 && $total < 50)
                {
                    $nilai = "D";
                }
                elseif ($total >=50 && $total < 70)
                {
                    $nilai = "C";
                }
                elseif ($total >=70 && $total < 80)
                {
                    $nilai = "B";
                }
                elseif ($total >=80)
                {
                    $nilai = "A";
                }
                */
                $this->M_khs->delete_nilai($this->input->post('id_krs'));

                $data = array(
                    'id_krs'    =>$this->input->post('id_krs'),
                    //'uts'       =>$d,
                    //'uas'       =>$uas,
                    'nilai'       =>$d    
                );
                
                //echo var_dump($data); exit;
                $this->M_khs->input_nilai($data);
                $i++;
            }
            
        
            
            $data['userdata']	= $this->userdata;
            $data['page'] 		= "khs";
            $data['judul'] 		= "Data KHS";
            $data['deskripsi'] 	= "Data KHS Mahasiswa";
            $data['id_krs'] 	= $this->input->post('id_krs');
            $where              = array('nim' => $this->input->post('nim'));

            $data['mahasiswa'] 	= $this->M_mahasiswa->detail_data($where)->result();
            $data['tahun_ajaran'] 	= $this->M_thn_ajaran->get_data($this->input->post('id_tahun'));
            $data['semester'] 	= $this->input->post('semester');
            //$data['jadwal']     = $this->M_jadwal->tampil_data();
            $data['krs_detail'] = $this->M_krs->tampil_data_krs($this->input->post('id_krs'));
                
		$this->template->views('khs/form_detail', $data);
	}

    public function detail($id) 
	{
    	$cek = $this->M_krs->tampil_data_krs($id); 
            
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "krs";
        $data['judul'] 		= "Data KHS";
        $data['deskripsi'] 	= "Data KHS";
        $data['id_krs'] 	= $id;
        $where              = array('nim' => $cek[0]->nim);
                
		$data['mahasiswa'] 	= $this->M_mahasiswa->detail_data($where)->result();
        $data['tahun_ajaran'] 	= $this->M_thn_ajaran->get_data($cek[0]->id_tahun);
        $data['semester'] 	= $cek[0]->semester;
        $data['jadwal']     = $this->M_jadwal->tampil_data();
        $data['krs_detail'] = $this->M_krs->tampil_data_krs($id);
                
		$this->template->views('khs/form_detail', $data);
	}

	public function detail1($id) 
	{
    	$cek = $this->M_krs->tampil_data_krs($id); 
            
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "krs";
        $data['judul'] 		= "Data KHS";
        $data['deskripsi'] 	= "Data KHS";
        $data['id_krs'] 	= $id;
        $where              = array('nim' => $cek[0]->nim);
                
		$data['mahasiswa'] 	= $this->M_mahasiswa->detail_data($where)->result();
        $data['tahun_ajaran'] 	= $this->M_thn_ajaran->get_data($cek[0]->id_tahun);
        $data['semester'] 	= $cek[0]->semester;
        $data['jadwal']     = $this->M_jadwal->tampil_data();
        $data['krs_detail'] = $this->M_krs->tampil_data_krs1($id);
                
		$this->template->views('khs/form_detail', $data);
	}

	public function khs_cetak($id) 
	{
    	$cek = $this->M_krs->tampil_data_krs($id); 
            
		$data['userdata']	= $this->userdata;
		$data['page'] 		= "krs";
        $data['judul'] 		= "Data KHS";
        $data['deskripsi'] 	= "Data KHS";
        $data['id_krs'] 	= $id;
        $where              = array('nim' => $cek[0]->nim);
                
		$data['mahasiswa'] 	= $this->M_mahasiswa->detail_data($where)->result();
        $data['tahun_ajaran'] 	= $this->M_thn_ajaran->get_data($cek[0]->id_tahun);
        $data['semester'] 	= $cek[0]->semester;
        $data['jadwal']     = $this->M_jadwal->tampil_data();
        $data['krs_detail'] = $this->M_krs->tampil_data_krs1($id);
                
		$this->load->view('khs/form_cetak', $data);
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

	public function transkip() 
	{
		$data['userdata'] 	= $this->userdata;
		$id 				= $this->userdata->nim;

		$data['page'] 		= "transkip nilai";
		$data['judul'] 		= "Transkip";
		$data['deskripsi'] 	= "Cetak Transkip Nilai";

		$this->template->views('khs/transkip', $data, $id);
	}

	public function cetak_transkip()
	{
		$data['userdata'] 		= $this->userdata;
		$id 					= $this->userdata->nim;
		$data['dataTranskip'] 	= $this->M_khs->cetak($id);
		$data['krs_detail'] 	= $this->M_khs->cetak($id);
		$data['dosen'] 			= $this->M_khs->wali_dosen($id);
		$this->load->view('khs/cetak_transkip', $data, $id);
	}

}