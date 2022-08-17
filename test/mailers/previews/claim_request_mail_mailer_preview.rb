# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/claim_request_mail_mailer
class ClaimRequestMailMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/claim_request_mail_mailer/request_claimed
  def request_claimed
    ClaimRequestMailMailer.request_claimed
  end
end
