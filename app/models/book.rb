class Book < ApplicationRecord
	 include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
	has_many :comments, dependent: :destroy
	validates :title, presence: true
	belongs_to :writer, class_name: 'Author', foreign_key: 'author_id'
	
	scope :by_where, ->{ where(title:'book1006') }
end

Book.__elasticsearch__.create_index!
Book.import
