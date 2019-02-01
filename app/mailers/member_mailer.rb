# frozen_string_literal: true
class MemberMailer < ApplicationMailer

	default from: 'contato-gurusr@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.member_mailer.signup.subject
  #
  def signup(member)
    @member = member
    mail to: "to@example.org"
  end
end
