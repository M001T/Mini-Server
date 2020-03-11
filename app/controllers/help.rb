require_relative '../initialize_db_ar.rb'

#help
class Help
	def he
		puts "== Menu Help"
		puts "<pg> : untuk mengetes koneksi db postgresql"
		puts "<ar> : untuk mengetes koneksi activerecord"
		puts "<create> : untuk membuat (isi)data baru di postgresql"
		puts "<read> : untuk melihat (isi)data di postgresql"
		puts "<update> : untuk mengedit (isi)data di postgresql"
		puts "<delete> : untuk menghapus (isi)data di postgresql"
		puts "<exit> : keluar"
	end
end


