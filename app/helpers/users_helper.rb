module UsersHelper
  def gravatar_for(user, pixels = 50)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, size: pixels.to_s, alt: user.name, class: "gravatar")
  end
end