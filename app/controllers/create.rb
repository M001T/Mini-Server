require_relative '../initialize_db_ar.rb'

#create
class Create
	def rspec
		#create metod to rspec
		init = Magi.new(	:id => 69,
							:chara  => 'Jafar_created',
		            		:rate => 6,
		                    :description  => 'anjing, test read')
		init.save
		
		#del method to rspec
		bro = Magi.find(69)
		bro.destroy
		return 
	end
	
	def term_create
		puts "== Menu Created"
		puts "nomear o chara"
		chara = gets.chomp
		puts "taxa de entrada (deve ser um número)"
		rate = gets.chomp.to_i
		puts "insira uma description"
		desc = gets.chomp
		
		init = Magi.new( :chara  => chara,
		                    :rate => rate,
		                	:description  => desc)

		init.save

		puts "Sucesso!"
		bro = Magi.where( :chara => chara)
		puts bro.inspect
	end
end
