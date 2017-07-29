module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, size: 80)
    # Downcasing the user email isn't necessary since we did it before
    # saving the user in the User model.
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
