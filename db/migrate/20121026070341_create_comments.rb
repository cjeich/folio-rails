class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :subject
      t.text :text
      t.integer :user_id
      t.integer :project_id
      t.string :email

      t.timestamps
    end
    add_index :comments, :project_id
    add_index :comments, :user_id
  end
end
