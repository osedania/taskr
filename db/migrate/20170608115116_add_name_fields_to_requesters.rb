class AddNameFieldsToRequesters < ActiveRecord::Migration[5.1]
  def change
    add_column :requesters, :first_name, :string
    add_column :requesters, :last_name, :string
  end
end
