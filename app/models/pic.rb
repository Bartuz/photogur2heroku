class Pic < ActiveRecord::Base
  attr_accessible :title, :url
  validates :title, presence: {:message => "Title is toooooo short!!!!!!!!!!"}
end
