class User < ActiveRecord::Base
    has_many :articles
    has_many :comments
    validates :name, :email, presence: true
end
