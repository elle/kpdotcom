atom_feed(:url => formatted_feed_index_url(:atom)) do |feed|
  feed.title("Keith Pitty - better software through collaboration")
  feed.updated(@blog_posts.first ? @blog_posts.first.created_at : Time.now.utc)

  for post in @blog_posts
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.content(parse_textile_and_code_syntax(post.post), :type => 'html')
      entry.author do |author|
        author.name("Keith Pitty")
        author.email("keith@keithpitty.com")
      end
    end
  end
end
