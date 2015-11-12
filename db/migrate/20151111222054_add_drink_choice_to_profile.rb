class AddDrinkChoiceToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :drink, :string
  end
end
