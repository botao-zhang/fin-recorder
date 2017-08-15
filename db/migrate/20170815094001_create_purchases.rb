class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.date :date
      t.integer :priceperunit
      t.integer :units
      t.references :user, foreign_key: true
      t.references :entry, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
