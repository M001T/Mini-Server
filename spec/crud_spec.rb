require_relative '../app/controllers/create.rb'
require_relative '../app/controllers/read.rb'
require_relative '../app/controllers/update.rb'
require_relative '../app/controllers/delete.rb'

RSpec.describe Create do
	let(:create) { Create.new }
	it 'check create' do
		expect(create.rspec).to eq(nil)
	end
end

RSpec.describe Read do
	let(:read) { Read.new }
	it 'check read' do
		expect(read.rspec(0)).to eq(1)
	end
end

RSpec.describe Update do
	let(:update) { Update.new }
	it 'check update' do
		expect(update.rspec(1)).to eq(nil)
	end
end

RSpec.describe Delete do
	let(:delete) { Delete.new }
	it 'check delete' do
		expect(delete.rspec).to eq(nil)
	end
end



