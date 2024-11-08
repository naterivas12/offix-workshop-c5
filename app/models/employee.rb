class Employee < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :birth_date, comparison: { less_than: 18.years.ago,
                                       message: ": you should be older than 18" }

  # Associations
  belongs_to :department, counter_cache: true
  has_one_attached :avatar
end
