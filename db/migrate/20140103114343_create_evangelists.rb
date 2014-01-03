class CreateEvangelists < ActiveRecord::Migration
  def change
    create_table :evangelists do |t|
      t.string :email
      t.string :fullname
      t.string :phone

      t.timestamps
    end
  end
end
