class CreatePatrons < ActiveRecord::Migration
  def change
    create_table :patrons do |t|
      t.string :name
      t.boolean :asshole
      t.boolean :thief

      t.timestamps
    end
  end
end
