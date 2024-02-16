Praktikum Basis Data Pertemuan 1
- PRAKTIKUM 3

SOAL 1 Menambahkan data penjualan :
1. kode_penjualan	  = 3 
2. tgl			        = 8 Februari 2021
3. kasir	  	    	= Dini 
4. total_penjualan	= 10.000 
<p align="center">
  <img width="460" height="300" src="https://i.imgur.com/8J3Q7v8.png">
</p>
<p align="center">
  <img width="460" height="300" src="https://i.imgur.com/ioUOXzW.png">
</p>

SOAL 2 Menambahkan data penjualan :
1. kode_penjualan  = 2
2. tgl			       = 10 Februari 2021
3. kasir		       = Dini 
4. total_penjualan = 20.000
<p align="center">
  <img width="460" height="300" src="https://i.imgur.com/JV0ZiJo.png">
</p>
<p align="center">
  <img width="460" height="300" src="https://i.imgur.com/byAmlGr.png">
</p>

SOAL 3 Jelaskan bagaimana solusi agar data pada soal 2 dapat ditambahkan!

Jawab :Kolom Value pada kode_penjualan harus diganti angka 4, karena kolom Value pada kode_penjualan dengan basis data 2, sudah ada disebelumnya.
Jadi jika value kode_penjualannya sama akan terjadi eror 
<p align="center">
  <img width="460" height="300" src="https://i.imgur.com/tKea190.png">
</p>
<p align="center">
  <img width="460" height="300" src="https://i.imgur.com/Kfk0GPL.png">
</p>

SOAL 4 Menambahkan data detail_penjualan :
1. kode_penjualan	= 2 
2. kode_barang		= 3 
3. harga			    = 5.000 
4. jumlah		      = 5
<p align="center">
  <img width="460" height="300" src="https://i.imgur.com/Mj6IC02.png">
</p> 

SOAL 5 Jelaskan bagaimana solusi agar data pada soal 4 dapat ditambahkan!

Jawab :Tidak ada, karena data dari kode_penjualan 2 dan kode_barang 3 sudah ada ditabel, jadi data langsung ditambahkan.

SOAL 6 Terangkan apa yang bisa anda fahami dari soal 1-5 terkait dengan duplikasi dan inkonsisten data!

Jawab :Dengan adanya data yang memiliki kode_penjualan yang sama(duplikasi) bisa menyebabkan data yang tidak dapat ditambahkan
dan munculnya data yang tidak konsisten pada medan/kolom yang sama (Inkonsisten data) dalam satu atau beberapa file data yang
dihubungkan/direlasikan.









