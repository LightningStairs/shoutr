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
end