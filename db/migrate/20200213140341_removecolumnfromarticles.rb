class Removecolumnfromarticles < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :status
  end
end
