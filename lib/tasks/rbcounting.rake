namespace :rbcounting do
	desc 'Counting of ruby files in the project'
	task count: :environment do
		count = Dir["**/*.rb"]
		puts "Всего в приложении #{count.length} rb-файлов"
		end
end