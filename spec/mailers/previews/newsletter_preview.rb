# Preview all emails at http://localhost:3000/rails/mailers/newsletter
class NewsletterPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/newsletter/signup
  def signup
    NewsletterMailer.signup
  end

  # Preview this email at http://localhost:3000/rails/mailers/newsletter/cancel
  def cancel
    NewsletterMailer.cancel
  end

end
