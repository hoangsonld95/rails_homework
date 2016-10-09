module UsersHelper
<<<<<<< HEAD
    def gravatar_for(user)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
=======
>>>>>>> 4cc34a407957ef17da36e70102c9e7246b69aedd
end
