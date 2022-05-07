class Store < ActiveRecord::Base
  has_many :employees

  #Do we need presence as True to proceed?
  validates :name, presence: true, length: { minimum: 3, message: "Stores must have a name with minimum of 3 characters."}
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Store must have a revenue that is an integer greater than 0."}
  validate :must_carry_apparel

  def must_carry_apparel
    unless [mens_apparel, womens_apparel].any?
      errors.add(:womens_apparel, "Must sell at least one piece of men's or women's apparel")
      errors.add(:mens_apparel, "Must sell at least one piece of men's or women's apparel")
    end
  end
end
