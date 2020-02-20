class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :article_details
      t.belongs_to :user
      t.timestamps
    end
  end
end
