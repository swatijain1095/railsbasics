class Allowancetype < ApplicationRecord
  has_many :employeeallowances
  has_many :employeessalaries, through: :employeeallowances
end
