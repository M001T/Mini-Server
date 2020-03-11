require_relative '../initialize_db_ar.rb'

#delete
class Delete
	def rspec
		#create metod to rspec
		init = Magi.new(	:id => 66,
							:chara  => 'Teste',
		            		:rate => 7,
		                    :description  => 'teste deletado')
		init.save
		
		#del method to rspec
		bro = Magi.find(66)
		bro.destroy
		return 
	end
	
	def term_delete
		puts "== MENU DELETED"
		puts "== insira o ID que você deseja excluir"
		y_input = gets.chomp.to_i
		init = Magi.find(y_input)
		puts init.inspect

		puts "== Tem certeza de que deseja excluí-lo? (Y) (n) ..."
		xxx = gets.chomp
		case xxx
			when "y"
				init.destroy
			puts "== Deletado Com Sucesso"
				
			when "n"
				puts "== Cancelando o (Delete)"
			else
				puts "== Cancelando o (Delete)"
		end
	end
end


