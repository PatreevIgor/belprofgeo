class ChangeTextFormatInMyTable < ActiveRecord::Migration
  def up
    change_column :news, :description, :text
  end

  def down
    change_column :news, :description, :string
  end
end
