class CreateCompanyDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :company_districts do |t|
      t.integer :company_id
      t.integer :district_id

      t.timestamps
    end
  end
end
