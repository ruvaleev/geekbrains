namespace :test do
	desc 'Say Hello'
	task hello: :environment do
		puts 'Hello'
	end
end