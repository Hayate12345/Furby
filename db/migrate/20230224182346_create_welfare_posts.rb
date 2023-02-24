class CreateWelfarePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :welfare_posts do |t|
      t.references :welfare, foreign_key: true
      t.string :image, null: false
      t.string :title, null: false
      t.string :profile, null: false
      t.string :appeal_point, null: false
      t.integer :age, null: false
      t.string :kinds, null: false
      t.integer :price, null: true
      t.timestamps
    end
  end
end
