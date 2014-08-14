class CreateUsersprofs < ActiveRecord::Migration
  def change
    create_table :usersprofs do |t|
      t.string :name
      t.integer :telefon
      t.integer :kartschet

      t.timestamps
    end
  end
end
