class Post < ApplicationRecord
  has_many :comments, as: :commentable 
end


# Post.first.comments.create(:text => "And then you add comment here")
