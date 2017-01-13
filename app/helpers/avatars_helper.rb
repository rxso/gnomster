module AvatarsHelper
  def display_avatar(user)
    unless user.avatar.nil?
      image_tag(user.avatar.filename)
    else
      image_tag("default.png")
     end
  end
end
