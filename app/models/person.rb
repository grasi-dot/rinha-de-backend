class Person < ApplicationRecord
  validates :nickname, presence: true, uniqueness: true, length: { maximum: 32}
  validates :name, presence: true, length: { maximum: 100 }
  validates :date_of_birth, presence: true

  validate :stack_validator

  private

  def stack_validator
    if stack.present? && !Array(stack).all? { |element| element.is_a?(String) }
      errors.add(:stack, 'deve conter apenas strings')
    end
  end
end
