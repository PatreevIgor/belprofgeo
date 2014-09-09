class CahgeTupeFieldInTablesProtokols < ActiveRecord::Migration
  def up
    change_column :protokols, :description, :text
  end

  def down
    change_column :protokols, :description, :string
  end
end
