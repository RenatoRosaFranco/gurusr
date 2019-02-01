# Preview all emails at http://localhost:3000/rails/mailers/member
class MemberPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/member/signup
  def signup
    MemberMailer.signup
  end

end
