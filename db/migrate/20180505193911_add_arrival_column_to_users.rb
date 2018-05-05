class AddArrivalColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :arrival, :string
  end
end
