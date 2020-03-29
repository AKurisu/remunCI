<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	function __construct(){
		
		parent::__construct();

		$this->load->model('m_data');
		$this->load->helper('url');
		$this->load->library('session');
	}

	public function add_data_dosen(){
		$dosen = $this->m_data->get_data_dosen('sidos');
	}

	public function index()
	{
		$this->load->view('v_login');
	}

	public function aksi()
	{

		$this->form_validation->set_rules('nip', 'nip', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if($this->form_validation->run() != false){

			// menangkap data username dan password dari halaman login
			$nip = $this->input->post('nip');
			$password = $this->input->post('password');

			$where = array(
				'pengguna_nip' => $nip,
				'pengguna_password' => md5($password)
			);

			// cek kesesuaian login pada table pengguna
			$cek = $this->m_data->cek_login('pengguna',$where)->num_rows();

			// cek jika login benar
			if($cek > 0){

				// ambil data pengguna yang melakukan login
				$data = $this->m_data->cek_login('pengguna',$where)->row();

				// buat session untuk pengguna yang berhasil login
				$data_session = array(
					'id' => $data->pengguna_id,
					'nip' => $data->pengguna_nip,
					'level' => $data->pengguna_level,
					'status' => 'telah_login'
				);
				$this->session->set_userdata($data_session);

				// alihkan halaman ke halaman dashboard pengguna

				redirect(base_url().'dashboard');
			}else{
				redirect(base_url().'?alert=gagal');
			}

		}else{
			$this->load->view('v_login');
			
		}
	}

	public function pengguna_tambah()
	{
		$data['dosen'] = $this->m_data->get_data_dosen('sidos')->result();
		$this->load->view('dashboard/v_pengguna_tambah_baru',$data);
	}

	public function pengguna_aksi()
	{
		// Wajib isi
		$jenisdosen = $this->input->post('jenisdosen');
		$nip=$this->input->post('nip');
		$this->session->set_userdata('nip',$nip);

		$this->form_validation->set_rules('nama','Nama Dosen','required|regex_match[/^[a-zA-Z_,.]+( [a-zA-Z_,.]+)*$/]');
		$this->form_validation->set_rules('nip','NIP Dosen','required');
		$this->form_validation->set_rules('panggol','Pangkat/Golongan Dosen','required');
		$this->form_validation->set_rules('jfung','Jabatan Fungsional Dosen','required');
		$this->form_validation->set_rules('satker','Satuan Kerja Dosen','required');
		$this->form_validation->set_rules('unitkerja','Unit Kerja Dosen','required');
		

		if ($jenisdosen=="Dosen Tugas Tambahan"){
			$this->form_validation->set_rules('jstruk','Jabatan Struktural','required');
			$this->form_validation->set_rules('skp','SKP','required');
			$this->form_validation->set_rules('kehadiran','Kehadiran','required');
			$this->form_validation->set_rules('jenisdosen','Jenis Dosen','required');
		} else {
			$this->form_validation->set_rules('jenisdosen','Jenis Dosen','required');
		}
		

		if($this->form_validation->run() != false){

			$nama = $this->input->post('nama');
			$nip = $this->input->post('nip');
			$panggol = $this->input->post('panggol');
			$jfung = $this->input->post('jfung');
			$satker = $this->input->post('satker');
			$unitkerja = $this->input->post('unitkerja');
			$jstruk = $this->input->post('jstruk');
			$skp = $this->input->post('skp');
			$kehadiran = $this->input->post('kehadiran');

			if (is_null($jenisdosen)){ $jenisdosen = '-';}
			if (is_null($jstruk)){ $jstruk = '-';}
			if (is_null($skp)){ $skp = '0';}
			if (is_null($kehadiran)){ $kehadiran = '0';}
			
			

			$data = array(
				'pengguna_nama' => $nama,
				'pengguna_nip' => $nip,
				'pengguna_pg' => $panggol,
				'pengguna_jf' => $jfung,
				'pengguna_sk' => $satker,
				'pengguna_uk' => $unitkerja,
				'pengguna_jd' => $jenisdosen,
				'pengguna_js' => $jstruk,
				'pengguna_skp' => $skp,
				'pengguna_khd' => $kehadiran
			);
			$this->m_data->insert_data($data,'pengguna_detail');
			$this->load->view('dashboard/v_pengguna_tambah_detail',$data);	

		}else{
			$data['dosen'] = $this->m_data->get_data_dosen('sidos')->result();
			$this->load->view('dashboard/v_pengguna_tambah_baru',$data);
		}
	}

	public function pengguna_aksi_detail()
	{
		$nip=$this->input->post('nip');
		$this->session->set_userdata('nip',$nip);

		$level=$this->input->post('level');
		$this->session->set_userdata('level',$level);

		// Wajib isi
		$this->form_validation->set_rules('nip','NIP Pengguna','required');
		$this->form_validation->set_rules('password','Password Akun','required|min_length[8]');
		$this->form_validation->set_rules('level','Level Akun','required');
		
		if($this->form_validation->run() != false){

			$nip = $this->input->post('nip');
			$password = md5($this->input->post('password'));
			$level = $this->input->post('level');
			
			$data = array(
				'pengguna_password' => $password,
				'pengguna_nip' => $nip,
				'pengguna_level' => $level
			);


			$this->m_data->insert_data($data,'pengguna');
			redirect(base_url());

		}else{
			$this->load->view('dashboard/v_pengguna_tambah_detail');
		}
	}
}
