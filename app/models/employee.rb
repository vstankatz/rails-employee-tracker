class Employee < ApplicationRecord
  has_many :employee_projects
  has_many :projects, :through => :employee_projects, dependent: :destroy
  validates :name, :division_id, presence: true
end
