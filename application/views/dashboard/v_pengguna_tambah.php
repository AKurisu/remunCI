<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Malas Ngoding | Dashboard</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/Ionicons/css/ionicons.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/morris.js/morris.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/jvectormap/jquery-jvectormap.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/bootstrap-daterangepicker/daterangepicker.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</head>

<body class=" skin-blue" onload="manage()">
<div class="content-wrapper" style="margin: 0 auto;">
	<section class="content-header" style="margin-bottom: 10px; text-align: center;">
		<h1>
			Pengguna
			<small>Tambah Pengguna</small>
		</h1>
	</section>


		<div class="row d-flex justify-content-center" >
			<div class="col-lg-6" >
				
				

				<div class="box box-primary"  >
					<div class="box-header">
					</div>
					<div class="box-body">
						
						<form method="post" action="<?php echo base_url('login/pengguna_aksi') ?>">
							<div class="box-body">
								<div class="form-group">
									<label>Nama</label>
									<input type="text" name="nama" class="form-control" placeholder="Masukkan nama pengguna ..">
									<?php echo form_error('nama'); ?>
								</div>
								<div class="form-group">
									<label>NIP</label>
									<input type="text" name="nip" class="form-control" value="<?php echo $this->session->userdata('nip')?>" readonly>
									<?php echo form_error('nip'); ?>
								</div>
								<div class="form-group">
									<label>Pangkat/Gol</label>
									<select class="form-control" name="panggol">
										<option value="" disabled selected>- Pilih Level -</option>
										<option value="Penata Muda, III/a">Penata Muda, III/a</option>
										<option value="Penata Muda Tingkat I, III/b">Penata Muda Tingkat I, III/b</option>
										<option value="Penata, III/c">Penata, III/c</option>
										<option value="Penata Tingkat I, III/d">Penata Tingkat I, III/d</option>
										<option value="Pembina, IV/a">Pembina, IV/a</option>
										<option value="Pembina Tingkat I, IV/b">Pembina Tingkat I, IV/b</option>
										<option value="Pembina Utama Muda, IV/c">Pembina Utama Muda, IV/c</option>
										<option value="Pembina Utama Mudya, IV/d">Pembina Utama Mudya, IV/d</option>
										<option value="Pembina Utama, IV/e">Pembina Utama, IV/e</option>
									</select>
									<?php echo form_error('panggol'); ?>
								</div>
								<div class="form-group">
									<label>Jabatan Fungsional</label>
									<select class="form-control" name="jfung">
										<option value="" disabled selected>- Pilih Level -</option>
										<option value="Guru Besar">Guru Besar</option>
										<option value="Lektor Kepala">Lektor Kepala</option>
										<option value="Lektor">Lektor</option>
										<option value="Asisten Ahli">Asisten Ahli</option>
										<option value="Tenaga Pengajar/CPNS">Tenaga Pengajar/CPNS</option>
									</select>
									<?php echo form_error('jfung'); ?>
								</div>
								<div class="form-group">
									<label>Satuan Kerja</label>
									<select class="form-control" name="satker">
										<option value="" disabled selected>- Pilih Level -</option>
										<option value="Jurusan Teknologi Informasi">Jurusan Teknologi Informasi</option>
									</select>
									<?php echo form_error('satker'); ?>
								</div>
								<div class="form-group">
									<label>Unit Kerja</label>
									<input type="text" name="unitkerja" class="form-control" placeholder="Masukkan unit kerja pengguna..">
									<?php echo form_error('unitkerja'); ?>
								</div>
								<div class="form-group">
									<label>Jenis Dosen</label>
									<select class="form-control" name="jenisdosen" onchange="manage(this)" id='jd'>
										<option value="">- Pilih Level -</option>
										<option value="Dosen Biasa">Dosen Biasa</option>
										<option value="Dosen Tugas Tambahan">Dosen Tugas Tambahan</option>
									</select>
									<?php echo form_error('jenisdosen'); ?>
								</div>
								<div class="form-group">
									<label>Jabatan Struktural</label>
									<select class="form-control" name="jstruk" disabled id="js">
										<option value="">- Pilih Status -</option>
									</select>
									<?php echo form_error('jstruk'); ?>
								</div>
								<div class="form-group">
									<label>SKP</label>
									<input type="text" name="skp" class="form-control" placeholder="Masukkan SKP pengguna .." id="skp" disabled>
									<?php echo form_error('skp'); ?>
								</div>
								<div class="form-group">
									<label>Kehadiran</label>
									<input type="text" name="kehadiran" class="form-control" placeholder="Masukkan Kehadiran pengguna .." id="kehadiran" disabled>
									<?php echo form_error('kehadiran'); ?>
								</div>
							</div>

							<div class="box-footer">
								<a href="<?php echo base_url("login/pengguna_tambah"); ?>" class="btn btn-primary" >Kembali</a>
								<input type="submit" class="btn btn-success" style="float: right;" value="Simpan">
							</div>
						</form>

					</div>
				</div>

			</div>
		</div>

	</section>

</div>
<script>
	function manage(txt){
		var dosen = ['Rektor','Wakil Rektor'];
		var pendik = ['Kepala Biro BAKP','Kepala Biro BUK'];
		var sljs = document.getElementById('js');
		var skp = document.getElementById('skp');
		var khd = document.getElementById('kehadiran');
		var jd = document.getElementById('jd');
		
		if(txt==null){} 
		else if (txt.value == 'Dosen Tugas Tambahan'){
			sljs.disabled = false;
			skp.disabled = false;
			khd.disabled = false;
			setValue(sljs, dosen);
			
		}
		else if(txt == 'Tenaga Kependidikan'){
			jd.disabled = true;
			sljs.disabled = false;
			skp.disabled = false;
			khd.disabled = false;
			setValue(sljs, pendik);
		}
		else {
			jd.disabled = false;
			sljs.disabled = true;
			skp.disabled = true;
			khd.disabled = true;
			
		}
	}
	function setValue(ddl2, opsi){
		if(ddl2!=null){
			ddl2.options.length = 0;
			if(opsi[0].length>2){
				for ( i = 0; i < opsi.length; i++) {
					createOption(ddl2, opsi[i]);
				}
			} else {
				createOption(ddl2, opsi);
			}
			
		}
	}

	function createOption(ddl, text){
	var opt = document.createElement('option');
	opt.value = text;
	opt.text = text;
	ddl.options.add(opt);
}
</script>
	
<?php
$level = $this->session->userdata('level');
$lev = json_encode($level);
echo '<script>manage('.$lev.');</script>';
?>
</body>
</html>
