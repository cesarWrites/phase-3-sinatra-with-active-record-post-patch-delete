class Reader < ActiveRecord::Base
    has_many :views
    has_many :articles, through: :views
end