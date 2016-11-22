class UpdateNameColumnInHerds < ActiveRecord::Migration[5.0]
  def change
    rename_column :herds, :cats, :name
  end
end
