class CreateDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.string :number
      t.string :region

      t.timestamps
    end
  end
end
