class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :views do |t|
      t.integer :rating
      t.string :comment
      t.integer :article_id
      t.timestamps
    end
  end
end
