class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      # t.bigint :user_id
      # t.references :user, null: false
      t.text :content, null: false
      t.references :user, null: false, foreign_key: true
      t.references :prototype, null: false, foreign_key: true

      t.timestamps
    end
    # add_foreign_key :comments, :users, column: :user_id 
  end
end
