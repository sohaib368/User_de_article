class AddstatusToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :status, :integer
  end
end
