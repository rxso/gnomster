class AddFoodTypeToPlace < ActiveRecord::Migration
  def change
    add_column :places, :foodtype, :string
  end
end
