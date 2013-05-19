class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :calories
      t.float :protein
      t.float :carbs
      t.float :fat

      t.timestamps
    end
  end
end
