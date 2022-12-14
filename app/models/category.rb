class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :procedures, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
end
