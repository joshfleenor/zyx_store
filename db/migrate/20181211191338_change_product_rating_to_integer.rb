class ChangeProductRatingToInteger < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :rating, :integer
  	remove_column :products, :integer
  end
end
