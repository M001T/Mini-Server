require_relative '../initialize_db_ar.rb'

#help
class Help
	def he
		puts "== Menu Help"
		puts "<pg> : testar conexões db postgresql"
		puts "<ar> : para testar a conexão do registro ativo"
		puts "<create> : criar (preencher) novos dados no postgresql"
		puts "<read> : para visualizar (preencher) dados no postgresql"
		puts "<update> : untuk mengedit (isi)data di postgresql"
		puts "<delete> : untuk menghapus (isi)data di postgresql"
		puts "<exit> : keluar"
	end
end


