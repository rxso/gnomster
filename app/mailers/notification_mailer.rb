class NotificationMailer < ActionMailer::Base
  default from: "no-reply@gnomsterapp.com"

  def_comment_added
    mail(to: "rso544@gmail.com",
        subject: "A comment has been added to your place")
  end

end
