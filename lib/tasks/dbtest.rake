namespace :dbtest do
	desc 'Create test user'
	task user: :environment do
		u = User.new name: 'rake_test', email: 'rake_test@rake_test.ru'
		post = Post.new user_id: u['id'], title: 'This Is Title Of The Test Post by Rake_test', body: 'This is the body of  Of The Test Post by Rake_test!'
		comment = Comment.new user_id: u['id'], body: 'This is the test comment posted by Rake_test!'
	end
end