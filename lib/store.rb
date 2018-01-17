class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :mens_or_womens

  def mens_or_womens
    # if self.mens_apparel.count == 0  && self.womens_apparel.count == 0
     # if (mens_apparel || womens_apparel) == false
     # if !mens_apparel && !womens_apparel
      errors.add("Store must have either mens or womens apparel")
    end
  end
end
