class AddBrandAndCategoryToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :brand, index: true, foreign_key: true
    add_reference :products, :category, index: true, foreign_key: true
  end
end
