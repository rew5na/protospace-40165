class AddDescriptionToPrototypes < ActiveRecord::Migration[7.0]
  def change
    add_column :prototypes, :description, :string
  end
end
