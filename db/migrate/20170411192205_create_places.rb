class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :address
      t.boolean :accessible, :default => false
      t.boolean :single_use, :default => false
      t.boolean :gender_neutral, :default => false
      t.timestamps
    end
  end
end
