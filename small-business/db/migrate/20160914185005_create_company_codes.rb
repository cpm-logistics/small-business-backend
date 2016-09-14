class CreateCompanyCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :company_codes do |t|

      t.timestamps
    end
  end
end
