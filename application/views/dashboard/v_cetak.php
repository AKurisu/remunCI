<?php
		ob_start();
        $pdf = new CetakPdf(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
		$pdf->SetTitle('UNTAD');
		// set default header data
		$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

		// set header and footer fonts
		$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

		// set default monospaced font
		$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

		// set margins
		$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
		$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

		// set auto page breaks
		$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

		$pdf->SetDisplayMode('real','default');

		// set font
		$pdf->SetFont('helvetica', 'B', 20);

		// add a page
		$pdf->AddPage('L','A4');
		//$pdf->Cell(0, 0, '', 0, 1, 'C', 0, '', 1);
			

		$pdf->SetFont('helvetica', '', 8);

		// set some text to print

		
		$html='<p>Tanggal Penilaian 14 November 2018 s/d 18 April 2019</p><br>
		<table cellspacing="0" bgcolor="#ffffff" border="0" cellpadding="2" width="100%">
					<tr bgcolor="#666666">
						<th width="2%">I.</th>
						<th colspan="9" width="98%">Keterangan Perorangan</th>
					</tr>

					<tr>
						<td>1</td>
						<td width ="33%">Nama</td>
						<td colspan="8" width ="65%">'.$dosen->pengguna_nama.'</td>
					</tr>

					<tr>
						<td>2</td>
						<td>NIP</td>
						<td colspan="8">'.$dosen->pengguna_nip.'</td>
					</tr>

					<tr>
						<td>3</td>
						<td>Pangkat Golongan</td>
						<td colspan="8">'.$dosen->pengguna_pg.'</td>
					</tr>

					<tr>
						<td>4</td>
						<td>Jabatan</td>
						<td colspan="8">'.$dosen->pengguna_jf.'</td>
					</tr>

					<tr>
						<td>5</td>
						<td>Satuan Kerja</td>
						<td colspan="8">'.$dosen->pengguna_sk.'</td>
					</tr>

					<tr>
						<td>6</td>
						<td>Unit Kerja</td>
						<td colspan="8">'.$dosen->pengguna_uk.'</td>
					</tr>
					
					<tr bgcolor="#666666">
						<td>II.</td>
						<td colspan="9">Unsur Yang Dinilai</td>
					</tr>
					<tr>
						<td rowspan="2">No</td>
						<td align="center" rowspan="2">Sub Unsur Gaji (Renumerasi)'.$kinerja['persentase'].'</td>
						<td align="center"colspan="2" width="21%">Surat Keputusan</td>
						<td align="center"rowspan="2" width="5%">Satuan</td>
						<td align="center"rowspan="2" width="5%">Jumlah</td>
						<td align="center"rowspan="2" width="5%">Tatap Muka</td>
						<td align="center"rowspan="2" width="5%">Nilai Rubrik</td>
						<td align="center"rowspan="2" width="8%">Point EWMP</td>
						<td align="center"rowspan="2" width="8%">Paraf Validator</td>
						<td align="center"rowspan="2" width="8%">Paraf Verifikator</td>
					</tr>
					<tr>
						<td width="12%">Nomor</td>
						<td width="9%">Tanggal</td>
					</tr>
					<tr>
						<td align="center"><b>A.</b></td>
						<td><b>Pendidikan dan Pengajaran</b></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>';	
		$i=0;
		$poin;$persen;
		foreach ($kinerja as $data) {
			if($data['bidang']=="Pendidikan dan Pengajaran"){
				$i++;
				$html.='<tr>	
				<td align="center">'.$i.'</td>
				<td>'.$data['uraian'].'</td>
				<td>'.$data['bukti'].'</td>
				<td>'.$data['tanggal'].'</td>
				<td>'.$data['satuan'].'</td>
				<td>'.$data['jumlah'].'</td>
				<td>'.$data['tamuk'].'</td>
				<td>'.$data['rubrik'].'</td>
				<td>'.$data['poin'].'</td>
				<td></td>
				<td></td>
				</tr>';
			}
			$poin=$poin+$data['poin'];
			$persen=$data['persentase'];
		}
		$html.='<tr>
				<td align="center">B.</td>
				<td>Penelitian</td>
				<td></td>
				<td></td>	
				<td>Jumlah Personel</td>
				<td>Anggota/Ketua</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				</tr>';
		$i=0;
		foreach ($kinerja as $data) {
			
			if($data['bidang']=="Penelitian"){
				$i++;
				$html.='<tr>	
				<td align="center">'.$i.'</td>
				<td>'.$data['uraian'].'</td>
				<td>'.$data['bukti'].'</td>
				<td>'.$data['satuan'].'</td>
				<td>'.$data['jumlah'].'</td>
				<td>'.$data['tanggal'].'</td>
				<td>'.$data['tamuk'].'</td>
				<td>'.$data['rubrik'].'</td>
				<td>'.$data['poin'].'</td>
				<td></td>
				<td></td>
				</tr>';
			}
		}
		$html.='<tr>
				<td align="center">C.</td>
				<td>Pengabdian</td>
				<td></td>
				<td></td>
				<td>Satuan</td>
				<td>Jumlah</td>
				<td></td>
				<td>Nilai Rubrik</td>
				<td>Point</td>
				<td></td>
				<td></td>
				</tr>';
		$i=0;
		foreach ($kinerja as $data) {
			if($data['bidang']=="Pengabdian"){
				$i++;
				$html.='<tr>	
				<td align="center">'.$i.'</td>
				<td>'.$data['uraian'].'</td>
				<td>'.$data['bukti'].'</td>
				<td>'.$data['satuan'].'</td>
				<td>'.$data['jumlah'].'</td>
				<td>'.$data['tanggal'].'</td>
				<td>'.$data['tamuk'].'</td>
				<td>'.$data['rubrik'].'</td>
				<td>'.$data['poin'].'</td>
				<td></td>
				<td></td>
				</tr>';
			}
		}
		$html.='
		<tr>
			<td colspan="8">Total Poin Kinerja Remun'.$persen.'%</td>
			<td>'.$poin.'</td>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td rowspan="9">III</td>
			<td colspan="10">Disahkan Oleh</td>
		</tr>
		<tr>
			<td colspan="10">Palu,........</td>
		</tr>
		<tr>
			<td colspan="5">Verifikator</td>
			<td colspan="5">Validator</td>
		</tr>
		<tr>
			<td colspan="10"></td>
		</tr>
		<tr>
			<td colspan="10"></td>
		</tr>
		<tr>
			<td colspan="10"></td>
		</tr>
		<tr>
			<td colspan="10"></td>
		</tr>
		<tr>
			<td colspan="5">(.......................)</td>
			<td colspan="5">(.......................)</td>
		</tr>
		<tr>
			<td colspan="5">(.......................)</td>
			<td colspan="5">(.......................)</td>
		</tr>
		</table>';
		// print a block of text using Write()
		$pdf->writeHTML($html, true, false, false, false, '');

		// ---------------------------------------------------------

		//Close and output PDF document
		ob_end_clean();
        $pdf->Output('example_003.pdf', 'I');
?>