# Latihan: Playtest

1. Apa saja pesan log yang dicetak pada panel Output?
<br>Saat Playetest dimulai log menampilkan pesan `Platform initialized`

2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
<br> Saat digerakan ke batas bawah log tidak menampilkan output apa pun, tetapi saat digerakan ke atas log menampilkan output `Reached objective!` 

3. Buka scene `MainLevel` dengan tampilan workspace 2D. Apakah lokasi scene `ObjectiveArea` memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
<br> Iya, terlihat di scene `ObjectiveArea` terdapat shape persegi panjang yang terletak di bagian atas area. Hal ini berkaitan ketika kita menjalankan platform sampai atas, akan mencetak output `Reached objective!`.

# Latihan: Memanipulasi Node dan Scene

1. Scene `BlueShip` dan `StonePlatform` sama-sama memiliki sebuah child node bertipe `Sprite`. Apa fungsi dari node bertipe `Sprite`?
<br> Node tipe sprite akan menampilkan gambar atau asset yang digunakan dalam sebuah game nya. Contohnya dalam `BlueShip` menampilkan gambar berupa pesawat dan `StonePlatform` menampilkan gambar berupa batu.

2. Root node dari scene `BlueShip` dan `StonePlatform` menggunakan tipe yang berbeda. `BlueShip` menggunakan tipe `RigidBody2D`, sedangkan `StonePlatform` menggunakan tipe `StaticBody2D`. Apa perbedaan dari masing-masing tipe node?
<br> Perbedaan utama antara `RigidBody2D` dengan `StaticBody2D` adalah di bagian kontrolnya. `RigidBody2D` tidak dapat kita kontrol secara manual, tetapi harus diberikan *forces* yang diterapkan dalam game. Sedangkan, `StaticBody2D` hanya bisa dijalankan secara manual oleh player.

3. Ubah nilai atribut `Mass` pada tipe `RigidBody2D` secara bebas di scene `BlueShip`, lalu coba jalankan scene `MainLevel`. Apa yang terjadi?
<br> Mass tidak terlihat memengaruhi apa pun, hal ini terjadi karena `BlueShip` bertabrakan dengan `PlatformBlue` yang merupakan `Node2D`.

4. Ubah nilai atribut `Disabled` pada tipe `CollisionShape2D` di scene `StonePlatform`, lalu coba jalankan scene `MainLevel`. Apa yang terjadi?
<br> Saat `Disabled` di aktifkan, maka asset dari scene lain akan tembus scene `StonePlatform` karena tidak terjadi *collision* antar objek.

5. Pada scene `MainLevel`, coba manipulasi atribut `Position`, `Rotation`, dan `Scale` milik node `BlueShip` secara bebas. Apa yang terjadi pada visualisasi `BlueShip` di Viewport?
<br> Setelah `Position`, `Rotation`, dan `Scale` diubah, terlihat juga di viewport menyesuaikan transformasi yang telah kita set setelah diubah.

6. Pada scene `MainLevel`, perhatikan nilai atribut `Position` node `PlatformBlue`, `StonePlatform`, dan `StonePlatform2`. Mengapa nilai Position node `StonePlatform` dan `StonePlatform2` tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
<br> Hal tersebut terjadi karena pada scene `MainLevel` yang memengaruhi posisi yang ditampilkan adalah posisi dari `PlatformBlue` sebagai parent node dari `StonePlatform` dan `StonePlatform2`.