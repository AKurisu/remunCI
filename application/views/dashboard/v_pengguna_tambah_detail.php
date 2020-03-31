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
			<small>Akun Remun UNTAD</small>
		</h1>
	</section>


		<div class="row d-flex justify-content-center" >
			<div class="col-lg-6" >
				
				

				<div class="box box-primary"  >
					<div class="box-header">
					</div>
					<div class="box-body">
						
						<form method="post" action="<?php echo base_url('login/pengguna_aksi_detail') ?>">
							<div class="box-body">
								<div class="form-group">
									<label>NIP</label>
									<input type="text" readonly name="nip" class="form-control" value="<?php echo $this->session->userdata('nip');?>">
									<?php echo form_error('nip'); ?>
								</div>
								<div class="form-group">
									<label>Password</label>
									<input type="password" name="password" class="form-control" placeholder="Masukkan Password pengguna ..">
									<?php echo form_error('password'); ?>
								</div>
								<div class="form-group">
									<label>Level</label>
									<select class="form-control" name="level">
										<option value="" disabled selected>- Pilih Level -</option>
										<option value="Dosen">Dosen</option>
										<option value="Tenaga Kependidikan">Tenaga Kependidikan</option>
										<option value="Verifikator">Verifikator</option>
										<option value="Validator">Validator</option>
									</select>
									<?php echo form_error('level'); ?>
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
	
</body>
</html>
