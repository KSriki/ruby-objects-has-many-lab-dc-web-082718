class Post

    attr_accessor :title, :author

    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def author_name
        if @author
            @author.name
        else
            nil
        end
    end




end
