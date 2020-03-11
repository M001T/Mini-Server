require 'terminal-table'
require_relative '../models/magi.rb'

class Web < WEBrick::HTTPServlet::AbstractServlet
  def do_GET (request, response)
    input = File.read("app/views/magi/magi.erb")
    eruby = Erubis::Eruby.new(input)
    
    all = Magi.pluck(:chara, :rate, :description)
    chara = Magi.pluck(:chara)
    rate = Magi.pluck(:rate)
    desc = Magi.pluck(:description)
	  
        magi = Magi.pluck(:id, :chara, :rate, :description)
		rows = []
		rows = magi.each{|x| x.join("\t")}
		table = Terminal::Table.new :headings => ['id', 'Chara', 'Rate', 'Description'], :rows => rows

    content = eruby.result( 
    	:title => "Ruby CRUD", 
        :t_all => all, 
    	:t_chara => chara, 
    	:t_rate => rate, 
        :t_desc=> desc, )

    response.status = 200
    response.content_type = "text/html"
    response.body = content
    		
  end
	
end
