class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.text :instructions
      t.date :posted_on

      t.timestamps
    end
  end
end
