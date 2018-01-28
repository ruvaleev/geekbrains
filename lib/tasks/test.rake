namespace :test do
  desc 'Say hello'
  task hello: :environment do
    puts 'hello'
  end
end
