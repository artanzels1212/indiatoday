class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :field

      t.timestamps null: false
    end
  end
end
