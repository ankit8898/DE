namespace :db do 
	desc "Task to recreate the database and seed it"
	task :recreate => :environment do 
		puts "Dropping DB..."
		Rake::Task["db:drop"].invoke
		DBManageTasks.common
		puts "All done!"
	end

	desc "Build a DB for first time"
	task :build => :environment do 
		DBManageTasks.common
	end
end

class DBManageTasks
	def self.common
		puts "Creating DB..."
		Rake::Task["db:create"].invoke
		puts "Migrating migrations..."
		Rake::Task["db:migrate"].invoke
		puts "Seeding.."
		Rake::Task["db:seed"].invoke
	end
end