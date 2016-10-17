module UsersHelper
<<<<<<< HEAD
    
    # Returns the Gravatar for the given user.
    def gravatar_for(user, options = { size: 80 })
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        size = options[:size]
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
end
=======
<<<<<<< HEAD
    def gravatar_for(user)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
=======
>>>>>>> 4cc34a407957ef17da36e70102c9e7246b69aedd
end
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
