class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :body
      t.references :review_author, foreign_key: true
      t.references :product, foreign_key: true
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
