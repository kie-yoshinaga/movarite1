class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :review_id
      t.text :text
      t.timestamps
    end
  end
end
