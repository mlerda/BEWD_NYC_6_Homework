class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :ticker
      t.integer :cik
      t.integer :sic

      t.timestamps
    end
  end
end
