class Article < ActiveRecord::Base
	belongs_to :publication
	belongs_to :author
	belongs_to :category
end
