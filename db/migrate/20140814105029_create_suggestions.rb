class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :fio
      t.string :description

      t.timestamps
    end
  end
end
