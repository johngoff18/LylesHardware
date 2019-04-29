class CreateImagePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :image_posts do |t|
      t.string :caption
      t.text :link

      t.timestamps
    end
  end
end
