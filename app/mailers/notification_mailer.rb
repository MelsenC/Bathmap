class NotificationMailer < ApplicationMailer
  default from: "no-reply@bathmap.info"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    mail(to: @place_owner.email,
      subject: "A comment has been added to #{@place.name} on BathMap.info")
  end
end
