class AddColumnDate < ActiveRecord::Migration
  def change
  	 add_column :usersprofs, :date_of_birth, :date
  end
end
