class CreateImpFields < ActiveRecord::Migration
  def change
    create_table :imp_fields do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
