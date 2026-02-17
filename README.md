# Queens Puzzle Solver

## 1. Penjelasan Singkat Program

Program ini menyelesaikan **Queens Puzzle** (variasi dari N-Queens) dengan aturan:

- Setiap **baris** harus memiliki tepat **satu ratu**.  
- Setiap **kolom** harus memiliki tepat **satu ratu**.  
- Setiap **daerah/region** (kumpulan sel dengan huruf yang sama) harus memiliki tepat **satu ratu**.

Papan awal direpresentasikan sebagai grid karakter (huruf A–Z).  
Program membaca konfigurasi papan dari file `.txt`, kemudian menggunakan **algoritma Brute Force** untuk mencari penempatan ratu yang memenuhi semua aturan di atas.

Jika solusi ditemukan, program menampilkan papan dengan simbol `#` pada posisi ratu, waktu pencarian (dalam milidetik), dan jumlah konfigurasi yang ditinjau.  
Jika tidak ada solusi, program akan menampilkan pesan **“TIDAK ADA SOLUSI DITEMUKAN”**.

---

## 2. Requirement Program dan Instalasi

- **Bahasa pemrograman**: Python 3.10+.  
- **Sistem operasi**: Linux / macOS / Windows 

```bash
cd Tucil1_13524127
python3 -m venv src/venv
source src/venv/bin/activate
```

Program hanya menggunakan modul standar Python (`os`, `time`), sehingga **tidak ada instalasi library tambahan** yang wajib.

---

## 3. Cara Mengkompilasi Program

Program ini ditulis dalam Python sehingga **tidak memerlukan proses kompilasi terpisah**.

Jika ingin memastikan tidak ada error sintaks, dapat menjalankan:

```bash
cd Tucil1_13524127
python3 -m py_compile src/queens_puzzle.py
```

---

## 4. Cara Menjalankan dan Menggunakan Program

### Struktur Folder

```text
Tucil1/
├── bin/
│   └── run_queens.sh          
├── src/
│   ├── queens_puzzle.py       
│   └── venv/                  
├── test/
│   ├── case/                 
│   └── solutions/             
├── doc/
│   └── Laporan_Tucil1_IF2211_13524127.pdf            
└── README.md                  
```

### Menjalankan Program

**Opsi 1 – Menggunakan script di `bin/` (direkomendasikan)**

```bash
cd Tucil1_13524127
./bin/run_queens.sh
```

Script ini akan:
- Berpindah ke root project.  
- Mengaktifkan `src/venv` jika ada.  
- Menjalankan `python3 src/queens_puzzle.py`.

**Opsi 2 – Menjalankan langsung dengan Python**

```bash
cd Tucil1_13524127
python3 src/queens_puzzle.py
```

### Alur Penggunaan Program

Setelah dijalankan, program akan:

1. Menampilkan judul dan aturan puzzle.  
2. Meminta **nama file test case**:
   - Cukup ketik nama file yang ada di folder `test/case`, misalnya:
     - `test_case_1.txt`
     - `test_case_2.txt`
     - `test_case_6.txt` (contoh kasus tanpa solusi)
3. Program akan membaca file dari `test/case/` dan melakukan validasi:
   - Papan harus berbentuk persegi (N×N).
   - Jumlah **daerah (huruf unik)** minimal sebesar N.
4. Jika valid, program menjalankan **algoritma Brute Force**:
   - Mencoba menempatkan ratu baris per baris.
   - Mengecek constraint baris, kolom, dan daerah pada setiap penempatan.
   - Melakukan backtracking jika konfigurasi tidak mungkin dilanjutkan.
5. Jika solusi ditemukan:
   - Papan solusi dicetak ke layar dengan `#` sebagai ratu.
   - Ditampilkan:
     - Waktu pencarian (ms).
     - Banyaknya konfigurasi/kasus yang ditinjau.
   - User akan ditanya apakah ingin menyimpan solusi:
     - Jika menjawab `Ya`, solusi disimpan ke:
       - `test/solutions/<nama_file>_solution.txt`
       - Contoh: `test_case_1.txt` → `test/solutions/test_case_1_solution.txt`
6. Jika **tidak ada solusi**:
   - Program menampilkan pesan:
     - `TIDAK ADA SOLUSI DITEMUKAN`
   - Tetap menampilkan waktu pencarian dan jumlah kasus yang ditinjau.

---

## 5.  Identitas Pembuat

- **Nama** : Fazri Arrashyi Putra  
- **NIM**  : 13524127  
- **Mata kuliah** : IF2211 Strategi Algoritma  

Program ini dibuat sebagai tugas kecil (Tucil 1) untuk menganalisis performa algoritma **Brute Force** pada permasalahan Queens Puzzle.


