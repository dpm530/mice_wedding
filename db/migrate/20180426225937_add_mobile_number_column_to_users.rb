class AddMobileNumberColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mobile_number, :integer
  end
end
