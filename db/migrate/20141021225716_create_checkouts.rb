class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :patron_id
      t.integer :book_id
      t.string :check_out_by
      t.string :check_in_by

      t.timestamps
    end
  end
end
