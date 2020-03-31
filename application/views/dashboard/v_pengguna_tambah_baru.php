<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Remun UNTAD | Buat Akun</title>
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

<body class=" skin-blue">
<div class="content-wrapper" style="margin: 0 auto;">
	<section class="content-header" style="margin-bottom: 10px; text-align: center;">
		<h1>
			Buat Akun
			<small>Link Akun SIDOS</small>
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
									<label>NIP</label>
									<select class="form-control" name="nip" id='nip' onchange="manage(this)">
										<option value="">- Pilih NIP -</option>
										<?php foreach($dosen as $d){?>
											<option value="<?php echo $d->nip;?>"><?php echo $d->nip;?> - <?php echo $d->nama;?></option>
										<?php }?>
									</select>
									<?php echo form_error('nip'); ?>
                                </div>
                                <div class="form-group">
									<label>Nama</label>
									<input type="text" readonly name="nama" id="nama" class="form-control">
									<?php echo form_error('nama'); ?>
                                </div>
                                <div class="form-group">
									<label>Pangkat/Gol</label>
									<input type="text" readonly name="panggol" id= "panggol" class="form-control">
									<?php echo form_error('panggol'); ?>
                                </div>
                                <div class="form-group">
									<label>Jabatan Fungsional</label>
									<input type="text" readonly name="jfung" id="jfung" class="form-control">
									<?php echo form_error('jfung'); ?>
                                </div>
                                <div class="form-group">
									<label>Satuan Kerja</label>
									<input type="text" readonly name="satker" id="satker" class="form-control">
									<?php echo form_error('satker'); ?>
                                </div>
                                <div class="form-group">
									<label>Unit Kerja</label>
									<input type="text" readonly name="unitkerja" id="unitkerja" class="form-control">
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

							<div class="box-footer">
								<a href="<?php echo base_url(); $this->session->sess_destroy(); ?>" class="btn btn-primary" >Kembali</a>
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
	function manage(opsi){
		var dosen = ['Rektor','Wakil Rektor'];
		var nama = document.getElementById('nama');
		var panggol = document.getElementById('panggol');
		var jfung = document.getElementById('jfung');
		var satker = document.getElementById('satker');
		var unitkerja = document.getElementById('unitkerja');
		var jenisdosen = document.getElementById('jenisdosen');
		var js = document.getElementById('js');
		var skp = document.getElementById('skp');
		var khd = document.getElementById('kehadiran');
		var jd = document.getElementById('jd');
		
		if(opsi==null){
		}
		else {
			<?php
				foreach($dosen as $d){
			?>
			if(opsi.value == "<?php echo $d->nip;?>"){
				nama.value= "<?php echo $d->nama;?>";
				panggol.value = "<?php echo $d->pangkat;?>, <?php echo $d->golongan;?>";
				jfung.value = "<?php echo $d->fungsional;?>";
				satker.value = "<?php echo $d->jurusan;?>";
				unitkerja.value = 'Fakultas';
			}
		<?php }?>
			if (opsi.value == 'Dosen Tugas Tambahan'){
				js.disabled = false;
				skp.disabled = false;
				khd.disabled = false;
				setValue(js, dosen);
			}
			else if(opsi.value == "Dosen Biasa"){
				jd.disabled = false;
				js.disabled = true;
				skp.disabled = true;
				khd.disabled = true;
				
			}
		}
	}
	function setValue(id, data){
		if(id!=null){
			id.options.length = 0;
			if(data[0].length>2){
				for ( i = 0; i < data.length; i++) {
					createOption(id, data[i]);
				}
			} else {
				createOption(id, data);
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
