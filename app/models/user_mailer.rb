class UserMailer < ActionMailer::Base
  include ActionController::UrlWriter

  def confirmation_code(user)
    from  'WettbŸro TippTop <noreply@tipptop.net>'
    recipients user.email
    subject 'Bitte aktivieren Sie Ihr Konto bei TippTop'
    body :user => user
    sent_on Time.now
  end
end
