class Post < ActiveRecord::Base
  attr_accessible :body, :title
  validates_presence_of :title, :presence => { :message => "Post title required!" }
  validates_presence_of :body, :presence => { :message => "Don't you have ANYTHING to say?" }
  	
  
end

