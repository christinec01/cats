class CreateCats < ActiveRecord::Migration[5.0]
  def change
    create_table :cats do |t|
      t.references :herd, foreign_key: true
      t.string :name
      t.integer :age
      t.boolean :cute
      t.timestamps
    end
  end
end
