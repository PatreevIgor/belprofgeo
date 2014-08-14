class CreateFinanses < ActiveRecord::Migration
  def change
    create_table :finanses do |t|
      t.integer :summa
      t.string :description

      t.timestamps
    end
  end
end
