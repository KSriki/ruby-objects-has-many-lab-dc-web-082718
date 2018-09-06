class Author

    attr_accessor :name, :posts

    #maybe better to only have a count since this is extra functionality
    @@all_posts = []

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        post.author = self
        @posts << post
        @@all_posts << post
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count
        @@all_posts.length
    end

end
