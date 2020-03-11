require_relative '../initialize_db_ar.rb'

#delete
class Delete
	def rspec
		#create metod to rspec
		init = Magi.new(	:id => 66,
							:chara  => 'Jafar_del',
		            		:rate => 7,
		                    :description  => 'anjing, test deleted')
		init.save
		
		#del method to rspec
		bro = Magi.find(66)
		bro.destroy
		return 
	end
	
	def term_delete
		puts "== MENU DELETED"
		puts "== masukan id yang ingin didelete"
		y_input = gets.chomp.to_i
		init = Magi.find(y_input)
		puts init.inspect

		puts "== anda yakin ingin menghapusnya?(y)(n)..."
		xxx = gets.chomp
		case xxx
			when "y"
				init.destroy
			puts "== berhasil dihapus"
				
			when "n"
				puts "== anda membatalkan deleted."
			else
				puts "== anda membatalkan deleted"
		end
	end
end


