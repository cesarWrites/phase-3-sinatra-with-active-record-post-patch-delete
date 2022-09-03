class Article < ActiveRecord::Base
    has_many :views
    has_many :readers, through: :views
end