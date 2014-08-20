class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user, news)
	@users= user
	@news = news
	emails = @users.map(&:email)
	puts emails
	@url = 'http://example.com/login'
	mail(to: emails, subject: 'Welcome to My Awesome Site')  end
end
