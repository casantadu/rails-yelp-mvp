class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: ['chinese', 'italian', 'japanese', 'french', 'belgian']
end
