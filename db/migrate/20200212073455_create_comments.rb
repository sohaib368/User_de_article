class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment_details
      t.references :commentable, polymorphic: true

      t.belongs_to :user

      t.timestamps
    end
  end
end
