class Post < ActiveRecord::Base
  paginates_per 10
  belongs_to :user
end
