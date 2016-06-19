class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.references :state, foreign_key: true
      t.string :city_name

      t.timestamps null: false
    end
  end
end
