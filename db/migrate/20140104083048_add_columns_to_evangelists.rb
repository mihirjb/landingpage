class AddColumnsToEvangelists < ActiveRecord::Migration
  def change
    add_column :evangelists, :action, :string
    add_column :evangelists, :model, :string
    add_column :evangelists, :value, :string
  end
end
