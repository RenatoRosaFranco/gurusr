require "rails_helper"

RSpec.describe NewsletterMailer, type: :mailer do
  describe "signup" do
    let(:mail) { NewsletterMailer.signup }

    it "renders the headers" do
      expect(mail.subject).to eq("Signup")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "cancel" do
    let(:mail) { NewsletterMailer.cancel }

    it "renders the headers" do
      expect(mail.subject).to eq("Cancel")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
