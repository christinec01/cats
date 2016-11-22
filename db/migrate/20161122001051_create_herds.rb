class CreateHerds < ActiveRecord::Migration[5.0]
  def change
    create_table :herds do |t|
      t.string :cats

      t.timestamps
    end
  end
end
