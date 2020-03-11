namespace :db do
  task :migrate => :environment do
    migrations = if ActiveRecord.version.version >= '5.2'
    ActiveRecord::Migration.new.migration_context.migrations
  else
    ActiveRecord::Migrator.migrations('db/migrate')
  end
  ActiveRecord::Migrator.new(:up, migrations, nil).migrate
end
end

namespace :run do
  desc "rodando.."
  task :rspec do
    sh 'rspec spec/crud_spec.rb'
  end
  task :term do
    sh 'ruby bin/terminal.rb'
  end
  task :web do
    sh 'ruby bin/webserver.rb'
  end
end

namespace :gem do
  desc "tudo sobre gem"
  task :install do
    sh 'bundle install'
	puts "Sucesso!"
	end
end

task :environment do
  load 'config/config.rb'
end
