class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attr=(attributes)
      if attributes[:name] != ""
        category = Category.find_or_create_by(attributes)
        self.categories << category
      end
  end 




end
