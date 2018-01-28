namespace :rbreadlines do
	desc 'Counting lines of ruby files in the project'
	task count: :environment do
		count = Dir["**/*.rb"]
		summary = count.reduce(0) do |sum, file|
			lines = File.open(file)
			sum + lines.readlines.length
		end
		puts "Всего в rb-файлах приложения #{summary} строк кода"
	end
end