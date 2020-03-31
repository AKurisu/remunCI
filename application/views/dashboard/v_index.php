<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Dashboard
			<small>Control panel</small>
		</h1>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-lg-12 col-xs-12">
				
				<div class="box box-primary">
					<!-- <div class="box-header">
						<h3 class="box-title">Dashboard</h3>
					</div> -->
					<div class="box-body">
						<h3>Selamat Datang !</h3>
						<div class="col-lg-12 col-xs-12">
							<div class="table-responsive">
								<table class="table table-bordered table-hover">
								<thead class="thead-dark">
									<tr>
										<th colspan="3">Data Diri</th>
									</tr>
								</thead>
									<tr>
										<th width="20%">Nama</th>
										<th width="1px">:</th>
										<td>
											<?php 
											$id_user = $this->session->userdata('nip');
											$user = $this->db->query("select * from pengguna_detail where pengguna_nip='$id_user'")->row();
											?>
											<p><?php echo $user->pengguna_nama; ?></p>
										</td>
									</tr>
									<tr>
										<th width="20%">NIP</th>
										<th width="1px">:</th>
										<td><?php echo $this->session->userdata('nip') ?></td>
									</tr>
									<tr>
										<th width="20%">Pangkat/Golongan</th>
										<th width="1px">:</th>
										<td><?php echo $user->pengguna_pg ?></td>
									</tr>
									<tr>
										<th width="20%">Unit Kerja</th>
										<th width="1px">:</th>
										<td><?php echo $user->pengguna_uk ?></td>
									</tr>
								<thead class="thead-dark">
									<tr>
										<th colspan="3">Jabatan Renumerasi</th>
									</tr>
								</thead>
									<tr>
										<th width="20%">Jenis Dosen</th>
										<th width="1px">:</th>
										<td><?php echo $user->pengguna_jd ?></td>
									</tr>
									<tr>
										<th width="20%">Jabatan Fungsional</th>
										<th width="1px">:</th>
										<td><?php echo $user->pengguna_jf ?></td>
									</tr>
								</table>
							</div>
						</div>
						<div class="row col-lg-12">
							<div class="col-lg-4">
								<div class="table-responsive">
									<table class="table table-bordered table-hover">
										<thead class="thead-dark">
											<tr><th colspan="3">Grade <a class="pull-right text-warning">
											<?php if($user->pengguna_jd == "Dosen Biasa") {
												echo "*Khusus Dosen TT";
											} ?> </a> </th></tr>
										</thead>
										<tbody>
											<tr>
												<th width="20%">SKP</th>
												<th width="1px">:</th>
												<td><?php echo $user->pengguna_skp ?></td>
											</tr>
											<tr>
												<th width="20%">Kehadiran</th>
												<th width="1px">:</th>
												<td><?php echo $user->pengguna_khd ?></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div class="col-lg-8">
								<div class="table-responsive">
									<table class="table table-bordered table-hover">
										<thead class="thead-dark">
											<tr><th colspan="3">Validator dan Verifikator</th></tr>
										</thead>
										<tbody>
											<tr>
												<th width="20%">Validator</th>
												<th width="1px">:</th>
												<td></td>
											</tr>
											<tr>
												<th width="20%">Verifikator</th>
												<th width="1px">:</th>
												<td></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

	</section>

</div>