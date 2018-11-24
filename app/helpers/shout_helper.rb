module ShoutHelper
  def avatar(user)
    image_tag gravatar_url(user.email)
  end

  def email_digest(email)
    Digest::MD5.hexdigest(email)
  end

  def gravatar_url(email)
    "https://www.gravatar.com/avatar/#{email_digest(email)}"
  end

  def like_button(shout)
    if current_user.liked?(shout)
      link_to "Unlike", unlike_shout_path(shout), method: :delete
    else
      link_to "Like", like_shout_path(shout), method: :post
    end
  end
end