-> pada flask ini saya menggunakan lingkungan virtual, semua libray yang dibutuhkan berada di requirements.txt 

-> Lingkungan Virtual (venv)
    Jalankan perintah berikut: python -m venv nama_env_anda 
    Ganti nama_env_anda dengan nama yang Anda inginkan (misalnya, venv atau env)

-> Mengaktifkan Lingkungan Virtual
    untuk windows    : nama_env_anda\Scripts\activate
    untuk macOS/Linux: source nama_env_anda/bin/activate

    jika akses ditolak:
    -> Buka PowerShell sebagai Administrator
    -> Jalankan perintah ini: Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
        ini hanya berlaku untuk sesi PowerShell saat ini (direkomendasikan karena lebih aman) Setelah Anda menutup terminal, kebijakan akan kembali normal

        untuk perubahan permanen gunakan perintah: Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
        dan untuk mengembalikannya ke settingan windows: Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Restricted
    -> Anda akan diminta konfirmasi. Ketik Y (Yes) dan tekan Enter
    -> jalankan kembali perintah pengaktifan 

-> Menonaktifkan Lingkungan Virtual
    -> untuk menonaktifkan lingkungan lama gunakan perintah: deactivate
    -> untuk menghapus folder lingkungan lamadi windows  : rmdir /s /q nama_env_lama
                                                linux/mac: rm -rf nama_env_lama

-> catatan 
    * disarankan upgrate versi pip terbaru sebelum membuat lingkungan virtual maupun install libray dengan perintah: python -m pip install --upgrade pip


