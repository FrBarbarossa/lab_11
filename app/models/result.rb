class Result < ApplicationRecord
  include ActiveModel::Serialization

  validate :number_must_be_greater_than_zero
  validates :input, format: { with: /\d/, message: 'должно быть числом' }
  after_validation :count_result

  def number_must_be_greater_than_zero
    if input <= 0
      errors.add(:expiration_date, "can't be less or equal zero")
    end
  
  def palindrome?(str)
    str == str.reverse
  end

  def count_result
    self.result = (1..input).each.select { |num| if palindrome?(num.to_s) && palindrome?((num**2).to_s) then num end }.map { |i| [i, i**2] }
    end
end
end