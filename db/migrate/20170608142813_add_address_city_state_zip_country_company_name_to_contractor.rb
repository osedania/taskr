class AddAddressCityStateZipCountryCompanyNameToContractor < ActiveRecord::Migration[5.1]
  def change
    add_column :contractors, :first_name, :string
    add_column :contractors, :last_name, :string
    add_column :contractors, :company_name, :string
    add_column :contractors, :address, :string
    add_column :contractors, :city, :string
    add_column :contractors, :state, :string
    add_column :contractors, :country, :string
    add_column :contractors, :zip_code, :integer
  end
end
