class Blog::TagsController < ApplicationController
  before_filter :get_tags, :get_latest_posts
  
  def show
    @section = 'blog'
    @blog_posts = BlogPost.find_published_tagged_with(params[:id].gsub("-", " "))
  end
  
end
