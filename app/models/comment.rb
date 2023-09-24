class Comment < ApplicationRecord
  belongs_to :commentable, :polymorphic => true, counter_cache: true
end
