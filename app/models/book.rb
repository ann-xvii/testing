class Book < ActiveRecord::Base
	validates :title, presence: true
	validates :author, presence: true
	validates :pages, presence: true
end

