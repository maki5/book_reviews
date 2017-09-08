class CreateReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.integer :user_id
      t.integer :rating
      t.text :body
    end
  end
end
