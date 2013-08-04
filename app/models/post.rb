class Post < ActiveRecord::Base
  belongs_to :customer
  validates :status, length: {maximum:140}
end
