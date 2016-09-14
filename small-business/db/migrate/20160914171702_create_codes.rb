class CreateCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :codes do |t|
      t.string :number
      t.string :category

      t.timestamps
    end
  end
end
