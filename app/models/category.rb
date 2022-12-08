class Category < ApplicationRecord
    has_and_belongs_to_many :procedures, dependent: :destroy
    belongs_to :user
end
