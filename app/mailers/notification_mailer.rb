class NotificationMailer < ApplicationMailer
  default from: "no-reply@bathmap.info"

  def comment_added
    mail(to: "melsen.carlsburg@gmail.com",
      subject: "A comment has been added to your bathoom on BathMap.info")
  end
end
