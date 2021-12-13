class CreateBlogReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_reviews do |t|
      t.integer :user_id
      t.integer :blog_id
      t.text :review

      t.timestamps
    end
  end
end
