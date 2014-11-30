class CreateMetricObjects < ActiveRecord::Migration
  def change
    create_table :metric_objects do |t|
      t.integer :value
      t.references :metric, index: true
      t.references :comparison_object, index: true

      t.timestamps null: false
    end
    add_foreign_key :metric_objects, :metrics
    add_foreign_key :metric_objects, :comparison_objects
  end
end
