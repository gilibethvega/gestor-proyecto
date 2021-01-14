class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 140 }
  validates :status, presence: true
  
end
