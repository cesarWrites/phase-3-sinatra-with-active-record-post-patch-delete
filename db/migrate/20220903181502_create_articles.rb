class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.timestamps
    end
  end
end
