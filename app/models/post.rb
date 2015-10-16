class Post < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags

  validates :author, :presence => true,
                    :length => {:maximum => 30}
  validates :title, :presence => true,
                    :length => {:maximum => 100}
  validates :body,   :presence => true                  
end
