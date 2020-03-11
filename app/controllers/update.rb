require_relative '../initialize_db_ar.rb'

#update
class Update
	def rspec(x)
		init = Magi.find(x)
		init.update(:id => x)
		init.save
		return
	end
	
	def term_update
		puts "== MENU UPDATE"
		puts "== Digite o ID que você deseja atualizar ..."
		id = gets.chomp.to_i
		init = Magi.find(id)
		puts init.inspect

		puts "digite..."
		puts "<id>,<chara>,<rate>,<desc>"
		y_input = gets.chomp

		case y_input
			when "id"
			puts "Mude de ID"
			kim0 = gets.chomp
			init.update(:id => kim0)
			init.save

			when "chara"
			puts "mude de chara ..."
			kim1 = gets.chomp
			init.update(:chara => kim1)
			init.save

			when "rate"
			puts "Mude a Taxa"
			kim2 = gets.chomp.to_i
			init.update(:rate => kim2)
			init.save

			when "desc"
			puts "Mude a descripton"
			kim3 = gets.chomp.to_i
			init.update(:descripton => kim3)
			init.save

			else 
			puts "Entrada"
		end

	end
end