class Event < ApplicationRecord
  has_many :comments, as: :commentable 
end

# Comment.create(commentable: Event.first, text: "Hello, Where are you going?")

