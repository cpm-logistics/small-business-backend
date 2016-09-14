class CreateCompanyDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :company_districts do |t|

      t.timestamps
    end
  end
end
