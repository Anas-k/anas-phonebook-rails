class AddDetailToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :subscribe, :integer
    add_column :users, :gender, :integer
    add_column :users, :address, :string
    add_column :users, :citycode, :string
    add_column :users, :city, :string
  end
end
