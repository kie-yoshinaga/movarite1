class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string     :title        , null: false
      t.integer    :genre_id     , null: false
      t.string :detail       , null: false
      t.string :directer     , null: false
      t.string :starring     , null: false
      #t.float :rate          , null: false
      t.references :user
      t.timestamps
    end
  end
end
