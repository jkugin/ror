class User
    @@users = []
    
    def initialize(nickname)
        @@users << nickname
        puts "Пользователь #{nickname} добавлен"
    end
    
    def delete(nickname)
        @@users.delete(nickname)
        puts "Пользователь #{nickname} удален"
    end
    
    def view_users
        puts @@users
    end
end
