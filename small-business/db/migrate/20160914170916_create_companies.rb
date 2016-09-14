class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :dbe
      t.string :sbe
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :contact
      t.string :email
      t.string :phone
      
      t.timestamps
    end
  end
end
