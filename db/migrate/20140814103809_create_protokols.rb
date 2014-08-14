class CreateProtokols < ActiveRecord::Migration
  def change
    create_table :protokols do |t|
      t.string :number
      t.string :description

      t.timestamps
    end
  end
end
