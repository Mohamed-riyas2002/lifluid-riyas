class ClaimRequestMailMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.claim_request_mail_mailer.request_claimed.subject
  #
  def request_claimed
    @greeting = "Hi"

    mail(
      from: "rasoolmohamed669@gmail.com",
      to: "riyasmohamed1947@gmail.com",
      subject: "Your Request is claimed and Your blood will deliver to the respective hsopital within today."
    )
  end
end
