class CreateComparisonObjects < ActiveRecord::Migration
  def change
    create_table :comparison_objects do |t|
      t.string :name
      t.string :icon
      t.string :color

      t.timestamps null: false
    end
  end
end
