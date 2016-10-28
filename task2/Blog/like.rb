class Like
    @@likes = {}
    
    
    
    def set_like(user, title)
        @@likes << {"user" => "title"}
    end
    
    def like_user(user)
        puts @@likes.select{|key, value| key == user }.length
    end
    
    def like_title(title)
        puts @@likes.select{|key, value| vajue == title }.length
    end
end
