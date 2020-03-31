<div class="content-wrapper" onload="initComboBox(document.getElementById('opsi1'),document.getElementById('opsi2'),document.getElementById('opsi3'),)">
	<section class="content-header">
		<h1>
			KINERJA 30% 
		</h1>
		<a href="<?php echo base_url().'dashboard/cetak_pdf/30'; ?>" class="btn btn-sm btn-primary">Cetak</a>
	</section>
	

	<section class="content">

	<div class="row">

	
	<?php 
		$id_user = $this->session->userdata('nip');
		$user = $this->db->query("select * from pengguna_detail where pengguna_nip='$id_user'")->row();
		?>
			<div class="col-lg-4 col-xs-6">
				<div class="small-box bg-aqua">
					<div class="inner">
						Anda membutuhkan minimal
						<h2><?php
						$poin;
						$js= $user->pengguna_js;
							if($js=="Rektor"||$js=="Wakil Rektor"){
								$poin=3;
							} else {$poin=12;}
							echo $poin;
						?><small>poin</small></h2>
						<br/>
					</div>
					<div class="icon">
						<i class="ion ion-android-list"></i>
					</div>
				</div>
			</div>
			
			<div class="col-lg-4 col-xs-6">
				<div class="small-box bg-green">
					<div class="inner">
						<table>
							<?php

							$val1 = 0;
							$val2 = 0;
							$val3 = 0;
							$val4 = 0;

                            foreach ($kinerja as $k) {
                                
                                if ($k->bidang == "Pendidikan dan Pengajaran") {
                                    $val1 = $val1 + $k->poin;
								} else if ($k->bidang == "Penelitian") {
                                    $val2 = $val2 + $k->poin;
								} else if ($k->bidang == "Pengabdian") {
                                    $val3 = $val3 + $k->poin;
								}
								
								$val4 = $val4 + $k->poin;
                            }
							?>
							<tr>
								<td>Poin</td>
								<td width="60px"></td>
								<td>Pendidikan</td>
								<td>:</td>
								<td>
									<?php 
										echo $val1;
									?>
								</td>
							</tr>
							<tr>
								<td rowspan="3"><h3>DB</h3></td>
								<td width="60px"></td>
								<td>Penelitian</td>
								<td>:</td>
								<td>
									<?php 
										echo $val2;
									?>
								</td>
							</tr>
							<tr>
								<td width="60px"></td>
								<td>Pengabdian</td>
								<td>:</td>
								<td>
									<?php 
										echo $val3;
									?>
								</td>
							</tr>
							<tr>
								<td width="60px"></td>
								<td>Total</td>
								<td>:</td>
								<td><?php 
										echo $val4;
									?>
								</td>
							</tr>
						</table>
					</div>
					<div class="icon">
						<i class="ion ion-android-document"></i>
					</div>
				</div>
			</div>
			
			<div class="col-lg-4 col-xs-6">
				<div class="small-box bg-red">
					<div class="inner">
					<table>
							<tr>
								<td>Poin</td>
								<td width="40px"></td>
								<td>EWMP Kehadiran</td>
								<td>:</td>
								<td><?php
									$khd=0;
									if($user->pengguna_jd == "Dosen Tugas Tambahan") {
										$khd = $user->pengguna_khd;
										$khd = ($khd * 9)/100;
									}else{$khd="0";}
									echo $khd;?>
									</td>
							</tr>
							<tr>
								<td rowspan="2"><h3>DT</h3></td>
								<td width="40px"></td>
								<td>EWMP Kinerja</td>
								<td>:</td>
								<td><?php
									$krj=0;
									if($user->pengguna_jd == "Dosen Tugas Tambahan") {
										if($val4 >= $poin){
											$krj = "3";
										} else $krj = "0";
									}else{$krj="0";}
									echo $krj;
								?></td>
							</tr>
							<tr>
								<td width="40px"></td>
								<td>Total EWMP</td>
								<td>:</td>
								<td><?php 
									echo ($khd + $krj);
								?></td>
							</tr>
						</table>
					</div>
					<div class="icon">
						<i class="ion ion-pie-graph"></i>
					</div>
				</div>
			</div>

			
		</div>
		
		<div class="row">
			<div class="col-lg-12">
				<div class="box box-primary">
					<div class="box-body">
						
						
						<form method="post" action="<?php echo base_url('dashboard/kategori_aksi') ?>">
							<div class="box-body">
								<div class="form-group">
									<label>Bidang</label>
									<select class="form-control" name="bidang" id="opsi1" onchange="configDDL(this, document.getElementById('opsi2'), 30); ambilData(this);">
										<option value="" disabled selected>- Pilih Level -</option>
										<?php 
											$bidang = $this->db->query("select * from data_bidang_kj")->result();
											foreach($bidang as $b){
												?>
												<option value="<?php echo $b->nama_bidang;?>">
													<?php echo $b->nama_bidang; $id= $b->id;?>
												</option> 
												<?php
											}
										?>
									</select>
									<?php echo form_error('bidang'); ?>
								</div>

								<div class="form-group">
									<label>Kinerja</label>
									<select class="form-control" name="kinerja" id="opsi2" onchange="configDDL(this, document.getElementById('opsi3'), 30)">
										<option value="" disabled selected>- Pilih Level -</option>
									</select>
									<?php echo form_error('kinerja'); ?>
								</div>

								<div class="form-group">
									<label>Tugas</label>
									<select class="form-control" name="tugas" id="opsi3" onchange="configDDL(this, document.getElementById('opsi2'), 30)">
										<option value="" disabled selected>- Pilih Level -</option>
									</select>
									<?php echo form_error('tugas'); ?>
								</div>

								<div class="row">
									<div class="col-md-3 col-sm-3">
										<div class="form-group">
											<label>Jumlah</label>
											<select class="form-control" name="jumlah" id="jumlah" onchange="poinSum(this)">;
												<option value="" disabled selected>- Pilih Level -</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
											</select>
											<?php echo form_error('jumlah'); ?>
										</div>
									</div>

									<div class="col-md-3 col-sm-3">
										<div class="form-group">
											<label>Satuan</label>
											<input type="text" name="satuan" id="satuan" class="form-control" readonly>
											<?php echo form_error('satuan'); ?>
										</div>
									</div>

									<div class="col-md-3 col-sm-3">
										<div class="form-group">
											<label>Nilai Rubrik</label>
											<input type="text" name="rubrik" id="rubrik" class="form-control" readonly>
											<?php echo form_error('rubrik'); ?>
										</div>
									</div>

									<div class="col-md-3 col-sm-3">
										<div class="form-group">
											<label>Poin</label>
											<input type="text" name="poin" id="poin" class="form-control" readonly>
											<?php echo form_error('poin'); ?>
										</div>
									</div>

									<div class="form-group col-md-3 col-sm-3">
										<label>Tatap Muka</label>
										<select class="form-control" name="tamuk" id="tamuk" onchange="poinSum(this)" disabled>;
												<option value="" disabled selected>- Pilih Level -</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
											</select>
										<?php echo form_error('tamuk'); ?>
									</div>

									<div class="form-group">
										<input type="hidden" value="30" name="persen" id="pese" readonly>
										<input type="hidden" value="<?php echo $this->session->userdata('nip') ?>" name="nip" readonly>
									</div>
								</div>

								<div class="form-group">
										<label>Uraian</label>
										<textarea class="form-control" rows="3" name="uraian" id="uraian"></textarea>
										<?php echo form_error('uraian'); ?>
								</div>

								<div class="row">
									<div class="col-md-8 col-sm-8">
										<div class="form-group">
											<label>Bukti</label>
											<input type="text" name="bukti" id="bukti" class="form-control">
											<?php echo form_error('bukti'); ?>
										</div>
									</div>

									<div class="col-md-4 col-sm-4">
										<div class="form-group">
											<label>Tanggal</label>
											<input type="date" name="tanggal" id="tanggal" class="form-control">
											<?php echo form_error('tanggal'); ?>
										</div>
									</div>
								</div>
							</div>

							<div class="box-footer">
								<input type="submit" class="btn btn-success" value="Simpan">
							</div>
						</form>

					</div>
				</div>

			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				
				<h1>Data Renumerasi</h1>
				<br/>
				<br/>

				<div class="box box-primary">
					<div class="box-header">
					
					</div>
					<div class="box-body">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th width="1%">NO</th>
									<th>Bidang</th>
									<th>Kinerja</th>
									<th>Tugas</th>
									<th>Uraian</th>
									<th>Satuan</th>
									<th>Poin</th>
									<th>Bukti</th>
									<th>Tanggal</th>
									<th width="5%">OPSI</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								$no = 1;
								foreach($kinerja as $k){ 
									?>
									<tr>
										<td><?php echo $no++; ?></td>
										<td><?php echo $k->bidang; ?></td>
										<td><?php echo $k->kinerja; ?></td>
										<td><?php echo $k->tugas; ?></td>
										<td><?php echo $k->uraian; ?></td>
										<td><?php echo $k->satuan; ?></td>
										<td><?php echo $k->poin; ?></td>
										<td><?php echo $k->bukti; ?></td>
										<td><?php echo $k->tanggal; ?></td>
										<td>
											<a href="<?php echo base_url().'dashboard/kategori_hapus/'.$k->id; ?>" class="btn btn-danger btn-sm"> <i class="fa fa-trash"></i> </a>
										</td>
									</tr>
								<?php } ?>
							</tbody>
						</table>
						

					</div>
				</div>

			</div>
		</div>		
	</section>
	<?php 
		$kinerja = $this->db->query("select * from data_kinerja_kj");
		$tugas = $this->db->query("select * from data_tugas_kj");
	?>
	<script>
		function ambilData(obj1){
			switch(obj1.name){
				case 'bidang':		
				case 'kinerja':
				case 'tugas':
				break;
			}
		}
</script>	
</div>