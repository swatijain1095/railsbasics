class Employee < ApplicationRecord
  attr_accessor :editable
  has_rich_text :notes
  belongs_to :country
  belongs_to :department

  # It's a way to name a custom database query, composed of ActiveRecordmethods.
  scope :search, ->(query) {
    if query.present?
      left_joins(:department).where("employees.id LIKE ? OR firstname LIKE ? OR lastname LIKE ? OR departments.name LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
    else
      all
    end
  }
end
