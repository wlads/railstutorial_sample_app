module UsersHelper

  def gravatar_for(user, options = {})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    gravatar_url << "?size=#{options[:size]}" if options[:size]
# other gravatar options
#    gravatar_url << "&d=#{options[:default]}" if options[:default]
#    gravatar_url << "&d=mm" if options[:mm]
    image_tag(gravatar_url, alt:user.name, class: "gravatar")
  end

end
