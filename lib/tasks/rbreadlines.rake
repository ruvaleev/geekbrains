namespace :rbreadlines do
	desc 'Counting lines of ruby files in the project'
	task count: :environment do
		summary = 0
		count = Dir["**/*.rb"]
		count.each do |file|
			lines = File.open(file)
			size = lines.readlines.length
			summary += size
		end
		puts "Всего в rb-файлах приложения #{summary} строк кода"
	end
end