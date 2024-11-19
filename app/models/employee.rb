class Employee < ApplicationRecord
  has_rich_text :notes
  belongs_to :country
  belongs_to :department
end
