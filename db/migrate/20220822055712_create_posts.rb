class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user
      t.string :title
      t.date :date
      t.text :description
      t.string :tags

      t.timestamps
    end
  end
end
