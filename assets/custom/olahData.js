function configDDL(ddl1, ddl2, persen){
	var pendidikan = ['Bimbingan Kuliah Kerja', 'Membimbing Dosen Muda', 'Mengajar AA/Pekerti', 'Mengajar Matrikulasi S2/S3', 'Mengajar pada Program D3/S1', 'Mengajar pada Prorgram S2', 'Mengajar pada Prorgram S3', 'Mengajar TOEFL Bagi Dosen/Pegawai', 'Mengembangkan Program Kuliah', 'Mengajar Prelium/Kualifikasi Doktor', 'Mengajar Seminar Hasil S1', 'Mengajar Seminar Hasil S2'];
	var penelitian = ['KATEGORI A', 'KATEGORI B','KATEGORI C','KATEGORI D','KATEGORI E','KATEGORI F','KATEGORI G','KATEGORI H','KATEGORI I', 'Memperoleh Hak Paten', 'Memproleh Hak Desain', 'Penelitian Mandiri'];
	var pengabdian = ['Instruktur', 'PKM'];
	var bimbingan = ['Bimbingan Kuliah KKN', 'Bimbingan Magang'];

	//Variabel70
	var penunjang = ['Auditor Internal','Bimbingan dan Konseling', 'Gugus Penjamin Mutu','Juri Kompetisi Karya Ilmiah', 
	'Juri/Penilai Lomba','Kegiatan Kepanitiaan','Kegiatan Tingkat Internasional','Kepala Laboratorium/Bengkel/Studio/Kebun',
	'Komisi Senat Universitas','Narasumber Workshop/Seminar','Pembimbing Penyusunan Proposal PKM/Bakat Minat/PMW',
	'Pembimbing PKM/Bakat Minat/PMW di Danai Dikti', 'Pembina Unit Kegiatan Mahasiswa','Pendamping Ormawa/Pembina UKM/Bakat Minat'];
	var penghargaan = ['Darma Pengabdian 15 Tahun', 'Darma Pengabdian 25 Tahun','Darma Pengabdian 30 Tahun', 'Darma Pengabdian 35 Tahun', 'Prestasi Tingkat Internasional','Prestasi Tingkat Nasional','Satya Lencana Karya Satya 10 Tahun','Satya Lencana Karya Satya 20 Tahun','Satya Lencana Karya Satya 30 Tahun'];
	var ask=['Anggota','Sekretaris','Ketua'];
	var panitia=['Anggota','Wakil/Sekretaris/Bendahara','Ketua','Pengarah/Pembina/Penanggungjawab'];

	var tamuk = document.getElementById('tamuk');

	switch(ddl1.value){
		case 'Pendidikan dan Pengajaran':
			setValue(ddl2,pendidikan,"KEG","0.39");
			poinSum(nilai);
			break;
		case 'Penelitian':
			setValue(ddl2,penelitian,"Judul","21.87");
			break;
		case 'Pengabdian':
			setValue(ddl2,pengabdian,"PENGABDIAN","1");
			break;

//Opsi70
		case 'Penunjang':
			setValue(ddl2,penunjang,"KEG","0.87");
			break;
				case 'Auditor Internal':
					setValue(ddl2,ask,"KEG","0.87");
					break;
				case 'Bimbingan dan Konseling':
					setValue(ddl2,'Membimbing',"ORG","0.1");
					break;
				case 'Gugus Penjamin Mutu':
					setValue(ddl2,ask,"KEG","0.87");
					break;
				case 'Juri Kompetisi Karya Ilmiah':
					setValue(ddl2,"Juri","JAM","0.39");
					break;
				case 'Juri/Penilai Lomba':
					setValue(ddl2,"Juri","OH","0.2");
					break;
				case 'Kegiatan Kepanitiaan':
					setValue(ddl2,panitia,"OH","0.2");
					break;
				case 'Kegiatan Tingkat Internasional':
					setValue(ddl2,panitia,"KEG","1.25");
					break;
		case 'Penghargaan atas Prestasi':
			setValue(ddl2,penghargaan,"KEG","1.23");
			break;
				case 'Darma Pengabdian 15 Tahun':
					setValue(ddl2,"Prestasi","KEG","1.23");
					break;
				case 'Darma Pengabdian 25 Tahun':
					setValue(ddl2,"Prestasi","KEG","1.5");
					break;
				case 'Darma Pengabdian 30 Tahun':
					setValue(ddl2,"Prestasi","KEG","1.75");
					break;
				case 'Darma Pengabdian 35 Tahun':
					setValue(ddl2,"Prestasi","KEG","1.75");
					break;
				case 'Prestasi Tingkat Internasional':
					setValue(ddl2,"Prestasi","KEG","11.35");
					break;
				case 'Prestasi Tingkat Nasional':
					setValue(ddl2,"Prestasi","KEG","6.75");
					break;
				case 'Satya Lencana Karya Satya 10 Tahun':
					setValue(ddl2,"Prestasi","KEG","1.5");
					break;
				case 'Satya Lencana Karya Satya 20 Tahun':
					setValue(ddl2,"Prestasi","KEG","1.75");
					break;
				case 'Satya Lencana Karya Satya 30 Tahun':
					setValue(ddl2,"Prestasi","KEG","2");
					break;
//EO70

		case 'Bimbingan Kuliah Kerja':
			ddl2.options.length = 0;
			for ( i = 0; i < bimbingan.length; i++) {
				createOption(ddl2, bimbingan[i]);
			}
		case 'Bimbingan Kuliah KKN':
			document.getElementById('rubrik').value = "0.39";
			document.getElementById('satuan').value = "KEG";
			tamuk.disabled = true;
			break;
		case 'Membimbing Dosen Muda':
			ddl2.options.length = 0;
			createOption(ddl2, '1 Orang');
			document.getElementById('satuan').value = "MK";
			document.getElementById('rubrik').value = "0.5";
			tamuk.disabled = true;
			break;
		case 'Mengajar AA/Pekerti':
			ddl2.options.length = 0;
			createOption(ddl2, 'AA/Pekerti');
			document.getElementById('satuan').value = "Jam";
			document.getElementById('rubrik').value = "2.19";
			tamuk.disabled = true;
			break;
		case 'Mengajar Matrikulasi S2/S3':
			ddl2.options.length = 0;
			createOption(ddl2, 'Mengajar S2/S3');
			document.getElementById('satuan').value = "SKS";
			document.getElementById('rubrik').value = "2.9";
			tamuk.disabled = true;
			break;
		case 'Mengajar pada Program D3/S1':
			ddl2.options.length = 0;
			createOption(ddl2, 'Mengajar D3/S1');
			document.getElementById('satuan').value = "SKS";
			document.getElementById('rubrik').value = "1";
			tamuk.disabled = false;
			break;
		case 'Mengajar pada Prorgram S2':
			ddl2.options.length = 0;
			createOption(ddl2, 'Mengajar S2');
			document.getElementById('satuan').value = "SKS";
			document.getElementById('rubrik').value = "0.97";
			tamuk.disabled = false;
			break;
		case 'Mengajar pada Prorgram S3':
			ddl2.options.length = 0;
			createOption(ddl2, 'Mengajar S3');
			document.getElementById('satuan').value = "SKS";
			document.getElementById('rubrik').value = "1.17";
			tamuk.disabled = false;
			break;
		case 'Mengajar TOEFL Bagi Dosen/Pegawai':
			ddl2.options.length = 0;
			createOption(ddl2, 'Mengajar TOEFL');
			document.getElementById('satuan').value = "Jam";
			document.getElementById('rubrik').value = "2.19";
			tamuk.disabled = true;
			break;
		case 'Mengembangkan Program Kuliah':
			ddl2.options.length = 0;
			createOption(ddl2, 'Program Kuliah');
			document.getElementById('satuan').value = "MK";
			document.getElementById('rubrik').value = "1";
			tamuk.disabled = true;
			break;
		case 'Mengajar Prelium/Kualifikasi Doktor':
			ddl2.options.length = 0;
			createOption(ddl2, 'Penguji Bidang Ilmu');
			document.getElementById('satuan').value = "MHS";
			document.getElementById('rubrik').value = "2.92";
			tamuk.disabled = true;
			break;
		case 'Mengajar Seminar Hasil S1':
			ddl2.options.length = 0;
			createOption(ddl2, 'Anggota');
			document.getElementById('satuan').value = "MHS";
			document.getElementById('rubrik').value = "0.51";
			tamuk.disabled = false;
			break;
		case 'Mengajar Seminar Hasil S2':
			ddl2.options.length = 0;
			createOption(ddl2, 'Anggota');
			document.getElementById('satuan').value = "MHS";
			document.getElementById('rubrik').value = "0.51";
			tamuk.disabled = true;
			break;
		case 'KATEGORI A':
		case 'KATEGORI B':
			ddl2.options.length = 0;
			createOption(ddl2, 'PUBLIKASI');
			document.getElementById('satuan').value = "JUDUL";
			kategoriValue(ddl1.value);
			tamuk.disabled = true;
			break;
		case 'Instruktur':
		case 'PKM':
			ddl2.options.length = 0;
			createOption(ddl2, 'PENGABDIAN');
			document.getElementById('satuan').value = "PENGABDIAN";
			document.getElementById('rubrik').value = "1";
			tamuk.disabled = true;
			break;
		case 'Bimbingan Magang':
			document.getElementById('satuan').value = "MHS";
			document.getElementById('rubrik').value = "1";
			tamuk.disabled = true;
			break;
			
	}
}

function poinSum(nilai){
	var rubrik = document.getElementById('rubrik').value;
	var sks = document.getElementById('jumlah').value;
	var jumlah;

	if (!rubrik) {rubrik = 0;}
	if (document.getElementById('tamuk').disabled==false){
		jumlah = (parseInt(nilai.value)*parseInt(sks))/16;
	} else{
		jumlah = parseInt(nilai.value) * parseFloat(rubrik);
	}

	document.getElementById('poin').value = jumlah;
}



function kategoriValue(text){

	var value;

	if(text == "KATEGORI A"){
		var value = "21.87"
	} else if (text == "KATEGORI B"){
		var value = "20.41"
	}

	document.getElementById('rubrik').value = value;
}

function createOption(ddl, text){
	var opt = document.createElement('option');
	opt.value = text;
	opt.text = text;
	ddl.options.add(opt);
}

function setValue(ddl2,opsi, satuan, rubrik){
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

	if(satuan=="SKS"){
		document.getElementById('tamuk').disabled = false;
	} else {
		document.getElementById('tamuk').disabled = true;
	}

	document.getElementById('satuan').value = satuan;
	document.getElementById('rubrik').value = rubrik;

}